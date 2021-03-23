#include "global.h"

extern u8 gUnknown_0801A45C[0x500];
extern u8 gUnknown_0801A95C[0x200];
extern u8 gUnknown_0801AB5C[0x28E0];

extern u8 gUnknown_0802F4C8[0x4FC];
extern u8 gUnknown_08030FC4[0x200];
extern u8 gUnknown_0802F9C4[0x1600];

extern u8 gUnknown_0801D43C[0x500];
extern u8 gUnknown_0801D93C[0x200];
extern u8 gUnknown_0801DB3C[0xF40];

extern u8 gUnknown_0801EA7C[0x500];
extern u8 gUnknown_0801EF7C[0x200];
extern u8 gUnknown_0801F17C[0x1320];

extern void Fade_FadeFromWhite(void);
extern void Fade_FadeToBlack(void);
extern void Fade_FadeFromBlack(void);
extern void sub_800E4B8(void);

void DoCopyrightScreens(void);

// Render the first four copyright screens via DMA and call the Digital Eclipse copyright
// at the end.
void DoCopyrightScreens(void) {
    int i;

    DmaCopy16(3, &gUnknown_0801A45C, (void*)(VRAM), sizeof(gUnknown_0801A45C));
    DmaCopy16(3, &gUnknown_0801A95C, (void*)(PLTT), sizeof(gUnknown_0801A95C));
    DmaCopy16(3, &gUnknown_0801AB5C, (void*)(VRAM + 0x4000), sizeof(gUnknown_0801AB5C));
    Fade_FadeFromWhite();

    for(i = 0; i < 0x78; i++) {
        while(*(vu16 *)REG_ADDR_VCOUNT > 0x9F);
        while(*(vu16 *)REG_ADDR_VCOUNT <= 0x9F);
    }

    Fade_FadeToBlack();
    DmaCopy16(3, &gUnknown_0802F4C8, (void*)(VRAM), sizeof(gUnknown_0802F4C8));
    DmaCopy16(3, &gUnknown_08030FC4, (void*)(PLTT), sizeof(gUnknown_08030FC4));
    DmaCopy16(3, &gUnknown_0802F9C4, (void*)(VRAM + 0x4000), sizeof(gUnknown_0802F9C4));
    Fade_FadeFromBlack();

    for(i = 0; i < 0x78; i++) {
        while(*(vu16 *)REG_ADDR_VCOUNT > 0x9F);
        while(*(vu16 *)REG_ADDR_VCOUNT <= 0x9F);
    }

    Fade_FadeToBlack();
    DmaCopy16(3, &gUnknown_0801D43C, (void*)(VRAM), sizeof(gUnknown_0801D43C));
    DmaCopy16(3, &gUnknown_0801D93C, (void*)(PLTT), sizeof(gUnknown_0801D93C));
    DmaCopy16(3, &gUnknown_0801DB3C, (void*)(VRAM + 0x4000), sizeof(gUnknown_0801DB3C));
    Fade_FadeFromBlack();

    for(i = 0; i < 0x78; i++) {
        while(*(vu16 *)REG_ADDR_VCOUNT > 0x9F);
        while(*(vu16 *)REG_ADDR_VCOUNT <= 0x9F);
    }

    Fade_FadeToBlack();
    DmaCopy16(3, &gUnknown_0801EA7C, (void*)(VRAM), sizeof(gUnknown_0801EA7C));
    DmaCopy16(3, &gUnknown_0801EF7C, (void*)(PLTT), sizeof(gUnknown_0801EF7C));
    DmaCopy16(3, &gUnknown_0801F17C, (void*)(VRAM + 0x4000), sizeof(gUnknown_0801F17C));
    Fade_FadeFromBlack();

    for(i = 0; i < 0x78; i++) {
        while(*(vu16 *)REG_ADDR_VCOUNT > 0x9F);
        while(*(vu16 *)REG_ADDR_VCOUNT <= 0x9F);
    }

    Fade_FadeToBlack();
    sub_800E4B8();
    Fade_FadeToBlack();
}
