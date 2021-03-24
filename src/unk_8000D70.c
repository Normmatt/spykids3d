#include "global.h"

extern u32 gUnknown_0200039C;
extern u32 gUnknown_020003E4;
extern u32 gUnknown_02000800;
extern u8 gUnknown_02000384;
extern u32 gUnknown_02000AD4;
extern u32 gUnknown_02000398;
extern u32 gUnknown_020003A0[16];
extern u32 gUnknown_02000AE0[10];
extern u32 gUnknown_020119B0[16];
extern int gUnknown_02000394;

void sub_8000D70(void) {
    int i;
    gUnknown_0200039C = 0;
    gUnknown_020003E4 = 0;
    gUnknown_02000800 = 3;
    gUnknown_02000398 = gUnknown_02000384;
    gUnknown_02000AD4 &= 0xFE00;
    for (i = 0; i < 16; i++) {
        gUnknown_020003A0[i] = 0;
    }
    for (i = 0; i < 10; i++) {
        gUnknown_02000AE0[i] = 0;
    }
    for (i = 0; i < 16; i++) {
        gUnknown_020119B0[i] = 0;
    }
    gUnknown_02000394 = -1;
}
