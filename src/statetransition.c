#include "statetransition.h"
#include "sclock.h"
#include <stdlib.h>


StateTransition stCreateConfig(void)
{
    StateTransition st = (StateTransition)malloc(sizeof(StateTransitionStruct));
    st->timestamp = 0;
    st->cmd = 0;
    unsigned char* params = (unsigned char*)malloc(MAX_PARAMS);
    st->params = params;
    return st;
}

void stFree(StateTransition st)
{
  free(st->params);
}

void stConfigure(StateTransition st, unsigned int timestamp, unsigned char cmd)
{
    //TODO don't hard code this here
    //Configuration param on sclock setup
    long millisFactor = 5000;
    st->timestamp = (long)timestamp * millisFactor; //Convert from ms to system clock ticks
    st->cmd = cmd;
}
