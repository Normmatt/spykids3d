#include "global.h"
#include "gba/m4a_internal.h"

extern u32 gUnknown_0200039C;

extern u32 gUnknown_020003A0[];
extern u32 gUnknown_02000AE0[];

extern int gUnknown_02000394;
extern int gUnknown_020003E4;
extern int gUnknown_02000800;
extern int gUnknown_02000398;
extern int gUnknown_02000AD4;

extern u8 g_MusicEnabled;
extern u8 g_SoundEnabled;

extern u8 gUnknown_02000380;
extern u8 gUnknown_02000384;

extern int gUnknown_02015500;
extern int gUnknown_02015530;

extern struct SongHeader gUnknown_087F530C;

extern u8 gIgnoreKeys;

extern u32 gUnknown_020003F0;

extern void sub_800FDE4(void);
void Sound_PlayMusic(struct SongHeader *songHeader, int musicPlayer);

extern int gUnknown_02013118;
extern int gUnknown_02012630;
extern int gUnknown_020126F0;
extern int gUnknown_02012688;
extern int gUnknown_020126FC;
extern int gUnknown_02012694;
extern int gUnknown_02012638;

extern int gUnknown_02000AD0;

extern u8 gUnknown_02000810[];
extern void sub_8012F9C(void*);
extern void sub_800200C(int);

extern int sub_80017C8(void);

extern void sub_80027FC(void);
extern void sub_8002984(void);
extern void DoCopyrightScreens(void);
extern void sub_800FA50(void);
extern int sub_80042B4(int);
extern void sub_8010250(int);
extern int sub_8005770(int);
extern int sub_80050C4(int);
extern void sub_80115F8(void);
extern void DrawCredits(void);
extern int sub_8004828(int);
extern void sub_8013E68(void *);
extern void sub_801439C(void *);

