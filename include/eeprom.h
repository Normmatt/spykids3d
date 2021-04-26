#ifndef AGB_EEPROM_H
#define AGB_EEPROM_H

// Should be AgbEeprom.h from SDK

#define REG_ADDR_EEPROM 0xD000000
#define REG_EEPROM      (*(vu16*)REG_ADDR_EEPROM)

// EEPROM Error codes
#define EEPROM_OUT_OF_RANGE 0x80FF
#define EEPROM_VERIFY_FAIL  0x8000
#define EEPROM_WRITE_FAIL   0xC001

typedef struct EEPROMConfig {
    u32 unk_00;
    u16 size;
    u16 waitcnt;
    u8 address_width;
} EEPROMConfig;

extern const EEPROMConfig* gEEPROMConfig; // eeprom
extern const EEPROMConfig gEEPROMConfig512; // gEEPROMConfig512
extern const EEPROMConfig gEEPROMConfig8k; // gUnknown_087F7BE4

extern u16 timer_Count;
extern u8 timeoutFlag;
extern u8 timer_No;
extern vu16* timerReg;
extern u16 shelt_ime;

extern u16 gUnknown_087F7BF0;

u16 IdentifyEeprom(u16 sizeInKbit);
void EepromTimerIntr(void);
u16 SetEepromTimerIntr(u8 timerNo, u32 *timerPtr);
void StartEepromTimer(u16* maxTime);
void StopEepromTimer(void);
void Dma3Transmit(void *dma3sad, void *dma3dad, u16 orValue);
u16 ReadEepromDword(u16 address, u16 *data);
u16 ProgramEepromDword(u16 address, const u16 *data);
u16 VerifyEepromDword(u16 address, u16 *data);
u16 ProgramEepromDwordEx(u16 address, u16 *data);

#endif // AGB_EEPROM_H
