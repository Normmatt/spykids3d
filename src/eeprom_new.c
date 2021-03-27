#include "global.h"
#include "eeprom.h"

// See the description in eeprom.c for the explanation for the file split.

void Dma3Transmit(void *dma3sad, void *dma3dad, u16 orValue) {
    u16 ime = REG_IME;
    REG_IME = 0;
    REG_WAITCNT = (REG_WAITCNT & 0xF8FF) | gEEPROMConfig->waitcnt;
    REG_DMA3SAD = (u32)dma3sad;
    REG_DMA3DAD = (u32)dma3dad;
    REG_DMA3CNT = orValue | (0x80000000);
    while (REG_DMA3CNT_H & 0x8000);
    REG_IME = ime;
}

u16 ReadEepromDword(u16 address, u16 *data) {
    u16 buffer[0x44];
    u16* ptr;
    u8* p;
    u8 t1, t2;
    u16 value;

    if (address >= gEEPROMConfig->size) {
        return EEPROM_OUT_OF_RANGE;
    } else {
        ptr = buffer;
        // setup address
        p = (u8*)ptr;
        p += (gEEPROMConfig->address_width << 1) + 1;
        ptr = (u16*)p++;
        ptr = (u16*)p++;
        for (t1 = 0; t1 < gEEPROMConfig->address_width; t1++) {
            *(ptr--) = address;
            address >>= 1;
        }
        // read request
        *(ptr--) = 1;
        *ptr = 1;
        Dma3Transmit(&buffer, REG_ADDR_EEPROM, (gEEPROMConfig->address_width + 3));
        Dma3Transmit(REG_ADDR_EEPROM, &buffer, 0x44);
        // 4 bit junk
        ptr = buffer + 4;
        data += 3;
        // copy data into output buffer
        for (t1 = 0; t1 < 4; t1++) {
            value = 0;
            for (t2 = 0; t2 < 0x10; t2++) {
                value <<= 1;
                value |= (*ptr++) & 1;
            }
            *(data--) = value;
        }
        return 0;
    }
}

// Matches v3 and v4 SDK
u16 ProgramEepromDword(u16 address, const u16 *data) {
    u16 buffer[0x52]; // this is one too large?
    u16 *ptr;
    u8 i, j;    
    u16 retval;

    if (address >= gEEPROMConfig->size)
        return EEPROM_OUT_OF_RANGE;
    
    // ugly ptr math required for OK
    ptr = (u16 *)(0x42 + (u32)&buffer + (u32)(gEEPROMConfig->address_width << 1) + 0x42);
    *(ptr)-- = 0;

    // copy data into buffer
    for (i = 0; i < 4; i++) {
        u16 r2 = *data++;
        for (j = 0; j < 16; j++) {
            *ptr-- = r2;
            r2 = r2 >> 1;
        }
    }
    // copy address to buffer
    for (i = 0; i < gEEPROMConfig->address_width; i++) {
        *ptr--= address;
        address = address >> 1;
    }
    *ptr-- = 0;
    *ptr-- = 1;

    Dma3Transmit(&buffer, &REG_EEPROM, (gEEPROMConfig->address_width + 0x43));
    StartEepromTimer(&gUnknown_087F7BF0);

    retval = 0;

    while(1) {
        if(REG_EEPROM & 1) {
            break;
        }
        if (!timeoutFlag) {
            continue;
        }
        if(!(REG_EEPROM & 1)) {
            retval = EEPROM_WRITE_FAIL;
        }
        break;
    }
    StopEepromTimer();
    return retval;
}

u16 VerifyEepromDword(u16 address, u16 *data) {
    u16 buffer[4];
    u8 i;
    u16 *ptr;
    u16 retvar = 0;

    if (address >= gEEPROMConfig->size)
        return EEPROM_OUT_OF_RANGE;

    ReadEepromDword(address, buffer);
    ptr = buffer;
    for (i = 0; i < 4; i++) {
        if(*data++ != *ptr++) {
            retvar = EEPROM_VERIFY_FAIL;
            break;
        }
    }
    return retvar;
}

u16 ProgramEepromDwordEx(u16 address, u16 *data) {
    u16 retvar;
    u8 i = 0;

    while(i < 3) {
        if(!(retvar = ProgramEepromDword(address, data)) && !(retvar = VerifyEepromDword(address, data))) {
            break;
        }
        i++;
    }
    return retvar;
}
