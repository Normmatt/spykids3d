.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start IdentifyEeprom
IdentifyEeprom: @ 0x08019D30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _08019D4C
	ldr r1, _08019D44 @ =eeprom
	ldr r0, _08019D48 @ =eeprom_list
	str r0, [r1]
	b _08019D68
	.align 2, 0
_08019D44: .4byte eeprom
_08019D48: .4byte eeprom_list
_08019D4C:
	cmp r0, #0x40
	bne _08019D60
	ldr r1, _08019D58 @ =eeprom
	ldr r0, _08019D5C @ =gUnknown_087F7BE4
	str r0, [r1]
	b _08019D68
	.align 2, 0
_08019D58: .4byte eeprom
_08019D5C: .4byte gUnknown_087F7BE4
_08019D60:
	ldr r1, _08019D6C @ =eeprom
	ldr r0, _08019D70 @ =eeprom_list
	str r0, [r1]
	movs r2, #1
_08019D68:
	adds r0, r2, #0
	bx lr
	.align 2, 0
_08019D6C: .4byte eeprom
_08019D70: .4byte eeprom_list

	thumb_func_start EepromTimerIntr
EepromTimerIntr: @ 0x08019D74
	ldr r1, _08019D90 @ =timer_Count
	ldrh r0, [r1]
	cmp r0, #0
	beq _08019D8E
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019D8E
	ldr r1, _08019D94 @ =timeoutFlag
	movs r0, #1
	strb r0, [r1]
_08019D8E:
	bx lr
	.align 2, 0
_08019D90: .4byte timer_Count
_08019D94: .4byte timeoutFlag

	thumb_func_start SetEepromTimerIntr
SetEepromTimerIntr: @ 0x08019D98
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08019DCC
	ldr r0, _08019DBC @ =timer_No
	strb r1, [r0]
	ldr r1, _08019DC0 @ =timerReg
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08019DC4 @ =0x04000100
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _08019DC8 @ =EepromTimerIntr
	str r0, [r2]
	movs r0, #0
	b _08019DCE
	.align 2, 0
_08019DBC: .4byte timer_No
_08019DC0: .4byte timerReg
_08019DC4: .4byte 0x04000100
_08019DC8: .4byte EepromTimerIntr
_08019DCC:
	movs r0, #1
_08019DCE:
	bx lr

	thumb_func_start StartEepromTimer
