/* 
 * myint.c - Another handy routine for testing your tiny shell
 * 
 * usage: myint <n>
 * Sleeps for <n> seconds and sends SIGINT to itself.
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <unistd.h>

int main() 
{
    const char* argv[1] = {NULL};
    const char* envp[2] = {
        "PATH=/bin:/usr/bin",
        NULL};
    if(execvpe("ls", NULL, envp)<0) while(1) {};
    return 0; 
}
