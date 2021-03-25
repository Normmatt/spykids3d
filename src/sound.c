#include "global.h"
#include "gba/m4a_internal.h"

extern u32 gUnknown_02011990;
extern u32 gUnknown_020119FC;
extern u16 gUnknown_02011934;
extern u16 gUnknown_020119A0;
extern u16 gUnknown_02011980;
extern u16 gUnknown_02011998;
extern u16 gUnknown_020119F4;
extern u16 gUnknown_020119F8;
extern u16 gUnknown_02011A00;
extern u16 gUnknown_02011978;
extern u32 gUnknown_02011994;
extern u8 gUnknown_02010B20[];
extern u32 gUnknown_020119F0;
extern u8 g_MusicEnabled;
extern u8 g_SoundEnabled;
extern struct SongHeader *gUnknown_0201199C;
extern struct MusicPlayerInfo gUnknown_0201B4B0;
extern struct MusicPlayerInfo gUnknown_0201B4F0;
extern struct MusicPlayerInfo gUnknown_0201B530;
extern struct MusicPlayerInfo gUnknown_0201B580;
extern u16 gUnknown_03007FF8;

extern void sub_801A424(void*);
extern void sub_801A41C(void*);
extern void m4aSoundMain(void);
extern void SoundVSync_rev01(void);

void Sound_MainCallback(void) {
    if(!gUnknown_02011990) {
        SoundVSync_rev01();
        if(gUnknown_020119FC) {
            REG_BG0HOFS = gUnknown_02011934;
            REG_BG0VOFS = gUnknown_020119A0;
            REG_BG1HOFS = gUnknown_02011980;
            REG_BG1VOFS = gUnknown_02011998;
            REG_BG2HOFS = gUnknown_020119F4;
            REG_BG2VOFS = gUnknown_020119F8;
            REG_BG3HOFS = gUnknown_02011A00;
            REG_BG3VOFS = gUnknown_02011978;
        }
        if(gUnknown_02011994) {
            sub_801A424(gUnknown_02010B20);
            sub_801A41C(gUnknown_02010B20);
            gUnknown_020119F0++;
        }
        m4aSoundMain();
    }
    gUnknown_03007FF8 = 1;
}

void stub_08003A58(void) {

}

void Sound_PlayMusic(struct SongHeader *songHeader, int musicPlayer) {
    if (g_MusicEnabled) {
        if (songHeader != NULL) {
            MPlayStart(&gUnknown_0201B4B0, songHeader);
        }
        gUnknown_0201199C = songHeader;
    }
}

void Sound_StopMusic(void) {
    m4aMPlayStop(&gUnknown_0201B4B0);
}

void Sound_PlaySE(struct SongHeader *songHeader, int musicPlayer) {
    if (g_SoundEnabled) {
        switch(musicPlayer) {
            case 0:
                MPlayStart(&gUnknown_0201B4F0, songHeader);
                break;
            case 1:
                MPlayStart(&gUnknown_0201B530, songHeader);
                break;
            case 2:
                MPlayStart(&gUnknown_0201B580, songHeader);
                break;
        }
    }
}

void Sound_StopSE(int musicPlayer) {
    switch(musicPlayer) {
        case 0:
            m4aMPlayStop(&gUnknown_0201B4F0);
            break;
        case 1:
            m4aMPlayStop(&gUnknown_0201B530);
            break;
        case 2:
            m4aMPlayStop(&gUnknown_0201B580);
            break;
    }
}
