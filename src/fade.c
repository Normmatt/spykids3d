#include "global.h"

void Fade_FadeToBlack(void) {
    u16 i;
    REG_BLDY = 0;
    REG_BLDCNT = (BLDCNT_TGT1_ALL | BLDCNT_EFFECT_DARKEN);
    for (i = 0; i < 16; i++) {
        REG_BLDY = i;
        VBlankIntrWait();
    }
    REG_BLDY = 16;
}

void Fade_FadeToWhite(void) {
    u16 i;
    REG_BLDY = 0;
    REG_BLDCNT = (BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN);
    for (i = 0; i < 16; i++) {
        REG_BLDY = i;
        VBlankIntrWait();
    }
    REG_BLDY = 16;
}

void Fade_FadeFromBlack(void) {
    u16 i;
    REG_BLDY = 16;
    REG_BLDCNT = (BLDCNT_TGT1_ALL | BLDCNT_EFFECT_DARKEN);
    for (i = 0; i < 16; i++) {
        REG_BLDY = 16 - i;
        VBlankIntrWait();
    }
    REG_BLDY = 0;
}

void Fade_FadeFromWhite(void) {
    u16 i;
    REG_BLDY = 16;
    REG_BLDCNT = (BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN);
    for (i = 0; i < 16; i++) {
        REG_BLDY = 16 - i;
        VBlankIntrWait();
    }
    REG_BLDY = 0;
}
