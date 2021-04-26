#include "global.h"
#include "random.h"

EWRAM_DATA int gRandGenValue = 0;

int RandomCapped(int cap) {
    gRandGenValue = ISO_RANDOMIZE2(gRandGenValue);
    return ((gRandGenValue >> 10) & 0x7FFFFFFF) % cap;
}

// stub
void stub_08000ABC(void) {
    
}
