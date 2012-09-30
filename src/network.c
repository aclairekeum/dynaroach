#include "network.h"
#include "radio.h"

static int basestation_addr = 0x0100;
static int src_addr = 0x0110;

void networkSetBaseStationAddr(int addr)
{
  basestation_addr = addr;
}

int networkGetBaseStationAddr(void)
{
  return basestation_addr;
}