StartEepromTimer: @ 0x08019DD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08019E3C @ =shelt_ime
	ldr r1, _08019E40 @ =0x04000208
	mov sb, r1
	ldrh r1, [r1]
	strh r1, [r2]
	movs r6, #0
	mov r2, sb
	strh r6, [r2]
	ldr r3, _08019E44 @ =timerReg
	mov r8, r3
	ldr r5, [r3]
	strh r6, [r5, #2]
	ldr r3, _08019E48 @ =0x04000202
	ldr r4, _08019E4C @ =timer_No
	ldrb r1, [r4]
	movs r2, #8
	adds r7, r2, #0
	lsls r7, r1
	adds r1, r7, #0
	strh r1, [r3]
	subs r3, #2
	ldrb r1, [r4]
	lsls r2, r1
	ldrh r1, [r3]
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _08019E50 @ =timeoutFlag
	strb r6, [r1]
	ldr r2, _08019E54 @ =timer_Count
	ldrh r1, [r0]
	strh r1, [r2]
	adds r0, #2
	ldrh r1, [r0]
	strh r1, [r5]
	adds r1, r5, #2
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r0, #2]
	strh r0, [r5, #2]
	str r5, [r2]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019E3C: .4byte shelt_ime
_08019E40: .4byte 0x04000208
_08019E44: .4byte timerReg
_08019E48: .4byte 0x04000202
_08019E4C: .4byte timer_No
_08019E50: .4byte timeoutFlag
_08019E54: .4byte timer_Count

	thumb_func_start StopEepromTimer
StopEepromTimer: @ 0x08019E58
	ldr r3, _08019E88 @ =0x04000208
	movs r1, #0
	strh r1, [r3]
	ldr r2, _08019E8C @ =timerReg
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _08019E90 @ =0x04000200
	ldr r0, _08019E94 @ =timer_No
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _08019E98 @ =shelt_ime
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_08019E88: .4byte 0x04000208
_08019E8C: .4byte timerReg
_08019E90: .4byte 0x04000200
_08019E94: .4byte timer_No
_08019E98: .4byte shelt_ime

	thumb_func_start Dma3Transmit
Dma3Transmit: @ 0x08019E9C
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _08019EFC @ =0x04000208
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _08019F00 @ =0x04000204
	ldrh r4, [r5]
	ldr r3, _08019F04 @ =0x0000F8FF
	ands r4, r3
	ldr r3, _08019F08 @ =eeprom
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _08019F0C @ =0x040000D4
	str r0, [r3]
	ldr r0, _08019F10 @ =0x040000D8
	str r1, [r0]
	ldr r1, _08019F14 @ =0x040000DC
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08019EF0
	ldr r2, _08019F18 @ =0x040000DE
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_08019EE8:
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08019EE8
_08019EF0:
	ldr r0, _08019EFC @ =0x04000208
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019EFC: .4byte 0x04000208
_08019F00: .4byte 0x04000204
_08019F04: .4byte 0x0000F8FF
_08019F08: .4byte eeprom
_08019F0C: .4byte 0x040000D4
_08019F10: .4byte 0x040000D8
_08019F14: .4byte 0x040000DC
_08019F18: .4byte 0x040000DE

	thumb_func_start ReadEepromDword
ReadEepromDword: @ 0x08019F1C
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08019F34 @ =eeprom
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blo _08019F3C
	ldr r0, _08019F38 @ =0x000080FF
	b _08019FBE
	.align 2, 0
_08019F34: .4byte eeprom
_08019F38: .4byte 0x000080FF
_08019F3C:
	ldr r0, _08019FC8 @ =eeprom
	adds r6, r0, #0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bhs _08019F66
_08019F52:
	strh r3, [r2]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _08019F52
_08019F66:
	movs r0, #1
	strh r0, [r2]
	subs r2, #2
	strh r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _08019FC8 @ =eeprom
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #3
	mov r0, sp
	adds r1, r4, #0
	bl Dma3Transmit
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl Dma3Transmit
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
_08019F94:
	movs r1, #0
	movs r3, #0
_08019F98:
	lsls r1, r1, #0x11
	ldrh r0, [r2]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _08019F98
	strh r1, [r5]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08019F94
	movs r0, #0
_08019FBE:
	add sp, #0x88
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08019FC8: .4byte eeprom

	thumb_func_start ProgramEepromDword
ProgramEepromDword: @ 0x08019FCC
	push {r4, r5, lr}
	sub sp, #0xa4
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08019FE4 @ =eeprom
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blo _08019FEC
	ldr r0, _08019FE8 @ =0x000080FF
	b _0801A090
	.align 2, 0
_08019FE4: .4byte eeprom
_08019FE8: .4byte 0x000080FF
_08019FEC:
	ldr r0, _0801A02C @ =eeprom
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r1, sp
	adds r3, r0, r1
	adds r3, #0x84
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r1, #0
_0801A002:
	ldrh r2, [r5]
	adds r5, #2
	movs r0, #0
_0801A008:
	strh r2, [r3]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0801A008
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0801A002
	movs r1, #0
	ldr r0, _0801A02C @ =eeprom
	adds r2, r0, #0
	ldr r0, [r0]
	b _0801A03E
	.align 2, 0
_0801A02C: .4byte eeprom
_0801A030:
	strh r4, [r3]
	subs r3, #2
	lsrs r4, r4, #1
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [r2]
_0801A03E:
	ldrb r0, [r0, #8]
	cmp r1, r0
	blo _0801A030
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r0, #1
	strh r0, [r3]
	movs r1, #0xd0
	lsls r1, r1, #0x14
	ldr r0, _0801A098 @ =eeprom
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #0x43
	mov r0, sp
	bl Dma3Transmit
	ldr r0, _0801A09C @ =gUnknown_087F7BF0
	bl StartEepromTimer
	movs r4, #0
	movs r1, #0xd0
	lsls r1, r1, #0x14
	movs r3, #1
	ldr r2, _0801A0A0 @ =timeoutFlag
_0801A070:
	ldrh r0, [r1]
	ands r0, r3
	cmp r0, #0
	bne _0801A08A
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801A070
	ldrh r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801A08A
	ldr r4, _0801A0A4 @ =0x0000C001
_0801A08A:
	bl StopEepromTimer
	adds r0, r4, #0
_0801A090:
	add sp, #0xa4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801A098: .4byte eeprom
_0801A09C: .4byte gUnknown_087F7BF0
_0801A0A0: .4byte timeoutFlag
_0801A0A4: .4byte 0x0000C001

	thumb_func_start VerifyEepromDword
VerifyEepromDword: @ 0x0801A0A8
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	ldr r0, _0801A0C4 @ =eeprom
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _0801A0CC
	ldr r0, _0801A0C8 @ =0x000080FF
	b _0801A0F6
	.align 2, 0
_0801A0C4: .4byte eeprom
_0801A0C8: .4byte 0x000080FF
_0801A0CC:
	adds r0, r1, #0
	mov r1, sp
	bl ReadEepromDword
	mov r2, sp
	movs r3, #0
	b _0801A0E4
_0801A0DA:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _0801A0F4
_0801A0E4:
	ldrh r1, [r4]
	ldrh r0, [r2]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq _0801A0DA
	movs r5, #0x80
	lsls r5, r5, #8
_0801A0F4:
	adds r0, r5, #0
_0801A0F6:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start ProgramEepromDwordEx
ProgramEepromDwordEx: @ 0x0801A100
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _0801A112
_0801A10C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0801A112:
	cmp r6, #2
	bhi _0801A136
	adds r0, r4, #0
	adds r1, r5, #0
	bl ProgramEepromDword
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0801A10C
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyEepromDword
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0801A10C
_0801A136:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