void AgbMain(void) {
    sub_80027FC();
    sub_8002984();
    DoCopyrightScreens();
    gUnknown_0200039C = 0;

    while(gUnknown_0200039C < 16) {
        gUnknown_020003A0[gUnknown_0200039C++] = 0;
    }
    gUnknown_0200039C = 0;

    while(gUnknown_0200039C < 10) {
        gUnknown_02000AE0[gUnknown_0200039C++] = 0;
    }
    gUnknown_02000394 = -1;
    gUnknown_0200039C = 0;
    gUnknown_020003E4 = 0;
    gUnknown_02000800 = 3;
    gUnknown_02000398 = 5;
    gUnknown_02000AD4 = 0;
    g_MusicEnabled = 1;
    g_SoundEnabled = 1;
    gUnknown_02000380 = 0;
    gUnknown_02000384 = 5;
    gUnknown_02015500 = 0;
    gUnknown_02015530 = 0;
    Sound_PlayMusic(&gUnknown_087F530C, 0);
    sub_800FDE4();

    for(;;) { // game loop
        gUnknown_02015500 = 0;
        gUnknown_02015530 = 0;
        sub_800FA50();
        gUnknown_020003F0 = 1;
        gIgnoreKeys = 0;
        do {
            gUnknown_02013118 = 1;
            gUnknown_02012630 = 1;
            gUnknown_020126F0 = 0;
            gUnknown_02012688 = 0;
            gUnknown_020126FC = 0;
            gUnknown_02012694 = 0;
            gUnknown_02012638 = 0;
        
            if(gUnknown_0200039C == 0) {
                gUnknown_02000AD0 = 0;
            } else {
                gUnknown_02000AD0 = sub_80017C8();
            }
        
            /**
            * These cases are very macro-y. They seemingly abuse gotos due to nested do
            * whiles and switches.
            * 
            * TODO: Any better way to make this less hacky?
            */
            switch(gUnknown_02000AD0) {
                case 0:
                    sub_8012F9C(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_80042B4(0));
        
                    if(!gUnknown_020003F0) break;
        
                    if(gUnknown_0200039C == 0) {
                        gUnknown_0200039C = 1;
                    }
        
                    sub_8010250(0);
                    break;
                case 1:
                    sub_8012F9C(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_80042B4(1));
                    
                    if(!gUnknown_020003F0) break;
        
                    if(gUnknown_0200039C == 1) {
                        gUnknown_0200039C = 2;
                    }
        
                    sub_8010250(1);
                    break;
                case 2: 
                    sub_8012F9C(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_80042B4(2));
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while(!sub_8005770(0));
        
                    if(!gUnknown_020003F0) break;
        
                    if(gUnknown_0200039C == 2) {
                        gUnknown_0200039C = 3;
                    }
        
                    sub_8010250(2);
                    break;
                case 3: 
                    sub_801439C(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_80050C4(0));
        
                    if(!gUnknown_020003F0) break;
        
                    if(gUnknown_0200039C == 3) {
                        gUnknown_0200039C = 4;
                    }
        
                    sub_8010250(9);
                    break;
                case 4: 
                    sub_8013E68(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_80042B4(3));
        
                    if(!gUnknown_020003F0) break;
        
                    if(gUnknown_0200039C == 4) {
                        gUnknown_0200039C = 5;
                    }
        
                    sub_8010250(3);
                    break;
                case 5: 
                    sub_8013E68(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_80042B4(4));
        
                    if(!gUnknown_020003F0) break;
        
                    if(gUnknown_0200039C == 5) {
                        gUnknown_0200039C = 6;
                    }
        
                    sub_8010250(4);
                    break;
                case 6: 
                    sub_8013E68(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_80042B4(5));
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_8005770(1));
        
                    if(!gUnknown_020003F0) break;
        
                    if(gUnknown_0200039C == 6) {
                        gUnknown_0200039C = 7;
                    }
        
                    sub_8010250(5);
                    break;
                case 7: 
                    sub_801439C(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_80050C4(1));
        
                    if(!gUnknown_020003F0) break;
        
                    if(gUnknown_0200039C == 7) {
                        gUnknown_0200039C = 8;
                    }
        
                    sub_8010250(10);
                    break;
                case 8: 
                    sub_8012F9C(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_8004828(0));
        
                    if(!gUnknown_020003F0) break;
        
                    if(gUnknown_0200039C == 8) {
                        gUnknown_0200039C = 9;
                    }
        
                    sub_8010250(6);
                    break;
                case 9: 
                    sub_8012F9C(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_8004828(1));
        
                    if(!gUnknown_020003F0) break;
        
                    if(gUnknown_0200039C == 9) {
                        gUnknown_0200039C = 10;
                    }
        
                    sub_8010250(7);
                    break;
                case 10: 
                    sub_8012F9C(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_8004828(2));
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_8005770(2));
        
                    if(!gUnknown_020003F0) break;
        
                    if(gUnknown_0200039C == 10) {
                        gUnknown_0200039C = 11;
                    }
        
                    sub_8010250(8);
                    break;
                case 11: 
                    sub_801439C(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_80050C4(2));
        
                    if(!gUnknown_020003F0) break;
        
                    if(gUnknown_0200039C == 11) {
                        gUnknown_0200039C = 12;
                    }
        
                    sub_8010250(11);
                    break;
                case 12: 
                    sub_8012F9C(gUnknown_02000810);
                    sub_800200C(gUnknown_02000AD0);
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while (!sub_8005770(4));
        
                    do {
                        if(!gUnknown_020003F0) break;
                    } while(!sub_8005770(3));
        
                    if(!gUnknown_020003F0) break;
        
                    sub_8010250(12);
        
                    sub_800200C(13);
                    sub_80115F8();
                    DrawCredits();
        
                    gUnknown_020003F0 = 0;
                    break;
            }
        } while(gUnknown_020003F0);

        Sound_PlayMusic(&gUnknown_087F530C, 0);
    }
}
