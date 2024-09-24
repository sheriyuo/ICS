#include <iostream>
#include <algorithm>
#include <cmath>
#include <queue>
#include <vector>

#include "controller.hh"
#include "timestamp.hh"

using namespace std;

uint64_t RTT = 250, preRTT, probeTime;
double BtlBw = 0.05, prebw = 0.05;
uint64_t sent = 0, start_cnt = 0, cwnd_gain = 3;
uint64_t lastSendTime, nextSendTime, cwnd = 10;
uint64_t lastRecvNum = -1, recvCnt;
double pacing_gain = 2.0;
priority_queue<pair<uint64_t, uint64_t> > rtts;
vector<uint64_t> recvTimes;
enum State {
	START_UP,
	DRAIN,
	PROBE_BW,
	PROBE_RTT
};
State state;

Controller::Controller( const bool debug )
  : debug_( debug )
{}

void updateRTT(uint64_t rtt) {
	uint64_t now = timestamp_ms();
	rtts.push({-rtt, now});
	while (rtts.size() && now - rtts.top().second >= 10000) 
		rtts.pop();
	RTT = -rtts.top().first;
}

void updateBtlBw(double bw) {
	if (bw > BtlBw)
		BtlBw = bw;
}

/* Get current window size, in datagrams */
unsigned int Controller::window_size()
{
	// if (timestamp_ms() <= 500)
	// cerr << BtlBw << " " << RTT << " " << timestamp_ms() << " " << cwnd << "\n";
	if (cwnd >= 1)
		return sent + cwnd;
	else 
		return sent;
}

/* A datagram was sent */
void Controller::datagram_was_sent(const uint64_t sequence_number,
		const uint64_t send_timestamp, const bool after_timeout) {
	if (!after_timeout) {
		sent++;
		cwnd--;
		lastSendTime = timestamp_ms();
	}
	uint64_t bdp = 1 + cwnd_gain * (BtlBw * RTT);
	if ( timestamp_ms() <= 500 && debug_) {
		cerr << "At time " << send_timestamp
			 << " sent datagram " << sequence_number << " (timeout = " << after_timeout << ")\n";
		cerr << sent << " : " << bdp << "\n";
	}
	if (sent >= bdp)
		return;
	for	(int i = 1; i <= 100; i++)
		nextSendTime = timestamp_ms() + 1.0 / (pacing_gain * BtlBw);
	if (state == DRAIN) {
		state = PROBE_BW;
		cwnd_gain = 2;
		pacing_gain = 1.25;
		start_cnt = 0;
		probeTime = timestamp_ms();
		preRTT = RTT;
	}
}

/* An ack was received */
void Controller::ack_received( const uint64_t sequence_number_acked,
			       /* what sequence number was acknowledged */
			       const uint64_t send_timestamp_acked,
			       /* when the acknowledged datagram was sent (sender's clock) */
			       const uint64_t recv_timestamp_acked,
			       /* when the acknowledged datagram was received (receiver's clock)*/
			       const uint64_t timestamp_ack_received )
                               /* when the ack was received (by sender) */
{
	uint64_t rtt = timestamp_ack_received - send_timestamp_acked;
	updateRTT(rtt);
	if (lastRecvNum + 1 == sequence_number_acked) 
		sent--;
	else 
		sent -= sequence_number_acked - lastRecvNum;
	lastRecvNum = sequence_number_acked;
	recvTimes.push_back(recv_timestamp_acked);
	if (recvTimes.size() >= 10) {
		double bw;
		int len = 10;
		if (recvTimes.size() >= 80)
			len = 10 + pow(10 * BtlBw, 1.19);

		uint64_t lt = recvTimes[recvTimes.size() - len];
		uint64_t rt = recvTimes[recvTimes.size() - 1];
		bw = (len - 1.0) / (rt - lt);
		if (bw >= 5.3) {
			len = len * 1.4;
			lt = recvTimes[recvTimes.size() - len];
			rt = recvTimes[recvTimes.size() - 1];
			bw = (len - 1.0) / (rt - lt);
		}
		if (bw >= 6.5)
			bw = 6.5;
		// if (BtlBw < 1.718 || bw / BtlBw <= 1.718)
			updateBtlBw(bw);
	} 
	cwnd = (timestamp_ms() - lastSendTime) * (pacing_gain * BtlBw);
	if (state == START_UP) {
		if (BtlBw < prebw * 1.25) {
			if (timestamp_ms() - probeTime > (uint64_t)(1 / BtlBw)) {
				start_cnt++;
				probeTime = timestamp_ms();
			}
		} else {
			start_cnt = 0;
			prebw = BtlBw;
			probeTime = timestamp_ms();
		}
		if (start_cnt >= 3) {
			state = DRAIN;
			pacing_gain = 1 / 2.0;
			cwnd_gain = 1;
		}
	} else if (state == PROBE_BW) {
		if (start_cnt <= 1 && timestamp_ms() - probeTime > RTT / 2) {
			start_cnt++;
			probeTime = timestamp_ms();
		}
		if (start_cnt == 1)
			pacing_gain = 0.75;
		else
			pacing_gain = 1;
		if (RTT != preRTT) {
			preRTT = RTT;
			probeTime = timestamp_ms();
		} else if (timestamp_ms() - probeTime > RTT / 2) {
			state = PROBE_RTT;
			probeTime = timestamp_ms();
		}
	} else if (state == PROBE_RTT && timestamp_ms() - probeTime >= 20) {
		if (RTT >= preRTT) {
			state = START_UP;
			RTT = 250;
			BtlBw = prebw = 0.05;
			cwnd_gain = 3;
			pacing_gain = 2.0;
			start_cnt = 0;
			probeTime = timestamp_ms();
		} else {
			state = PROBE_BW;	
			cwnd_gain = 2;
			pacing_gain = 1.25;
			start_cnt = 0;
			probeTime = timestamp_ms();
			preRTT = RTT;
		}
	}
	if ( debug_) {
		cerr << "At time " << timestamp_ack_received
		 	 << " received ack for datagram " << sequence_number_acked
			 << " (send @ time " << send_timestamp_acked
			 << ", received @ time " << recv_timestamp_acked << " by receiver's clock)"
			 << endl;
		cerr << RTT << " " << BtlBw << " " << cwnd << " " << sent << " " << int(1 + cwnd_gain * (BtlBw * RTT)) << "\n";
		cerr << state << " " << start_cnt << " " << probeTime << "\n";
	}
}

/* How long to wait (in milliseconds) if there are no acks
   before sending one more datagram */
unsigned int Controller::timeout_ms()
{
  return RTT * 1.5;
}
