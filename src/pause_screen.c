#include "global.h"
#include "fade.h"
#include "input.h"

extern u8 gUnknown_02000B10[];
extern u8 gUnknown_02000400[];

extern u8 gUnknown_02010B20[];

extern u8 gUnknown_08024BD8[0x1000];
extern u8 gUnknown_080252D4[0x4000];
extern u8 gUnknown_080250D4[0x200];
extern u8 gUnknown_08020E9C[0x8000];
extern u8 gUnknown_0802049C[0x1000];

extern u8 gUnknown_083FDC08[];
extern u8 gUnknown_083D65F4[];

extern u32 gUnknown_02011994;
extern u32 gUnknown_020119FC;

extern char gUnknown_080311C4[];
extern char gUnknown_080311CC[];
extern char gUnknown_080311D8[];
extern char gUnknown_080311E4[];

extern int gUnknown_02000AD4;

extern u8 gUnknown_083FDC08[];

extern int gUnknown_02000AD0;
extern u32 gUnknown_02000394;

extern u8 gUnknown_080311F0[];
extern u8 gUnknown_080311FC[];
extern u8 gUnknown_0803120C[];
extern u8 gUnknown_08031218[];
extern u8 gUnknown_08031228[];
extern u8 gUnknown_08031234[];

extern u32 gUnknown_020003A0[];

extern u16 gUnknown_020126A0[];

extern u32 gUnknown_02000388;

extern u16 gNewKeys;
extern u16 gHeldKeys;

extern u8 gUnknown_087F7920[];
extern int gUnknown_020003F0;

extern u16 gUnknown_02011934;
extern u16 gUnknown_020119A0;

extern void sub_8003A9C(void *, int);
extern void sub_800AACC(int, int, int, int, int, int, void *);
extern void DrawString(int, int, int, char *);
extern void sub_801A41C(u8 *);
extern void sub_801A41C(u8 *);

extern void sub_801A42C(int, void*);
extern void sub_801A434(int, int, void*);

