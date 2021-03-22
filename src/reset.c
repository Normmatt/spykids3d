#include "global.h"

extern u8 gUnknown_02000ADC;
extern u16 gUnknown_020003E8;
extern u16 gUnknown_020003F8;

extern void SoftResetRom(u8);

void sub_8000A28(void) {
    u16 keyInput = 0x3FF ^ REG_KEYINPUT;
    if(!gUnknown_02000ADC) {
        gUnknown_020003E8 = ~gUnknown_020003F8 & keyInput;
        gUnknown_020003F8 = keyInput;
    } else {
        gUnknown_020003E8 = 0;
        gUnknown_020003F8 = 0;
    }
    if ((keyInput & 0xF) == 0xF) {
        SoftResetRom(0xFF);
    }
}
