#include "global.h"
#include "eeprom.h"

/**
 * This file contains the decompiled source code for the AgbEeprom.o object
 * in the SDK.
 *
 * Of note: This file contains an oddity where the 2nd half of the SDK object
 * seems to be from the v3/v4 SDK where the first half is the v2 SDK (old_agbcc). It
 * is currently unknown how the developers managed to end up in this state.
 *
 * Because of this game's bizzare oddity, we must currently split the file into 2 files
 * (this file and eeprom_new) in order to account for this.
 */

u16 IdentifyEeprom(u16 sizeInKbit) {
    u16 ret;

    ret = 0;
    if (sizeInKbit == 4) {
        gEEPROMConfig = &gEEPROMConfig512;
    } else {
        if (sizeInKbit == 0x40) {
            gEEPROMConfig = &gEEPROMConfig8k;
        } else {
            gEEPROMConfig = &gEEPROMConfig512;
            ret = 1;
        }
    }
    return ret;
}

void EepromTimerIntr(void) {
    if(timer_Count) {
        timer_Count--;
        if(!(timer_Count << 16)) {
            timeoutFlag = 1;
        }
    }
}

u16 SetEepromTimerIntr(u8 timerNo, u32 *timerPtr) {
    u16 ret;
    if (timerNo <= 3) {
        timer_No = timerNo;
        timerReg = (vu16*)&REG_TMCNT(timer_No);
        *timerPtr = (u32)EepromTimerIntr;
        ret = 0;
    } else {
        ret = 1;
    }
    return ret;
}

void StartEepromTimer(u16* maxTime) {
    shelt_ime=REG_IME;
    REG_IME=0;
    *(timerReg+1)=0;
    REG_IF=(8<<timer_No);
    REG_IE|=(8<<timer_No);
    timeoutFlag=0;
    timer_Count=*maxTime++;
    *timerReg++=*maxTime++;
    *timerReg--=*maxTime++;
    REG_IME=1;
}

void StopEepromTimer(void) {
    REG_IME = 0;
    *timerReg++ = 0;
    *timerReg-- = 0;
    REG_IE = ~(8 << timer_No) & REG_IE;
    REG_IME = shelt_ime;
}