void Menu_RenderPauseScreen(void) {
    u32 spC;
    u32 sp10;
    u32 sp14;
    u32 sp18;
    u32 sp1C;
    u32 sp20;
    int i, j;
    int loop = 0;
    int toAdd = 0;

    toAdd = 0;
    spC = 0;
    sp20 = 0;

    DmaCopy32(3, (void*)VRAM, &gUnknown_02000B10, 0x10000);
    DmaCopy32(3, (void*)PLTT, &gUnknown_02000400, 0x400);
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
    sub_801A41C(gUnknown_02010B20);
    sub_801A424(gUnknown_02010B20);
    sp10 = REG_DISPCNT;
    sp14 = REG_BG0CNT;
    sp18 = REG_BG1CNT;
    sp1C = REG_BG2CNT;
    REG_DISPCNT = 0x1340;
    REG_BG0CNT = 4;
    REG_BG1CNT = 0x208;

    DmaCopy32(3, &gUnknown_08024BD8, (void*)(VRAM), sizeof(gUnknown_08024BD8));
    DmaCopy32(3, &gUnknown_080252D4, (void*)(VRAM + 0x4000), sizeof(gUnknown_080252D4));
    DmaCopy32(3, &gUnknown_080250D4, (void*)(PLTT), sizeof(gUnknown_080250D4));
    DmaCopy32(3, &gUnknown_08020E9C, (void*)(VRAM + 0x8000), sizeof(gUnknown_08020E9C));
    DmaCopy32(3, &gUnknown_0802049C, (void*)(VRAM + 0x1000), sizeof(gUnknown_0802049C));

    *(vu16 *)PLTT = 0; //???...

    sub_801A42C(0, gUnknown_083FDC08);
    sub_801A434(1, 1, gUnknown_083FDC08);
    sub_801A434(0xE, 0, gUnknown_083D65F4);
    sub_801A434(0xF, 1, gUnknown_083D65F4);
    gUnknown_02011994 = 1;
    gUnknown_020119FC = 0;
    Fade_FadeFromBlack();

    while(!loop) {        
        DrawString(0xF, 0x88, 0x10, gUnknown_080311C4); // PAUSED
        DrawString(0xF, 0x40, 0x30, gUnknown_080311CC); // CONTINUE
        DrawString(0xF, 0x40, 0x48, gUnknown_080311D8); // EXIT GAME
    
        if(gUnknown_02000AD4) {
            DrawString(0xF, 0x40, 0x60, gUnknown_080311E4); // 3D GALLERY
        } else {
            DrawString(0xE, 0x40, 0x60, gUnknown_080311E4); // 3D GALLERY
        }
    
        sub_800AACC(0x28, (spC * 24) + 0x30, 1, 0, 1, 0, gUnknown_083FDC08);
    
        if ((gUnknown_02000AD0 >= 0 && gUnknown_02000AD0 <= 2)  ||
            (gUnknown_02000AD0 >= 8 && gUnknown_02000AD0 <= 10) ||
            gUnknown_02000AD0 == 12) {
                switch(gUnknown_02000394) {
                    case 0:
                        DrawString(0xF, 0x40, 0x78, gUnknown_080311F0); // SUPER JUMP
                        break;
                    case 1:
                        DrawString(0xF, 0x40, 0x78, gUnknown_080311FC); // TRIPLE PUNCH
                        break;
                    case 2:
                        DrawString(0xF, 0x40, 0x78, gUnknown_0803120C); // POWER STAFF
                        break;
                    case 3:
                        DrawString(0xF, 0x40, 0x78, gUnknown_08031218); // ENERGY STEALER
                        break;
                    case 4:
                        DrawString(0xF, 0x40, 0x78, gUnknown_08031228); // SUPER STOMP
                        break;
                    default:
                        DrawString(0xE, 0x40, 0x78, gUnknown_08031234); // NO MOVE SELECTED
                        break;
                }
        }
        // _0800106C
        for (i = 0, sp20 = toAdd + 1; i < 5; i++) {
            if(gUnknown_02000394 == i) { // _0800108A
                sub_800AACC(0xD4, 0x19 + (0x18 * i), 0, ((u8)(2 + (i * 3))), 0, 0, gUnknown_083FDC08);
            } else {
                if (gUnknown_020003A0[i]) { // _080010AC
                    sub_800AACC(0xD4, 0x19 + (0x18 * i), 0, ((u8)(3 + (i * 3))), 0, 0, gUnknown_083FDC08);
                } else {
                    sub_800AACC(0xD4, 0x19 + (0x18 * i), 0, ((u8)(1 + (i * 3))), 0, 0, gUnknown_083FDC08);
                }
            }
        }
    
        gUnknown_02011994 = 1;
        VBlankIntrWait();
    
        // Cant quite figure out the r7 reuse here...
        if(sp20 > 0xC) {
            toAdd = 0;
        } else {
            toAdd = sp20;
        }
        if(sp20 > 0xC) {
            DmaCopy16(3, (void*)0x05000094, &gUnknown_020126A0[1], 8);
            gUnknown_020126A0[0] = gUnknown_020126A0[4];
            DmaCopy16(3, &gUnknown_020126A0[0], (void*)0x05000094, 8);
        }
    
        gUnknown_02011994 = 0;
        gUnknown_02000388++;
        REG_BG1HOFS = gUnknown_02000388 >> 1;
        REG_BG1VOFS = gUnknown_02000388 >> 2;
    
        InputUpdate();
    
        if (gNewKeys & 0x0040) {
            Sound_PlaySE(gUnknown_087F7920, 2);
            if(spC) {
                spC--;
            } else {
                spC = (gUnknown_02000AD4) ? 2 : 1;
            }
        } else if (gNewKeys & 0x0080) { // _080011A8
            Sound_PlaySE(gUnknown_087F7920, 2);
            if(spC < 2 && gUnknown_02000AD4) {
                spC++;
            } else if (!spC) {
                spC = 1;
            } else {
                spC = 0;
            }
        }
        // _080011E8
        if (gNewKeys & 0x9) {
            if (spC == 0) {
                break;
            }
            // god, I hate doing this. No, an else does not work.
#ifndef NON_MATCHING
            asm("":::"r1");
#endif
            if (spC == 1) {
                gUnknown_020003F0 = 0;
                return;
            } else { // _08001210
                sub_8006D90(0);
                REG_DISPCNT = 0x1340;
                REG_BG0CNT = 4;
                REG_BG1CNT = 0x208;
                DmaCopy32(3, &gUnknown_08024BD8, (void*)(VRAM), sizeof(gUnknown_08024BD8));
                DmaCopy32(3, &gUnknown_080252D4, (void*)(VRAM + 0x4000), sizeof(gUnknown_080252D4));
                DmaCopy32(3, &gUnknown_080250D4, (void*)(PLTT), sizeof(gUnknown_080250D4));
                DmaCopy32(3, &gUnknown_08020E9C, (void*)(VRAM + 0x8000), sizeof(gUnknown_08020E9C));
                DmaCopy32(3, &gUnknown_0802049C, (void*)(VRAM + 0x1000), sizeof(gUnknown_0802049C));
                *(vu16 *)PLTT = 0; //???...
                sub_801A42C(0, gUnknown_083FDC08);
                sub_801A434(1, 1, gUnknown_083FDC08);
                sub_801A434(0xE, 0, gUnknown_083D65F4);
                sub_801A434(0xF, 1, gUnknown_083D65F4);
                Fade_FadeFromBlack();
            }
        }
    }
    Fade_FadeToBlack();
    DmaCopy32(3, &gUnknown_02000B10, (void*)VRAM, 0x10000);
    DmaCopy32(3, &gUnknown_02000400, (void*)PLTT, 0x400);
    REG_BG0HOFS = gUnknown_02011934;
    REG_BG0VOFS = gUnknown_020119A0;
    gUnknown_020119FC = 1;
    REG_DISPCNT = sp10;
    REG_BG0CNT = sp14;
    REG_BG1CNT = sp18;
    REG_BG2CNT = sp1C;
    sub_801A41C(gUnknown_02010B20);
    sub_801A424(gUnknown_02010B20);
    gNewKeys = 0;
    gHeldKeys = 0;
}
