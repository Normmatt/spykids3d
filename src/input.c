#include "global.h"

// ewram
extern u8 gIgnoreKeys;

// probably COMMON
extern u16 gNewKeys;
extern u16 gHeldKeys;

extern void SoftResetRom(u8);

#define SOFT_RESET_COMBO (START_BUTTON | SELECT_BUTTON | A_BUTTON | B_BUTTON)

void InputUpdate(void) {
    u16 keyInput = KEYS_MASK ^ REG_KEYINPUT;
    if(!gIgnoreKeys) {
        gNewKeys = ~gHeldKeys & keyInput;
        gHeldKeys = keyInput;
    } else {
        gNewKeys = 0;
        gHeldKeys = 0;
    }
    if ((keyInput & SOFT_RESET_COMBO) == SOFT_RESET_COMBO) {
        SoftResetRom(0xFF);
    }
}
