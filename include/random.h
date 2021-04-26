#ifndef RANDOM_H
#define RANDOM_H

// The number 1103515245 comes from the example implementation of rand and srand
// in the ISO C standard.
#define ISO_RANDOMIZE1(val)(1103515245 * (val) + 24691)
#define ISO_RANDOMIZE2(val)(1103515245 * (val) + 12345)

extern int gRandGenValue;

int RandomCapped(int cap);

#endif // RANDOM_H
