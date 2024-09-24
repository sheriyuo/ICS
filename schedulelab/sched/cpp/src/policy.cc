#include "policy.h"
#include <bits/stdc++.h>
using namespace std;

vector<pair<int, Event::Task>> cpuQueue;
vector<pair<int, Event::Task>> ioQueue;

int cur_time = -1;
int maxPrio = 7;

bool cmp(pair<int, Event::Task> x, pair<int, Event::Task> y) {
    int px = x.second.deadline < cur_time ? -1e9 : x.first;
    int py = y.second.deadline < cur_time ? -1e9 : y.first;
    if (px == py)
        return x.second.deadline - x.second.arrivalTime < y.second.deadline - y.second.arrivalTime;
    else
        return px > py;
}

void eraseTaskID(int taskId, vector<pair<int, Event::Task>> &Queue) {
    for (auto it = Queue.begin(); it != Queue.end(); it++) {
        if (it->second.taskId == taskId) {
            Queue.erase(it);
            break;
        }
    }
}

int findNext(vector<pair<int, Event::Task>> &Queue) {
    if (!Queue.size())
        return 0;
    sort(Queue.begin(), Queue.end(), cmp);
    return Queue[0].second.taskId;
}

Action policy(const std::vector<Event> &events, int current_cpu,
              int current_io) {
    cur_time = events[0].time;
    for (auto event : events) {
        switch (event.type) {
        case Event::Type::kTimer:
            break;
        case Event::Type::kTaskArrival:
            cpuQueue.push_back({maxPrio, event.task});
            break;
        case Event::Type::kTaskFinish:
            eraseTaskID(event.task.taskId, cpuQueue);
            break;
        case Event::Type::kIoRequest:
            ioQueue.push_back({maxPrio, event.task});
            eraseTaskID(event.task.taskId, cpuQueue);
            break;
        case Event::Type::kIoEnd:
            cpuQueue.push_back({maxPrio, event.task});
            eraseTaskID(event.task.taskId, ioQueue);
            break;
        }
    }

    Action action = {current_cpu, current_io};
    if (current_io == 0)
        if (!ioQueue.empty())
            action.ioTask = findNext(ioQueue);

    action.cpuTask = findNext(cpuQueue);
    return action;
}