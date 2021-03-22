
.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_8000AC0
sub_8000AC0: @ 0x08000AC0
	push {r4, r5, lr}
	ldr r2, _08000AF0 @ =0x04000054
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08000AF4 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	movs r4, #0
	adds r5, r2, #0
_08000AD2:
	strh r4, [r5]
	bl VBlankIntrWait
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08000AD2
	ldr r1, _08000AF0 @ =0x04000054
	movs r0, #0x10
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000AF0: .4byte 0x04000054
_08000AF4: .4byte 0x04000050

	thumb_func_start sub_8000AF8
sub_8000AF8: @ 0x08000AF8
	push {r4, r5, lr}
	ldr r2, _08000B28 @ =0x04000054
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08000B2C @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0
	adds r5, r2, #0
_08000B0A:
	strh r4, [r5]
	bl VBlankIntrWait
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08000B0A
	ldr r1, _08000B28 @ =0x04000054
	movs r0, #0x10
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000B28: .4byte 0x04000054
_08000B2C: .4byte 0x04000050

	thumb_func_start sub_8000B30
sub_8000B30: @ 0x08000B30
	push {r4, r5, r6, lr}
	ldr r2, _08000B64 @ =0x04000054
	movs r0, #0x10
	strh r0, [r2]
	ldr r1, _08000B68 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	movs r4, #0
	adds r6, r2, #0
	movs r5, #0x10
_08000B44:
	subs r0, r5, r4
	strh r0, [r6]
	bl VBlankIntrWait
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08000B44
	ldr r1, _08000B64 @ =0x04000054
	movs r0, #0
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000B64: .4byte 0x04000054
_08000B68: .4byte 0x04000050

	thumb_func_start sub_8000B6C
sub_8000B6C: @ 0x08000B6C
	push {r4, r5, r6, lr}
	ldr r2, _08000BA0 @ =0x04000054
	movs r0, #0x10
	strh r0, [r2]
	ldr r1, _08000BA4 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0
	adds r6, r2, #0
	movs r5, #0x10
_08000B80:
	subs r0, r5, r4
	strh r0, [r6]
	bl VBlankIntrWait
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08000B80
	ldr r1, _08000BA0 @ =0x04000054
	movs r0, #0
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000BA0: .4byte 0x04000054
_08000BA4: .4byte 0x04000050

	thumb_func_start sub_8000BA8
sub_8000BA8: @ 0x08000BA8
	push {lr}
	ldr r1, _08000D18 @ =0x040000D4
	ldr r0, _08000D1C @ =gUnknown_0801A45C
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08000D20 @ =0x80000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000D24 @ =gUnknown_0801A95C
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08000D28 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000D2C @ =gUnknown_0801AB5C
	str r0, [r1]
	ldr r0, _08000D30 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _08000D34 @ =0x80001470
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_8000B6C
	ldr r3, _08000D38 @ =0x04000006
	movs r2, #0x77
_08000BE2:
	ldrh r0, [r3]
	cmp r0, #0x9f
	bls _08000BF0
	ldr r1, _08000D38 @ =0x04000006
_08000BEA:
	ldrh r0, [r1]
	cmp r0, #0x9f
	bhi _08000BEA
_08000BF0:
	ldr r1, _08000D38 @ =0x04000006
_08000BF2:
	ldrh r0, [r1]
	cmp r0, #0x9f
	bls _08000BF2
	subs r2, #1
	cmp r2, #0
	bge _08000BE2
	bl sub_8000AC0
	ldr r1, _08000D18 @ =0x040000D4
	ldr r0, _08000D3C @ =gUnknown_0802F4C8
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08000D40 @ =0x8000027E
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000D44 @ =gUnknown_08030FC4
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08000D28 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000D48 @ =gUnknown_0802F9C4
	str r0, [r1]
	ldr r0, _08000D30 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _08000D4C @ =0x80000B00
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_8000B30
	ldr r3, _08000D38 @ =0x04000006
	movs r2, #0x77
_08000C3A:
	ldrh r0, [r3]
	cmp r0, #0x9f
	bls _08000C48
	ldr r1, _08000D38 @ =0x04000006
_08000C42:
	ldrh r0, [r1]
	cmp r0, #0x9f
	bhi _08000C42
_08000C48:
	ldr r1, _08000D38 @ =0x04000006
_08000C4A:
	ldrh r0, [r1]
	cmp r0, #0x9f
	bls _08000C4A
	subs r2, #1
	cmp r2, #0
	bge _08000C3A
	bl sub_8000AC0
	ldr r1, _08000D18 @ =0x040000D4
	ldr r0, _08000D50 @ =gUnknown_0801D43C
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08000D20 @ =0x80000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000D54 @ =gUnknown_0801D93C
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08000D28 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000D58 @ =gUnknown_0801DB3C
	str r0, [r1]
	ldr r0, _08000D30 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _08000D5C @ =0x800007A0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_8000B30
	ldr r3, _08000D38 @ =0x04000006
	movs r2, #0x77
_08000C92:
	ldrh r0, [r3]
	cmp r0, #0x9f
	bls _08000CA0
	ldr r1, _08000D38 @ =0x04000006
_08000C9A:
	ldrh r0, [r1]
	cmp r0, #0x9f
	bhi _08000C9A
_08000CA0:
	ldr r1, _08000D38 @ =0x04000006
_08000CA2:
	ldrh r0, [r1]
	cmp r0, #0x9f
	bls _08000CA2
	subs r2, #1
	cmp r2, #0
	bge _08000C92
	bl sub_8000AC0
	ldr r1, _08000D18 @ =0x040000D4
	ldr r0, _08000D60 @ =gUnknown_0801EA7C
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08000D20 @ =0x80000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000D64 @ =gUnknown_0801EF7C
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08000D28 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000D68 @ =gUnknown_0801F17C
	str r0, [r1]
	ldr r0, _08000D30 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _08000D6C @ =0x80000990
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_8000B30
	movs r2, #0
	ldr r3, _08000D38 @ =0x04000006
_08000CEA:
	ldrh r0, [r3]
	adds r2, #1
	cmp r0, #0x9f
	bls _08000CFA
	ldr r1, _08000D38 @ =0x04000006
_08000CF4:
	ldrh r0, [r1]
	cmp r0, #0x9f
	bhi _08000CF4
_08000CFA:
	ldr r1, _08000D38 @ =0x04000006
_08000CFC:
	ldrh r0, [r1]
	cmp r0, #0x9f
	bls _08000CFC
	cmp r2, #0x77
	ble _08000CEA
	bl sub_8000AC0
	bl sub_800E4B8
	bl sub_8000AC0
	pop {r0}
	bx r0
	.align 2, 0
_08000D18: .4byte 0x040000D4
_08000D1C: .4byte gUnknown_0801A45C
_08000D20: .4byte 0x80000280
_08000D24: .4byte gUnknown_0801A95C
_08000D28: .4byte 0x80000100
_08000D2C: .4byte gUnknown_0801AB5C
_08000D30: .4byte 0x06004000
_08000D34: .4byte 0x80001470
_08000D38: .4byte 0x04000006
_08000D3C: .4byte gUnknown_0802F4C8
_08000D40: .4byte 0x8000027E
_08000D44: .4byte gUnknown_08030FC4
_08000D48: .4byte gUnknown_0802F9C4
_08000D4C: .4byte 0x80000B00
_08000D50: .4byte gUnknown_0801D43C
_08000D54: .4byte gUnknown_0801D93C
_08000D58: .4byte gUnknown_0801DB3C
_08000D5C: .4byte 0x800007A0
_08000D60: .4byte gUnknown_0801EA7C
_08000D64: .4byte gUnknown_0801EF7C
_08000D68: .4byte gUnknown_0801F17C
_08000D6C: .4byte 0x80000990

	thumb_func_start sub_8000D70
sub_8000D70: @ 0x08000D70
	push {lr}
	ldr r0, _08000DD4 @ =gUnknown_0200039C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000DD8 @ =gUnknown_020003E4
	str r1, [r0]
	ldr r1, _08000DDC @ =gUnknown_02000800
	movs r0, #3
	str r0, [r1]
	ldr r1, _08000DE0 @ =gUnknown_02000398
	ldr r0, _08000DE4 @ =gUnknown_02000384
	ldrb r0, [r0]
	str r0, [r1]
	ldr r2, _08000DE8 @ =gUnknown_02000AD4
	ldr r0, [r2]
	movs r1, #0xfe
	lsls r1, r1, #8
	ands r0, r1
	str r0, [r2]
	ldr r3, _08000DEC @ =gUnknown_02000394
	ldr r1, _08000DF0 @ =gUnknown_020003A0
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x3c
_08000DA0:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _08000DA0
	ldr r1, _08000DF4 @ =gUnknown_02000AE0
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x24
_08000DB0:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _08000DB0
	ldr r1, _08000DF8 @ =gUnknown_020119B0
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x3c
_08000DC0:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _08000DC0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_08000DD4: .4byte gUnknown_0200039C
_08000DD8: .4byte gUnknown_020003E4
_08000DDC: .4byte gUnknown_02000800
_08000DE0: .4byte gUnknown_02000398
_08000DE4: .4byte gUnknown_02000384
_08000DE8: .4byte gUnknown_02000AD4
_08000DEC: .4byte gUnknown_02000394
_08000DF0: .4byte gUnknown_020003A0
_08000DF4: .4byte gUnknown_02000AE0
_08000DF8: .4byte gUnknown_020119B0

	thumb_func_start sub_8000DFC
sub_8000DFC: @ 0x08000DFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r7, #0
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r4, _08000F34 @ =0x040000D4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	mov r8, r1
	str r1, [r4]
	ldr r0, _08000F38 @ =gUnknown_02000B10
	str r0, [r4, #4]
	ldr r0, _08000F3C @ =0x84004000
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r6, #0xa0
	lsls r6, r6, #0x13
	str r6, [r4]
	ldr r0, _08000F40 @ =gUnknown_02000400
	str r0, [r4, #4]
	ldr r0, _08000F44 @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08000F48 @ =0x04000010
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r5, _08000F4C @ =gUnknown_02010B20
	adds r0, r5, #0
	bl sub_801A41C
	adds r0, r5, #0
	bl sub_801A424
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r0, [r3]
	str r0, [sp, #0x10]
	ldr r2, _08000F50 @ =0x04000008
	ldrh r0, [r2]
	str r0, [sp, #0x14]
	ldr r1, _08000F54 @ =0x0400000A
	ldrh r0, [r1]
	str r0, [sp, #0x18]
	ldr r0, _08000F58 @ =0x0400000C
	ldrh r0, [r0]
	str r0, [sp, #0x1c]
	movs r5, #0x9a
	lsls r5, r5, #5
	adds r0, r5, #0
	strh r0, [r3]
	movs r0, #4
	strh r0, [r2]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08000F5C @ =gUnknown_08024BD8
	str r0, [r4]
	mov r5, r8
	str r5, [r4, #4]
	ldr r1, _08000F60 @ =0x84000400
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08000F64 @ =gUnknown_080252D4
	str r0, [r4]
	ldr r0, _08000F68 @ =0x06004000
	str r0, [r4, #4]
	ldr r0, _08000F6C @ =0x84001000
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08000F70 @ =gUnknown_080250D4
	str r0, [r4]
	str r6, [r4, #4]
	ldr r0, _08000F74 @ =0x84000080
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08000F78 @ =gUnknown_08020E9C
	str r0, [r4]
	ldr r0, _08000F7C @ =0x06008000
	str r0, [r4, #4]
	ldr r0, _08000F80 @ =0x84002000
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08000F84 @ =gUnknown_0802049C
	str r0, [r4]
	ldr r0, _08000F88 @ =0x06001000
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0
	strh r0, [r6]
	ldr r4, _08000F8C @ =gUnknown_083FDC08
	movs r0, #0
	adds r1, r4, #0
	bl sub_801A42C
	movs r0, #1
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r4, _08000F90 @ =gUnknown_083D65F4
	movs r0, #0xe
	movs r1, #0
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #0xf
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r1, _08000F94 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	ldr r0, _08000F98 @ =gUnknown_020119FC
	movs r1, #0
	str r1, [r0]
	bl sub_8000B30
_08000EF8:
	ldr r3, _08000F9C @ =gUnknown_080311C4
	movs r0, #0xf
	movs r1, #0x88
	movs r2, #0x10
	bl DrawString
	ldr r3, _08000FA0 @ =gUnknown_080311CC
	movs r0, #0xf
	movs r1, #0x40
	movs r2, #0x30
	bl DrawString
	ldr r3, _08000FA4 @ =gUnknown_080311D8
	movs r0, #0xf
	movs r1, #0x40
	movs r2, #0x48
	bl DrawString
	ldr r0, _08000FA8 @ =gUnknown_02000AD4
	ldr r0, [r0]
	cmp r0, #0
	beq _08000FB0
	ldr r3, _08000FAC @ =gUnknown_080311E4
	movs r0, #0xf
	movs r1, #0x40
	movs r2, #0x60
	bl DrawString
	b _08000FBC
	.align 2, 0
_08000F34: .4byte 0x040000D4
_08000F38: .4byte gUnknown_02000B10
_08000F3C: .4byte 0x84004000
_08000F40: .4byte gUnknown_02000400
_08000F44: .4byte 0x84000100
_08000F48: .4byte 0x04000010
_08000F4C: .4byte gUnknown_02010B20
_08000F50: .4byte 0x04000008
_08000F54: .4byte 0x0400000A
_08000F58: .4byte 0x0400000C
_08000F5C: .4byte gUnknown_08024BD8
_08000F60: .4byte 0x84000400
_08000F64: .4byte gUnknown_080252D4
_08000F68: .4byte 0x06004000
_08000F6C: .4byte 0x84001000
_08000F70: .4byte gUnknown_080250D4
_08000F74: .4byte 0x84000080
_08000F78: .4byte gUnknown_08020E9C
_08000F7C: .4byte 0x06008000
_08000F80: .4byte 0x84002000
_08000F84: .4byte gUnknown_0802049C
_08000F88: .4byte 0x06001000
_08000F8C: .4byte gUnknown_083FDC08
_08000F90: .4byte gUnknown_083D65F4
_08000F94: .4byte gUnknown_02011994
_08000F98: .4byte gUnknown_020119FC
_08000F9C: .4byte gUnknown_080311C4
_08000FA0: .4byte gUnknown_080311CC
_08000FA4: .4byte gUnknown_080311D8
_08000FA8: .4byte gUnknown_02000AD4
_08000FAC: .4byte gUnknown_080311E4
_08000FB0:
	ldr r3, _08001004 @ =gUnknown_080311E4
	movs r0, #0xe
	movs r1, #0x40
	movs r2, #0x60
	bl DrawString
_08000FBC:
	ldr r2, [sp, #0xc]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, #0x30
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08001008 @ =gUnknown_083FDC08
	str r0, [sp, #8]
	movs r0, #0x28
	movs r2, #1
	movs r3, #0
	bl sub_800AACC
	ldr r0, _0800100C @ =gUnknown_02000AD0
	ldr r1, [r0]
	cmp r1, #2
	bls _08000FF0
	adds r0, r1, #0
	subs r0, #8
	cmp r0, #2
	bls _08000FF0
	cmp r1, #0xc
	bne _0800106C
_08000FF0:
	ldr r0, _08001010 @ =gUnknown_02000394
	ldr r0, [r0]
	cmp r0, #4
	bhi _08001060
	lsls r0, r0, #2
	ldr r1, _08001014 @ =_08001018
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001004: .4byte gUnknown_080311E4
_08001008: .4byte gUnknown_083FDC08
_0800100C: .4byte gUnknown_02000AD0
_08001010: .4byte gUnknown_02000394
_08001014: .4byte _08001018
_08001018: @ jump table
	.4byte _0800102C @ case 0
	.4byte _08001034 @ case 1
	.4byte _0800103C @ case 2
	.4byte _08001044 @ case 3
	.4byte _0800104C @ case 4
_0800102C:
	ldr r3, _08001030 @ =gUnknown_080311F0
	b _0800104E
	.align 2, 0
_08001030: .4byte gUnknown_080311F0
_08001034:
	ldr r3, _08001038 @ =gUnknown_080311FC
	b _0800104E
	.align 2, 0
_08001038: .4byte gUnknown_080311FC
_0800103C:
	ldr r3, _08001040 @ =gUnknown_0803120C
	b _0800104E
	.align 2, 0
_08001040: .4byte gUnknown_0803120C
_08001044:
	ldr r3, _08001048 @ =gUnknown_08031218
	b _0800104E
	.align 2, 0
_08001048: .4byte gUnknown_08031218
_0800104C:
	ldr r3, _0800105C @ =gUnknown_08031228
_0800104E:
	movs r0, #0xf
	movs r1, #0x40
	movs r2, #0x78
	bl DrawString
	b _0800106C
	.align 2, 0
_0800105C: .4byte gUnknown_08031228
_08001060:
	ldr r3, _080010A0 @ =gUnknown_08031234
	movs r0, #0xe
	movs r1, #0x40
	movs r2, #0x78
	bl DrawString
_0800106C:
	movs r5, #0
	adds r0, r7, #1
	str r0, [sp, #0x20]
	movs r6, #0
	ldr r1, _080010A4 @ =gUnknown_083FDC08
	mov sb, r1
	movs r2, #0x80
	lsls r2, r2, #0x11
	mov sl, r2
	movs r4, #0x19
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r8, r0
	movs r7, #0x80
	lsls r7, r7, #0x12
_0800108A:
	ldr r0, _080010A8 @ =gUnknown_02000394
	ldr r0, [r0]
	cmp r0, r5
	bne _080010AC
	lsrs r3, r7, #0x18
	str r6, [sp]
	str r6, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	b _080010C4
	.align 2, 0
_080010A0: .4byte gUnknown_08031234
_080010A4: .4byte gUnknown_083FDC08
_080010A8: .4byte gUnknown_02000394
_080010AC:
	ldr r1, _080010D0 @ =gUnknown_020003A0
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080010D4
	mov r2, r8
	lsrs r3, r2, #0x18
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, sb
	str r0, [sp, #8]
_080010C4:
	movs r0, #0xd4
	adds r1, r4, #0
	movs r2, #0
	bl sub_800AACC
	b _080010EA
	.align 2, 0
_080010D0: .4byte gUnknown_020003A0
_080010D4:
	mov r1, sl
	lsrs r3, r1, #0x18
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, sb
	str r2, [sp, #8]
	movs r0, #0xd4
	adds r1, r4, #0
	movs r2, #0
	bl sub_800AACC
_080010EA:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add sl, r0
	adds r4, #0x18
	add r8, r0
	adds r7, r7, r0
	adds r5, #1
	cmp r5, #4
	ble _0800108A
	ldr r5, _08001168 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r5]
	bl VBlankIntrWait
	ldr r7, [sp, #0x20]
	cmp r7, #0xc
	bls _0800112C
	movs r7, #0
	ldr r2, _0800116C @ =0x040000D4
	ldr r4, _08001170 @ =0x05000094
	str r4, [r2]
	ldr r1, _08001174 @ =gUnknown_020126A2
	str r1, [r2, #4]
	ldr r3, _08001178 @ =0x80000004
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	subs r1, #2
	ldrh r0, [r1, #8]
	strh r0, [r1]
	str r1, [r2]
	str r4, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
_0800112C:
	movs r0, #0
	str r0, [r5]
	ldr r1, _0800117C @ =gUnknown_02000388
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _08001180 @ =0x04000014
	lsrs r1, r0, #1
	strh r1, [r2]
	ldr r1, _08001184 @ =0x04000016
	lsrs r0, r0, #2
	strh r0, [r1]
	bl sub_8000A28
	ldr r0, _08001188 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080011A8
	ldr r0, _0800118C @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _08001190
	subs r1, #1
	str r1, [sp, #0xc]
	b _080011E8
	.align 2, 0
_08001168: .4byte gUnknown_02011994
_0800116C: .4byte 0x040000D4
_08001170: .4byte 0x05000094
_08001174: .4byte gUnknown_020126A2
_08001178: .4byte 0x80000004
_0800117C: .4byte gUnknown_02000388
_08001180: .4byte 0x04000014
_08001184: .4byte 0x04000016
_08001188: .4byte gUnknown_020003E8
_0800118C: .4byte gUnknown_087F7920
_08001190:
	ldr r0, _080011A4 @ =gUnknown_02000AD4
	ldr r0, [r0]
	movs r2, #1
	str r2, [sp, #0xc]
	cmp r0, #0
	beq _080011E8
	movs r5, #2
	str r5, [sp, #0xc]
	b _080011E8
	.align 2, 0
_080011A4: .4byte gUnknown_02000AD4
_080011A8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080011E8
	ldr r0, _080011D0 @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bhi _080011D8
	ldr r0, _080011D4 @ =gUnknown_02000AD4
	ldr r0, [r0]
	cmp r0, #0
	beq _080011D8
	ldr r1, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0xc]
	b _080011E8
	.align 2, 0
_080011D0: .4byte gUnknown_087F7920
_080011D4: .4byte gUnknown_02000AD4
_080011D8:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080011E4
	movs r5, #1
	str r5, [sp, #0xc]
	b _080011E8
_080011E4:
	movs r0, #0
	str r0, [sp, #0xc]
_080011E8:
	ldr r0, _08001208 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080012AE
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _080012B6
	ldr r2, [sp, #0xc]
	cmp r2, #1
	bne _08001210
	ldr r1, _0800120C @ =gUnknown_020003F0
	movs r0, #0
	str r0, [r1]
	b _0800132C
	.align 2, 0
_08001208: .4byte gUnknown_020003E8
_0800120C: .4byte gUnknown_020003F0
_08001210:
	movs r0, #0
	bl sub_8006D90
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r5, #0x9a
	lsls r5, r5, #5
	adds r0, r5, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #4
	strh r0, [r1]
	adds r1, #2
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0xca
	ldr r0, _0800133C @ =gUnknown_08024BD8
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r3, _08001340 @ =0x84000400
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08001344 @ =gUnknown_080252D4
	str r0, [r1]
	ldr r0, _08001348 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0800134C @ =0x84001000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08001350 @ =gUnknown_080250D4
	str r0, [r1]
	movs r2, #0xa0
	lsls r2, r2, #0x13
	str r2, [r1, #4]
	ldr r0, _08001354 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08001358 @ =gUnknown_08020E9C
	str r0, [r1]
	ldr r0, _0800135C @ =0x06008000
	str r0, [r1, #4]
	ldr r0, _08001360 @ =0x84002000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08001364 @ =gUnknown_0802049C
	str r0, [r1]
	ldr r0, _08001368 @ =0x06001000
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	strh r0, [r2]
	ldr r4, _0800136C @ =gUnknown_083FDC08
	movs r0, #0
	adds r1, r4, #0
	bl sub_801A42C
	movs r0, #1
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r4, _08001370 @ =gUnknown_083D65F4
	movs r0, #0xe
	movs r1, #0
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #0xf
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	bl sub_8000B30
_080012AE:
	movs r5, #0
	cmp r5, #0
	bne _080012B6
	b _08000EF8
_080012B6:
	bl sub_8000AC0
	ldr r1, _08001374 @ =0x040000D4
	ldr r0, _08001378 @ =gUnknown_02000B10
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0800137C @ =0x84004000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08001380 @ =gUnknown_02000400
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08001384 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r1, #0xc4
	ldr r0, _08001388 @ =gUnknown_02011934
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800138C @ =gUnknown_020119A0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08001390 @ =gUnknown_020119FC
	movs r0, #1
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x13
	mov r1, sp
	ldrh r1, [r1, #0x10]
	strh r1, [r0]
	adds r0, #8
	mov r2, sp
	ldrh r2, [r2, #0x14]
	strh r2, [r0]
	adds r0, #2
	mov r5, sp
	ldrh r5, [r5, #0x18]
	strh r5, [r0]
	adds r0, #2
	mov r1, sp
	ldrh r1, [r1, #0x1c]
	strh r1, [r0]
	ldr r4, _08001394 @ =gUnknown_02010B20
	adds r0, r4, #0
	bl sub_801A41C
	adds r0, r4, #0
	bl sub_801A424
	ldr r0, _08001398 @ =gUnknown_020003E8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800139C @ =gUnknown_020003F8
	strh r1, [r0]
_0800132C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800133C: .4byte gUnknown_08024BD8
_08001340: .4byte 0x84000400
_08001344: .4byte gUnknown_080252D4
_08001348: .4byte 0x06004000
_0800134C: .4byte 0x84001000
_08001350: .4byte gUnknown_080250D4
_08001354: .4byte 0x84000080
_08001358: .4byte gUnknown_08020E9C
_0800135C: .4byte 0x06008000
_08001360: .4byte 0x84002000
_08001364: .4byte gUnknown_0802049C
_08001368: .4byte 0x06001000
_0800136C: .4byte gUnknown_083FDC08
_08001370: .4byte gUnknown_083D65F4
_08001374: .4byte 0x040000D4
_08001378: .4byte gUnknown_02000B10
_0800137C: .4byte 0x84004000
_08001380: .4byte gUnknown_02000400
_08001384: .4byte 0x84000100
_08001388: .4byte gUnknown_02011934
_0800138C: .4byte gUnknown_020119A0
_08001390: .4byte gUnknown_020119FC
_08001394: .4byte gUnknown_02010B20
_08001398: .4byte gUnknown_020003E8
_0800139C: .4byte gUnknown_020003F8

	thumb_func_start sub_80013A0
sub_80013A0: @ 0x080013A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r7, #0
	ldr r5, _080013CC @ =gUnknown_02000398
	ldr r0, [r5]
	cmp r0, #0
	bne _080013DC
	movs r0, #1
	bl sub_8001CD0
	ldr r1, _080013D0 @ =gUnknown_02015500
	str r7, [r1]
	ldr r1, _080013D4 @ =gUnknown_02015530
	str r7, [r1]
	ldr r1, _080013D8 @ =gUnknown_020003F0
	str r7, [r1]
	b _0800169E
	.align 2, 0
_080013CC: .4byte gUnknown_02000398
_080013D0: .4byte gUnknown_02015500
_080013D4: .4byte gUnknown_02015530
_080013D8: .4byte gUnknown_020003F0
_080013DC:
	subs r0, #1
	str r0, [r5]
	movs r6, #0
	mov sb, r6
	bl sub_8003A8C
	ldr r0, _08001508 @ =gUnknown_087F6E20
	movs r1, #0
	bl sub_8003A5C
	bl sub_8000AC0
	ldr r4, _0800150C @ =gUnknown_02010B20
	adds r0, r4, #0
	bl sub_801A41C
	adds r0, r4, #0
	bl sub_801A424
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #5
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08001510 @ =0x00000209
	adds r0, r2, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_801A41C
	adds r0, r4, #0
	bl sub_801A424
	movs r0, #1
	bl sub_8001CD0
	ldr r4, _08001514 @ =0x040000D4
	ldr r0, _08001518 @ =gUnknown_0802AF30
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0800151C @ =0x8000027E
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08001520 @ =gUnknown_0802B62C
	str r0, [r4]
	ldr r0, _08001524 @ =0x06004000
	str r0, [r4, #4]
	ldr r0, _08001528 @ =0x80000F00
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800152C @ =gUnknown_0802B42C
	str r0, [r4]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r4, #4]
	ldr r0, _08001530 @ =0x80000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08001534 @ =gUnknown_0802049C
	str r0, [r4]
	ldr r0, _08001538 @ =0x06001000
	str r0, [r4, #4]
	ldr r0, _0800153C @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08001540 @ =gUnknown_08020E9C
	str r0, [r4]
	ldr r0, _08001544 @ =0x06008000
	str r0, [r4, #4]
	ldr r0, _08001548 @ =0x80000180
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, sb
	strh r0, [r1]
	ldr r2, _0800154C @ =gUnknown_083D65F4
	movs r0, #0xf
	movs r1, #1
	bl sub_801A434
	ldr r0, _08001550 @ =gUnknown_02011934
	mov r1, sb
	strh r1, [r0]
	ldr r0, _08001554 @ =gUnknown_020119A0
	strh r1, [r0]
	ldr r0, _08001558 @ =0x04000010
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _0800155C @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	ldr r0, [r5]
	cmp r0, #8
	ble _080014AC
	movs r0, #8
	str r0, [r5]
_080014AC:
	bl sub_8000B30
	ldr r2, _08001560 @ =gUnknown_020126A2
	subs r2, #2
	mov r8, r2
	ldr r0, _08001564 @ =0x05000094
	mov sl, r0
_080014BA:
	bl VBlankIntrWait
	adds r7, #1
	cmp r7, #0xc
	bls _080014E4
	movs r7, #0
	mov r1, sl
	str r1, [r4]
	ldr r2, _08001560 @ =gUnknown_020126A2
	str r2, [r4, #4]
	ldr r1, _08001568 @ =0x80000004
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	mov r2, r8
	ldrh r0, [r2, #8]
	strh r0, [r2]
	str r2, [r4]
	mov r0, sl
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
_080014E4:
	bl sub_8000A28
	ldr r0, _0800156C @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08001574
	ldr r0, _08001570 @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	cmp r6, #0
	beq _0800158A
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _0800158A
	.align 2, 0
_08001508: .4byte gUnknown_087F6E20
_0800150C: .4byte gUnknown_02010B20
_08001510: .4byte 0x00000209
_08001514: .4byte 0x040000D4
_08001518: .4byte gUnknown_0802AF30
_0800151C: .4byte 0x8000027E
_08001520: .4byte gUnknown_0802B62C
_08001524: .4byte 0x06004000
_08001528: .4byte 0x80000F00
_0800152C: .4byte gUnknown_0802B42C
_08001530: .4byte 0x80000100
_08001534: .4byte gUnknown_0802049C
_08001538: .4byte 0x06001000
_0800153C: .4byte 0x80000400
_08001540: .4byte gUnknown_08020E9C
_08001544: .4byte 0x06008000
_08001548: .4byte 0x80000180
_0800154C: .4byte gUnknown_083D65F4
_08001550: .4byte gUnknown_02011934
_08001554: .4byte gUnknown_020119A0
_08001558: .4byte 0x04000010
_0800155C: .4byte gUnknown_02011994
_08001560: .4byte gUnknown_020126A2
_08001564: .4byte 0x05000094
_08001568: .4byte 0x80000004
_0800156C: .4byte gUnknown_020003E8
_08001570: .4byte gUnknown_087F7920
_08001574:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800158A
	ldr r0, _08001610 @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	cmp r6, #0
	bne _0800158A
	movs r6, #1
_0800158A:
	lsls r1, r6, #4
	adds r1, #0x51
	movs r0, #1
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	ldr r0, _08001614 @ =gUnknown_083FDC08
	str r0, [sp, #8]
	movs r0, #0x5c
	movs r2, #1
	movs r3, #0
	bl sub_800AACC
	movs r0, #0xf
	movs r1, #0x88
	movs r2, #0x10
	ldr r3, _08001618 @ =gUnknown_08031248
	bl DrawString
	ldr r0, _0800161C @ =gUnknown_02000398
	ldr r2, [r0]
	adds r2, #1
	movs r0, #0xd2
	movs r1, #0x10
	movs r3, #1
	bl sub_800B30C
	movs r0, #0xf
	movs r1, #0x58
	movs r2, #0x40
	ldr r3, _08001620 @ =gUnknown_08031254
	bl DrawString
	movs r0, #0xf
	movs r1, #0x78
	movs r2, #0x50
	ldr r3, _08001624 @ =gUnknown_08031260
	bl DrawString
	movs r0, #0xf
	movs r1, #0x78
	movs r2, #0x60
	ldr r3, _08001628 @ =gUnknown_08031264
	bl DrawString
	ldr r0, _0800162C @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0800163C
	cmp r6, #0
	beq _0800164E
	cmp r6, #1
	bne _08001646
	ldr r0, _08001630 @ =gUnknown_02015500
	str r5, [r0]
	ldr r0, _08001634 @ =gUnknown_02015530
	str r5, [r0]
	movs r0, #1
	bl sub_8001CD0
	ldr r0, _08001638 @ =gUnknown_020003F0
	str r5, [r0]
	movs r0, #1
	b _0800169E
	.align 2, 0
_08001610: .4byte gUnknown_087F7920
_08001614: .4byte gUnknown_083FDC08
_08001618: .4byte gUnknown_08031248
_0800161C: .4byte gUnknown_02000398
_08001620: .4byte gUnknown_08031254
_08001624: .4byte gUnknown_08031260
_08001628: .4byte gUnknown_08031264
_0800162C: .4byte gUnknown_020003E8
_08001630: .4byte gUnknown_02015500
_08001634: .4byte gUnknown_02015530
_08001638: .4byte gUnknown_020003F0
_0800163C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08001646
	movs r6, #1
_08001646:
	mov r1, sb
	cmp r1, #0
	bne _0800164E
	b _080014BA
_0800164E:
	bl sub_8000AC0
	ldr r4, _080016B0 @ =gUnknown_02010B20
	adds r0, r4, #0
	bl sub_801A41C
	adds r0, r4, #0
	bl sub_801A424
	ldr r1, _080016B4 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	ldr r1, _080016B8 @ =gUnknown_02000810
	ldr r0, [r1, #0xc]
	str r0, [r1, #0x10]
	movs r0, #1
	bl sub_8006F10
	ldr r0, _080016BC @ =gUnknown_020003E8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080016C0 @ =gUnknown_020003F8
	strh r1, [r0]
	ldr r1, _080016C4 @ =gUnknown_02000800
	movs r0, #3
	str r0, [r1]
	ldr r0, _080016C8 @ =gUnknown_02013118
	movs r1, #0
	str r1, [r0]
	ldr r0, _080016CC @ =gUnknown_02012630
	str r1, [r0]
	ldr r0, _080016D0 @ =gUnknown_020126F0
	str r1, [r0]
	ldr r0, _080016D4 @ =gUnknown_02012688
	str r1, [r0]
	ldr r0, _080016D8 @ =gUnknown_020126FC
	str r1, [r0]
	ldr r0, _080016DC @ =gUnknown_02012638
	str r1, [r0]
	movs r0, #1
_0800169E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080016B0: .4byte gUnknown_02010B20
_080016B4: .4byte gUnknown_02011994
_080016B8: .4byte gUnknown_02000810
_080016BC: .4byte gUnknown_020003E8
_080016C0: .4byte gUnknown_020003F8
_080016C4: .4byte gUnknown_02000800
_080016C8: .4byte gUnknown_02013118
_080016CC: .4byte gUnknown_02012630
_080016D0: .4byte gUnknown_020126F0
_080016D4: .4byte gUnknown_02012688
_080016D8: .4byte gUnknown_020126FC
_080016DC: .4byte gUnknown_02012638

	thumb_func_start sub_80016E0
sub_80016E0: @ 0x080016E0
	push {lr}
	cmp r0, #0xa
	bhi _08001790
	lsls r0, r0, #2
	ldr r1, _080016F0 @ =_080016F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080016F0: .4byte _080016F4
_080016F4: @ jump table
	.4byte _08001720 @ case 0
	.4byte _0800172C @ case 1
	.4byte _08001738 @ case 2
	.4byte _08001790 @ case 3
	.4byte _08001744 @ case 4
	.4byte _08001750 @ case 5
	.4byte _0800175C @ case 6
	.4byte _08001790 @ case 7
	.4byte _08001768 @ case 8
	.4byte _08001774 @ case 9
	.4byte _08001780 @ case 10
_08001720:
	ldr r0, _08001728 @ =gUnknown_02000AE0
	ldr r0, [r0, #0x14]
	b _08001784
	.align 2, 0
_08001728: .4byte gUnknown_02000AE0
_0800172C:
	ldr r0, _08001734 @ =gUnknown_02000AE0
	ldr r0, [r0, #4]
	b _08001784
	.align 2, 0
_08001734: .4byte gUnknown_02000AE0
_08001738:
	ldr r0, _08001740 @ =gUnknown_02000AE0
	ldr r0, [r0, #0x20]
	b _08001784
	.align 2, 0
_08001740: .4byte gUnknown_02000AE0
_08001744:
	ldr r0, _0800174C @ =gUnknown_02000AE0
	ldr r0, [r0]
	b _08001784
	.align 2, 0
_0800174C: .4byte gUnknown_02000AE0
_08001750:
	ldr r0, _08001758 @ =gUnknown_02000AE0
	ldr r0, [r0, #0x10]
	b _08001784
	.align 2, 0
_08001758: .4byte gUnknown_02000AE0
_0800175C:
	ldr r0, _08001764 @ =gUnknown_02000AE0
	ldr r0, [r0, #0xc]
	b _08001784
	.align 2, 0
_08001764: .4byte gUnknown_02000AE0
_08001768:
	ldr r0, _08001770 @ =gUnknown_02000AE0
	ldr r0, [r0, #8]
	b _08001784
	.align 2, 0
_08001770: .4byte gUnknown_02000AE0
_08001774:
	ldr r0, _0800177C @ =gUnknown_02000AE0
	ldr r0, [r0, #0x1c]
	b _08001784
	.align 2, 0
_0800177C: .4byte gUnknown_02000AE0
_08001780:
	ldr r0, _0800178C @ =gUnknown_02000AE0
	ldr r0, [r0, #0x18]
_08001784:
	cmp r0, #0
	beq _08001790
	movs r0, #1
	b _08001792
	.align 2, 0
_0800178C: .4byte gUnknown_02000AE0
_08001790:
	movs r0, #0
_08001792:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8001798
sub_8001798: @ 0x08001798
	push {lr}
	cmp r0, #2
	bls _080017C4
	cmp r0, #3
	bne _080017A6
	movs r0, #9
	b _080017C4
_080017A6:
	cmp r0, #6
	bhi _080017AE
	subs r0, #1
	b _080017C4
_080017AE:
	cmp r0, #7
	bne _080017B6
	movs r0, #0xa
	b _080017C4
_080017B6:
	cmp r0, #0xa
	bhi _080017BE
	subs r0, #2
	b _080017C4
_080017BE:
	cmp r0, #0xb
	bne _080017C4
	movs r0, #0xb
_080017C4:
	pop {r1}
	bx r1

	thumb_func_start sub_80017C8
sub_80017C8: @ 0x080017C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r0, #0
	mov r8, r0
	ldr r0, _080017E8 @ =gUnknown_0200039C
	ldr r0, [r0]
	cmp r0, #2
	bhi _080017EC
	movs r1, #0
	str r1, [sp, #0xc]
	mov sl, r0
	b _080017F4
	.align 2, 0
_080017E8: .4byte gUnknown_0200039C
_080017EC:
	subs r0, #2
	str r0, [sp, #0xc]
	movs r2, #2
	mov sl, r2
_080017F4:
	ldr r0, _08001970 @ =0x04000010
	movs r5, #0
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	ldr r4, _08001974 @ =gUnknown_02010B20
	adds r0, r4, #0
	bl sub_801A41C
	adds r0, r4, #0
	bl sub_801A424
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #4
	strh r0, [r1]
	adds r1, #2
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08001978 @ =0x040000D4
	ldr r1, _0800197C @ =gUnknown_0802119C
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r3, _08001980 @ =0x84000400
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08001984 @ =gUnknown_08021898
	str r1, [r0]
	ldr r1, _08001988 @ =0x06004000
	str r1, [r0, #4]
	ldr r1, _0800198C @ =0x84001000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08001990 @ =gUnknown_08021698
	str r1, [r0]
	movs r2, #0xa0
	lsls r2, r2, #0x13
	str r2, [r0, #4]
	ldr r1, _08001994 @ =0x84000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08001998 @ =gUnknown_08020E9C
	str r1, [r0]
	ldr r1, _0800199C @ =0x06008000
	str r1, [r0, #4]
	ldr r1, _080019A0 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080019A4 @ =gUnknown_0802049C
	str r1, [r0]
	ldr r1, _080019A8 @ =0x06001000
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	strh r5, [r2]
	ldr r4, _080019AC @ =gUnknown_083FDC08
	movs r0, #0
	adds r1, r4, #0
	bl sub_801A42C
	movs r0, #1
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #2
	movs r1, #2
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #3
	movs r1, #3
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #4
	movs r1, #4
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #5
	movs r1, #5
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #6
	movs r1, #6
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #7
	movs r1, #7
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #8
	movs r1, #8
	adds r2, r4, #0
	bl sub_801A434
	ldr r2, _080019B0 @ =gUnknown_083D65F4
	movs r0, #0xf
	movs r1, #1
	bl sub_801A434
	ldr r1, _080019B4 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	ldr r1, _080019B8 @ =gUnknown_020119FC
	movs r0, #0
	str r0, [r1]
	ldr r0, _080019BC @ =gUnknown_087F530C
	movs r1, #0
	bl sub_8003A5C
	bl sub_8000B30
_080018F0:
	ldr r3, _080019C0 @ =gUnknown_08031304
	movs r0, #0xf
	movs r1, #0x88
	movs r2, #0x10
	bl DrawString
	movs r6, #0
	ldr r0, [sp, #0xc]
	add r0, sl
	str r0, [sp, #0x10]
	mov r1, sl
	lsls r1, r1, #1
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	adds r2, #3
	str r2, [sp, #0x14]
	mov r0, r8
	adds r0, #1
	str r0, [sp, #0x18]
	movs r1, #4
	mov sb, r1
	mov r8, r6
	ldr r7, _080019AC @ =gUnknown_083FDC08
	movs r2, #0x30
	str r2, [sp, #0x20]
	ldr r5, [sp, #0xc]
_08001924:
	ldr r0, _080019C4 @ =gUnknown_0200039C
	ldr r0, [r0]
	cmp r0, r5
	bhs _0800192E
	b _08001A6A
_0800192E:
	ldr r1, _080019C8 @ =gUnknown_087F7D50
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0xf
	movs r1, #0x28
	ldr r2, [sp, #0x20]
	bl DrawString
	ldr r4, _080019CC @ =gUnknown_020119B0
	adds r0, r5, #0
	bl sub_8001798
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x76
	ldr r1, [sp, #0x20]
	movs r3, #5
	bl sub_800B30C
	adds r0, r5, #0
	bl sub_80016E0
	cmp r0, #0
	beq _08001A06
	cmp r6, #1
	beq _080019E2
	cmp r6, #1
	blo _080019D0
	cmp r6, #2
	beq _080019F4
	b _08001A6A
	.align 2, 0
_08001970: .4byte 0x04000010
_08001974: .4byte gUnknown_02010B20
_08001978: .4byte 0x040000D4
_0800197C: .4byte gUnknown_0802119C
_08001980: .4byte 0x84000400
_08001984: .4byte gUnknown_08021898
_08001988: .4byte 0x06004000
_0800198C: .4byte 0x84001000
_08001990: .4byte gUnknown_08021698
_08001994: .4byte 0x84000080
_08001998: .4byte gUnknown_08020E9C
_0800199C: .4byte 0x06008000
_080019A0: .4byte 0x84002000
_080019A4: .4byte gUnknown_0802049C
_080019A8: .4byte 0x06001000
_080019AC: .4byte gUnknown_083FDC08
_080019B0: .4byte gUnknown_083D65F4
_080019B4: .4byte gUnknown_02011994
_080019B8: .4byte gUnknown_020119FC
_080019BC: .4byte gUnknown_087F530C
_080019C0: .4byte gUnknown_08031304
_080019C4: .4byte gUnknown_0200039C
_080019C8: .4byte gUnknown_087F7D50
_080019CC: .4byte gUnknown_020119B0
_080019D0:
	mov r0, sb
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r0, #0xb0
	movs r1, #0x2f
	movs r2, #4
	b _08001A4C
_080019E2:
	mov r2, sb
	str r2, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r0, #0xa9
	movs r1, #0x49
	movs r2, #4
	b _08001A4C
_080019F4:
	mov r1, sb
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	movs r0, #0xaf
	movs r1, #0x60
	movs r2, #4
	b _08001A4C
_08001A06:
	cmp r5, #3
	beq _08001A12
	cmp r5, #7
	beq _08001A12
	cmp r5, #0xb
	bne _08001A6A
_08001A12:
	ldr r0, _08001A28 @ =gUnknown_0200039C
	ldr r0, [r0]
	cmp r5, r0
	bhs _08001A6A
	cmp r6, #1
	beq _08001A3C
	cmp r6, #1
	blo _08001A2C
	cmp r6, #2
	beq _08001A54
	b _08001A6A
	.align 2, 0
_08001A28: .4byte gUnknown_0200039C
_08001A2C:
	mov r0, sb
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r0, #0xb0
	movs r1, #0x2f
	b _08001A4A
_08001A3C:
	mov r2, sb
	str r2, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r0, #0xa9
	movs r1, #0x49
_08001A4A:
	movs r2, #3
_08001A4C:
	movs r3, #0
	bl sub_800AACC
	b _08001A6A
_08001A54:
	mov r1, sb
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	movs r0, #0xaf
	movs r1, #0x60
	movs r2, #3
	movs r3, #0
	bl sub_800AACC
_08001A6A:
	ldr r0, [sp, #0x20]
	adds r0, #0x18
	str r0, [sp, #0x20]
	adds r5, #1
	adds r6, #1
	cmp r6, #2
	bhi _08001A7A
	b _08001924
_08001A7A:
	ldr r1, [sp, #0x10]
	cmp r1, #0xb
	bhi _08001B28
	lsls r0, r1, #2
	ldr r1, _08001A8C @ =_08001A90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001A8C: .4byte _08001A90
_08001A90: @ jump table
	.4byte _08001AC0 @ case 0
	.4byte _08001AC0 @ case 1
	.4byte _08001AC0 @ case 2
	.4byte _08001B10 @ case 3
	.4byte _08001AD8 @ case 4
	.4byte _08001AD8 @ case 5
	.4byte _08001AD8 @ case 6
	.4byte _08001B10 @ case 7
	.4byte _08001AF0 @ case 8
	.4byte _08001AF0 @ case 9
	.4byte _08001AF0 @ case 10
	.4byte _08001B10 @ case 11
_08001AC0:
	movs r0, #5
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08001AD4 @ =gUnknown_083FDC08
	str r0, [sp, #8]
	movs r0, #0xd4
	movs r1, #0x67
	movs r2, #5
	b _08001B02
	.align 2, 0
_08001AD4: .4byte gUnknown_083FDC08
_08001AD8:
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08001AEC @ =gUnknown_083FDC08
	str r0, [sp, #8]
	movs r0, #0xd4
	movs r1, #0x67
	movs r2, #6
	b _08001B02
	.align 2, 0
_08001AEC: .4byte gUnknown_083FDC08
_08001AF0:
	movs r0, #7
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08001B0C @ =gUnknown_083FDC08
	str r0, [sp, #8]
	movs r0, #0xd4
	movs r1, #0x67
	movs r2, #7
_08001B02:
	movs r3, #0
	bl sub_800AACC
	b _08001B28
	.align 2, 0
_08001B0C: .4byte gUnknown_083FDC08
_08001B10:
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08001C18 @ =gUnknown_083FDC08
	str r0, [sp, #8]
	movs r0, #0xd4
	movs r1, #0x67
	movs r2, #8
	movs r3, #0
	bl sub_800AACC
_08001B28:
	ldr r1, [sp, #0x1c]
	add r1, sl
	lsls r1, r1, #3
	adds r1, #0x30
	movs r2, #1
	mov r8, r2
	str r2, [sp]
	movs r6, #0
	str r6, [sp, #4]
	ldr r4, _08001C18 @ =gUnknown_083FDC08
	str r4, [sp, #8]
	movs r0, #0x10
	movs r3, #0
	bl sub_800AACC
	movs r1, #0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08001B6C
	ldr r0, _08001C1C @ =gUnknown_020119F0
	ldr r3, [r0]
	lsrs r3, r3, #3
	movs r0, #1
	ands r3, r0
	movs r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0xbf
	movs r1, #0x70
	movs r2, #2
	bl sub_800AACC
	movs r1, #1
_08001B6C:
	ldr r7, _08001C20 @ =gUnknown_0200039C
	ldr r0, [r7]
	ldr r2, [sp, #0x14]
	cmp r0, r2
	blo _08001B96
	ldr r0, _08001C1C @ =gUnknown_020119F0
	ldr r3, [r0]
	lsrs r3, r3, #3
	movs r0, #1
	ands r3, r0
	adds r3, #2
	movs r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0xbf
	movs r1, #0x7a
	movs r2, #2
	bl sub_800AACC
	movs r1, #1
_08001B96:
	cmp r1, #0
	beq _08001BA6
	ldr r3, _08001C24 @ =gUnknown_08031314
	movs r0, #0xf
	movs r1, #0xd0
	movs r2, #0x78
	bl DrawString
_08001BA6:
	ldr r5, _08001C28 @ =gUnknown_02011994
	mov r0, r8
	str r0, [r5]
	bl VBlankIntrWait
	ldr r1, [sp, #0x18]
	mov r8, r1
	cmp r1, #0xc
	bls _08001BDA
	movs r2, #0
	mov r8, r2
	ldr r2, _08001C2C @ =0x040000D4
	ldr r4, _08001C30 @ =0x05000094
	str r4, [r2]
	ldr r1, _08001C34 @ =gUnknown_020126A2
	str r1, [r2, #4]
	ldr r3, _08001C38 @ =0x80000004
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	subs r1, #2
	ldrh r0, [r1, #8]
	strh r0, [r1]
	str r1, [r2]
	str r4, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
_08001BDA:
	str r6, [r5]
	ldr r1, _08001C3C @ =gUnknown_02000388
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _08001C40 @ =0x04000014
	lsrs r1, r0, #1
	strh r1, [r2]
	ldr r1, _08001C44 @ =0x04000016
	lsrs r0, r0, #2
	strh r0, [r1]
	bl sub_8000A28
	ldr r0, _08001C48 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08001C5C
	ldr r0, _08001C4C @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	mov r0, sl
	cmp r0, #0
	beq _08001C50
	movs r1, #1
	rsbs r1, r1, #0
	add sl, r1
	b _08001C96
	.align 2, 0
_08001C18: .4byte gUnknown_083FDC08
_08001C1C: .4byte gUnknown_020119F0
_08001C20: .4byte gUnknown_0200039C
_08001C24: .4byte gUnknown_08031314
_08001C28: .4byte gUnknown_02011994
_08001C2C: .4byte 0x040000D4
_08001C30: .4byte 0x05000094
_08001C34: .4byte gUnknown_020126A2
_08001C38: .4byte 0x80000004
_08001C3C: .4byte gUnknown_02000388
_08001C40: .4byte 0x04000014
_08001C44: .4byte 0x04000016
_08001C48: .4byte gUnknown_020003E8
_08001C4C: .4byte gUnknown_087F7920
_08001C50:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _08001C96
	subs r2, #1
	str r2, [sp, #0xc]
	b _08001C96
_08001C5C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08001C96
	ldr r0, _08001C84 @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	mov r0, sl
	cmp r0, #1
	bhi _08001C88
	ldr r0, [sp, #0xc]
	add r0, sl
	adds r0, #1
	ldr r1, [r7]
	cmp r0, r1
	bhi _08001C96
	movs r1, #1
	add sl, r1
	b _08001C96
	.align 2, 0
_08001C84: .4byte gUnknown_087F7920
_08001C88:
	ldr r0, [r7]
	ldr r2, [sp, #0x14]
	cmp r0, r2
	blo _08001C96
	ldr r0, [sp, #0xc]
	adds r0, #1
	str r0, [sp, #0xc]
_08001C96:
	ldr r0, _08001CBC @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	bne _08001CA4
	b _080018F0
_08001CA4:
	bl sub_8000AC0
	ldr r0, [sp, #0xc]
	add r0, sl
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001CBC: .4byte gUnknown_020003E8

	thumb_func_start sub_8001CC0
sub_8001CC0: @ 0x08001CC0
	ldr r2, _08001CCC @ =gUnknown_020003E4
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	bx lr
	.align 2, 0
_08001CCC: .4byte gUnknown_020003E4

	thumb_func_start sub_8001CD0
sub_8001CD0: @ 0x08001CD0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	cmp r4, r5
	bhs _08001CE8
_08001CDA:
	bl VBlankIntrWait
	bl sub_8000A28
	adds r4, #1
	cmp r4, r5
	blo _08001CDA
_08001CE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8001CF0
sub_8001CF0: @ 0x08001CF0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	cmp r4, r5
	bhs _08001D0A
	ldr r7, _08001D10 @ =gUnknown_02011994
	movs r6, #0
_08001CFE:
	bl VBlankIntrWait
	str r6, [r7]
	adds r4, #1
	cmp r4, r5
	blo _08001CFE
_08001D0A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001D10: .4byte gUnknown_02011994

	thumb_func_start sub_8001D14
sub_8001D14: @ 0x08001D14
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	b _08001D20
_08001D1E:
	adds r4, #1
_08001D20:
	cmp r4, r6
	bhs _08001D3C
	bl VBlankIntrWait
	bl sub_8000A28
	cmp r4, r5
	bls _08001D1E
	ldr r0, _08001D44 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08001D1E
_08001D3C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001D44: .4byte gUnknown_020003E8

	thumb_func_start sub_8001D48
sub_8001D48: @ 0x08001D48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #4]
	movs r0, #0
	mov sl, r0
	movs r7, #0
	ldr r4, _08001F68 @ =0x040000D4
	movs r6, #0xc0
	lsls r6, r6, #0x13
	str r6, [r4]
	ldr r0, _08001F6C @ =gUnknown_02000B10
	str r0, [r4, #4]
	ldr r0, _08001F70 @ =0x84004000
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r4]
	ldr r0, _08001F74 @ =gUnknown_02000400
	str r0, [r4, #4]
	ldr r0, _08001F78 @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, _08001F7C @ =0x04000010
	mov sb, r2
	strh r7, [r2]
	ldr r0, _08001F80 @ =0x04000012
	mov r8, r0
	strh r7, [r0]
	ldr r5, _08001F84 @ =gUnknown_02010B20
	adds r0, r5, #0
	bl sub_801A41C
	adds r0, r5, #0
	bl sub_801A424
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r0, [r3]
	str r0, [sp, #8]
	ldr r2, _08001F88 @ =0x04000008
	ldrh r0, [r2]
	str r0, [sp, #0xc]
	ldr r1, _08001F8C @ =0x0400000A
	ldrh r0, [r1]
	str r0, [sp, #0x10]
	ldr r0, _08001F90 @ =0x0400000C
	ldrh r0, [r0]
	str r0, [sp, #0x14]
	str r7, [sp]
	mov r0, sp
	str r0, [r4]
	str r6, [r4, #4]
	ldr r0, _08001F94 @ =0x85004000
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08001F98 @ =gUnknown_020119FC
	str r7, [r0]
	mov r0, sb
	strh r7, [r0]
	mov r0, r8
	strh r7, [r0]
	movs r0, #0x9a
	lsls r0, r0, #5
	strh r0, [r3]
	movs r0, #5
	strh r0, [r2]
	ldr r2, _08001F9C @ =0x00000209
	adds r0, r2, #0
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_801A41C
	adds r0, r5, #0
	bl sub_801A424
	movs r0, #1
	bl sub_8001CD0
	ldr r0, _08001FA0 @ =gUnknown_0802AF30
	str r0, [r4]
	str r6, [r4, #4]
	ldr r0, _08001FA4 @ =0x8000027E
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08001FA8 @ =gUnknown_0802B62C
	str r0, [r4]
	ldr r0, _08001FAC @ =0x06004000
	str r0, [r4, #4]
	ldr r0, _08001FB0 @ =0x80000F00
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08001FB4 @ =gUnknown_0802B42C
	str r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _08001FB8 @ =0x80000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08001FBC @ =gUnknown_0802049C
	str r0, [r4]
	ldr r0, _08001FC0 @ =0x06001000
	str r0, [r4, #4]
	ldr r0, _08001FC4 @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08001FC8 @ =gUnknown_08020E9C
	str r0, [r4]
	ldr r0, _08001FCC @ =0x06008000
	str r0, [r4, #4]
	ldr r0, _08001FD0 @ =0x80000180
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	strh r7, [r1]
	ldr r2, _08001FD4 @ =gUnknown_083D65F4
	movs r0, #0xf
	movs r1, #1
	bl sub_801A434
	ldr r1, _08001FD8 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	bl sub_8000B30
	ldr r0, _08001FDC @ =gUnknown_087F7D88
	ldr r2, [sp, #4]
	lsls r5, r2, #2
	adds r0, r5, r0
	str r0, [sp, #0x18]
	ldr r0, _08001FE0 @ =0x05000094
	mov sb, r0
	ldr r1, _08001FE4 @ =0x80000004
	mov r8, r1
	ldr r6, _08001FE8 @ =gUnknown_020126A2
	subs r6, #2
_08001E64:
	ldr r2, [sp, #0x18]
	ldr r3, [r2]
	movs r0, #0xf
	movs r1, #0x88
	movs r2, #0x10
	bl DrawString
	ldr r0, _08001FEC @ =gUnknown_087F7DB0
	adds r0, r5, r0
	ldr r3, [r0]
	movs r0, #0xf
	movs r1, #0x20
	movs r2, #0x30
	bl DrawString
	bl VBlankIntrWait
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #0xc
	bls _08001EB0
	movs r2, #0
	mov sl, r2
	mov r0, sb
	str r0, [r4]
	ldr r1, _08001FE8 @ =gUnknown_020126A2
	str r1, [r4, #4]
	mov r2, r8
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r6, #8]
	strh r0, [r6]
	str r6, [r4]
	mov r0, sb
	str r0, [r4, #4]
	str r2, [r4, #8]
	ldr r0, [r4, #8]
_08001EB0:
	ldr r1, _08001FF0 @ =gUnknown_02000388
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _08001FF4 @ =0x04000014
	lsrs r1, r0, #1
	strh r1, [r2]
	ldr r1, _08001FF8 @ =0x04000016
	lsrs r0, r0, #2
	strh r0, [r1]
	bl sub_8000A28
	adds r7, #1
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r7, r0
	bhi _08001EE2
	cmp r7, #0x3c
	bls _08001E64
	ldr r0, _08001FFC @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08001E64
_08001EE2:
	bl sub_8000AC0
	ldr r1, _08001F68 @ =0x040000D4
	ldr r0, _08001F6C @ =gUnknown_02000B10
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08001F70 @ =0x84004000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08001F74 @ =gUnknown_02000400
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08001F78 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r1, #0xc4
	ldr r0, _08002000 @ =gUnknown_02011934
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08002004 @ =gUnknown_020119A0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08001F98 @ =gUnknown_020119FC
	movs r0, #1
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x13
	mov r1, sp
	ldrh r1, [r1, #8]
	strh r1, [r0]
	adds r0, #8
	mov r2, sp
	ldrh r2, [r2, #0xc]
	strh r2, [r0]
	adds r0, #2
	mov r1, sp
	ldrh r1, [r1, #0x10]
	strh r1, [r0]
	adds r0, #2
	mov r2, sp
	ldrh r2, [r2, #0x14]
	strh r2, [r0]
	ldr r4, _08001F84 @ =gUnknown_02010B20
	adds r0, r4, #0
	bl sub_801A41C
	adds r0, r4, #0
	bl sub_801A424
	ldr r0, _08001FFC @ =gUnknown_020003E8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08002008 @ =gUnknown_020003F8
	strh r1, [r0]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001F68: .4byte 0x040000D4
_08001F6C: .4byte gUnknown_02000B10
_08001F70: .4byte 0x84004000
_08001F74: .4byte gUnknown_02000400
_08001F78: .4byte 0x84000100
_08001F7C: .4byte 0x04000010
_08001F80: .4byte 0x04000012
_08001F84: .4byte gUnknown_02010B20
_08001F88: .4byte 0x04000008
_08001F8C: .4byte 0x0400000A
_08001F90: .4byte 0x0400000C
_08001F94: .4byte 0x85004000
_08001F98: .4byte gUnknown_020119FC
_08001F9C: .4byte 0x00000209
_08001FA0: .4byte gUnknown_0802AF30
_08001FA4: .4byte 0x8000027E
_08001FA8: .4byte gUnknown_0802B62C
_08001FAC: .4byte 0x06004000
_08001FB0: .4byte 0x80000F00
_08001FB4: .4byte gUnknown_0802B42C
_08001FB8: .4byte 0x80000100
_08001FBC: .4byte gUnknown_0802049C
_08001FC0: .4byte 0x06001000
_08001FC4: .4byte 0x80000400
_08001FC8: .4byte gUnknown_08020E9C
_08001FCC: .4byte 0x06008000
_08001FD0: .4byte 0x80000180
_08001FD4: .4byte gUnknown_083D65F4
_08001FD8: .4byte gUnknown_02011994
_08001FDC: .4byte gUnknown_087F7D88
_08001FE0: .4byte 0x05000094
_08001FE4: .4byte 0x80000004
_08001FE8: .4byte gUnknown_020126A2
_08001FEC: .4byte gUnknown_087F7DB0
_08001FF0: .4byte gUnknown_02000388
_08001FF4: .4byte 0x04000014
_08001FF8: .4byte 0x04000016
_08001FFC: .4byte gUnknown_020003E8
_08002000: .4byte gUnknown_02011934
_08002004: .4byte gUnknown_020119A0
_08002008: .4byte gUnknown_020003F8

	thumb_func_start sub_800200C
sub_800200C: @ 0x0800200C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	movs r0, #0
	mov sb, r0
	movs r7, #0
	str r7, [sp]
	ldr r4, _08002170 @ =0x040000D4
	mov r1, sp
	str r1, [r4]
	movs r6, #0xc0
	lsls r6, r6, #0x13
	str r6, [r4, #4]
	ldr r0, _08002174 @ =0x85004000
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08002178 @ =gUnknown_020119FC
	str r7, [r0]
	ldr r0, _0800217C @ =0x04000010
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #5
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08002180 @ =0x00000209
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _08002184 @ =gUnknown_02010B20
	adds r0, r5, #0
	bl sub_801A41C
	adds r0, r5, #0
	bl sub_801A424
	movs r0, #1
	bl sub_8001CD0
	ldr r0, _08002188 @ =gUnknown_0802AF30
	str r0, [r4]
	str r6, [r4, #4]
	ldr r0, _0800218C @ =0x8000027E
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08002190 @ =gUnknown_0802B62C
	str r0, [r4]
	ldr r0, _08002194 @ =0x06004000
	str r0, [r4, #4]
	ldr r0, _08002198 @ =0x80000F00
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800219C @ =gUnknown_0802B42C
	str r0, [r4]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r4, #4]
	ldr r0, _080021A0 @ =0x80000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080021A4 @ =gUnknown_0802049C
	str r0, [r4]
	ldr r0, _080021A8 @ =0x06001000
	str r0, [r4, #4]
	ldr r0, _080021AC @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080021B0 @ =gUnknown_08020E9C
	str r0, [r4]
	ldr r0, _080021B4 @ =0x06008000
	str r0, [r4, #4]
	ldr r0, _080021B8 @ =0x80000180
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	strh r7, [r1]
	ldr r2, _080021BC @ =gUnknown_083D65F4
	movs r0, #0xf
	movs r1, #1
	bl sub_801A434
	ldr r1, _080021C0 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	bl sub_8000B30
	ldr r0, _080021C4 @ =gUnknown_087F7D50
	mov r1, r8
	lsls r5, r1, #2
	adds r0, r5, r0
	str r0, [sp, #4]
	ldr r2, _080021C8 @ =0x05000094
	mov sl, r2
	ldr r0, _080021CC @ =0x80000004
	mov r8, r0
	ldr r6, _080021D0 @ =gUnknown_020126A2
	subs r6, #2
_080020E0:
	ldr r1, [sp, #4]
	ldr r3, [r1]
	movs r0, #0xf
	movs r1, #0x88
	movs r2, #0x10
	bl DrawString
	ldr r0, _080021D4 @ =gUnknown_087F7DD8
	adds r0, r5, r0
	ldr r3, [r0]
	movs r0, #0xf
	movs r1, #0x20
	movs r2, #0x30
	bl DrawString
	bl VBlankIntrWait
	movs r2, #1
	add sb, r2
	mov r0, sb
	cmp r0, #0xc
	bls _0800212A
	movs r1, #0
	mov sb, r1
	mov r2, sl
	str r2, [r4]
	ldr r0, _080021D0 @ =gUnknown_020126A2
	str r0, [r4, #4]
	mov r1, r8
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r6, #8]
	strh r0, [r6]
	str r6, [r4]
	str r2, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
_0800212A:
	ldr r1, _080021D8 @ =gUnknown_02000388
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _080021DC @ =0x04000014
	lsrs r1, r0, #1
	strh r1, [r2]
	ldr r1, _080021E0 @ =0x04000016
	lsrs r0, r0, #2
	strh r0, [r1]
	bl sub_8000A28
	adds r7, #1
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r7, r0
	bhi _0800215C
	cmp r7, #0x3c
	bls _080020E0
	ldr r0, _080021E4 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080020E0
_0800215C:
	bl sub_8000AC0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002170: .4byte 0x040000D4
_08002174: .4byte 0x85004000
_08002178: .4byte gUnknown_020119FC
_0800217C: .4byte 0x04000010
_08002180: .4byte 0x00000209
_08002184: .4byte gUnknown_02010B20
_08002188: .4byte gUnknown_0802AF30
_0800218C: .4byte 0x8000027E
_08002190: .4byte gUnknown_0802B62C
_08002194: .4byte 0x06004000
_08002198: .4byte 0x80000F00
_0800219C: .4byte gUnknown_0802B42C
_080021A0: .4byte 0x80000100
_080021A4: .4byte gUnknown_0802049C
_080021A8: .4byte 0x06001000
_080021AC: .4byte 0x80000400
_080021B0: .4byte gUnknown_08020E9C
_080021B4: .4byte 0x06008000
_080021B8: .4byte 0x80000180
_080021BC: .4byte gUnknown_083D65F4
_080021C0: .4byte gUnknown_02011994
_080021C4: .4byte gUnknown_087F7D50
_080021C8: .4byte 0x05000094
_080021CC: .4byte 0x80000004
_080021D0: .4byte gUnknown_020126A2
_080021D4: .4byte gUnknown_087F7DD8
_080021D8: .4byte gUnknown_02000388
_080021DC: .4byte 0x04000014
_080021E0: .4byte 0x04000016
_080021E4: .4byte gUnknown_020003E8

	thumb_func_start AgbMain
AgbMain: @ 0x080021E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_80027FC
	bl sub_8002984
	bl sub_8000BA8
	ldr r1, _080022D4 @ =gUnknown_0200039C
	movs r0, #0
	str r0, [r1]
	ldr r4, _080022D8 @ =gUnknown_020003A0
	adds r2, r1, #0
	movs r3, #0
	adds r5, r2, #0
_0800220C:
	ldr r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r4
	str r3, [r0]
	adds r1, #1
	str r1, [r2]
	cmp r1, #0xf
	bls _0800220C
	movs r0, #0
	str r0, [r5]
	ldr r6, _080022DC @ =gUnknown_02000394
	ldr r7, _080022E0 @ =gUnknown_020003E4
	ldr r0, _080022E4 @ =gUnknown_02000800
	mov ip, r0
	ldr r2, _080022E8 @ =gUnknown_02000398
	mov r8, r2
	ldr r3, _080022EC @ =gUnknown_02000AD4
	mov sb, r3
	ldr r0, _080022F0 @ =g_MusicEnabled
	mov sl, r0
	ldr r4, _080022F4 @ =gUnknown_02000AE0
	adds r2, r5, #0
	movs r3, #0
_0800223A:
	ldr r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r4
	str r3, [r0]
	adds r1, #1
	str r1, [r2]
	cmp r1, #9
	bls _0800223A
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6]
	ldr r0, _080022D4 @ =gUnknown_0200039C
	movs r1, #0
	str r1, [r0]
	str r1, [r7]
	movs r0, #3
	mov r2, ip
	str r0, [r2]
	movs r2, #5
	mov r3, r8
	str r2, [r3]
	mov r0, sb
	str r1, [r0]
	movs r0, #1
	mov r3, sl
	strb r0, [r3]
	ldr r3, _080022F8 @ =g_SoundEnabled
	strb r0, [r3]
	ldr r0, _080022FC @ =gUnknown_02000380
	strb r1, [r0]
	ldr r3, _08002300 @ =gUnknown_02000384
	strb r2, [r3]
	ldr r0, _08002304 @ =gUnknown_02015500
	str r1, [r0]
	ldr r0, _08002308 @ =gUnknown_02015530
	str r1, [r0]
	ldr r0, _0800230C @ =gUnknown_087F530C
	bl sub_8003A5C
	bl sub_800FDE4
_0800228C:
	ldr r0, _08002304 @ =gUnknown_02015500
	movs r4, #0
	str r4, [r0]
	ldr r0, _08002308 @ =gUnknown_02015530
	str r4, [r0]
	bl sub_800FA50
	ldr r1, _08002310 @ =gUnknown_020003F0
	movs r0, #1
	str r0, [r1]
	ldr r0, _08002314 @ =gUnknown_02000ADC
	strb r4, [r0]
_080022A4:
	ldr r0, _08002318 @ =gUnknown_02013118
	movs r1, #1
	str r1, [r0]
	ldr r0, _0800231C @ =gUnknown_02012630
	str r1, [r0]
	ldr r0, _08002320 @ =gUnknown_020126F0
	movs r1, #0
	str r1, [r0]
	ldr r0, _08002324 @ =gUnknown_02012688
	str r1, [r0]
	ldr r0, _08002328 @ =gUnknown_020126FC
	str r1, [r0]
	ldr r0, _0800232C @ =gUnknown_02012694
	str r1, [r0]
	ldr r0, _08002330 @ =gUnknown_02012638
	str r1, [r0]
	ldr r0, _080022D4 @ =gUnknown_0200039C
	ldr r1, [r0]
	cmp r1, #0
	bne _08002338
	ldr r0, _08002334 @ =gUnknown_02000AD0
	str r1, [r0]
	b _08002340
	.align 2, 0
_080022D4: .4byte gUnknown_0200039C
_080022D8: .4byte gUnknown_020003A0
_080022DC: .4byte gUnknown_02000394
_080022E0: .4byte gUnknown_020003E4
_080022E4: .4byte gUnknown_02000800
_080022E8: .4byte gUnknown_02000398
_080022EC: .4byte gUnknown_02000AD4
_080022F0: .4byte g_MusicEnabled
_080022F4: .4byte gUnknown_02000AE0
_080022F8: .4byte g_SoundEnabled
_080022FC: .4byte gUnknown_02000380
_08002300: .4byte gUnknown_02000384
_08002304: .4byte gUnknown_02015500
_08002308: .4byte gUnknown_02015530
_0800230C: .4byte gUnknown_087F530C
_08002310: .4byte gUnknown_020003F0
_08002314: .4byte gUnknown_02000ADC
_08002318: .4byte gUnknown_02013118
_0800231C: .4byte gUnknown_02012630
_08002320: .4byte gUnknown_020126F0
_08002324: .4byte gUnknown_02012688
_08002328: .4byte gUnknown_020126FC
_0800232C: .4byte gUnknown_02012694
_08002330: .4byte gUnknown_02012638
_08002334: .4byte gUnknown_02000AD0
_08002338:
	bl sub_80017C8
	ldr r1, _08002354 @ =gUnknown_02000AD0
	str r0, [r1]
_08002340:
	ldr r0, _08002354 @ =gUnknown_02000AD0
	ldr r0, [r0]
	cmp r0, #0xc
	bls _0800234A
	b _080027D6
_0800234A:
	lsls r0, r0, #2
	ldr r1, _08002358 @ =_0800235C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002354: .4byte gUnknown_02000AD0
_08002358: .4byte _0800235C
_0800235C: @ jump table
	.4byte _08002390 @ case 0
	.4byte _080023E0 @ case 1
	.4byte _08002430 @ case 2
	.4byte _08002494 @ case 3
	.4byte _080024E4 @ case 4
	.4byte _08002534 @ case 5
	.4byte _08002584 @ case 6
	.4byte _080025E8 @ case 7
	.4byte _08002638 @ case 8
	.4byte _08002688 @ case 9
	.4byte _080026D8 @ case 10
	.4byte _08002738 @ case 11
	.4byte _08002784 @ case 12
_08002390:
	ldr r0, _080023D0 @ =gUnknown_02000810
	bl sub_8012F9C
	ldr r0, _080023D4 @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _080023D8 @ =gUnknown_020003F0
_080023A0:
	ldr r0, [r4]
	cmp r0, #0
	bne _080023A8
	b _080027E0
_080023A8:
	movs r0, #0
	bl sub_80042B4
	cmp r0, #0
	beq _080023A0
	ldr r0, _080023D8 @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	bne _080023BC
	b _080027E0
_080023BC:
	ldr r1, _080023DC @ =gUnknown_0200039C
	ldr r0, [r1]
	cmp r0, #0
	bne _080023C8
	movs r0, #1
	str r0, [r1]
_080023C8:
	movs r0, #0
	bl sub_8010250
	b _080027D6
	.align 2, 0
_080023D0: .4byte gUnknown_02000810
_080023D4: .4byte gUnknown_02000AD0
_080023D8: .4byte gUnknown_020003F0
_080023DC: .4byte gUnknown_0200039C
_080023E0:
	ldr r0, _08002420 @ =gUnknown_02000810
	bl sub_8012F9C
	ldr r0, _08002424 @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _08002428 @ =gUnknown_020003F0
_080023F0:
	ldr r0, [r4]
	cmp r0, #0
	bne _080023F8
	b _080027E0
_080023F8:
	movs r0, #1
	bl sub_80042B4
	cmp r0, #0
	beq _080023F0
	ldr r0, _08002428 @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800240C
	b _080027E0
_0800240C:
	ldr r1, _0800242C @ =gUnknown_0200039C
	ldr r0, [r1]
	cmp r0, #1
	bne _08002418
	movs r0, #2
	str r0, [r1]
_08002418:
	movs r0, #1
	bl sub_8010250
	b _080027D6
	.align 2, 0
_08002420: .4byte gUnknown_02000810
_08002424: .4byte gUnknown_02000AD0
_08002428: .4byte gUnknown_020003F0
_0800242C: .4byte gUnknown_0200039C
_08002430:
	ldr r0, _08002484 @ =gUnknown_02000810
	bl sub_8012F9C
	ldr r0, _08002488 @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _0800248C @ =gUnknown_020003F0
_08002440:
	ldr r0, [r4]
	cmp r0, #0
	beq _08002450
	movs r0, #2
	bl sub_80042B4
	cmp r0, #0
	beq _08002440
_08002450:
	ldr r4, _0800248C @ =gUnknown_020003F0
_08002452:
	ldr r0, [r4]
	cmp r0, #0
	bne _0800245A
	b _080027E0
_0800245A:
	movs r0, #0
	bl sub_8005770
	cmp r0, #0
	beq _08002452
	ldr r0, _0800248C @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800246E
	b _080027E0
_0800246E:
	ldr r1, _08002490 @ =gUnknown_0200039C
	ldr r0, [r1]
	cmp r0, #2
	bne _0800247A
	movs r0, #3
	str r0, [r1]
_0800247A:
	movs r0, #2
	bl sub_8010250
	b _080027D6
	.align 2, 0
_08002484: .4byte gUnknown_02000810
_08002488: .4byte gUnknown_02000AD0
_0800248C: .4byte gUnknown_020003F0
_08002490: .4byte gUnknown_0200039C
_08002494:
	ldr r0, _080024D4 @ =gUnknown_02000810
	bl sub_801439C
	ldr r0, _080024D8 @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _080024DC @ =gUnknown_020003F0
_080024A4:
	ldr r0, [r4]
	cmp r0, #0
	bne _080024AC
	b _080027E0
_080024AC:
	movs r0, #0
	bl sub_80050C4
	cmp r0, #0
	beq _080024A4
	ldr r0, _080024DC @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	bne _080024C0
	b _080027E0
_080024C0:
	ldr r1, _080024E0 @ =gUnknown_0200039C
	ldr r0, [r1]
	cmp r0, #3
	bne _080024CC
	movs r0, #4
	str r0, [r1]
_080024CC:
	movs r0, #9
	bl sub_8010250
	b _080027D6
	.align 2, 0
_080024D4: .4byte gUnknown_02000810
_080024D8: .4byte gUnknown_02000AD0
_080024DC: .4byte gUnknown_020003F0
_080024E0: .4byte gUnknown_0200039C
_080024E4:
	ldr r0, _08002524 @ =gUnknown_02000810
	bl sub_8013E68
	ldr r0, _08002528 @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _0800252C @ =gUnknown_020003F0
_080024F4:
	ldr r0, [r4]
	cmp r0, #0
	bne _080024FC
	b _080027E0
_080024FC:
	movs r0, #3
	bl sub_80042B4
	cmp r0, #0
	beq _080024F4
	ldr r0, _0800252C @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	bne _08002510
	b _080027E0
_08002510:
	ldr r1, _08002530 @ =gUnknown_0200039C
	ldr r0, [r1]
	cmp r0, #4
	bne _0800251C
	movs r0, #5
	str r0, [r1]
_0800251C:
	movs r0, #3
	bl sub_8010250
	b _080027D6
	.align 2, 0
_08002524: .4byte gUnknown_02000810
_08002528: .4byte gUnknown_02000AD0
_0800252C: .4byte gUnknown_020003F0
_08002530: .4byte gUnknown_0200039C
_08002534:
	ldr r0, _08002574 @ =gUnknown_02000810
	bl sub_8013E68
	ldr r0, _08002578 @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _0800257C @ =gUnknown_020003F0
_08002544:
	ldr r0, [r4]
	cmp r0, #0
	bne _0800254C
	b _080027E0
_0800254C:
	movs r0, #4
	bl sub_80042B4
	cmp r0, #0
	beq _08002544
	ldr r0, _0800257C @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	bne _08002560
	b _080027E0
_08002560:
	ldr r1, _08002580 @ =gUnknown_0200039C
	ldr r0, [r1]
	cmp r0, #5
	bne _0800256C
	movs r0, #6
	str r0, [r1]
_0800256C:
	movs r0, #4
	bl sub_8010250
	b _080027D6
	.align 2, 0
_08002574: .4byte gUnknown_02000810
_08002578: .4byte gUnknown_02000AD0
_0800257C: .4byte gUnknown_020003F0
_08002580: .4byte gUnknown_0200039C
_08002584:
	ldr r0, _080025D8 @ =gUnknown_02000810
	bl sub_8013E68
	ldr r0, _080025DC @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _080025E0 @ =gUnknown_020003F0
_08002594:
	ldr r0, [r4]
	cmp r0, #0
	beq _080025A4
	movs r0, #5
	bl sub_80042B4
	cmp r0, #0
	beq _08002594
_080025A4:
	ldr r4, _080025E0 @ =gUnknown_020003F0
_080025A6:
	ldr r0, [r4]
	cmp r0, #0
	bne _080025AE
	b _080027E0
_080025AE:
	movs r0, #1
	bl sub_8005770
	cmp r0, #0
	beq _080025A6
	ldr r0, _080025E0 @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	bne _080025C2
	b _080027E0
_080025C2:
	ldr r1, _080025E4 @ =gUnknown_0200039C
	ldr r0, [r1]
	cmp r0, #6
	bne _080025CE
	movs r0, #7
	str r0, [r1]
_080025CE:
	movs r0, #5
	bl sub_8010250
	b _080027D6
	.align 2, 0
_080025D8: .4byte gUnknown_02000810
_080025DC: .4byte gUnknown_02000AD0
_080025E0: .4byte gUnknown_020003F0
_080025E4: .4byte gUnknown_0200039C
_080025E8:
	ldr r0, _08002628 @ =gUnknown_02000810
	bl sub_801439C
	ldr r0, _0800262C @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _08002630 @ =gUnknown_020003F0
_080025F8:
	ldr r0, [r4]
	cmp r0, #0
	bne _08002600
	b _080027E0
_08002600:
	movs r0, #1
	bl sub_80050C4
	cmp r0, #0
	beq _080025F8
	ldr r0, _08002630 @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	bne _08002614
	b _080027E0
_08002614:
	ldr r1, _08002634 @ =gUnknown_0200039C
	ldr r0, [r1]
	cmp r0, #7
	bne _08002620
	movs r0, #8
	str r0, [r1]
_08002620:
	movs r0, #0xa
	bl sub_8010250
	b _080027D6
	.align 2, 0
_08002628: .4byte gUnknown_02000810
_0800262C: .4byte gUnknown_02000AD0
_08002630: .4byte gUnknown_020003F0
_08002634: .4byte gUnknown_0200039C
_08002638:
	ldr r0, _08002678 @ =gUnknown_02000810
	bl sub_8012F9C
	ldr r0, _0800267C @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _08002680 @ =gUnknown_020003F0
_08002648:
	ldr r0, [r4]
	cmp r0, #0
	bne _08002650
	b _080027E0
_08002650:
	movs r0, #0
	bl sub_8004828
	cmp r0, #0
	beq _08002648
	ldr r0, _08002680 @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	bne _08002664
	b _080027E0
_08002664:
	ldr r1, _08002684 @ =gUnknown_0200039C
	ldr r0, [r1]
	cmp r0, #8
	bne _08002670
	movs r0, #9
	str r0, [r1]
_08002670:
	movs r0, #6
	bl sub_8010250
	b _080027D6
	.align 2, 0
_08002678: .4byte gUnknown_02000810
_0800267C: .4byte gUnknown_02000AD0
_08002680: .4byte gUnknown_020003F0
_08002684: .4byte gUnknown_0200039C
_08002688:
	ldr r0, _080026C8 @ =gUnknown_02000810
	bl sub_8012F9C
	ldr r0, _080026CC @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _080026D0 @ =gUnknown_020003F0
_08002698:
	ldr r0, [r4]
	cmp r0, #0
	bne _080026A0
	b _080027E0
_080026A0:
	movs r0, #1
	bl sub_8004828
	cmp r0, #0
	beq _08002698
	ldr r0, _080026D0 @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	bne _080026B4
	b _080027E0
_080026B4:
	ldr r1, _080026D4 @ =gUnknown_0200039C
	ldr r0, [r1]
	cmp r0, #9
	bne _080026C0
	movs r0, #0xa
	str r0, [r1]
_080026C0:
	movs r0, #7
	bl sub_8010250
	b _080027D6
	.align 2, 0
_080026C8: .4byte gUnknown_02000810
_080026CC: .4byte gUnknown_02000AD0
_080026D0: .4byte gUnknown_020003F0
_080026D4: .4byte gUnknown_0200039C
_080026D8:
	ldr r0, _08002728 @ =gUnknown_02000810
	bl sub_8012F9C
	ldr r0, _0800272C @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _08002730 @ =gUnknown_020003F0
_080026E8:
	ldr r0, [r4]
	cmp r0, #0
	beq _080026F8
	movs r0, #2
	bl sub_8004828
	cmp r0, #0
	beq _080026E8
_080026F8:
	ldr r4, _08002730 @ =gUnknown_020003F0
_080026FA:
	ldr r0, [r4]
	cmp r0, #0
	beq _080027E0
	movs r0, #2
	bl sub_8005770
	cmp r0, #0
	beq _080026FA
	ldr r0, _08002730 @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	beq _080027E0
	ldr r1, _08002734 @ =gUnknown_0200039C
	ldr r0, [r1]
	cmp r0, #0xa
	bne _0800271E
	movs r0, #0xb
	str r0, [r1]
_0800271E:
	movs r0, #8
	bl sub_8010250
	b _080027D6
	.align 2, 0
_08002728: .4byte gUnknown_02000810
_0800272C: .4byte gUnknown_02000AD0
_08002730: .4byte gUnknown_020003F0
_08002734: .4byte gUnknown_0200039C
_08002738:
	ldr r0, _08002774 @ =gUnknown_02000810
	bl sub_801439C
	ldr r0, _08002778 @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _0800277C @ =gUnknown_020003F0
_08002748:
	ldr r0, [r4]
	cmp r0, #0
	beq _080027E0
	movs r0, #2
	bl sub_80050C4
	cmp r0, #0
	beq _08002748
	ldr r0, _0800277C @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	beq _080027E0
	ldr r1, _08002780 @ =gUnknown_0200039C
	ldr r0, [r1]
	cmp r0, #0xb
	bne _0800276C
	movs r0, #0xc
	str r0, [r1]
_0800276C:
	movs r0, #0xb
	bl sub_8010250
	b _080027D6
	.align 2, 0
_08002774: .4byte gUnknown_02000810
_08002778: .4byte gUnknown_02000AD0
_0800277C: .4byte gUnknown_020003F0
_08002780: .4byte gUnknown_0200039C
_08002784:
	ldr r0, _080027EC @ =gUnknown_02000810
	bl sub_8012F9C
	ldr r0, _080027F0 @ =gUnknown_02000AD0
	ldr r0, [r0]
	bl sub_800200C
	ldr r4, _080027F4 @ =gUnknown_020003F0
_08002794:
	ldr r0, [r4]
	cmp r0, #0
	beq _080027A4
	movs r0, #4
	bl sub_8005770
	cmp r0, #0
	beq _08002794
_080027A4:
	ldr r4, _080027F4 @ =gUnknown_020003F0
_080027A6:
	ldr r0, [r4]
	cmp r0, #0
	beq _080027E0
	movs r0, #3
	bl sub_8005770
	cmp r0, #0
	beq _080027A6
	ldr r4, _080027F4 @ =gUnknown_020003F0
	ldr r0, [r4]
	cmp r0, #0
	beq _080027E0
	movs r0, #0xc
	bl sub_8010250
	movs r0, #0xd
	bl sub_800200C
	bl sub_80115F8
	bl DrawCredits
	movs r0, #0
	str r0, [r4]
_080027D6:
	ldr r0, _080027F4 @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	beq _080027E0
	b _080022A4
_080027E0:
	ldr r0, _080027F8 @ =gUnknown_087F530C
	movs r1, #0
	bl sub_8003A5C
	b _0800228C
	.align 2, 0
_080027EC: .4byte gUnknown_02000810
_080027F0: .4byte gUnknown_02000AD0
_080027F4: .4byte gUnknown_020003F0
_080027F8: .4byte gUnknown_087F530C

	thumb_func_start sub_80027FC
sub_80027FC: @ 0x080027FC
	push {r4, lr}
	sub sp, #4
	ldr r1, _08002940 @ =0x04000204
	ldr r2, _08002944 @ =0x000045B6
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08002948 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r1, #4]
	ldr r0, _0800294C @ =0x85010000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r4, _08002950 @ =intr_main
	ldr r3, _08002954 @ =gUnknown_087F7E10
	cmp r0, #0
	bge _08002834
_0800282C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0800282C
_08002834:
	movs r0, #0
	str r0, [sp]
	ldr r1, _08002948 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	str r0, [r1, #4]
	ldr r0, _08002958 @ =0x85001F00
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0800285C
_08002854:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08002854
_0800285C:
	movs r0, #0
	str r0, [sp]
	ldr r1, _08002948 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0800295C @ =0x85004000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08002884
_0800287C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0800287C
_08002884:
	movs r0, #0
	str r0, [sp]
	ldr r1, _08002948 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08002960 @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080028AC
_080028A4:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080028A4
_080028AC:
	ldr r1, _08002948 @ =0x040000D4
	str r4, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08002964 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080028CC
_080028C4:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080028C4
_080028CC:
	ldr r1, _08002968 @ =gUnknown_03007FFC
	ldr r0, [r3]
	str r0, [r1]
	bl m4aSoundInit
	ldr r0, _0800296C @ =0x00930800
	bl m4aSoundMode
	ldr r0, _08002970 @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r1, _08002974 @ =0x04000004
	movs r0, #8
	strh r0, [r1]
	movs r1, #0
	ldr r3, _08002978 @ =gUnknown_08031998
	ldr r2, _0800297C @ =gUnknown_02011940
_080028F2:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0xd
	bls _080028F2
	ldr r1, _08002980 @ =gUnknown_020119B0
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	str r0, [r1, #0x1c]
	str r0, [r1, #0x20]
	str r0, [r1, #0x24]
	str r0, [r1, #0x28]
	str r0, [r1, #0x2c]
	str r0, [r1, #0x30]
	str r0, [r1, #0x34]
	str r0, [r1, #0x38]
	str r0, [r1, #0x3c]
	bl sub_8002B0C
	movs r0, #1
	bl sub_8002B0C
	movs r0, #2
	bl sub_8002B0C
	movs r0, #3
	bl sub_8002B0C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002940: .4byte 0x04000204
_08002944: .4byte 0x000045B6
_08002948: .4byte 0x040000D4
_0800294C: .4byte 0x85010000
_08002950: .4byte intr_main
_08002954: .4byte gUnknown_087F7E10
_08002958: .4byte 0x85001F00
_0800295C: .4byte 0x85004000
_08002960: .4byte 0x85000100
_08002964: .4byte 0x84000080
_08002968: .4byte gUnknown_03007FFC
_0800296C: .4byte 0x00930800
_08002970: .4byte 0x04000208
_08002974: .4byte 0x04000004
_08002978: .4byte gUnknown_08031998
_0800297C: .4byte gUnknown_02011940
_08002980: .4byte gUnknown_020119B0

	thumb_func_start sub_8002984
sub_8002984: @ 0x08002984
	push {r4, lr}
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #4
	strh r0, [r1]
	adds r1, #2
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #6
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r1, _08002A24 @ =gUnknown_02011934
	strh r0, [r1]
	ldr r1, _08002A28 @ =gUnknown_020119A0
	strh r0, [r1]
	ldr r1, _08002A2C @ =gUnknown_02011980
	strh r0, [r1]
	ldr r1, _08002A30 @ =gUnknown_02011998
	strh r0, [r1]
	ldr r1, _08002A34 @ =gUnknown_020119F4
	strh r0, [r1]
	ldr r1, _08002A38 @ =gUnknown_020119F8
	strh r0, [r1]
	ldr r1, _08002A3C @ =gUnknown_02011A00
	strh r0, [r1]
	ldr r1, _08002A40 @ =gUnknown_02011978
	strh r0, [r1]
	ldr r0, _08002A44 @ =gUnknown_02010B20
	bl sub_801A41C
	bl sub_8009118
	bl sub_800DBFC
	bl sub_800A720
	bl sub_8009BC0
	bl sub_800B62C
	ldr r0, _08002A48 @ =gUnknown_02000810
	movs r4, #0
	str r4, [r0, #0x20]
	ldr r2, _08002A4C @ =gUnknown_083D65F4
	movs r0, #0xf
	movs r1, #1
	bl sub_801A434
	ldr r0, _08002A50 @ =gUnknown_02013340
	str r4, [r0]
	ldr r1, _08002A54 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	ldr r0, _08002A58 @ =gUnknown_020119FC
	str r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002A24: .4byte gUnknown_02011934
_08002A28: .4byte gUnknown_020119A0
_08002A2C: .4byte gUnknown_02011980
_08002A30: .4byte gUnknown_02011998
_08002A34: .4byte gUnknown_020119F4
_08002A38: .4byte gUnknown_020119F8
_08002A3C: .4byte gUnknown_02011A00
_08002A40: .4byte gUnknown_02011978
_08002A44: .4byte gUnknown_02010B20
_08002A48: .4byte gUnknown_02000810
_08002A4C: .4byte gUnknown_083D65F4
_08002A50: .4byte gUnknown_02013340
_08002A54: .4byte gUnknown_02011994
_08002A58: .4byte gUnknown_020119FC

	thumb_func_start sub_8002A5C
sub_8002A5C: @ 0x08002A5C
	push {r4, lr}
	ldr r3, _08002AAC @ =gUnknown_02011A10
	lsls r0, r0, #6
	adds r1, r3, #4
	adds r1, r0, r1
	ldr r2, [r1]
	adds r1, r3, #0
	adds r1, #8
	adds r1, r0, r1
	ldr r1, [r1]
	adds r2, r2, r1
	adds r1, r3, #0
	adds r1, #0xc
	adds r1, r0, r1
	ldr r1, [r1]
	adds r2, r2, r1
	adds r1, r3, #0
	adds r1, #0x10
	adds r1, r0, r1
	ldr r1, [r1]
	adds r2, r2, r1
	movs r4, #0
	mov ip, r3
	adds r3, r0, #0
	mov r0, ip
	adds r0, #0x20
	adds r1, r3, r0
_08002A92:
	ldrh r0, [r1]
	adds r2, r2, r0
	adds r1, #2
	adds r4, #1
	cmp r4, #0xf
	bls _08002A92
	mov r1, ip
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r2, r0
	beq _08002AB0
	movs r0, #0
	b _08002AB2
	.align 2, 0
_08002AAC: .4byte gUnknown_02011A10
_08002AB0:
	movs r0, #1
_08002AB2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8002AB8
sub_8002AB8: @ 0x08002AB8
	push {r4, lr}
	ldr r3, _08002B08 @ =gUnknown_02011A10
	lsls r0, r0, #6
	adds r1, r3, #4
	adds r1, r0, r1
	ldr r2, [r1]
	adds r1, r3, #0
	adds r1, #8
	adds r1, r0, r1
	ldr r1, [r1]
	adds r2, r2, r1
	adds r1, r3, #0
	adds r1, #0xc
	adds r1, r0, r1
	ldr r1, [r1]
	adds r2, r2, r1
	adds r1, r3, #0
	adds r1, #0x10
	adds r1, r0, r1
	ldr r1, [r1]
	adds r2, r2, r1
	movs r4, #0
	mov ip, r3
	adds r3, r0, #0
	mov r0, ip
	adds r0, #0x20
	adds r1, r3, r0
_08002AEE:
	ldrh r0, [r1]
	adds r2, r2, r0
	adds r1, #2
	adds r4, #1
	cmp r4, #0xf
	bls _08002AEE
	mov r1, ip
	adds r0, r3, r1
	str r2, [r0]
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08002B08: .4byte gUnknown_02011A10

	thumb_func_start sub_8002B0C
sub_8002B0C: @ 0x08002B0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	lsls r6, r5, #6
	ldr r7, _08002BC4 @ =gUnknown_02011A10
	adds r4, r6, r7
	ldr r2, _08002BC8 @ =0x05000010
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	lsls r2, r5, #7
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_8006710
	mov r8, r0
	cmp r0, #0
	bne _08002C32
	adds r0, r5, #0
	bl sub_8002A5C
	cmp r0, #0
	beq _08002BF0
	ldr r1, _08002BCC @ =gUnknown_02000800
	movs r0, #3
	str r0, [r1]
	ldr r1, _08002BD0 @ =gUnknown_02000398
	ldr r0, _08002BD4 @ =gUnknown_02000384
	ldrb r0, [r0]
	str r0, [r1]
	ldr r1, _08002BD8 @ =gUnknown_0200039C
	adds r0, r7, #4
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08002BDC @ =gUnknown_02000AD4
	adds r0, r7, #0
	adds r0, #8
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [r1]
	movs r2, #0
	adds r4, r6, #0
	adds r0, r7, #0
	adds r0, #0xc
	adds r6, r4, r0
	movs r5, #1
	ldr r3, _08002BE0 @ =gUnknown_020003A0
_08002B76:
	adds r1, r5, #0
	lsls r1, r2
	ldr r0, [r6]
	ands r0, r1
	cmp r0, #0
	beq _08002B84
	str r5, [r3]
_08002B84:
	adds r3, #4
	adds r2, #1
	cmp r2, #0xf
	bls _08002B76
	movs r2, #0
	ldr r0, _08002BE4 @ =gUnknown_02011A20
	adds r6, r4, r0
	movs r5, #1
	ldr r3, _08002BE8 @ =gUnknown_02000AE0
_08002B96:
	adds r1, r5, #0
	lsls r1, r2
	ldr r0, [r6]
	ands r0, r1
	cmp r0, #0
	beq _08002BA4
	str r5, [r3]
_08002BA4:
	adds r3, #4
	adds r2, #1
	cmp r2, #9
	bls _08002B96
	movs r2, #0
	ldr r0, _08002BC4 @ =gUnknown_02011A10
	adds r0, #0x20
	adds r4, r4, r0
	ldr r1, _08002BEC @ =gUnknown_020119B0
_08002BB6:
	ldrh r0, [r4]
	stm r1!, {r0}
	adds r4, #2
	adds r2, #1
	cmp r2, #0xf
	bls _08002BB6
	b _08002C32
	.align 2, 0
_08002BC4: .4byte gUnknown_02011A10
_08002BC8: .4byte 0x05000010
_08002BCC: .4byte gUnknown_02000800
_08002BD0: .4byte gUnknown_02000398
_08002BD4: .4byte gUnknown_02000384
_08002BD8: .4byte gUnknown_0200039C
_08002BDC: .4byte gUnknown_02000AD4
_08002BE0: .4byte gUnknown_020003A0
_08002BE4: .4byte gUnknown_02011A20
_08002BE8: .4byte gUnknown_02000AE0
_08002BEC: .4byte gUnknown_020119B0
_08002BF0:
	ldr r1, _08002C40 @ =gUnknown_02000800
	movs r0, #3
	str r0, [r1]
	ldr r1, _08002C44 @ =gUnknown_02000398
	ldr r0, _08002C48 @ =gUnknown_02000384
	ldrb r0, [r0]
	str r0, [r1]
	ldr r0, _08002C4C @ =gUnknown_0200039C
	mov r1, r8
	str r1, [r0]
	ldr r0, _08002C50 @ =gUnknown_02000AD4
	str r1, [r0]
	movs r2, #0
	movs r0, #0
	ldr r1, _08002C54 @ =gUnknown_020003A0
_08002C0E:
	stm r1!, {r0}
	adds r2, #1
	cmp r2, #0xf
	bls _08002C0E
	movs r2, #0
	movs r0, #0
	ldr r1, _08002C58 @ =gUnknown_02000AE0
_08002C1C:
	stm r1!, {r0}
	adds r2, #1
	cmp r2, #9
	bls _08002C1C
	movs r2, #0
	movs r0, #0
	ldr r1, _08002C5C @ =gUnknown_020119B0
_08002C2A:
	stm r1!, {r0}
	adds r2, #1
	cmp r2, #0xf
	bls _08002C2A
_08002C32:
	mov r0, r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002C40: .4byte gUnknown_02000800
_08002C44: .4byte gUnknown_02000398
_08002C48: .4byte gUnknown_02000384
_08002C4C: .4byte gUnknown_0200039C
_08002C50: .4byte gUnknown_02000AD4
_08002C54: .4byte gUnknown_020003A0
_08002C58: .4byte gUnknown_02000AE0
_08002C5C: .4byte gUnknown_020119B0

	thumb_func_start sub_8002C60
sub_8002C60: @ 0x08002C60
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	cmp r4, r5
	bhs _08002C7E
	ldr r7, _08002C84 @ =gUnknown_02011994
	movs r6, #0
_08002C6E:
	bl VBlankIntrWait
	str r6, [r7]
	bl sub_8000A28
	adds r4, #1
	cmp r4, r5
	blo _08002C6E
_08002C7E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002C84: .4byte gUnknown_02011994

	thumb_func_start sub_8002C88
sub_8002C88: @ 0x08002C88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r6, #0
	str r6, [sp]
	lsls r4, r7, #6
	ldr r5, _08002D8C @ =gUnknown_02011A10
	adds r1, r4, r5
	ldr r2, _08002D90 @ =0x05000010
	mov r0, sp
	bl CpuSet
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r1, _08002D94 @ =gUnknown_0200039C
	ldr r1, [r1]
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #8
	adds r0, r4, r0
	ldr r1, _08002D98 @ =gUnknown_02000AD4
	ldr r1, [r1]
	str r1, [r0]
	adds r5, #0xc
	adds r4, r4, r5
	str r6, [r4]
	movs r5, #0
	ldr r2, _08002D9C @ =gUnknown_020003A0
	movs r3, #1
_08002CC8:
	ldr r0, [r2]
	lsls r6, r7, #6
	ldr r1, _08002D8C @ =gUnknown_02011A10
	mov r8, r1
	cmp r0, #0
	beq _08002CDE
	adds r1, r3, #0
	lsls r1, r5
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
_08002CDE:
	adds r2, #4
	adds r5, #1
	cmp r5, #0xf
	bls _08002CC8
	mov r1, r8
	adds r1, #0x10
	adds r1, r6, r1
	movs r0, #0
	str r0, [r1]
	movs r5, #0
	lsls r0, r7, #7
	mov sb, r0
	adds r2, r1, #0
	ldr r3, _08002DA0 @ =gUnknown_02000AE0
	movs r4, #1
_08002CFC:
	ldr r0, [r3]
	cmp r0, #0
	beq _08002D0C
	adds r1, r4, #0
	lsls r1, r5
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_08002D0C:
	adds r3, #4
	adds r5, #1
	cmp r5, #9
	bls _08002CFC
	movs r5, #0
	ldr r0, _08002D8C @ =gUnknown_02011A10
	ldr r2, _08002DA4 @ =gUnknown_020119B0
	adds r0, #0x20
	adds r1, r6, r0
_08002D1E:
	ldm r2!, {r0}
	strh r0, [r1]
	adds r1, #2
	adds r5, #1
	cmp r5, #0xf
	bls _08002D1E
	mov r0, r8
	adds r0, #0x14
	adds r0, r6, r0
	movs r1, #0
	str r1, [r0]
	mov r0, r8
	adds r0, #0x18
	adds r0, r6, r0
	str r1, [r0]
	mov r0, r8
	adds r0, #0x1c
	adds r0, r6, r0
	str r1, [r0]
	adds r0, r7, #0
	bl sub_8002AB8
	ldr r3, _08002DA8 @ =gUnknown_080319D0
	movs r0, #0xf
	movs r1, #0xa0
	movs r2, #0x82
	bl DrawString
	movs r0, #0xa
	bl sub_8002C60
	mov r1, r8
	adds r0, r6, r1
	movs r1, #0x40
	mov r2, sb
	bl sub_80065C4
	adds r5, r0, #0
	ldr r1, _08002DAC @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	bl VBlankIntrWait
	cmp r5, #0
	bne _08002DB4
	ldr r3, _08002DB0 @ =gUnknown_080319DC
	movs r0, #0xf
	movs r1, #0xa0
	movs r2, #0x82
	bl DrawString
	movs r0, #0x3c
	bl sub_8002C60
	b _08002DC6
	.align 2, 0
_08002D8C: .4byte gUnknown_02011A10
_08002D90: .4byte 0x05000010
_08002D94: .4byte gUnknown_0200039C
_08002D98: .4byte gUnknown_02000AD4
_08002D9C: .4byte gUnknown_020003A0
_08002DA0: .4byte gUnknown_02000AE0
_08002DA4: .4byte gUnknown_020119B0
_08002DA8: .4byte gUnknown_080319D0
_08002DAC: .4byte gUnknown_02011994
_08002DB0: .4byte gUnknown_080319DC
_08002DB4:
	ldr r3, _08002DD8 @ =gUnknown_080319E8
	movs r0, #0xf
	movs r1, #0xa0
	movs r2, #0x82
	bl DrawString
	movs r0, #0xb4
	bl sub_8002C60
_08002DC6:
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002DD8: .4byte gUnknown_080319E8

	thumb_func_start sub_8002DDC
sub_8002DDC: @ 0x08002DDC
	push {r4, r5, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1, #0x22]
_08002DE8:
	ldrb r4, [r5]
	adds r5, #1
	cmp r4, #0
	bne _08002DF2
	b _08003424
_08002DF2:
	adds r0, r4, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08002E14
	mov r1, sp
	ldr r2, _08002E10 @ =0x0000FFC0
	adds r0, r4, r2
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
	.align 2, 0
_08002E10: .4byte 0x0000FFC0
_08002E14:
	adds r0, r4, #0
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _08002E34
	mov r1, sp
	ldr r2, _08002E30 @ =0x0000FFEB
	adds r0, r4, r2
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
	.align 2, 0
_08002E30: .4byte 0x0000FFEB
_08002E34:
	adds r0, r4, #0
	subs r0, #0x21
	cmp r0, #0xde
	bls _08002E3E
	b _08003414
_08002E3E:
	lsls r0, r0, #2
	ldr r1, _08002E48 @ =_08002E4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002E48: .4byte _08002E4C
_08002E4C: @ jump table
	.4byte _080031E4 @ case 0
	.4byte _08003238 @ case 1
	.4byte _08003382 @ case 2
	.4byte _08003414 @ case 3
	.4byte _08003414 @ case 4
	.4byte _080032A8 @ case 5
	.4byte _08003246 @ case 6
	.4byte _08003414 @ case 7
	.4byte _08003414 @ case 8
	.4byte _08003414 @ case 9
	.4byte _08003414 @ case 10
	.4byte _0800322A @ case 11
	.4byte _08003254 @ case 12
	.4byte _0800321C @ case 13
	.4byte _08003262 @ case 14
	.4byte _08003414 @ case 15
	.4byte _08003414 @ case 16
	.4byte _08003414 @ case 17
	.4byte _08003414 @ case 18
	.4byte _08003414 @ case 19
	.4byte _08003414 @ case 20
	.4byte _08003414 @ case 21
	.4byte _08003414 @ case 22
	.4byte _08003414 @ case 23
	.4byte _08003414 @ case 24
	.4byte _08003200 @ case 25
	.4byte _0800320E @ case 26
	.4byte _08003414 @ case 27
	.4byte _08003414 @ case 28
	.4byte _08003414 @ case 29
	.4byte _080031C8 @ case 30
	.4byte _08003414 @ case 31
	.4byte _08003414 @ case 32
	.4byte _08003414 @ case 33
	.4byte _08003414 @ case 34
	.4byte _08003414 @ case 35
	.4byte _08003414 @ case 36
	.4byte _08003414 @ case 37
	.4byte _08003414 @ case 38
	.4byte _08003414 @ case 39
	.4byte _08003414 @ case 40
	.4byte _08003414 @ case 41
	.4byte _08003414 @ case 42
	.4byte _08003414 @ case 43
	.4byte _08003414 @ case 44
	.4byte _08003414 @ case 45
	.4byte _08003414 @ case 46
	.4byte _08003414 @ case 47
	.4byte _08003414 @ case 48
	.4byte _08003414 @ case 49
	.4byte _08003414 @ case 50
	.4byte _08003414 @ case 51
	.4byte _08003414 @ case 52
	.4byte _08003414 @ case 53
	.4byte _08003414 @ case 54
	.4byte _08003414 @ case 55
	.4byte _08003414 @ case 56
	.4byte _08003414 @ case 57
	.4byte _08003414 @ case 58
	.4byte _08003414 @ case 59
	.4byte _08003414 @ case 60
	.4byte _08003414 @ case 61
	.4byte _08003414 @ case 62
	.4byte _08003414 @ case 63
	.4byte _08003414 @ case 64
	.4byte _08003414 @ case 65
	.4byte _08003414 @ case 66
	.4byte _08003414 @ case 67
	.4byte _08003414 @ case 68
	.4byte _08003414 @ case 69
	.4byte _08003414 @ case 70
	.4byte _08003414 @ case 71
	.4byte _08003414 @ case 72
	.4byte _08003414 @ case 73
	.4byte _08003414 @ case 74
	.4byte _08003414 @ case 75
	.4byte _08003414 @ case 76
	.4byte _08003414 @ case 77
	.4byte _08003414 @ case 78
	.4byte _08003414 @ case 79
	.4byte _08003414 @ case 80
	.4byte _08003414 @ case 81
	.4byte _08003414 @ case 82
	.4byte _08003414 @ case 83
	.4byte _08003414 @ case 84
	.4byte _08003414 @ case 85
	.4byte _08003414 @ case 86
	.4byte _08003414 @ case 87
	.4byte _08003414 @ case 88
	.4byte _08003414 @ case 89
	.4byte _08003414 @ case 90
	.4byte _08003414 @ case 91
	.4byte _08003414 @ case 92
	.4byte _08003414 @ case 93
	.4byte _08003414 @ case 94
	.4byte _08003414 @ case 95
	.4byte _08003414 @ case 96
	.4byte _08003414 @ case 97
	.4byte _08003414 @ case 98
	.4byte _08003414 @ case 99
	.4byte _08003414 @ case 100
	.4byte _08003414 @ case 101
	.4byte _08003414 @ case 102
	.4byte _08003414 @ case 103
	.4byte _08003414 @ case 104
	.4byte _08003414 @ case 105
	.4byte _08003414 @ case 106
	.4byte _08003414 @ case 107
	.4byte _08003414 @ case 108
	.4byte _08003414 @ case 109
	.4byte _08003414 @ case 110
	.4byte _08003414 @ case 111
	.4byte _08003414 @ case 112
	.4byte _08003414 @ case 113
	.4byte _08003414 @ case 114
	.4byte _08003414 @ case 115
	.4byte _08003414 @ case 116
	.4byte _08003414 @ case 117
	.4byte _08003414 @ case 118
	.4byte _08003414 @ case 119
	.4byte _08003414 @ case 120
	.4byte _08003414 @ case 121
	.4byte _08003414 @ case 122
	.4byte _08003414 @ case 123
	.4byte _08003414 @ case 124
	.4byte _08003414 @ case 125
	.4byte _080033DC @ case 126
	.4byte _08003414 @ case 127
	.4byte _080031F2 @ case 128
	.4byte _08003414 @ case 129
	.4byte _08003414 @ case 130
	.4byte _08003414 @ case 131
	.4byte _08003414 @ case 132
	.4byte _08003414 @ case 133
	.4byte _08003414 @ case 134
	.4byte _08003414 @ case 135
	.4byte _08003414 @ case 136
	.4byte _08003414 @ case 137
	.4byte _08003414 @ case 138
	.4byte _08003414 @ case 139
	.4byte _08003414 @ case 140
	.4byte _08003414 @ case 141
	.4byte _08003414 @ case 142
	.4byte _08003414 @ case 143
	.4byte _08003414 @ case 144
	.4byte _08003414 @ case 145
	.4byte _08003414 @ case 146
	.4byte _08003414 @ case 147
	.4byte _08003414 @ case 148
	.4byte _08003414 @ case 149
	.4byte _08003414 @ case 150
	.4byte _08003414 @ case 151
	.4byte _08003414 @ case 152
	.4byte _08003414 @ case 153
	.4byte _08003414 @ case 154
	.4byte _08003414 @ case 155
	.4byte _08003414 @ case 156
	.4byte _08003414 @ case 157
	.4byte _080031D6 @ case 158
	.4byte _0800328C @ case 159
	.4byte _0800327E @ case 160
	.4byte _0800329A @ case 161
	.4byte _08003414 @ case 162
	.4byte _08003270 @ case 163
	.4byte _080032CC @ case 164
	.4byte _08003406 @ case 165
	.4byte _080033EA @ case 166
	.4byte _080032F6 @ case 167
	.4byte _080032E8 @ case 168
	.4byte _08003304 @ case 169
	.4byte _080032DA @ case 170
	.4byte _0800332E @ case 171
	.4byte _08003320 @ case 172
	.4byte _0800333C @ case 173
	.4byte _08003312 @ case 174
	.4byte _08003414 @ case 175
	.4byte _080033F8 @ case 176
	.4byte _08003366 @ case 177
	.4byte _08003358 @ case 178
	.4byte _08003374 @ case 179
	.4byte _08003414 @ case 180
	.4byte _0800334A @ case 181
	.4byte _08003414 @ case 182
	.4byte _08003414 @ case 183
	.4byte _080033C0 @ case 184
	.4byte _080033B2 @ case 185
	.4byte _080033CE @ case 186
	.4byte _080033A4 @ case 187
	.4byte _08003414 @ case 188
	.4byte _08003414 @ case 189
	.4byte _08003414 @ case 190
	.4byte _0800328C @ case 191
	.4byte _0800327E @ case 192
	.4byte _0800329A @ case 193
	.4byte _08003414 @ case 194
	.4byte _08003270 @ case 195
	.4byte _080032CC @ case 196
	.4byte _08003414 @ case 197
	.4byte _080033EA @ case 198
	.4byte _080032F6 @ case 199
	.4byte _080032E8 @ case 200
	.4byte _08003304 @ case 201
	.4byte _080032DA @ case 202
	.4byte _0800332E @ case 203
	.4byte _08003320 @ case 204
	.4byte _0800333C @ case 205
	.4byte _08003312 @ case 206
	.4byte _08003414 @ case 207
	.4byte _080033F8 @ case 208
	.4byte _08003366 @ case 209
	.4byte _08003358 @ case 210
	.4byte _08003374 @ case 211
	.4byte _08003414 @ case 212
	.4byte _0800334A @ case 213
	.4byte _08003414 @ case 214
	.4byte _08003414 @ case 215
	.4byte _080033C0 @ case 216
	.4byte _080033B2 @ case 217
	.4byte _080033CE @ case 218
	.4byte _080033A4 @ case 219
	.4byte _08003414 @ case 220
	.4byte _08003414 @ case 221
	.4byte _080033DC @ case 222
_080031C8:
	mov r1, sp
	movs r0, #0x25
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080031D6:
	mov r1, sp
	movs r0, #0x26
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080031E4:
	mov r1, sp
	movs r0, #0x27
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080031F2:
	mov r1, sp
	movs r0, #0x28
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003200:
	mov r1, sp
	movs r0, #0x29
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_0800320E:
	mov r1, sp
	movs r0, #0x2a
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_0800321C:
	mov r1, sp
	movs r0, #0x2b
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_0800322A:
	mov r1, sp
	movs r0, #0x2c
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003238:
	mov r1, sp
	movs r0, #0x2d
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003246:
	mov r1, sp
	movs r0, #0x2e
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003254:
	mov r1, sp
	movs r0, #0x2f
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003262:
	mov r1, sp
	movs r0, #0x30
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003270:
	mov r1, sp
	movs r0, #0x31
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_0800327E:
	mov r1, sp
	movs r0, #0x32
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_0800328C:
	mov r1, sp
	movs r0, #0x33
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_0800329A:
	mov r1, sp
	movs r0, #0x34
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080032A8:
	mov r1, sp
	movs r0, #0x35
	strh r0, [r1, #4]
	ldr r1, _080032C4 @ =gUnknown_02010B20
	ldr r2, _080032C8 @ =gUnknown_083D65F4
	mov r0, sp
	bl sub_801A43C
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
	.align 2, 0
_080032C4: .4byte gUnknown_02010B20
_080032C8: .4byte gUnknown_083D65F4
_080032CC:
	mov r1, sp
	movs r0, #0x36
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080032DA:
	mov r1, sp
	movs r0, #0x37
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080032E8:
	mov r1, sp
	movs r0, #0x38
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080032F6:
	mov r1, sp
	movs r0, #0x39
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003304:
	mov r1, sp
	movs r0, #0x3a
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003312:
	mov r1, sp
	movs r0, #0x3b
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003320:
	mov r1, sp
	movs r0, #0x3c
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_0800332E:
	mov r1, sp
	movs r0, #0x3d
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_0800333C:
	mov r1, sp
	movs r0, #0x3e
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_0800334A:
	mov r1, sp
	movs r0, #0x3f
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003358:
	mov r1, sp
	movs r0, #0x40
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003366:
	mov r1, sp
	movs r0, #0x41
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003374:
	mov r1, sp
	movs r0, #0x42
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003382:
	mov r1, sp
	movs r0, #0x43
	strh r0, [r1, #4]
	ldr r1, _0800339C @ =gUnknown_02010B20
	ldr r2, _080033A0 @ =gUnknown_083D65F4
	mov r0, sp
	bl sub_801A43C
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
	.align 2, 0
_0800339C: .4byte gUnknown_02010B20
_080033A0: .4byte gUnknown_083D65F4
_080033A4:
	mov r1, sp
	movs r0, #0x44
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080033B2:
	mov r1, sp
	movs r0, #0x45
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080033C0:
	mov r1, sp
	movs r0, #0x46
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080033CE:
	mov r1, sp
	movs r0, #0x47
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080033DC:
	mov r1, sp
	movs r0, #0x48
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080033EA:
	mov r1, sp
	movs r0, #0x49
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_080033F8:
	mov r1, sp
	movs r0, #0x4a
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003406:
	mov r1, sp
	movs r0, #0x4b
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	b _0800341C
_08003414:
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #6
_0800341C:
	strh r0, [r1, #0x22]
	cmp r4, #0
	beq _08003424
	b _08002DE8
_08003424:
	mov r0, sp
	ldrh r0, [r0, #0x22]
	add sp, #0x2c
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start DrawString
DrawString: @ 0x08003430
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r6, r3, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r1, #0
	movs r4, #0
	str r4, [sp, #0x2c]
	ldr r3, _0800347C @ =0x040000D4
	add r1, sp, #0x2c
	str r1, [r3]
	mov r1, sp
	str r1, [r3, #4]
	ldr r1, _08003480 @ =0x8500000B
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	mov r1, sp
	strh r4, [r1, #2]
	strh r7, [r1, #0x22]
	strh r2, [r1, #0x24]
	strh r0, [r1, #0x20]
	mov r0, sp
	strh r4, [r0, #4]
	str r4, [sp, #0x1c]
_08003460:
	ldrb r5, [r6]
	adds r6, #1
	cmp r5, #0
	bne _0800346A
	b _08003990
_0800346A:
	cmp r5, #0xa
	bne _08003484
	mov r0, sp
	strh r7, [r0, #0x22]
	mov r1, sp
	ldrh r0, [r0, #0x24]
	adds r0, #0x10
	strh r0, [r1, #0x24]
	b _0800398A
	.align 2, 0
_0800347C: .4byte 0x040000D4
_08003480: .4byte 0x8500000B
_08003484:
	adds r1, r5, #0
	subs r1, #0x41
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _080034A4
	mov r0, sp
	strh r1, [r0, #4]
	ldr r1, _0800349C @ =gUnknown_02010B20
	ldr r2, _080034A0 @ =gUnknown_083D65F4
	b _08003956
	.align 2, 0
_0800349C: .4byte gUnknown_02010B20
_080034A0: .4byte gUnknown_083D65F4
_080034A4:
	adds r0, r5, #0
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _080034BC
	mov r1, sp
	ldr r2, _080034B8 @ =0x0000FFEA
	adds r0, r5, r2
	b _0800394E
	.align 2, 0
_080034B8: .4byte 0x0000FFEA
_080034BC:
	adds r0, r5, #0
	subs r0, #0x21
	cmp r0, #0xde
	bls _080034C6
	b _0800397C
_080034C6:
	lsls r0, r0, #2
	ldr r1, _080034D0 @ =_080034D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080034D0: .4byte _080034D4
_080034D4: @ jump table
	.4byte _08003872 @ case 0
	.4byte _08003896 @ case 1
	.4byte _0800394A @ case 2
	.4byte _0800397C @ case 3
	.4byte _0800397C @ case 4
	.4byte _080038AE @ case 5
	.4byte _0800389C @ case 6
	.4byte _0800397C @ case 7
	.4byte _0800397C @ case 8
	.4byte _0800397C @ case 9
	.4byte _0800397C @ case 10
	.4byte _08003890 @ case 11
	.4byte _080038A2 @ case 12
	.4byte _0800388A @ case 13
	.4byte _080038A8 @ case 14
	.4byte _0800397C @ case 15
	.4byte _0800397C @ case 16
	.4byte _0800397C @ case 17
	.4byte _0800397C @ case 18
	.4byte _0800397C @ case 19
	.4byte _0800397C @ case 20
	.4byte _0800397C @ case 21
	.4byte _0800397C @ case 22
	.4byte _0800397C @ case 23
	.4byte _0800397C @ case 24
	.4byte _0800387E @ case 25
	.4byte _08003884 @ case 26
	.4byte _0800397C @ case 27
	.4byte _0800397C @ case 28
	.4byte _0800397C @ case 29
	.4byte _08003850 @ case 30
	.4byte _0800397C @ case 31
	.4byte _0800397C @ case 32
	.4byte _0800397C @ case 33
	.4byte _0800397C @ case 34
	.4byte _0800397C @ case 35
	.4byte _0800397C @ case 36
	.4byte _0800397C @ case 37
	.4byte _0800397C @ case 38
	.4byte _0800397C @ case 39
	.4byte _0800397C @ case 40
	.4byte _0800397C @ case 41
	.4byte _0800397C @ case 42
	.4byte _0800397C @ case 43
	.4byte _0800397C @ case 44
	.4byte _0800397C @ case 45
	.4byte _0800397C @ case 46
	.4byte _0800397C @ case 47
	.4byte _0800397C @ case 48
	.4byte _0800397C @ case 49
	.4byte _0800397C @ case 50
	.4byte _0800397C @ case 51
	.4byte _0800397C @ case 52
	.4byte _0800397C @ case 53
	.4byte _0800397C @ case 54
	.4byte _0800397C @ case 55
	.4byte _0800397C @ case 56
	.4byte _0800397C @ case 57
	.4byte _0800397C @ case 58
	.4byte _0800397C @ case 59
	.4byte _0800397C @ case 60
	.4byte _0800397C @ case 61
	.4byte _0800397C @ case 62
	.4byte _0800397C @ case 63
	.4byte _0800397C @ case 64
	.4byte _0800397C @ case 65
	.4byte _0800397C @ case 66
	.4byte _0800397C @ case 67
	.4byte _0800397C @ case 68
	.4byte _0800397C @ case 69
	.4byte _0800397C @ case 70
	.4byte _0800397C @ case 71
	.4byte _0800397C @ case 72
	.4byte _0800397C @ case 73
	.4byte _0800397C @ case 74
	.4byte _0800397C @ case 75
	.4byte _0800397C @ case 76
	.4byte _0800397C @ case 77
	.4byte _0800397C @ case 78
	.4byte _0800397C @ case 79
	.4byte _0800397C @ case 80
	.4byte _0800397C @ case 81
	.4byte _0800397C @ case 82
	.4byte _0800397C @ case 83
	.4byte _0800397C @ case 84
	.4byte _0800397C @ case 85
	.4byte _0800397C @ case 86
	.4byte _0800397C @ case 87
	.4byte _0800397C @ case 88
	.4byte _0800397C @ case 89
	.4byte _0800397C @ case 90
	.4byte _0800397C @ case 91
	.4byte _0800397C @ case 92
	.4byte _0800397C @ case 93
	.4byte _0800397C @ case 94
	.4byte _0800397C @ case 95
	.4byte _0800397C @ case 96
	.4byte _0800397C @ case 97
	.4byte _0800397C @ case 98
	.4byte _0800397C @ case 99
	.4byte _0800397C @ case 100
	.4byte _0800397C @ case 101
	.4byte _0800397C @ case 102
	.4byte _0800397C @ case 103
	.4byte _0800397C @ case 104
	.4byte _0800397C @ case 105
	.4byte _0800397C @ case 106
	.4byte _0800397C @ case 107
	.4byte _0800397C @ case 108
	.4byte _0800397C @ case 109
	.4byte _0800397C @ case 110
	.4byte _0800397C @ case 111
	.4byte _0800397C @ case 112
	.4byte _0800397C @ case 113
	.4byte _0800397C @ case 114
	.4byte _0800397C @ case 115
	.4byte _0800397C @ case 116
	.4byte _0800397C @ case 117
	.4byte _0800397C @ case 118
	.4byte _0800397C @ case 119
	.4byte _0800397C @ case 120
	.4byte _0800397C @ case 121
	.4byte _0800397C @ case 122
	.4byte _0800397C @ case 123
	.4byte _0800397C @ case 124
	.4byte _0800397C @ case 125
	.4byte _08003932 @ case 126
	.4byte _0800397C @ case 127
	.4byte _08003878 @ case 128
	.4byte _0800397C @ case 129
	.4byte _0800397C @ case 130
	.4byte _0800397C @ case 131
	.4byte _0800397C @ case 132
	.4byte _0800397C @ case 133
	.4byte _0800397C @ case 134
	.4byte _0800397C @ case 135
	.4byte _0800397C @ case 136
	.4byte _0800397C @ case 137
	.4byte _0800397C @ case 138
	.4byte _0800397C @ case 139
	.4byte _0800397C @ case 140
	.4byte _0800397C @ case 141
	.4byte _0800397C @ case 142
	.4byte _0800397C @ case 143
	.4byte _0800397C @ case 144
	.4byte _0800397C @ case 145
	.4byte _0800397C @ case 146
	.4byte _0800397C @ case 147
	.4byte _0800397C @ case 148
	.4byte _0800397C @ case 149
	.4byte _0800397C @ case 150
	.4byte _0800397C @ case 151
	.4byte _0800397C @ case 152
	.4byte _0800397C @ case 153
	.4byte _0800397C @ case 154
	.4byte _0800397C @ case 155
	.4byte _0800397C @ case 156
	.4byte _0800397C @ case 157
	.4byte _0800386C @ case 158
	.4byte _080038C0 @ case 159
	.4byte _080038BA @ case 160
	.4byte _080038C6 @ case 161
	.4byte _0800397C @ case 162
	.4byte _080038B4 @ case 163
	.4byte _080038CC @ case 164
	.4byte _08003944 @ case 165
	.4byte _08003938 @ case 166
	.4byte _080038DE @ case 167
	.4byte _080038D8 @ case 168
	.4byte _080038E4 @ case 169
	.4byte _080038D2 @ case 170
	.4byte _080038F6 @ case 171
	.4byte _080038F0 @ case 172
	.4byte _080038FC @ case 173
	.4byte _080038EA @ case 174
	.4byte _0800397C @ case 175
	.4byte _0800393E @ case 176
	.4byte _0800390E @ case 177
	.4byte _08003908 @ case 178
	.4byte _08003914 @ case 179
	.4byte _0800397C @ case 180
	.4byte _08003902 @ case 181
	.4byte _0800397C @ case 182
	.4byte _0800397C @ case 183
	.4byte _08003926 @ case 184
	.4byte _08003920 @ case 185
	.4byte _0800392C @ case 186
	.4byte _0800391A @ case 187
	.4byte _0800397C @ case 188
	.4byte _0800397C @ case 189
	.4byte _0800397C @ case 190
	.4byte _080038C0 @ case 191
	.4byte _080038BA @ case 192
	.4byte _080038C6 @ case 193
	.4byte _0800397C @ case 194
	.4byte _080038B4 @ case 195
	.4byte _080038CC @ case 196
	.4byte _0800397C @ case 197
	.4byte _08003938 @ case 198
	.4byte _080038DE @ case 199
	.4byte _080038D8 @ case 200
	.4byte _080038E4 @ case 201
	.4byte _080038D2 @ case 202
	.4byte _080038F6 @ case 203
	.4byte _080038F0 @ case 204
	.4byte _080038FC @ case 205
	.4byte _080038EA @ case 206
	.4byte _0800397C @ case 207
	.4byte _0800393E @ case 208
	.4byte _0800390E @ case 209
	.4byte _08003908 @ case 210
	.4byte _08003914 @ case 211
	.4byte _0800397C @ case 212
	.4byte _08003902 @ case 213
	.4byte _0800397C @ case 214
	.4byte _0800397C @ case 215
	.4byte _08003926 @ case 216
	.4byte _08003920 @ case 217
	.4byte _0800392C @ case 218
	.4byte _0800391A @ case 219
	.4byte _0800397C @ case 220
	.4byte _0800397C @ case 221
	.4byte _08003932 @ case 222
_08003850:
	mov r1, sp
	movs r0, #0x24
	strh r0, [r1, #4]
	ldr r1, _08003864 @ =gUnknown_02010B20
	ldr r2, _08003868 @ =gUnknown_083D65F4
	mov r0, sp
	bl sub_801A43C
	mov r1, sp
	b _08003982
	.align 2, 0
_08003864: .4byte gUnknown_02010B20
_08003868: .4byte gUnknown_083D65F4
_0800386C:
	mov r1, sp
	movs r0, #0x25
	b _0800394E
_08003872:
	mov r1, sp
	movs r0, #0x26
	b _0800394E
_08003878:
	mov r1, sp
	movs r0, #0x27
	b _0800394E
_0800387E:
	mov r1, sp
	movs r0, #0x28
	b _0800394E
_08003884:
	mov r1, sp
	movs r0, #0x29
	b _0800394E
_0800388A:
	mov r1, sp
	movs r0, #0x2a
	b _0800394E
_08003890:
	mov r1, sp
	movs r0, #0x2b
	b _0800394E
_08003896:
	mov r1, sp
	movs r0, #0x2c
	b _0800394E
_0800389C:
	mov r1, sp
	movs r0, #0x2d
	b _0800394E
_080038A2:
	mov r1, sp
	movs r0, #0x2e
	b _0800394E
_080038A8:
	mov r1, sp
	movs r0, #0x2f
	b _0800394E
_080038AE:
	mov r1, sp
	movs r0, #0x30
	b _0800394E
_080038B4:
	mov r1, sp
	movs r0, #0x31
	b _0800394E
_080038BA:
	mov r1, sp
	movs r0, #0x32
	b _0800394E
_080038C0:
	mov r1, sp
	movs r0, #0x33
	b _0800394E
_080038C6:
	mov r1, sp
	movs r0, #0x34
	b _0800394E
_080038CC:
	mov r1, sp
	movs r0, #0x35
	b _0800394E
_080038D2:
	mov r1, sp
	movs r0, #0x36
	b _0800394E
_080038D8:
	mov r1, sp
	movs r0, #0x37
	b _0800394E
_080038DE:
	mov r1, sp
	movs r0, #0x38
	b _0800394E
_080038E4:
	mov r1, sp
	movs r0, #0x39
	b _0800394E
_080038EA:
	mov r1, sp
	movs r0, #0x3a
	b _0800394E
_080038F0:
	mov r1, sp
	movs r0, #0x3b
	b _0800394E
_080038F6:
	mov r1, sp
	movs r0, #0x3c
	b _0800394E
_080038FC:
	mov r1, sp
	movs r0, #0x3d
	b _0800394E
_08003902:
	mov r1, sp
	movs r0, #0x3e
	b _0800394E
_08003908:
	mov r1, sp
	movs r0, #0x3f
	b _0800394E
_0800390E:
	mov r1, sp
	movs r0, #0x40
	b _0800394E
_08003914:
	mov r1, sp
	movs r0, #0x41
	b _0800394E
_0800391A:
	mov r1, sp
	movs r0, #0x42
	b _0800394E
_08003920:
	mov r1, sp
	movs r0, #0x43
	b _0800394E
_08003926:
	mov r1, sp
	movs r0, #0x44
	b _0800394E
_0800392C:
	mov r1, sp
	movs r0, #0x45
	b _0800394E
_08003932:
	mov r1, sp
	movs r0, #0x46
	b _0800394E
_08003938:
	mov r1, sp
	movs r0, #0x47
	b _0800394E
_0800393E:
	mov r1, sp
	movs r0, #0x48
	b _0800394E
_08003944:
	mov r1, sp
	movs r0, #0x49
	b _0800394E
_0800394A:
	mov r1, sp
	movs r0, #0x4a
_0800394E:
	strh r0, [r1, #4]
	ldr r1, _08003970 @ =gUnknown_02010B20
	ldr r2, _08003974 @ =gUnknown_083D65F4
	mov r0, sp
_08003956:
	bl sub_801A43C
	mov r4, sp
	mov r3, sp
	ldr r2, _08003978 @ =gUnknown_087F7E14
	mov r0, sp
	ldrh r1, [r0, #4]
	adds r1, r1, r2
	ldrh r0, [r3, #0x22]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x22]
	b _0800398A
	.align 2, 0
_08003970: .4byte gUnknown_02010B20
_08003974: .4byte gUnknown_083D65F4
_08003978: .4byte gUnknown_087F7E14
_0800397C:
	mov r1, sp
	movs r0, #0
	strh r0, [r1, #4]
_08003982:
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	strh r0, [r1, #0x22]
_0800398A:
	cmp r5, #0
	beq _08003990
	b _08003460
_08003990:
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8003998
sub_8003998: @ 0x08003998
	push {r4, lr}
	ldr r0, _08003A1C @ =gUnknown_02011990
	ldr r0, [r0]
	cmp r0, #0
	bne _08003A10
	bl SoundVSync_rev01
	ldr r0, _08003A20 @ =gUnknown_020119FC
	ldr r0, [r0]
	cmp r0, #0
	beq _080039EE
	ldr r1, _08003A24 @ =0x04000010
	ldr r0, _08003A28 @ =gUnknown_02011934
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08003A2C @ =gUnknown_020119A0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08003A30 @ =gUnknown_02011980
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08003A34 @ =gUnknown_02011998
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08003A38 @ =gUnknown_020119F4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08003A3C @ =gUnknown_020119F8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08003A40 @ =gUnknown_02011A00
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08003A44 @ =gUnknown_02011978
	ldrh r0, [r0]
	strh r0, [r1]
_080039EE:
	ldr r0, _08003A48 @ =gUnknown_02011994
	ldr r0, [r0]
	cmp r0, #0
	beq _08003A0C
	ldr r4, _08003A4C @ =gUnknown_02010B20
	adds r0, r4, #0
	bl sub_801A424
	adds r0, r4, #0
	bl sub_801A41C
	ldr r1, _08003A50 @ =gUnknown_020119F0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08003A0C:
	bl m4aSoundMain
_08003A10:
	ldr r1, _08003A54 @ =gUnknown_03007FF8
	movs r0, #1
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003A1C: .4byte gUnknown_02011990
_08003A20: .4byte gUnknown_020119FC
_08003A24: .4byte 0x04000010
_08003A28: .4byte gUnknown_02011934
_08003A2C: .4byte gUnknown_020119A0
_08003A30: .4byte gUnknown_02011980
_08003A34: .4byte gUnknown_02011998
_08003A38: .4byte gUnknown_020119F4
_08003A3C: .4byte gUnknown_020119F8
_08003A40: .4byte gUnknown_02011A00
_08003A44: .4byte gUnknown_02011978
_08003A48: .4byte gUnknown_02011994
_08003A4C: .4byte gUnknown_02010B20
_08003A50: .4byte gUnknown_020119F0
_08003A54: .4byte gUnknown_03007FF8
_08003A58:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_8003A5C
sub_8003A5C: @ 0x08003A5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08003A80 @ =g_MusicEnabled
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003A78
	cmp r4, #0
	beq _08003A74
	ldr r0, _08003A84 @ =gUnknown_0201B4B0
	adds r1, r4, #0
	bl MPlayStart
_08003A74:
	ldr r0, _08003A88 @ =gUnknown_0201199C
	str r4, [r0]
_08003A78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003A80: .4byte g_MusicEnabled
_08003A84: .4byte gUnknown_0201B4B0
_08003A88: .4byte gUnknown_0201199C

	thumb_func_start sub_8003A8C
sub_8003A8C: @ 0x08003A8C
	push {lr}
	ldr r0, _08003A98 @ =gUnknown_0201B4B0
	bl m4aMPlayStop
	pop {r0}
	bx r0
	.align 2, 0
_08003A98: .4byte gUnknown_0201B4B0

	thumb_func_start sub_8003A9C
sub_8003A9C: @ 0x08003A9C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08003AB8 @ =g_SoundEnabled
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003AE4
	cmp r1, #1
	beq _08003ACC
	cmp r1, #1
	bgt _08003ABC
	cmp r1, #0
	beq _08003AC2
	b _08003AE4
	.align 2, 0
_08003AB8: .4byte g_SoundEnabled
_08003ABC:
	cmp r1, #2
	beq _08003ADC
	b _08003AE4
_08003AC2:
	ldr r0, _08003AC8 @ =gUnknown_0201B4F0
	b _08003ACE
	.align 2, 0
_08003AC8: .4byte gUnknown_0201B4F0
_08003ACC:
	ldr r0, _08003AD8 @ =gUnknown_0201B530
_08003ACE:
	adds r1, r2, #0
	bl MPlayStart
	b _08003AE4
	.align 2, 0
_08003AD8: .4byte gUnknown_0201B530
_08003ADC:
	ldr r0, _08003AE8 @ =gUnknown_0201B580
	adds r1, r2, #0
	bl MPlayStart
_08003AE4:
	pop {r0}
	bx r0
	.align 2, 0
_08003AE8: .4byte gUnknown_0201B580

	thumb_func_start sub_8003AEC
sub_8003AEC: @ 0x08003AEC
	push {lr}
	cmp r0, #1
	beq _08003B10
	cmp r0, #1
	bgt _08003AFC
	cmp r0, #0
	beq _08003B02
	b _08003B22
_08003AFC:
	cmp r0, #2
	beq _08003B1C
	b _08003B22
_08003B02:
	ldr r0, _08003B0C @ =gUnknown_0201B4F0
	bl m4aMPlayStop
	b _08003B22
	.align 2, 0
_08003B0C: .4byte gUnknown_0201B4F0
_08003B10:
	ldr r0, _08003B18 @ =gUnknown_0201B530
	bl m4aMPlayStop
	b _08003B22
	.align 2, 0
_08003B18: .4byte gUnknown_0201B530
_08003B1C:
	ldr r0, _08003B28 @ =gUnknown_0201B580
	bl m4aMPlayStop
_08003B22:
	pop {r0}
	bx r0
	.align 2, 0
_08003B28: .4byte gUnknown_0201B580

	thumb_func_start sub_8003B2C
sub_8003B2C: @ 0x08003B2C
	push {r4, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	adds r4, r2, r1
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r1, _08003B68 @ =gUnknown_02011B14
	adds r0, #4
	str r0, [r1]
	ldr r0, _08003B6C @ =gUnknown_02011B18
	str r4, [r0]
	ldr r0, _08003B70 @ =gUnknown_02011B10
	str r2, [r0]
	movs r0, #0
	cmp r0, r2
	bhi _08003B62
	movs r3, #0
	ldr r1, _08003B74 @ =gUnknown_02011B20
_08003B56:
	strh r3, [r1]
	adds r3, r3, r4
	adds r1, #2
	adds r0, #1
	cmp r0, r2
	bls _08003B56
_08003B62:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003B68: .4byte gUnknown_02011B14
_08003B6C: .4byte gUnknown_02011B18
_08003B70: .4byte gUnknown_02011B10
_08003B74: .4byte gUnknown_02011B20

	thumb_func_start sub_8003B78
sub_8003B78: @ 0x08003B78
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r0, #0xf
	adds r5, r3, #0
	ands r5, r0
	adds r4, r2, #0
	ands r4, r0
	asrs r3, r3, #4
	asrs r2, r2, #4
	ldr r0, _08003B9C @ =gUnknown_02011B18
	ldr r0, [r0]
	cmp r3, r0
	bhs _08003B98
	cmp r3, #0
	bge _08003BA0
_08003B98:
	movs r0, #0x21
	b _08003C54
	.align 2, 0
_08003B9C: .4byte gUnknown_02011B18
_08003BA0:
	cmp r2, #0
	bge _08003BA8
	movs r2, #0
	b _08003BB4
_08003BA8:
	ldr r0, _08003BD8 @ =gUnknown_02011B10
	ldr r0, [r0]
	cmp r2, r0
	bhs _08003C52
	cmp r2, #0
	blt _08003C52
_08003BB4:
	ldr r1, _08003BDC @ =gUnknown_02011B20
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08003BE0 @ =gUnknown_02011B14
	ldr r0, [r0]
	adds r1, r1, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #7
	bhi _08003C20
	lsls r0, r0, #2
	ldr r1, _08003BE4 @ =_08003BE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003BD8: .4byte gUnknown_02011B10
_08003BDC: .4byte gUnknown_02011B20
_08003BE0: .4byte gUnknown_02011B14
_08003BE4: .4byte _08003BE8
_08003BE8: @ jump table
	.4byte _08003C10 @ case 0
	.4byte _08003C08 @ case 1
	.4byte _08003C14 @ case 2
	.4byte _08003C1A @ case 3
	.4byte _08003C1A @ case 4
	.4byte _08003C1A @ case 5
	.4byte _08003C1A @ case 6
	.4byte _08003C1A @ case 7
_08003C08:
	movs r0, #0xf
	subs r0, r0, r4
	cmp r5, r0
	blt _08003C52
_08003C10:
	movs r0, #1
	b _08003C54
_08003C14:
	cmp r5, r4
	bhi _08003C52
	b _08003C10
_08003C1A:
	cmp r4, #7
	bls _08003C52
	b _08003C10
_08003C20:
	lsls r0, r3, #4
	adds r0, r0, r5
	lsls r6, r0, #0x10
	lsls r0, r2, #4
	adds r0, r0, r4
	lsls r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_800D45C
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08003C42
	movs r0, #9
	b _08003C54
_08003C42:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_801A444
	cmp r0, r4
	beq _08003C52
	movs r0, #0x11
	b _08003C54
_08003C52:
	movs r0, #0
_08003C54:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8003C5C
sub_8003C5C: @ 0x08003C5C
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	asrs r3, r3, #4
	asrs r2, r2, #4
	ldr r0, _08003C9C @ =gUnknown_02011B18
	ldr r0, [r0]
	cmp r3, r0
	bhs _08003C94
	cmp r3, #0
	blt _08003C94
	ldr r0, _08003CA0 @ =gUnknown_02011B10
	ldr r0, [r0]
	cmp r2, r0
	bhs _08003C94
	cmp r2, #0
	blt _08003C94
	ldr r1, _08003CA4 @ =gUnknown_02011B20
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08003CA8 @ =gUnknown_02011B14
	ldr r0, [r0]
	adds r1, r1, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x1f
	bls _08003C96
_08003C94:
	movs r0, #0
_08003C96:
	pop {r1}
	bx r1
	.align 2, 0
_08003C9C: .4byte gUnknown_02011B18
_08003CA0: .4byte gUnknown_02011B10
_08003CA4: .4byte gUnknown_02011B20
_08003CA8: .4byte gUnknown_02011B14

	thumb_func_start sub_8003CAC
sub_8003CAC: @ 0x08003CAC
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	asrs r3, r3, #4
	asrs r2, r2, #4
	ldr r0, _08003CEC @ =gUnknown_02011B18
	ldr r0, [r0]
	cmp r3, r0
	bhs _08003CE4
	cmp r3, #0
	blt _08003CE4
	ldr r0, _08003CF0 @ =gUnknown_02011B10
	ldr r0, [r0]
	cmp r2, r0
	bhs _08003CE4
	cmp r2, #0
	blt _08003CE4
	ldr r1, _08003CF4 @ =gUnknown_02011B20
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08003CF8 @ =gUnknown_02011B14
	ldr r0, [r0]
	adds r1, r1, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x1f
	bhi _08003CE6
_08003CE4:
	movs r0, #0
_08003CE6:
	pop {r1}
	bx r1
	.align 2, 0
_08003CEC: .4byte gUnknown_02011B18
_08003CF0: .4byte gUnknown_02011B10
_08003CF4: .4byte gUnknown_02011B20
_08003CF8: .4byte gUnknown_02011B14

	thumb_func_start sub_8003CFC
sub_8003CFC: @ 0x08003CFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	str r1, [sp]
	mov r0, r8
	asrs r0, r0, #4
	mov r8, r0
	asrs r7, r7, #4
	ldr r0, _08003D3C @ =gUnknown_02011B18
	ldr r0, [r0]
	cmp r8, r0
	bhs _08003D36
	mov r1, r8
	cmp r1, #0
	blt _08003D36
	ldr r0, _08003D40 @ =gUnknown_02011B10
	ldr r0, [r0]
	cmp r7, r0
	bhs _08003D36
	cmp r7, #0
	bge _08003D44
_08003D36:
	movs r0, #8
	b _08003ED8
	.align 2, 0
_08003D3C: .4byte gUnknown_02011B18
_08003D40: .4byte gUnknown_02011B10
_08003D44:
	movs r0, #0
	mov sb, r0
	ldr r1, _08003D70 @ =gUnknown_02011B20
	lsls r0, r7, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08003D74 @ =gUnknown_02011B14
	ldr r0, [r0]
	add r1, r8
	adds r0, r0, r1
	ldrb r2, [r0]
	cmp r2, #0x1f
	bls _08003D60
	movs r2, #0
_08003D60:
	cmp r2, #7
	bls _08003D66
	b _08003ED6
_08003D66:
	lsls r0, r2, #2
	ldr r1, _08003D78 @ =_08003D7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003D70: .4byte gUnknown_02011B20
_08003D74: .4byte gUnknown_02011B14
_08003D78: .4byte _08003D7C
_08003D7C: @ jump table
	.4byte _08003D9C @ case 0
	.4byte _08003E38 @ case 1
	.4byte _08003E8C @ case 2
	.4byte _08003E92 @ case 3
	.4byte _08003E9A @ case 4
	.4byte _08003EA2 @ case 5
	.4byte _08003EAA @ case 6
	.4byte _08003EB4 @ case 7
_08003D9C:
	movs r1, #0x10
	mov sb, r1
	mov r0, r8
	lsls r0, r0, #4
	mov sl, r0
	b _08003DB0
_08003DA8:
	ldr r0, [r1]
	subs r0, #1
	cmp r7, r0
	bhs _08003E04
_08003DB0:
	movs r1, #0x10
	rsbs r1, r1, #0
	add sb, r1
	ldr r0, [sp]
	add r0, sl
	lsls r5, r0, #0x10
	lsls r6, r7, #0x14
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_800D45C
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _08003EBE
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_801A444
	cmp r0, r4
	bne _08003ECC
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp sb, r0
	ble _08003ED2
	adds r7, #1
	ldr r1, _08003E14 @ =gUnknown_02011B20
	lsls r0, r7, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08003E18 @ =gUnknown_02011B14
	ldr r0, [r0]
	add r1, r8
	adds r0, r0, r1
	ldrb r2, [r0]
	cmp r2, #0x1f
	bls _08003DFE
	movs r2, #0
_08003DFE:
	ldr r1, _08003E1C @ =gUnknown_02011B10
	cmp r2, #0
	beq _08003DA8
_08003E04:
	ldr r0, [r1]
	subs r0, #1
	cmp r7, r0
	bls _08003E20
	movs r0, #0x80
	rsbs r0, r0, #0
	b _08003ED8
	.align 2, 0
_08003E14: .4byte gUnknown_02011B20
_08003E18: .4byte gUnknown_02011B14
_08003E1C: .4byte gUnknown_02011B10
_08003E20:
	cmp r2, #1
	beq _08003ED2
	ldr r0, [sp]
	add r0, sl
	lsls r1, r7, #4
	bl sub_8003CFC
	mov r1, sb
	subs r1, #0x10
	adds r1, r1, r0
	mov sb, r1
	b _08003ED2
_08003E38:
	cmp r2, #1
	bne _08003E6E
	cmp r7, #0
	ble _08003E6E
	ldr r1, _08003E84 @ =gUnknown_02011B20
	ldr r4, _08003E88 @ =gUnknown_02011B14
	lsls r0, r7, #1
	adds r3, r0, r1
_08003E48:
	subs r3, #2
	subs r7, #1
	movs r0, #0x10
	add sb, r0
	mov r1, sb
	cmp r1, #0x1f
	bgt _08003ED2
	ldrh r0, [r3]
	ldr r1, [r4]
	add r0, r8
	adds r1, r1, r0
	ldrb r2, [r1]
	cmp r2, #0x1f
	bls _08003E66
	movs r2, #0
_08003E66:
	cmp r2, #1
	bne _08003E6E
	cmp r7, #0
	bgt _08003E48
_08003E6E:
	cmp r2, #1
	bls _08003ED2
	mov r1, r8
	lsls r0, r1, #4
	ldr r1, [sp]
	adds r0, r0, r1
	lsls r1, r7, #4
	bl sub_8003CFC
	add sb, r0
	b _08003ED2
	.align 2, 0
_08003E84: .4byte gUnknown_02011B20
_08003E88: .4byte gUnknown_02011B14
_08003E8C:
	ldr r0, [sp]
	adds r0, #1
	b _08003ED8
_08003E92:
	movs r0, #0xf
	ldr r1, [sp]
	subs r0, r0, r1
	b _08003ED8
_08003E9A:
	ldr r1, [sp]
	lsrs r0, r1, #1
	adds r0, #1
	b _08003ED8
_08003EA2:
	ldr r1, [sp]
	lsrs r0, r1, #1
	adds r0, #9
	b _08003ED8
_08003EAA:
	ldr r0, [sp]
	lsrs r1, r0, #1
	movs r0, #0x10
	subs r0, r0, r1
	b _08003ED8
_08003EB4:
	ldr r0, [sp]
	lsrs r1, r0, #1
	movs r0, #8
	subs r0, r0, r1
	b _08003ED8
_08003EBE:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_800D4E8
	add r0, sb
	b _08003ED8
_08003ECC:
	mov r0, sb
	adds r0, #0x28
	b _08003ED8
_08003ED2:
	mov r0, sb
	b _08003ED8
_08003ED6:
	movs r0, #0
_08003ED8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8003EE8
sub_8003EE8: @ 0x08003EE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	adds r6, r1, #0
	mov sl, r2
	str r3, [sp]
	movs r2, #0
	movs r0, #7
	mov r1, r8
	ands r1, r0
	str r1, [sp, #4]
	adds r3, r6, #0
	ands r3, r0
	str r3, [sp, #8]
	mov r0, r8
	asrs r0, r0, #4
	mov r8, r0
	asrs r6, r6, #4
	ldr r0, _08003F7C @ =gUnknown_02011B18
	ldr r0, [r0]
	cmp r8, r0
	blo _08003F1E
	b _080040E0
_08003F1E:
	mov r1, r8
	cmp r1, #0
	bge _08003F26
	b _080040E0
_08003F26:
	ldr r0, _08003F80 @ =gUnknown_02011B10
	ldr r0, [r0]
	cmp r6, r0
	blo _08003F30
	b _080040E0
_08003F30:
	cmp r6, #0
	bge _08003F36
	b _080040E0
_08003F36:
	ldr r3, _08003F84 @ =gUnknown_02011B20
	lsls r0, r6, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r1, _08003F88 @ =gUnknown_02011B14
	ldr r1, [r1]
	add r0, r8
	adds r0, r1, r0
	ldrb r4, [r0]
	cmp r4, #0x1f
	bls _08003F4E
	movs r4, #0
_08003F4E:
	cmp r4, #0
	beq _08003F8C
	cmp r4, #0
	bge _08003F58
	b _080040E0
_08003F58:
	cmp r4, #8
	ble _08003F5E
	b _080040E0
_08003F5E:
	cmp r4, #2
	bge _08003F64
	b _080040E0
_08003F64:
	movs r2, #8
	subs r6, #1
	lsls r0, r6, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	add r0, r8
	adds r0, r1, r0
	ldrb r4, [r0]
	cmp r4, #0x1f
	bls _0800402C
	movs r4, #0
	b _08004030
	.align 2, 0
_08003F7C: .4byte gUnknown_02011B18
_08003F80: .4byte gUnknown_02011B10
_08003F84: .4byte gUnknown_02011B20
_08003F88: .4byte gUnknown_02011B14
_08003F8C:
	cmp r6, #0
	bgt _08003F92
	b _080040BA
_08003F92:
	lsls r0, r6, #0x14
	ldr r3, [sp, #8]
	lsls r1, r3, #0x10
	adds r0, r0, r1
	mov sb, r0
	mov r1, r8
	lsls r0, r1, #4
	ldr r3, [sp, #4]
	adds r0, r0, r3
	str r0, [sp, #0xc]
_08003FA6:
	ldr r0, _08004020 @ =0xFFF00000
	add sb, r0
	subs r6, #1
	adds r2, #0x10
	ldr r1, _08004024 @ =gUnknown_02011B20
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08004028 @ =gUnknown_02011B14
	ldr r0, [r0]
	add r1, r8
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0x1f
	bls _08003FC6
	movs r4, #0
_08003FC6:
	mov r1, r8
	lsls r5, r1, #4
	lsls r7, r6, #4
	ldr r3, [sp]
	cmp r3, #0
	beq _08003FE8
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	mov r1, sb
	str r2, [sp, #0x14]
	bl sub_800D45C
	ldr r2, [sp, #0x14]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, r3
	bne _080040BA
_08003FE8:
	ldr r1, [sp, #4]
	adds r0, r5, r1
	lsls r0, r0, #0x10
	ldr r3, [sp, #8]
	adds r1, r7, r3
	lsls r1, r1, #0x10
	str r2, [sp, #0x14]
	bl sub_801A444
	ldr r2, [sp, #0x14]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080040BA
	mov r3, sl
	ldr r0, [r3, #8]
	ldr r1, [r3, #0xc]
	adds r0, r0, r1
	cmp r2, r0
	bhs _080040CE
	cmp r2, #0x4f
	bhi _080040CE
	cmp r4, #0
	bne _080040C2
	cmp r6, #0
	bgt _08003FA6
	b _080040BA
	.align 2, 0
_08004020: .4byte 0xFFF00000
_08004024: .4byte gUnknown_02011B20
_08004028: .4byte gUnknown_02011B14
_0800402C:
	cmp r4, #0
	bne _080040C2
_08004030:
	cmp r6, #0
	ble _080040BA
	lsls r0, r6, #0x14
	ldr r3, [sp, #8]
	lsls r1, r3, #0x10
	adds r0, r0, r1
	mov sb, r0
	mov r1, r8
	lsls r0, r1, #4
	ldr r3, [sp, #4]
	adds r0, r0, r3
	str r0, [sp, #0x10]
_08004048:
	ldr r0, _080040D4 @ =0xFFF00000
	add sb, r0
	subs r6, #1
	adds r2, #0x10
	ldr r1, _080040D8 @ =gUnknown_02011B20
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080040DC @ =gUnknown_02011B14
	ldr r0, [r0]
	add r1, r8
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0x1f
	bls _08004068
	movs r4, #0
_08004068:
	mov r1, r8
	lsls r5, r1, #4
	lsls r7, r6, #4
	ldr r3, [sp]
	cmp r3, #0
	beq _0800408A
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	mov r1, sb
	str r2, [sp, #0x14]
	bl sub_800D45C
	ldr r2, [sp, #0x14]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, r3
	bne _080040BA
_0800408A:
	ldr r1, [sp, #4]
	adds r0, r5, r1
	lsls r0, r0, #0x10
	ldr r3, [sp, #8]
	adds r1, r7, r3
	lsls r1, r1, #0x10
	str r2, [sp, #0x14]
	bl sub_801A444
	ldr r2, [sp, #0x14]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080040E0
	mov r3, sl
	ldr r0, [r3, #8]
	ldr r1, [r3, #0xc]
	adds r0, r0, r1
	cmp r2, r0
	bhs _080040CE
	cmp r4, #0
	bne _080040C2
	cmp r6, #0
	bgt _08004048
_080040BA:
	cmp r4, #0
	bne _080040C2
	cmp r6, #0
	ble _080040CE
_080040C2:
	mov r1, sl
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	adds r0, r0, r1
	cmp r2, r0
	blo _080040E0
_080040CE:
	movs r0, #1
	b _080040E2
	.align 2, 0
_080040D4: .4byte 0xFFF00000
_080040D8: .4byte gUnknown_02011B20
_080040DC: .4byte gUnknown_02011B14
_080040E0:
	movs r0, #0
_080040E2:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80040F4
sub_80040F4: @ 0x080040F4
	push {r4, lr}
	mov ip, r0
	ldr r4, [sp, #8]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, ip
	str r1, [r0]
	movs r0, #0x9f
	lsls r0, r0, #2
	add r0, ip
	str r2, [r0]
	movs r0, #0xa0
	lsls r0, r0, #2
	add r0, ip
	str r3, [r0]
	movs r0, #0xa1
	lsls r0, r0, #2
	add r0, ip
	str r4, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8004120
sub_8004120: @ 0x08004120
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r2, #0
	movs r7, #1
	ldr r0, _08004148 @ =gUnknown_020125E0
	adds r1, r0, #4
_08004136:
	ldr r3, [r1]
	cmp r3, #0
	bne _0800414C
	str r7, [r1]
	strb r6, [r0]
	strb r5, [r0, #1]
	strb r4, [r0, #2]
	strb r3, [r0, #3]
	b _08004156
	.align 2, 0
_08004148: .4byte gUnknown_020125E0
_0800414C:
	adds r0, #8
	adds r1, #8
	adds r2, #1
	cmp r2, #5
	bls _08004136
_08004156:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800415C
sub_800415C: @ 0x0800415C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	ldr r0, _080041F8 @ =gUnknown_020125E0
	ldr r3, _080041FC @ =0x040000D4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	mov ip, r1
	ldr r1, _08004200 @ =gUnknown_020126A2
	mov r8, r1
	movs r7, #0x80
	lsls r7, r7, #0x18
	mov r5, r8
	subs r5, #2
	movs r1, #0
	mov sb, r1
	adds r2, r0, #0
	adds r4, r2, #4
_08004184:
	ldr r0, [r4]
	cmp r0, #0
	beq _080041E0
	ldrb r0, [r2, #3]
	adds r0, #1
	strb r0, [r2, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2, #2]
	cmp r0, r1
	blo _080041E0
	ldrb r0, [r2]
	lsls r0, r0, #1
	add r0, ip
	str r0, [r3]
	mov r0, r8
	str r0, [r3, #4]
	ldrb r1, [r2, #1]
	ldrb r0, [r2]
	subs r0, #1
	subs r1, r1, r0
	orrs r1, r7
	str r1, [r3, #8]
	ldr r0, [r3, #8]
	ldrb r1, [r2, #1]
	ldrb r0, [r2]
	subs r0, #1
	subs r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	strh r0, [r5]
	str r5, [r3]
	ldrb r0, [r2]
	lsls r0, r0, #1
	add r0, ip
	str r0, [r3, #4]
	ldrb r1, [r2, #1]
	ldrb r0, [r2]
	subs r0, #1
	subs r1, r1, r0
	orrs r1, r7
	str r1, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, sb
	strb r1, [r2, #3]
_080041E0:
	adds r2, #8
	adds r4, #8
	adds r6, #1
	cmp r6, #5
	bls _08004184
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080041F8: .4byte gUnknown_020125E0
_080041FC: .4byte 0x040000D4
_08004200: .4byte gUnknown_020126A2

	thumb_func_start sub_8004204
sub_8004204: @ 0x08004204
	ldr r2, _08004210 @ =gUnknown_02012708
	ldr r1, [r2]
	adds r1, #1
	str r1, [r2]
	bx lr
	.align 2, 0
_08004210: .4byte gUnknown_02012708

	thumb_func_start sub_8004214
sub_8004214: @ 0x08004214
	push {r4, lr}
	sub sp, #0x30
	adds r4, r2, #0
	movs r2, #0
	str r2, [sp, #0x2c]
	ldr r3, _0800424C @ =0x040000D4
	add r2, sp, #0x2c
	str r2, [r3]
	mov r2, sp
	str r2, [r3, #4]
	ldr r2, _08004250 @ =0x8500000B
	str r2, [r3, #8]
	ldr r2, [r3, #8]
	mov r2, sp
	strh r0, [r2, #0x22]
	mov r0, sp
	strh r1, [r0, #0x24]
	mov r1, sp
	movs r0, #0xf
	strh r0, [r1, #0x20]
	lsrs r2, r4, #4
	ands r2, r0
	cmp r2, #9
	bhi _08004254
	adds r0, r2, #0
	adds r0, #0x1a
	b _0800425A
	.align 2, 0
_0800424C: .4byte 0x040000D4
_08004250: .4byte 0x8500000B
_08004254:
	mov r1, sp
	adds r0, r2, #0
	subs r0, #0xa
_0800425A:
	strh r0, [r1, #4]
	ldr r1, _08004280 @ =gUnknown_02010B20
	ldr r2, _08004284 @ =gUnknown_083D65F4
	mov r0, sp
	bl sub_801A43C
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	strh r0, [r1, #0x22]
	movs r0, #0xf
	adds r2, r0, #0
	ands r2, r4
	cmp r2, #9
	bhi _08004288
	adds r0, r2, #0
	adds r0, #0x1a
	b _0800428E
	.align 2, 0
_08004280: .4byte gUnknown_02010B20
_08004284: .4byte gUnknown_083D65F4
_08004288:
	mov r1, sp
	adds r0, r2, #0
	subs r0, #0xa
_0800428E:
	strh r0, [r1, #4]
	ldr r1, _080042AC @ =gUnknown_02010B20
	ldr r2, _080042B0 @ =gUnknown_083D65F4
	mov r0, sp
	bl sub_801A43C
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	strh r0, [r1, #0x22]
	add sp, #0x30
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080042AC: .4byte gUnknown_02010B20
_080042B0: .4byte gUnknown_083D65F4

	thumb_func_start sub_80042B4
sub_80042B4: @ 0x080042B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	bl sub_8002984
	mov r0, r8
	bl sub_800B640
	ldr r0, _0800433C @ =gUnknown_02012708
	movs r1, #0
	str r1, [r0]
	ldr r0, _08004340 @ =gUnknown_0201268C
	str r1, [r0]
	ldr r2, _08004344 @ =gUnknown_02012624
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2]
	ldr r0, _08004348 @ =gUnknown_02012704
	str r1, [r0]
	ldr r0, _0800434C @ =gUnknown_02012680
	str r1, [r0]
	ldr r0, _08004350 @ =gUnknown_020126F8
	str r1, [r0]
	ldr r0, _08004354 @ =gUnknown_02012634
	str r1, [r0]
	ldr r2, _08004358 @ =gUnknown_02012700
	ldr r0, _0800435C @ =gUnknown_087F7E70
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _08004360 @ =gUnknown_02012684
	str r1, [r0]
	ldr r0, _08004364 @ =gUnknown_020125E0
	movs r2, #0
	movs r1, #5
	adds r0, #0x2c
_08004304:
	str r2, [r0]
	subs r0, #8
	subs r1, #1
	cmp r1, #0
	bge _08004304
	ldr r3, _08004368 @ =gUnknown_020126E4
	ldr r0, _0800436C @ =gUnknown_02012710
	movs r2, #0
	adds r0, #0x10
	movs r1, #0x7f
_08004318:
	strb r2, [r0, #3]
	strb r2, [r0]
	adds r0, #0x14
	subs r1, #1
	cmp r1, #0
	bge _08004318
	movs r0, #0
	str r0, [r3]
	mov r0, r8
	cmp r0, #5
	bls _08004330
	b _08004422
_08004330:
	lsls r0, r0, #2
	ldr r1, _08004370 @ =_08004374
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800433C: .4byte gUnknown_02012708
_08004340: .4byte gUnknown_0201268C
_08004344: .4byte gUnknown_02012624
_08004348: .4byte gUnknown_02012704
_0800434C: .4byte gUnknown_02012680
_08004350: .4byte gUnknown_020126F8
_08004354: .4byte gUnknown_02012634
_08004358: .4byte gUnknown_02012700
_0800435C: .4byte gUnknown_087F7E70
_08004360: .4byte gUnknown_02012684
_08004364: .4byte gUnknown_020125E0
_08004368: .4byte gUnknown_020126E4
_0800436C: .4byte gUnknown_02012710
_08004370: .4byte _08004374
_08004374: @ jump table
	.4byte _0800438C @ case 0
	.4byte _080043A0 @ case 1
	.4byte _080043B4 @ case 2
	.4byte _080043C8 @ case 3
	.4byte _080043DC @ case 4
	.4byte _080043F0 @ case 5
_0800438C:
	ldr r0, _08004398 @ =gUnknown_087F67C0
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _0800439C @ =gUnknown_0847939C
	b _080043FA
	.align 2, 0
_08004398: .4byte gUnknown_087F67C0
_0800439C: .4byte gUnknown_0847939C
_080043A0:
	ldr r0, _080043AC @ =gUnknown_087F67C0
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _080043B0 @ =gUnknown_0849D940
	b _080043FA
	.align 2, 0
_080043AC: .4byte gUnknown_087F67C0
_080043B0: .4byte gUnknown_0849D940
_080043B4:
	ldr r0, _080043C0 @ =gUnknown_087F67C0
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _080043C4 @ =gUnknown_084E937C
	b _080043FA
	.align 2, 0
_080043C0: .4byte gUnknown_087F67C0
_080043C4: .4byte gUnknown_084E937C
_080043C8:
	ldr r0, _080043D4 @ =gUnknown_087F5B9C
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _080043D8 @ =gUnknown_08514840
	b _080043FA
	.align 2, 0
_080043D4: .4byte gUnknown_087F5B9C
_080043D8: .4byte gUnknown_08514840
_080043DC:
	ldr r0, _080043E8 @ =gUnknown_087F5B9C
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _080043EC @ =gUnknown_085459B4
	b _080043FA
	.align 2, 0
_080043E8: .4byte gUnknown_087F5B9C
_080043EC: .4byte gUnknown_085459B4
_080043F0:
	ldr r0, _0800446C @ =gUnknown_087F5B9C
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _08004470 @ =gUnknown_08578460
_080043FA:
	adds r0, r4, #0
	bl sub_8003B2C
	ldr r0, _08004474 @ =gUnknown_02000810
	movs r2, #1
	str r2, [r0, #0x20]
	ldr r1, _08004478 @ =gUnknown_02013114
	str r2, [r1]
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r0, r3
	str r2, [r1]
	bl sub_800A2D4
	adds r0, r4, #0
	bl sub_8005C8C
	ldr r1, _0800447C @ =gUnknown_020126E8
	ldr r0, _08004480 @ =gUnknown_087F7E60
	str r0, [r1]
_08004422:
	ldr r4, _08004474 @ =gUnknown_02000810
	ldr r1, [r4]
	ldr r0, _08004484 @ =0x0014FFFF
	cmp r1, r0
	bgt _08004430
	adds r0, #1
	str r0, [r4]
_08004430:
	ldr r1, _08004488 @ =gUnknown_020003EC
	ldr r0, [r4]
	str r0, [r1]
	ldr r1, _0800448C @ =gUnknown_020003F4
	ldr r0, [r4, #4]
	str r0, [r1]
	bl sub_800BB2C
	bl sub_8000B30
	ldr r0, _08004490 @ =gUnknown_020003F8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08004494 @ =gUnknown_020003E8
	strh r1, [r0]
	ldr r0, _08004498 @ =gUnknown_020154A0
	mov sb, r0
	adds r7, r4, #0
	movs r6, #1
_08004456:
	ldr r0, _0800449C @ =gUnknown_02000800
	ldr r5, [r0]
	cmp r5, #0
	bge _080044A0
	bl sub_80013A0
	cmp r0, #0
	beq _08004456
	movs r0, #0
	b _080046F4
	.align 2, 0
_0800446C: .4byte gUnknown_087F5B9C
_08004470: .4byte gUnknown_08578460
_08004474: .4byte gUnknown_02000810
_08004478: .4byte gUnknown_02013114
_0800447C: .4byte gUnknown_020126E8
_08004480: .4byte gUnknown_087F7E60
_08004484: .4byte 0x0014FFFF
_08004488: .4byte gUnknown_020003EC
_0800448C: .4byte gUnknown_020003F4
_08004490: .4byte gUnknown_020003F8
_08004494: .4byte gUnknown_020003E8
_08004498: .4byte gUnknown_020154A0
_0800449C: .4byte gUnknown_02000800
_080044A0:
	ldr r4, _080045BC @ =gUnknown_02000810
	ldr r0, [r4, #0x10]
	ldr r1, _080045C0 @ =gUnknown_020003E4
	ldr r2, [r1]
	ldr r1, _080045C4 @ =gUnknown_02000AD4
	ldr r3, [r1]
	ldr r1, _080045C8 @ =gUnknown_020146C0
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, _080045CC @ =gUnknown_02013CB0
	ldr r1, [r1]
	str r1, [sp, #4]
	adds r1, r5, #0
	bl sub_800B3A4
	bl sub_8008B3C
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0800453A
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _080044D2
	subs r0, #1
	str r0, [r4, #0x28]
_080044D2:
	adds r0, r4, #0
	bl sub_8008E64
	cmp r0, #0
	beq _080044FA
	ldr r0, _080045D0 @ =gUnknown_02013118
	movs r1, #0
	str r1, [r0]
	ldr r0, [r4, #0x14]
	cmp r0, #0x3f
	beq _080044FA
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r0, #0x3d
	adds r1, r4, #0
	bl sub_8006F10
_080044FA:
	ldr r1, _080045BC @ =gUnknown_02000810
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bgt _0800450E
	ldr r0, [r1, #0x14]
	cmp r0, #0x3f
	beq _0800450E
	movs r0, #0x3f
	bl sub_8006F10
_0800450E:
	mov r2, sb
	str r6, [r2]
	adds r0, r7, #0
	bl sub_8006F60
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r7, r3
	bl sub_800700C
	movs r0, #2
	mov r1, sb
	str r0, [r1]
	ldr r0, _080045D4 @ =gUnknown_02015500
	ldr r0, [r0]
	ldr r1, _080045D8 @ =gUnknown_02015530
	ldr r1, [r1]
	bl sub_8006488
	adds r0, r7, #0
	bl sub_800AB80
_0800453A:
	mov r2, r8
	cmp r2, #2
	bls _08004552
	ldr r0, _080045DC @ =gUnknown_0201A5E4
	ldr r3, [r0]
	lsrs r3, r3, #4
	str r6, [sp]
	movs r0, #0xb8
	movs r1, #1
	movs r2, #5
	bl sub_800B1C8
_08004552:
	bl sub_800A504
	ldr r1, _080045E0 @ =gUnknown_02012684
	ldr r0, [r1]
	cmp r0, #0
	beq _08004570
	subs r0, #1
	str r0, [r1]
	ldr r0, _080045E4 @ =gUnknown_02012700
	ldr r3, [r0]
	movs r0, #0xf
	movs r1, #0xa
	movs r2, #0x8c
	bl DrawString
_08004570:
	movs r4, #0
	mov r3, sb
	str r4, [r3]
	bl sub_800D51C
	ldr r0, _080045BC @ =gUnknown_02000810
	bl sub_8009734
	mov r0, r8
	bl sub_8004204
	ldr r0, _080045E8 @ =gUnknown_020126F8
	ldr r0, [r0]
	cmp r0, #0
	beq _080045A4
	movs r0, #0xd
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, _080045EC @ =gUnknown_083E8F6C
	str r0, [sp, #8]
	movs r0, #0xa
	movs r1, #0x96
	movs r2, #3
	movs r3, #0
	bl sub_800AACC
_080045A4:
	ldr r0, _080045F0 @ =gUnknown_02011994
	str r6, [r0]
	ldr r0, _080045F4 @ =gUnknown_020119FC
	str r6, [r0]
	ldr r4, _080045F8 @ =gUnknown_02012704
	ldr r0, [r4]
	cmp r0, #0
	bne _080045FC
	bl VBlankIntrWait
	b _08004608
	.align 2, 0
_080045BC: .4byte gUnknown_02000810
_080045C0: .4byte gUnknown_020003E4
_080045C4: .4byte gUnknown_02000AD4
_080045C8: .4byte gUnknown_020146C0
_080045CC: .4byte gUnknown_02013CB0
_080045D0: .4byte gUnknown_02013118
_080045D4: .4byte gUnknown_02015500
_080045D8: .4byte gUnknown_02015530
_080045DC: .4byte gUnknown_0201A5E4
_080045E0: .4byte gUnknown_02012684
_080045E4: .4byte gUnknown_02012700
_080045E8: .4byte gUnknown_020126F8
_080045EC: .4byte gUnknown_083E8F6C
_080045F0: .4byte gUnknown_02011994
_080045F4: .4byte gUnknown_020119FC
_080045F8: .4byte gUnknown_02012704
_080045FC:
	movs r0, #3
	bl sub_8001CF0
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
_08004608:
	ldr r0, _08004680 @ =gUnknown_02011994
	movs r1, #0
	str r1, [r0]
	ldr r0, _08004684 @ =gUnknown_020119FC
	str r1, [r0]
	bl sub_8000A28
	bl sub_800415C
	ldr r0, _08004688 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800463A
	bl sub_8000AC0
	bl sub_8000DFC
	ldr r0, _0800468C @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	beq _080046F4
	bl sub_8000B30
_0800463A:
	ldr r4, _08004690 @ =gUnknown_02012624
	ldr r0, [r4]
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	beq _08004656
	bl sub_8000AC0
	ldr r0, [r4]
	bl sub_8001D48
	str r5, [r4]
	bl sub_8000B30
_08004656:
	movs r1, #2
	ldrsh r0, [r7, r1]
	movs r2, #6
	ldrsh r1, [r7, r2]
	bl sub_8003CAC
	cmp r0, #0x37
	bne _080046B2
	ldr r3, _08004694 @ =gUnknown_02012634
	ldr r1, [r3]
	cmp r1, #0
	bne _080046B2
	ldr r2, _08004698 @ =gUnknown_020126F8
	ldr r0, [r2]
	cmp r0, #0
	beq _080046A4
	str r1, [r2]
	str r6, [r3]
	ldr r1, _0800469C @ =gUnknown_02012700
	ldr r0, _080046A0 @ =gUnknown_087F7E78
	b _080046A8
	.align 2, 0
_08004680: .4byte gUnknown_02011994
_08004684: .4byte gUnknown_020119FC
_08004688: .4byte gUnknown_020003E8
_0800468C: .4byte gUnknown_020003F0
_08004690: .4byte gUnknown_02012624
_08004694: .4byte gUnknown_02012634
_08004698: .4byte gUnknown_020126F8
_0800469C: .4byte gUnknown_02012700
_080046A0: .4byte gUnknown_087F7E78
_080046A4:
	ldr r1, _08004704 @ =gUnknown_02012700
	ldr r0, _08004708 @ =gUnknown_087F7E74
_080046A8:
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _0800470C @ =gUnknown_02012684
	movs r0, #0x78
	str r0, [r1]
_080046B2:
	ldr r4, _08004710 @ =gUnknown_02000810
	movs r3, #2
	ldrsh r0, [r4, r3]
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl sub_8003CAC
	cmp r0, #0x21
	beq _080046EA
	movs r3, #2
	ldrsh r0, [r4, r3]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl sub_8003CAC
	cmp r0, #0x21
	beq _080046EA
	movs r3, #2
	ldrsh r0, [r4, r3]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl sub_8003CAC
	cmp r0, #0x21
	beq _080046EA
	b _08004456
_080046EA:
	bl sub_8003A8C
	bl sub_8000AC0
	movs r0, #1
_080046F4:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004704: .4byte gUnknown_02012700
_08004708: .4byte gUnknown_087F7E74
_0800470C: .4byte gUnknown_02012684
_08004710: .4byte gUnknown_02000810

	thumb_func_start sub_8004714
sub_8004714: @ 0x08004714
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bhi _08004794
	ldr r0, _08004778 @ =gUnknown_02015500
	ldr r0, [r0]
	asrs r5, r0, #4
	ldr r0, _0800477C @ =gUnknown_02015530
	ldr r0, [r0]
	asrs r0, r0, #4
	subs r5, #2
	subs r0, #0xc
	cmp r5, #0
	bge _0800473C
	movs r5, #0
_0800473C:
	movs r7, #0
	lsls r1, r5, #4
	mov r8, r1
	ldr r2, _08004780 @ =gUnknown_02012320
	lsls r0, r0, #4
	adds r6, r0, #0
	adds r6, #0xf
	adds r4, r0, #0
	ldr r0, _08004784 @ =gUnknown_02013120
	mov sb, r0
_08004750:
	mov r0, r8
	adds r1, r4, #0
	str r2, [sp]
	bl sub_8003CAC
	ldr r2, [sp]
	cmp r0, #0x3f
	beq _08004768
	cmp r0, #0x25
	beq _08004768
	cmp r0, #0x26
	bne _08004788
_08004768:
	lsls r0, r5, #0x14
	str r0, [r2]
	lsls r0, r6, #0x10
	str r0, [r2, #4]
	movs r0, #1
	mov r1, sb
	b _08004808
	.align 2, 0
_08004778: .4byte gUnknown_02015500
_0800477C: .4byte gUnknown_02015530
_08004780: .4byte gUnknown_02012320
_08004784: .4byte gUnknown_02013120
_08004788:
	adds r6, #0x10
	adds r4, #0x10
	adds r7, #1
	cmp r7, #0x23
	bls _08004750
	b _080047F6
_08004794:
	ldr r0, _080047DC @ =gUnknown_02015500
	ldr r0, [r0]
	asrs r5, r0, #4
	ldr r0, _080047E0 @ =gUnknown_02015530
	ldr r0, [r0]
	asrs r0, r0, #4
	adds r5, #0x11
	subs r0, #0xc
	movs r7, #0
	ldr r2, _080047E4 @ =gUnknown_02012320
	lsls r0, r0, #4
	adds r6, r0, #0
	adds r6, #0xf
	adds r4, r0, #0
	ldr r0, _080047E8 @ =gUnknown_02013120
	mov r8, r0
_080047B4:
	lsls r0, r5, #4
	adds r1, r4, #0
	str r2, [sp]
	bl sub_8003CAC
	ldr r2, [sp]
	cmp r0, #0x3f
	beq _080047CC
	cmp r0, #0x25
	beq _080047CC
	cmp r0, #0x26
	bne _080047EC
_080047CC:
	lsls r0, r5, #0x14
	str r0, [r2]
	lsls r0, r6, #0x10
	str r0, [r2, #4]
	movs r0, #1
	mov r1, r8
	b _08004808
	.align 2, 0
_080047DC: .4byte gUnknown_02015500
_080047E0: .4byte gUnknown_02015530
_080047E4: .4byte gUnknown_02012320
_080047E8: .4byte gUnknown_02013120
_080047EC:
	adds r6, #0x10
	adds r4, #0x10
	adds r7, #1
	cmp r7, #0x23
	bls _080047B4
_080047F6:
	ldr r1, _08004818 @ =gUnknown_02012320
	ldr r0, _0800481C @ =gUnknown_0201311C
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08004820 @ =gUnknown_02012690
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r1, _08004824 @ =gUnknown_02013120
	movs r0, #1
_08004808:
	str r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004818: .4byte gUnknown_02012320
_0800481C: .4byte gUnknown_0201311C
_08004820: .4byte gUnknown_02012690
_08004824: .4byte gUnknown_02013120

	thumb_func_start sub_8004828
sub_8004828: @ 0x08004828
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	bl sub_8002984
	mov r0, sb
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_800B640
	ldr r0, _080048F4 @ =gUnknown_02012708
	movs r1, #0
	str r1, [r0]
	ldr r0, _080048F8 @ =gUnknown_0201268C
	str r1, [r0]
	ldr r2, _080048FC @ =gUnknown_02012624
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2]
	ldr r0, _08004900 @ =gUnknown_02012704
	str r1, [r0]
	ldr r0, _08004904 @ =gUnknown_02012680
	str r1, [r0]
	ldr r0, _08004908 @ =gUnknown_020126F8
	str r1, [r0]
	ldr r0, _0800490C @ =gUnknown_02012634
	str r1, [r0]
	ldr r2, _08004910 @ =gUnknown_02012700
	ldr r0, _08004914 @ =gUnknown_087F7E70
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _08004918 @ =gUnknown_02012684
	str r1, [r0]
	ldr r0, _0800491C @ =gUnknown_020125E0
	movs r2, #0
	movs r1, #5
	adds r0, #0x2c
_08004880:
	str r2, [r0]
	subs r0, #8
	subs r1, #1
	cmp r1, #0
	bge _08004880
	ldr r3, _08004920 @ =gUnknown_020126E4
	ldr r5, _08004924 @ =gUnknown_02012570
	ldr r0, _08004928 @ =gUnknown_02012710
	movs r2, #0
	adds r0, #0x10
	movs r1, #0x7f
_08004896:
	strb r2, [r0, #3]
	strb r2, [r0]
	adds r0, #0x14
	subs r1, #1
	cmp r1, #0
	bge _08004896
	movs r6, #0
	str r6, [r3]
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0
	movs r3, #0x50
	bl sub_8006FC8
	str r6, [sp, #0xc]
	ldr r1, _0800492C @ =0x040000D4
	add r0, sp, #0xc
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x38
	str r0, [r1, #4]
	ldr r0, _08004930 @ =0x8500000B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08004934 @ =0xFFFFFDB0
	adds r7, r5, r1
	subs r1, r5, #4
	ldr r0, _08004938 @ =gUnknown_082648A4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x58
	strh r6, [r0]
	movs r4, #1
	str r4, [r5, #0x54]
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #1
	bl sub_80040F4
	mov r2, sb
	cmp r2, #2
	bne _0800493C
	str r4, [r5, #0x44]
	str r4, [r7, #8]
	b _08004940
	.align 2, 0
_080048F4: .4byte gUnknown_02012708
_080048F8: .4byte gUnknown_0201268C
_080048FC: .4byte gUnknown_02012624
_08004900: .4byte gUnknown_02012704
_08004904: .4byte gUnknown_02012680
_08004908: .4byte gUnknown_020126F8
_0800490C: .4byte gUnknown_02012634
_08004910: .4byte gUnknown_02012700
_08004914: .4byte gUnknown_087F7E70
_08004918: .4byte gUnknown_02012684
_0800491C: .4byte gUnknown_020125E0
_08004920: .4byte gUnknown_020126E4
_08004924: .4byte gUnknown_02012570
_08004928: .4byte gUnknown_02012710
_0800492C: .4byte 0x040000D4
_08004930: .4byte 0x8500000B
_08004934: .4byte 0xFFFFFDB0
_08004938: .4byte gUnknown_082648A4
_0800493C:
	str r6, [r5, #0x44]
	str r6, [r7, #8]
_08004940:
	movs r0, #0x63
	movs r1, #0x6f
	movs r2, #4
	bl sub_8004120
	movs r0, #0xb4
	movs r1, #0xbf
	movs r2, #4
	bl sub_8004120
	mov r3, sb
	cmp r3, #1
	beq _08004980
	cmp r3, #1
	bgt _08004964
	cmp r3, #0
	beq _0800496C
	b _080049E6
_08004964:
	mov r5, sb
	cmp r5, #2
	beq _080049B4
	b _080049E6
_0800496C:
	ldr r0, _08004978 @ =gUnknown_087F6D6C
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _0800497C @ =gUnknown_085DF7A8
	b _080049BE
	.align 2, 0
_08004978: .4byte gUnknown_087F6D6C
_0800497C: .4byte gUnknown_085DF7A8
_08004980:
	ldr r0, _080049A4 @ =gUnknown_087F6D6C
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _080049A8 @ =gUnknown_0863547C
	adds r0, r4, #0
	bl sub_8003B2C
	ldr r0, _080049AC @ =gUnknown_02000810
	mov r5, sb
	str r5, [r0, #0x20]
	ldr r1, _080049B0 @ =gUnknown_02013114
	str r5, [r1]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r0, r2
	str r5, [r1]
	b _080049D6
	.align 2, 0
_080049A4: .4byte gUnknown_087F6D6C
_080049A8: .4byte gUnknown_0863547C
_080049AC: .4byte gUnknown_02000810
_080049B0: .4byte gUnknown_02013114
_080049B4:
	ldr r0, _08004A50 @ =gUnknown_087F6D6C
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _08004A54 @ =gUnknown_08692D10
_080049BE:
	adds r0, r4, #0
	bl sub_8003B2C
	ldr r0, _08004A58 @ =gUnknown_02000810
	movs r2, #1
	str r2, [r0, #0x20]
	ldr r1, _08004A5C @ =gUnknown_02013114
	str r2, [r1]
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r0, r3
	str r2, [r1]
_080049D6:
	bl sub_800A2D4
	adds r0, r4, #0
	bl sub_8005C8C
	ldr r1, _08004A60 @ =gUnknown_020126E8
	ldr r0, _08004A64 @ =gUnknown_087F7E60
	str r0, [r1]
_080049E6:
	ldr r2, _08004A58 @ =gUnknown_02000810
	ldr r1, [r2]
	ldr r0, _08004A68 @ =0x0014FFFF
	cmp r1, r0
	bgt _080049F4
	adds r0, #1
	str r0, [r2]
_080049F4:
	ldr r1, _08004A6C @ =gUnknown_020003EC
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08004A70 @ =gUnknown_020003F4
	ldr r0, [r2, #4]
	str r0, [r1]
	ldr r5, _08004A74 @ =gUnknown_02012320
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0]
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #7
	movs r3, #4
	bl sub_800ACF8
	ldr r0, _08004A78 @ =gUnknown_02013120
	str r4, [r0]
	ldr r1, _08004A7C @ =gUnknown_0201311C
	ldr r0, [r5]
	str r0, [r1]
	ldr r1, _08004A80 @ =gUnknown_02012690
	ldr r0, [r5, #4]
	str r0, [r1]
	bl sub_800BB2C
	bl sub_8000B30
	ldr r0, _08004A84 @ =gUnknown_020003F8
	strh r4, [r0]
	ldr r0, _08004A88 @ =gUnknown_020003E8
	strh r4, [r0]
_08004A3A:
	ldr r0, _08004A8C @ =gUnknown_02000800
	ldr r5, [r0]
	cmp r5, #0
	bge _08004A90
	bl sub_80013A0
	cmp r0, #0
	beq _08004A3A
	movs r0, #0
	b _08005010
	.align 2, 0
_08004A50: .4byte gUnknown_087F6D6C
_08004A54: .4byte gUnknown_08692D10
_08004A58: .4byte gUnknown_02000810
_08004A5C: .4byte gUnknown_02013114
_08004A60: .4byte gUnknown_020126E8
_08004A64: .4byte gUnknown_087F7E60
_08004A68: .4byte 0x0014FFFF
_08004A6C: .4byte gUnknown_020003EC
_08004A70: .4byte gUnknown_020003F4
_08004A74: .4byte gUnknown_02012320
_08004A78: .4byte gUnknown_02013120
_08004A7C: .4byte gUnknown_0201311C
_08004A80: .4byte gUnknown_02012690
_08004A84: .4byte gUnknown_020003F8
_08004A88: .4byte gUnknown_020003E8
_08004A8C: .4byte gUnknown_02000800
_08004A90:
	ldr r4, _08004B50 @ =gUnknown_02000810
	ldr r0, [r4, #0x10]
	ldr r1, _08004B54 @ =gUnknown_020003E4
	ldr r2, [r1]
	ldr r1, _08004B58 @ =gUnknown_02000AD4
	ldr r3, [r1]
	ldr r1, _08004B5C @ =gUnknown_020146C0
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, _08004B60 @ =gUnknown_02013CB0
	ldr r1, [r1]
	str r1, [sp, #4]
	adds r1, r5, #0
	bl sub_800B3A4
	bl sub_8008B3C
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _08004ABA
	b _08004D98
_08004ABA:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _08004AC4
	subs r0, #1
	str r0, [r4, #0x28]
_08004AC4:
	adds r0, r4, #0
	bl sub_8008E64
	cmp r0, #0
	beq _08004AEC
	ldr r0, _08004B64 @ =gUnknown_02013118
	movs r1, #0
	str r1, [r0]
	ldr r0, [r4, #0x14]
	cmp r0, #0x3f
	beq _08004AEC
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r4, r2
	bl sub_8006FFC
	movs r0, #0x3d
	adds r1, r4, #0
	bl sub_8006F10
_08004AEC:
	ldr r1, _08004B50 @ =gUnknown_02000810
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bgt _08004B00
	ldr r0, [r1, #0x14]
	cmp r0, #0x3f
	beq _08004B00
	movs r0, #0x3f
	bl sub_8006F10
_08004B00:
	ldr r4, _08004B68 @ =gUnknown_020154A0
	movs r3, #1
	mov sl, r3
	str r3, [r4]
	ldr r5, _08004B50 @ =gUnknown_02000810
	adds r0, r5, #0
	bl sub_8006F60
	movs r0, #0x94
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r8, r0
	bl sub_800700C
	movs r0, #2
	str r0, [r4]
	ldr r0, _08004B6C @ =gUnknown_02015500
	ldr r0, [r0]
	ldr r1, _08004B70 @ =gUnknown_02015530
	ldr r1, [r1]
	bl sub_8006488
	ldr r7, _08004B74 @ =gUnknown_02013120
	ldr r4, [r7]
	cmp r4, #1
	beq _08004B36
	b _08004D0C
_08004B36:
	ldr r4, _08004B78 @ =gUnknown_02012320
	ldr r0, [r4]
	bl sub_800BB44
	movs r1, #0xf0
	lsls r1, r1, #1
	cmp r0, r1
	ble _08004B7C
	adds r0, r4, #0
	mov r1, sb
	bl sub_8004714
	b _08004B92
	.align 2, 0
_08004B50: .4byte gUnknown_02000810
_08004B54: .4byte gUnknown_020003E4
_08004B58: .4byte gUnknown_02000AD4
_08004B5C: .4byte gUnknown_020146C0
_08004B60: .4byte gUnknown_02013CB0
_08004B64: .4byte gUnknown_02013118
_08004B68: .4byte gUnknown_020154A0
_08004B6C: .4byte gUnknown_02015500
_08004B70: .4byte gUnknown_02015530
_08004B74: .4byte gUnknown_02013120
_08004B78: .4byte gUnknown_02012320
_08004B7C:
	ldr r0, [r4]
	bl sub_800BB44
	movs r1, #0xf0
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08004B92
	adds r0, r4, #0
	mov r1, sb
	bl sub_8004714
_08004B92:
	ldr r0, _08004BB4 @ =gUnknown_020154A0
	movs r4, #0
	str r4, [r0]
	ldr r1, _08004BB8 @ =gUnknown_02012320
	movs r2, #2
	ldrsh r0, [r1, r2]
	movs r3, #6
	ldrsh r1, [r1, r3]
	bl sub_8003CAC
	cmp r0, #0x25
	bne _08004BC0
	movs r0, #0xa0
	lsls r0, r0, #0xa
	ldr r5, _08004BBC @ =gUnknown_02012570
	str r0, [r5]
	b _08004BF4
	.align 2, 0
_08004BB4: .4byte gUnknown_020154A0
_08004BB8: .4byte gUnknown_02012320
_08004BBC: .4byte gUnknown_02012570
_08004BC0:
	cmp r0, #0x26
	bne _08004BD4
	movs r0, #0xc0
	lsls r0, r0, #9
	ldr r1, _08004BD0 @ =gUnknown_02012570
	str r0, [r1]
	b _08004BF4
	.align 2, 0
_08004BD0: .4byte gUnknown_02012570
_08004BD4:
	cmp r0, #0x27
	bne _08004BEC
	ldr r1, _08004BE4 @ =gUnknown_02013120
	movs r0, #2
	str r0, [r1]
	ldr r2, _08004BE8 @ =gUnknown_02012570
	str r4, [r2]
	b _08004BF4
	.align 2, 0
_08004BE4: .4byte gUnknown_02013120
_08004BE8: .4byte gUnknown_02012570
_08004BEC:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ldr r3, _08004C54 @ =gUnknown_02012570
	str r0, [r3]
_08004BF4:
	mov r5, sb
	cmp r5, #2
	bne _08004C02
	ldr r1, _08004C54 @ =gUnknown_02012570
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
_08004C02:
	ldr r6, _08004C54 @ =gUnknown_02012570
	adds r0, r6, #0
	bl sub_800700C
	ldr r4, _08004C58 @ =gUnknown_02000810
	ldr r0, [r4, #0x14]
	cmp r0, #0x32
	beq _08004C16
	cmp r0, #0x34
	bne _08004C64
_08004C16:
	movs r2, #0x94
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r3, _08004C5C @ =0xFFFFFDB0
	adds r5, r6, r3
	ldr r0, [r6]
	str r0, [r1]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r0, [r5]
	ldr r1, _08004C60 @ =0xFFE00000
	adds r0, r0, r1
	ldr r1, [r4]
	cmp r1, r0
	bge _08004C3C
	movs r0, #1
	adds r1, r4, #0
	bl sub_8006F10
_08004C3C:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #0xe
	adds r0, r0, r2
	ldr r1, [r4]
	cmp r1, r0
	ble _08004CC4
	movs r0, #1
	adds r1, r4, #0
	bl sub_8006F10
	b _08004CC4
	.align 2, 0
_08004C54: .4byte gUnknown_02012570
_08004C58: .4byte gUnknown_02000810
_08004C5C: .4byte 0xFFFFFDB0
_08004C60: .4byte 0xFFE00000
_08004C64:
	cmp r0, #0x3f
	beq _08004CC4
	cmp r0, #0x3d
	beq _08004CC4
	ldr r5, _08004CFC @ =0xFFFFFDB0
	adds r3, r6, r5
	ldr r2, [r3]
	ldr r1, _08004D00 @ =0xFFE00000
	adds r0, r2, r1
	ldr r1, [r4]
	cmp r1, r0
	blt _08004CC4
	movs r5, #0x80
	lsls r5, r5, #0xe
	adds r0, r2, r5
	cmp r1, r0
	bgt _08004CC4
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r5, #6
	ldrsh r0, [r3, r5]
	cmp r1, r0
	bne _08004CC4
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r3, r4, r0
	ldr r1, [r3]
	cmp r1, #0
	bne _08004CC4
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _08004CC4
	str r2, [r4]
	str r1, [r3]
	movs r2, #0x94
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r0, [r6]
	str r0, [r1]
	movs r3, #0x95
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r0, [r6, #4]
	str r0, [r1]
	movs r0, #0x32
	adds r1, r4, #0
	bl sub_8006F10
_08004CC4:
	ldr r4, _08004D04 @ =gUnknown_02012320
	adds r0, r4, #0
	bl sub_800709C
	adds r1, r0, #0
	cmp r1, #0
	beq _08004D8C
	ldr r0, [r4, #4]
	ldr r5, _08004D08 @ =0xFFFE0000
	adds r0, r0, r5
	str r0, [r4, #4]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r5, r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5]
	adds r0, r4, #0
	bl sub_800709C
	mov r1, sb
	cmp r1, #2
	bne _08004D8C
	ldr r0, [r5]
	rsbs r0, r0, #0
	str r0, [r5]
	b _08004D8C
	.align 2, 0
_08004CFC: .4byte 0xFFFFFDB0
_08004D00: .4byte 0xFFE00000
_08004D04: .4byte gUnknown_02012320
_08004D08: .4byte 0xFFFE0000
_08004D0C:
	cmp r4, #0
	bne _08004D74
	ldr r6, _08004D68 @ =gUnknown_02012320
	ldr r3, [r6]
	ldr r2, _08004D6C @ =0xFFE00000
	adds r0, r3, r2
	ldr r1, [r5]
	cmp r1, r0
	blt _08004D8C
	movs r2, #0x80
	lsls r2, r2, #0xe
	adds r0, r3, r2
	cmp r1, r0
	bgt _08004D8C
	movs r0, #6
	ldrsh r2, [r5, r0]
	movs r0, #6
	ldrsh r1, [r6, r0]
	subs r0, r1, #2
	cmp r2, r0
	blt _08004D8C
	adds r0, r1, #1
	cmp r2, r0
	bgt _08004D8C
	str r3, [r5]
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r5, r1
	str r4, [r0]
	ldr r2, _08004D70 @ =gUnknown_02012570
	ldr r0, [r2]
	mov r3, r8
	str r0, [r3]
	movs r0, #0x95
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x32
	adds r1, r5, #0
	bl sub_8006F10
	mov r5, sl
	str r5, [r7]
	b _08004D8C
	.align 2, 0
_08004D68: .4byte gUnknown_02012320
_08004D6C: .4byte 0xFFE00000
_08004D70: .4byte gUnknown_02012570
_08004D74:
	ldr r4, _08004E00 @ =gUnknown_02012320
	ldr r0, [r4]
	bl sub_800BB44
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, r1
	ble _08004D8C
	adds r0, r4, #0
	mov r1, sb
	bl sub_8004714
_08004D8C:
	ldr r0, _08004E04 @ =gUnknown_02000810
	bl sub_800AB80
	ldr r0, _08004E00 @ =gUnknown_02012320
	bl sub_800AB80
_08004D98:
	bl sub_800A504
	ldr r1, _08004E08 @ =gUnknown_02012684
	ldr r0, [r1]
	cmp r0, #0
	beq _08004DB6
	subs r0, #1
	str r0, [r1]
	ldr r0, _08004E0C @ =gUnknown_02012700
	ldr r3, [r0]
	movs r0, #0xf
	movs r1, #0xa
	movs r2, #0x8c
	bl DrawString
_08004DB6:
	bl sub_800D51C
	ldr r0, _08004E04 @ =gUnknown_02000810
	bl sub_8009734
	mov r0, sb
	bl sub_8004204
	ldr r0, _08004E10 @ =gUnknown_020126F8
	ldr r0, [r0]
	cmp r0, #0
	beq _08004DE6
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08004E14 @ =gUnknown_083E8F6C
	str r0, [sp, #8]
	movs r0, #0xa
	movs r1, #0x96
	movs r2, #3
	movs r3, #0
	bl sub_800AACC
_08004DE6:
	ldr r0, _08004E18 @ =gUnknown_02011994
	movs r1, #1
	str r1, [r0]
	ldr r0, _08004E1C @ =gUnknown_020119FC
	str r1, [r0]
	ldr r4, _08004E20 @ =gUnknown_02012704
	ldr r0, [r4]
	cmp r0, #0
	bne _08004E24
	bl VBlankIntrWait
	b _08004E30
	.align 2, 0
_08004E00: .4byte gUnknown_02012320
_08004E04: .4byte gUnknown_02000810
_08004E08: .4byte gUnknown_02012684
_08004E0C: .4byte gUnknown_02012700
_08004E10: .4byte gUnknown_020126F8
_08004E14: .4byte gUnknown_083E8F6C
_08004E18: .4byte gUnknown_02011994
_08004E1C: .4byte gUnknown_020119FC
_08004E20: .4byte gUnknown_02012704
_08004E24:
	movs r0, #3
	bl sub_8001CF0
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
_08004E30:
	ldr r0, _08004EF8 @ =gUnknown_02011994
	movs r1, #0
	str r1, [r0]
	ldr r0, _08004EFC @ =gUnknown_020119FC
	str r1, [r0]
	bl sub_8000A28
	bl sub_800415C
	ldr r0, _08004F00 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08004E64
	bl sub_8000AC0
	bl sub_8000DFC
	ldr r0, _08004F04 @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	bne _08004E60
	b _08005010
_08004E60:
	bl sub_8000B30
_08004E64:
	ldr r4, _08004F08 @ =gUnknown_02012624
	ldr r0, [r4]
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	beq _08004E80
	bl sub_8000AC0
	ldr r0, [r4]
	bl sub_8001D48
	str r5, [r4]
	bl sub_8000B30
_08004E80:
	ldr r4, _08004F0C @ =gUnknown_02000810
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl sub_8003CAC
	cmp r0, #0x3f
	beq _08004EB4
	cmp r0, #0x25
	beq _08004EA8
	cmp r0, #0x26
	beq _08004EA8
	movs r3, #2
	ldrsh r0, [r4, r3]
	movs r5, #6
	ldrsh r1, [r4, r5]
	subs r1, #0x10
	bl sub_8003CAC
_08004EA8:
	cmp r0, #0x3f
	beq _08004EB4
	cmp r0, #0x25
	beq _08004EB4
	cmp r0, #0x26
	bne _08004F72
_08004EB4:
	ldr r4, _08004F0C @ =gUnknown_02000810
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08004F72
	ldr r1, [r4, #0x14]
	cmp r1, #0x32
	beq _08004F72
	cmp r1, #0x34
	beq _08004F72
	cmp r1, #5
	beq _08004F72
	cmp r1, #0x3f
	beq _08004F72
	cmp r1, #0x3d
	beq _08004F72
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _08004F44
	ldr r0, [r4, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0
	bgt _08004F10
	cmp r1, #0x3f
	beq _08004F72
	movs r0, #0x3f
	adds r1, r4, #0
	bl sub_8006F10
	b _08004F72
	.align 2, 0
_08004EF8: .4byte gUnknown_02011994
_08004EFC: .4byte gUnknown_020119FC
_08004F00: .4byte gUnknown_020003E8
_08004F04: .4byte gUnknown_020003F0
_08004F08: .4byte gUnknown_02012624
_08004F0C: .4byte gUnknown_02000810
_08004F10:
	movs r0, #0x78
	str r0, [r4, #0x28]
	movs r0, #0x3d
	adds r1, r4, #0
	bl sub_8006F10
	ldr r0, [r4]
	ldr r2, _08004F40 @ =0xFFEE0000
	adds r0, r0, r2
	ldr r1, [r4, #4]
	movs r2, #0
	movs r3, #2
	bl sub_8008930
	ldr r0, [r4]
	movs r3, #0x90
	lsls r3, r3, #0xd
	adds r0, r0, r3
	ldr r1, [r4, #4]
	movs r2, #0
	movs r3, #2
	bl sub_8008930
	b _08004F72
	.align 2, 0
_08004F40: .4byte 0xFFEE0000
_08004F44:
	ldr r0, _08004F90 @ =gUnknown_020119F0
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08004F72
	ldr r0, [r4]
	ldr r5, _08004F94 @ =0xFFEE0000
	adds r0, r0, r5
	ldr r1, [r4, #4]
	movs r2, #0
	movs r3, #2
	bl sub_8008930
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #0xd
	adds r0, r0, r1
	ldr r1, [r4, #4]
	movs r2, #0
	movs r3, #2
	bl sub_8008930
_08004F72:
	ldr r4, _08004F98 @ =gUnknown_02000810
	movs r2, #2
	ldrsh r0, [r4, r2]
	movs r3, #6
	ldrsh r1, [r4, r3]
	bl sub_8003CAC
	cmp r0, #0x44
	bne _08004F9C
	movs r5, #0x94
	lsls r5, r5, #2
	adds r1, r4, r5
	ldr r0, [r1]
	asrs r0, r0, #1
	b _08004FDC
	.align 2, 0
_08004F90: .4byte gUnknown_020119F0
_08004F94: .4byte 0xFFEE0000
_08004F98: .4byte gUnknown_02000810
_08004F9C:
	cmp r0, #0x21
	beq _08005006
	cmp r0, #0x37
	bne _08004FDE
	ldr r3, _08004FC0 @ =gUnknown_02012634
	ldr r1, [r3]
	cmp r1, #0
	bne _08004FDE
	ldr r2, _08004FC4 @ =gUnknown_020126F8
	ldr r0, [r2]
	cmp r0, #0
	beq _08004FD0
	str r1, [r2]
	movs r0, #1
	str r0, [r3]
	ldr r1, _08004FC8 @ =gUnknown_02012700
	ldr r0, _08004FCC @ =gUnknown_087F7E78
	b _08004FD4
	.align 2, 0
_08004FC0: .4byte gUnknown_02012634
_08004FC4: .4byte gUnknown_020126F8
_08004FC8: .4byte gUnknown_02012700
_08004FCC: .4byte gUnknown_087F7E78
_08004FD0:
	ldr r1, _08005020 @ =gUnknown_02012700
	ldr r0, _08005024 @ =gUnknown_087F7E74
_08004FD4:
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08005028 @ =gUnknown_02012684
	movs r0, #0x78
_08004FDC:
	str r0, [r1]
_08004FDE:
	ldr r4, _0800502C @ =gUnknown_02000810
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl sub_8003CAC
	cmp r0, #0x21
	beq _08005006
	movs r3, #2
	ldrsh r0, [r4, r3]
	subs r0, #0x10
	movs r5, #6
	ldrsh r1, [r4, r5]
	bl sub_8003CAC
	cmp r0, #0x21
	beq _08005006
	b _08004A3A
_08005006:
	bl sub_8003A8C
	bl sub_8000AC0
	movs r0, #1
_08005010:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005020: .4byte gUnknown_02012700
_08005024: .4byte gUnknown_087F7E74
_08005028: .4byte gUnknown_02012684
_0800502C: .4byte gUnknown_02000810

	thumb_func_start sub_8005030
sub_8005030: @ 0x08005030
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r7, r2, #0
	ldr r6, [sp, #0x44]
	movs r5, #0
	str r5, [sp, #0x2c]
	ldr r4, _080050B4 @ =0x040000D4
	add r2, sp, #0x2c
	str r2, [r4]
	mov r2, sp
	str r2, [r4, #4]
	ldr r2, _080050B8 @ =0x8500000B
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	mov r2, sp
	strh r0, [r2, #0x22]
	mov r0, sp
	strh r1, [r0, #0x24]
	strh r6, [r0, #0x20]
	strh r5, [r0, #2]
	mov r1, sp
	subs r3, #1
	lsls r0, r3, #3
	adds r0, r0, r3
	ldrh r1, [r1, #0x22]
	adds r0, r0, r1
	strh r0, [r2, #0x22]
	cmp r7, #9
	bls _0800509A
	mov r4, sp
_0800506C:
	adds r0, r7, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #0x1a
	strh r0, [r4, #4]
	adds r0, r7, #0
	movs r1, #0xa
	bl __udivsi3
	adds r7, r0, #0
	mov r0, sp
	ldr r1, _080050BC @ =gUnknown_02010B20
	ldr r2, _080050C0 @ =gUnknown_083D65F4
	bl sub_801A43C
	ldrh r0, [r4, #0x22]
	subs r0, #9
	strh r0, [r4, #0x22]
	cmp r7, #9
	bhi _0800506C
_0800509A:
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0x1a
	strh r0, [r1, #4]
	ldr r1, _080050BC @ =gUnknown_02010B20
	ldr r2, _080050C0 @ =gUnknown_083D65F4
	mov r0, sp
	bl sub_801A43C
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080050B4: .4byte 0x040000D4
_080050B8: .4byte 0x8500000B
_080050BC: .4byte gUnknown_02010B20
_080050C0: .4byte gUnknown_083D65F4

	thumb_func_start sub_80050C4
sub_80050C4: @ 0x080050C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	bl sub_8002984
	ldr r0, _08005148 @ =gUnknown_02013110
	movs r4, #0
	str r4, [r0]
	ldr r0, _0800514C @ =gUnknown_02012628
	str r4, [r0]
	ldr r0, _08005150 @ =gUnknown_020126E0
	str r4, [r0]
	ldr r0, _08005154 @ =gUnknown_02013124
	str r4, [r0]
	ldr r0, _08005158 @ =gUnknown_0201270C
	str r4, [r0]
	ldr r0, [sp, #0xc]
	adds r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_800B640
	ldr r0, _0800515C @ =gUnknown_02012708
	str r4, [r0]
	ldr r0, _08005160 @ =gUnknown_0201268C
	str r4, [r0]
	ldr r0, _08005164 @ =gUnknown_02012704
	str r4, [r0]
	ldr r0, _08005168 @ =gUnknown_02012680
	str r4, [r0]
	ldr r0, _0800516C @ =gUnknown_020125E0
	movs r2, #0
	movs r1, #5
	adds r0, #0x2c
_08005114:
	str r2, [r0]
	subs r0, #8
	subs r1, #1
	cmp r1, #0
	bge _08005114
	ldr r3, _08005170 @ =gUnknown_020126E4
	ldr r0, _08005174 @ =gUnknown_02012710
	movs r2, #0
	adds r0, #0x10
	movs r1, #0x7f
_08005128:
	strb r2, [r0, #3]
	strb r2, [r0]
	adds r0, #0x14
	subs r1, #1
	cmp r1, #0
	bge _08005128
	movs r0, #0
	str r0, [r3]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	beq _08005194
	cmp r0, #1
	bgt _08005178
	cmp r0, #0
	beq _08005180
	b _08005234
	.align 2, 0
_08005148: .4byte gUnknown_02013110
_0800514C: .4byte gUnknown_02012628
_08005150: .4byte gUnknown_020126E0
_08005154: .4byte gUnknown_02013124
_08005158: .4byte gUnknown_0201270C
_0800515C: .4byte gUnknown_02012708
_08005160: .4byte gUnknown_0201268C
_08005164: .4byte gUnknown_02012704
_08005168: .4byte gUnknown_02012680
_0800516C: .4byte gUnknown_020125E0
_08005170: .4byte gUnknown_020126E4
_08005174: .4byte gUnknown_02012710
_08005178:
	ldr r1, [sp, #0xc]
	cmp r1, #2
	beq _080051F4
	b _08005234
_08005180:
	ldr r0, _0800518C @ =gUnknown_087F743C
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _08005190 @ =gUnknown_086BBDE4
	b _080051FE
	.align 2, 0
_0800518C: .4byte gUnknown_087F743C
_08005190: .4byte gUnknown_086BBDE4
_08005194:
	ldr r0, _080051D8 @ =gUnknown_087F743C
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _080051DC @ =gUnknown_086E25BC
	adds r0, r4, #0
	bl sub_8003B2C
	ldr r0, _080051E0 @ =gUnknown_02000810
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x20]
	ldr r1, _080051E4 @ =gUnknown_02013114
	ldr r2, [sp, #0xc]
	str r2, [r1]
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r0, r3
	str r2, [r1]
	bl sub_800A2D4
	adds r0, r4, #0
	bl sub_8005C8C
	ldr r1, _080051E8 @ =gUnknown_020126E8
	ldr r0, _080051EC @ =gUnknown_087F7E60
	str r0, [r1]
	ldr r4, _080051F0 @ =gUnknown_020146E0
	adds r0, r4, #0
	bl sub_80149E8
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x58]
	str r0, [r4, #0x20]
	b _08005234
	.align 2, 0
_080051D8: .4byte gUnknown_087F743C
_080051DC: .4byte gUnknown_086E25BC
_080051E0: .4byte gUnknown_02000810
_080051E4: .4byte gUnknown_02013114
_080051E8: .4byte gUnknown_020126E8
_080051EC: .4byte gUnknown_087F7E60
_080051F0: .4byte gUnknown_020146E0
_080051F4:
	ldr r0, _08005384 @ =gUnknown_087F743C
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _08005388 @ =gUnknown_0871416C
_080051FE:
	adds r0, r4, #0
	bl sub_8003B2C
	ldr r0, _0800538C @ =gUnknown_02000810
	movs r5, #1
	str r5, [r0, #0x20]
	ldr r1, _08005390 @ =gUnknown_02013114
	str r5, [r1]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r0, r2
	str r5, [r1]
	bl sub_800A2D4
	adds r0, r4, #0
	bl sub_8005C8C
	ldr r1, _08005394 @ =gUnknown_020126E8
	ldr r0, _08005398 @ =gUnknown_087F7E60
	str r0, [r1]
	ldr r4, _0800539C @ =gUnknown_020146E0
	adds r0, r4, #0
	bl sub_80149E8
	ldr r3, [sp, #0xc]
	str r3, [r4, #0x58]
	str r5, [r4, #0x20]
_08005234:
	ldr r6, _0800538C @ =gUnknown_02000810
	movs r4, #0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #7
	bl sub_800ACF8
	ldr r5, _0800539C @ =gUnknown_020146E0
	ldr r1, [r5, #0x58]
	lsls r1, r1, #1
	str r4, [sp]
	adds r0, r5, #0
	movs r2, #0xff
	movs r3, #7
	bl sub_800ACF8
	ldr r1, _080053A0 @ =gUnknown_020003EC
	ldr r0, [r6]
	str r0, [r1]
	ldr r1, _080053A4 @ =gUnknown_020003F4
	ldr r2, [r6, #4]
	str r2, [r1]
	subs r0, #0x20
	lsls r0, r0, #0x10
	str r0, [r5]
	str r2, [r5, #4]
	bl sub_800BB2C
	ldr r2, _080053A8 @ =gUnknown_083D65F4
	movs r0, #0xa
	movs r1, #2
	bl sub_801A434
	bl sub_8000B30
	ldr r0, _080053AC @ =gUnknown_0201268C
	ldr r0, [r0]
	cmp r0, #0xb3
	ble _08005288
	b _080054A0
_08005288:
	adds r7, r6, #0
_0800528A:
	ldr r1, _080053B0 @ =0x0000028A
	adds r0, r7, r1
	movs r2, #0
	strh r2, [r0]
	ldr r3, _080053B4 @ =gUnknown_020119F0
	ldr r0, [r3]
	lsrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r1, r7, r2
	strh r0, [r1]
	ldr r0, [r7]
	bl sub_800BB44
	subs r0, #0x20
	ldr r3, _080053B8 @ =0x000002AA
	adds r1, r7, r3
	strh r0, [r1]
	ldr r0, [r7, #4]
	bl sub_800BB54
	movs r2, #0xab
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r3, _080053BC @ =0x0000FFD9
	adds r0, r0, r3
	strh r0, [r1]
	ldr r0, _080053C0 @ =0x000002AE
	mov sb, r0
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #1
	mov sl, r1
	mov r2, sl
	strh r2, [r0]
	movs r3, #0xac
	lsls r3, r3, #2
	mov r8, r3
	adds r0, r7, r3
	strh r2, [r0]
	movs r6, #0xa7
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #3
	str r1, [r0]
	ldr r5, _080053C4 @ =0x000002B2
	adds r0, r7, r5
	movs r2, #0
	strh r2, [r0]
	ldr r3, _080053C8 @ =gUnknown_02000A5C
	ldr r2, [r3]
	movs r1, #0xa2
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, _080053CC @ =gUnknown_02010B20
	bl sub_801A43C
	ldr r4, _0800539C @ =gUnknown_020146E0
	ldr r0, [r4, #0x58]
	lsls r0, r0, #1
	ldr r2, _080053D0 @ =gUnknown_0201496A
	strh r0, [r2]
	ldr r3, _080053B4 @ =gUnknown_020119F0
	ldr r0, [r3]
	lsrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	ldr r2, _080053D4 @ =gUnknown_0201496C
	strh r0, [r2]
	ldr r0, [r4]
	bl sub_800BB44
	subs r0, #0x20
	ldr r3, _080053D8 @ =gUnknown_0201498A
	strh r0, [r3]
	ldr r0, [r4, #4]
	bl sub_800BB54
	ldr r1, _080053BC @ =0x0000FFD9
	adds r0, r0, r1
	ldr r2, _080053DC @ =gUnknown_0201498C
	strh r0, [r2]
	add sb, r4
	mov r0, sl
	mov r3, sb
	strh r0, [r3]
	add r8, r4
	mov r1, r8
	strh r0, [r1]
	adds r6, r4, r6
	movs r2, #3
	str r2, [r6]
	adds r5, r4, r5
	movs r3, #0
	strh r3, [r5]
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, [r0]
	movs r3, #0xa2
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r1, _080053CC @ =gUnknown_02010B20
	bl sub_801A43C
	ldr r0, _080053AC @ =gUnknown_0201268C
	ldr r0, [r0]
	cmp r0, #0x3b
	bgt _080053E4
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _080053E0 @ =gUnknown_083DC580
	str r0, [sp, #8]
	movs r0, #0x78
	movs r1, #0x46
	movs r2, #7
	movs r3, #0
	bl sub_800AACC
	b _08005424
	.align 2, 0
_08005384: .4byte gUnknown_087F743C
_08005388: .4byte gUnknown_0871416C
_0800538C: .4byte gUnknown_02000810
_08005390: .4byte gUnknown_02013114
_08005394: .4byte gUnknown_020126E8
_08005398: .4byte gUnknown_087F7E60
_0800539C: .4byte gUnknown_020146E0
_080053A0: .4byte gUnknown_020003EC
_080053A4: .4byte gUnknown_020003F4
_080053A8: .4byte gUnknown_083D65F4
_080053AC: .4byte gUnknown_0201268C
_080053B0: .4byte 0x0000028A
_080053B4: .4byte gUnknown_020119F0
_080053B8: .4byte 0x000002AA
_080053BC: .4byte 0x0000FFD9
_080053C0: .4byte 0x000002AE
_080053C4: .4byte 0x000002B2
_080053C8: .4byte gUnknown_02000A5C
_080053CC: .4byte gUnknown_02010B20
_080053D0: .4byte gUnknown_0201496A
_080053D4: .4byte gUnknown_0201496C
_080053D8: .4byte gUnknown_0201498A
_080053DC: .4byte gUnknown_0201498C
_080053E0: .4byte gUnknown_083DC580
_080053E4:
	cmp r0, #0x77
	bgt _08005408
	movs r0, #0xe
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	ldr r0, _08005404 @ =gUnknown_083DC580
	str r0, [sp, #8]
	movs r0, #0x78
	movs r1, #0x46
	movs r2, #7
	movs r3, #1
	bl sub_800AACC
	b _08005424
	.align 2, 0
_08005404: .4byte gUnknown_083DC580
_08005408:
	cmp r0, #0xb3
	bgt _08005424
	movs r0, #0xe
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r0, _080054F0 @ =gUnknown_083DC580
	str r0, [sp, #8]
	movs r0, #0x78
	movs r1, #0x46
	movs r2, #7
	movs r3, #2
	bl sub_800AACC
_08005424:
	ldr r6, _080054F4 @ =gUnknown_0201268C
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
	ldr r0, [r7, #0x10]
	ldr r1, _080054F8 @ =gUnknown_02000800
	ldr r1, [r1]
	ldr r2, _080054FC @ =gUnknown_020003E4
	ldr r2, [r2]
	ldr r3, _08005500 @ =gUnknown_02000AD4
	ldr r3, [r3]
	ldr r4, _08005504 @ =gUnknown_020146C0
	ldr r4, [r4]
	str r4, [sp]
	ldr r4, _08005508 @ =gUnknown_02013CB0
	ldr r4, [r4]
	str r4, [sp, #4]
	bl sub_800B3A4
	bl sub_800D51C
	adds r0, r7, #0
	bl sub_8009734
	ldr r0, [sp, #0xc]
	bl sub_8004204
	ldr r5, _0800550C @ =gUnknown_02011994
	movs r0, #1
	str r0, [r5]
	ldr r4, _08005510 @ =gUnknown_020119FC
	str r0, [r4]
	bl VBlankIntrWait
	movs r3, #0
	str r3, [r5]
	str r3, [r4]
	bl sub_8000A28
	bl sub_800415C
	ldr r0, _08005514 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08005498
	bl sub_8000AC0
	bl sub_8000DFC
	ldr r0, _08005518 @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	bne _08005494
	b _08005748
_08005494:
	bl sub_8000B30
_08005498:
	ldr r0, [r6]
	cmp r0, #0xb3
	bgt _080054A0
	b _0800528A
_080054A0:
	ldr r0, _080054F4 @ =gUnknown_0201268C
	movs r4, #0
	str r4, [r0]
	ldr r0, _0800551C @ =gUnknown_087F7794
	movs r1, #2
	bl sub_8003A9C
	ldr r0, _08005520 @ =gUnknown_020003F8
	strh r4, [r0]
	ldr r0, _08005514 @ =gUnknown_020003E8
	strh r4, [r0]
	movs r6, #0
_080054B8:
	ldr r4, _080054F4 @ =gUnknown_0201268C
	ldr r0, [r4]
	cmp r0, #0x3b
	bgt _080054DC
	movs r0, #0xe
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, _080054F0 @ =gUnknown_083DC580
	str r0, [sp, #8]
	movs r0, #0x78
	movs r1, #0x46
	movs r2, #7
	movs r3, #3
	bl sub_800AACC
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
_080054DC:
	ldr r0, _080054F8 @ =gUnknown_02000800
	ldr r4, [r0]
	cmp r4, #0
	bge _08005524
	bl sub_80013A0
	cmp r0, #0
	beq _080054B8
	movs r0, #0
	b _08005748
	.align 2, 0
_080054F0: .4byte gUnknown_083DC580
_080054F4: .4byte gUnknown_0201268C
_080054F8: .4byte gUnknown_02000800
_080054FC: .4byte gUnknown_020003E4
_08005500: .4byte gUnknown_02000AD4
_08005504: .4byte gUnknown_020146C0
_08005508: .4byte gUnknown_02013CB0
_0800550C: .4byte gUnknown_02011994
_08005510: .4byte gUnknown_020119FC
_08005514: .4byte gUnknown_020003E8
_08005518: .4byte gUnknown_020003F0
_0800551C: .4byte gUnknown_087F7794
_08005520: .4byte gUnknown_020003F8
_08005524:
	ldr r5, _080055A0 @ =gUnknown_02000810
	ldr r0, [r5, #0x10]
	ldr r1, _080055A4 @ =gUnknown_020003E4
	ldr r2, [r1]
	ldr r1, _080055A8 @ =gUnknown_02000AD4
	ldr r3, [r1]
	ldr r1, _080055AC @ =gUnknown_020146C0
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, _080055B0 @ =gUnknown_02013CB0
	ldr r1, [r1]
	str r1, [sp, #4]
	adds r1, r4, #0
	bl sub_800B3A4
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0800555C
	ldr r0, _080055B4 @ =gUnknown_020154A0
	str r6, [r0]
	adds r0, r5, #0
	bl sub_8006F60
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_800700C
_0800555C:
	ldr r4, _080055B8 @ =gUnknown_020146E0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _08005578
	ldr r0, _080055B4 @ =gUnknown_020154A0
	str r6, [r0]
	adds r0, r4, #0
	bl sub_8006F60
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r4, r2
	bl sub_800700C
_08005578:
	bl sub_800D51C
	adds r0, r5, #0
	bl sub_8009734
	ldr r0, [sp, #0xc]
	bl sub_8004204
	ldr r0, _080055BC @ =gUnknown_02011994
	movs r1, #1
	str r1, [r0]
	ldr r0, _080055C0 @ =gUnknown_020119FC
	str r1, [r0]
	ldr r4, _080055C4 @ =gUnknown_02012704
	ldr r0, [r4]
	cmp r0, #0
	bne _080055C8
	bl VBlankIntrWait
	b _080055D4
	.align 2, 0
_080055A0: .4byte gUnknown_02000810
_080055A4: .4byte gUnknown_020003E4
_080055A8: .4byte gUnknown_02000AD4
_080055AC: .4byte gUnknown_020146C0
_080055B0: .4byte gUnknown_02013CB0
_080055B4: .4byte gUnknown_020154A0
_080055B8: .4byte gUnknown_020146E0
_080055BC: .4byte gUnknown_02011994
_080055C0: .4byte gUnknown_020119FC
_080055C4: .4byte gUnknown_02012704
_080055C8:
	movs r0, #3
	bl sub_8001CF0
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
_080055D4:
	ldr r0, _08005600 @ =gUnknown_02011994
	str r6, [r0]
	ldr r0, _08005604 @ =gUnknown_020119FC
	str r6, [r0]
	bl sub_8000A28
	bl sub_800415C
	ldr r2, _08005608 @ =gUnknown_020126E0
	ldr r0, _0800560C @ =gUnknown_087F7E7C
	ldr r3, [sp, #0xc]
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r3, [r0]
	adds r0, r3, #0
	subs r0, #0xa
	ldr r2, [r2]
	adds r7, r1, #0
	cmp r2, r0
	bhs _08005610
	movs r0, #0xf
	b _0800562A
	.align 2, 0
_08005600: .4byte gUnknown_02011994
_08005604: .4byte gUnknown_020119FC
_08005608: .4byte gUnknown_020126E0
_0800560C: .4byte gUnknown_087F7E7C
_08005610:
	cmp r2, r3
	bhs _08005638
	ldr r0, _08005624 @ =gUnknown_020119F0
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08005628
	movs r0, #0xf
	b _0800562A
	.align 2, 0
_08005624: .4byte gUnknown_020119F0
_08005628:
	movs r0, #0xa
_0800562A:
	str r0, [sp]
	movs r0, #0x64
	movs r1, #2
	movs r3, #3
	bl sub_8005030
	b _08005646
_08005638:
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0x64
	movs r1, #2
	movs r3, #3
	bl sub_8005030
_08005646:
	ldr r0, _080056F8 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08005666
	bl sub_8000AC0
	bl sub_8000DFC
	ldr r0, _080056FC @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	beq _08005748
	bl sub_8000B30
_08005666:
	ldr r1, _08005700 @ =gUnknown_0201270C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #5
	bls _08005692
	movs r2, #0
	str r2, [r1]
	ldr r1, _08005704 @ =gUnknown_02013124
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #9
	bls _08005692
	str r2, [r1]
	ldr r2, _08005708 @ =gUnknown_020126E0
	ldr r1, [r2]
	ldr r0, _0800570C @ =0x000003E6
	cmp r1, r0
	bhi _08005692
	adds r0, r1, #1
	str r0, [r2]
_08005692:
	ldr r5, _08005710 @ =gUnknown_02000810
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	bl sub_8003CAC
	cmp r0, #0x44
	bne _080056B0
	movs r3, #0x94
	lsls r3, r3, #2
	adds r1, r5, r3
	ldr r0, [r1]
	asrs r0, r0, #1
	str r0, [r1]
_080056B0:
	ldr r4, _08005714 @ =gUnknown_020146E0
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl sub_8003CAC
	cmp r0, #0x44
	bne _080056CE
	movs r3, #0x94
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r0, [r1]
	asrs r0, r0, #1
	str r0, [r1]
_080056CE:
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	bl sub_8003CAC
	cmp r0, #0x21
	beq _0800571C
	movs r3, #2
	ldrsh r0, [r4, r3]
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl sub_8003CAC
	cmp r0, #0x21
	beq _080056F0
	b _080054B8
_080056F0:
	ldr r1, _08005718 @ =gUnknown_02012628
	movs r0, #1
	str r0, [r1]
	b _080054B8
	.align 2, 0
_080056F8: .4byte gUnknown_020003E8
_080056FC: .4byte gUnknown_020003F0
_08005700: .4byte gUnknown_0201270C
_08005704: .4byte gUnknown_02013124
_08005708: .4byte gUnknown_020126E0
_0800570C: .4byte 0x000003E6
_08005710: .4byte gUnknown_02000810
_08005714: .4byte gUnknown_020146E0
_08005718: .4byte gUnknown_02012628
_0800571C:
	ldr r0, _08005758 @ =gUnknown_02012628
	ldr r0, [r0]
	cmp r0, #0
	bne _0800572A
	ldr r1, _0800575C @ =gUnknown_02013110
	movs r0, #1
	str r0, [r1]
_0800572A:
	ldr r1, _08005760 @ =gUnknown_020126E0
	ldr r0, _08005764 @ =gUnknown_087F7E7C
	adds r0, r7, r0
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bhs _0800573E
	ldr r1, _08005768 @ =gUnknown_020126FC
	ldr r0, _0800576C @ =0x00001388
	str r0, [r1]
_0800573E:
	bl sub_8003A8C
	bl sub_8000AC0
	movs r0, #1
_08005748:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005758: .4byte gUnknown_02012628
_0800575C: .4byte gUnknown_02013110
_08005760: .4byte gUnknown_020126E0
_08005764: .4byte gUnknown_087F7E7C
_08005768: .4byte gUnknown_020126FC
_0800576C: .4byte 0x00001388

	thumb_func_start sub_8005770
sub_8005770: @ 0x08005770
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_8002984
	adds r0, r6, #0
	adds r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_800B640
	ldr r0, _080057D8 @ =gUnknown_02012708
	movs r1, #0
	str r1, [r0]
	ldr r0, _080057DC @ =gUnknown_0201268C
	str r1, [r0]
	ldr r0, _080057E0 @ =gUnknown_02012704
	str r1, [r0]
	ldr r0, _080057E4 @ =gUnknown_02012680
	str r1, [r0]
	ldr r0, _080057E8 @ =gUnknown_020125E0
	movs r2, #0
	movs r1, #5
	adds r0, #0x2c
_080057A2:
	str r2, [r0]
	subs r0, #8
	subs r1, #1
	cmp r1, #0
	bge _080057A2
	ldr r3, _080057EC @ =gUnknown_020126E4
	ldr r0, _080057F0 @ =gUnknown_02012710
	movs r2, #0
	adds r0, #0x10
	movs r1, #0x7f
_080057B6:
	strb r2, [r0, #3]
	strb r2, [r0]
	adds r0, #0x14
	subs r1, #1
	cmp r1, #0
	bge _080057B6
	movs r0, #0
	str r0, [r3]
	cmp r6, #4
	bls _080057CC
	b _080059FA
_080057CC:
	lsls r0, r6, #2
	ldr r1, _080057F4 @ =_080057F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080057D8: .4byte gUnknown_02012708
_080057DC: .4byte gUnknown_0201268C
_080057E0: .4byte gUnknown_02012704
_080057E4: .4byte gUnknown_02012680
_080057E8: .4byte gUnknown_020125E0
_080057EC: .4byte gUnknown_020126E4
_080057F0: .4byte gUnknown_02012710
_080057F4: .4byte _080057F8
_080057F8: @ jump table
	.4byte _0800580C @ case 0
	.4byte _08005874 @ case 1
	.4byte _080058DC @ case 2
	.4byte _08005938 @ case 3
	.4byte _080059A8 @ case 4
_0800580C:
	ldr r0, _08005858 @ =gUnknown_087F61F8
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _0800585C @ =gUnknown_0871F480
	adds r0, r4, #0
	bl sub_8003B2C
	ldr r0, _08005860 @ =gUnknown_02000810
	movs r5, #1
	str r5, [r0, #0x20]
	ldr r1, _08005864 @ =gUnknown_02013114
	str r5, [r1]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r0, r2
	str r5, [r1]
	bl sub_800A2D4
	adds r0, r4, #0
	bl sub_8005C8C
	ldr r1, _08005868 @ =gUnknown_020126E8
	ldr r0, _0800586C @ =gUnknown_087F7E60
	str r0, [r1]
	ldr r4, _08005870 @ =gUnknown_020146E0
	adds r0, r4, #0
	bl sub_8015A84
	movs r0, #0xe0
	lsls r0, r0, #0x10
	str r0, [r4]
	movs r0, #0xc8
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	str r5, [r4, #0x20]
	str r5, [r4, #8]
	b _08005980
	.align 2, 0
_08005858: .4byte gUnknown_087F61F8
_0800585C: .4byte gUnknown_0871F480
_08005860: .4byte gUnknown_02000810
_08005864: .4byte gUnknown_02013114
_08005868: .4byte gUnknown_020126E8
_0800586C: .4byte gUnknown_087F7E60
_08005870: .4byte gUnknown_020146E0
_08005874:
	ldr r0, _080058C0 @ =gUnknown_087F61F8
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _080058C4 @ =gUnknown_087268E4
	adds r0, r4, #0
	bl sub_8003B2C
	ldr r0, _080058C8 @ =gUnknown_02000810
	movs r5, #1
	str r5, [r0, #0x20]
	ldr r1, _080058CC @ =gUnknown_02013114
	str r5, [r1]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r0, r2
	str r5, [r1]
	bl sub_800A2D4
	adds r0, r4, #0
	bl sub_8005C8C
	ldr r1, _080058D0 @ =gUnknown_020126E8
	ldr r0, _080058D4 @ =gUnknown_087F7E60
	str r0, [r1]
	ldr r4, _080058D8 @ =gUnknown_020146E0
	adds r0, r4, #0
	bl sub_8016398
	movs r0, #0xc0
	lsls r0, r0, #0x10
	str r0, [r4]
	movs r0, #0x82
	lsls r0, r0, #0x11
	str r0, [r4, #4]
	str r5, [r4, #0x20]
	str r5, [r4, #8]
	b _08005980
	.align 2, 0
_080058C0: .4byte gUnknown_087F61F8
_080058C4: .4byte gUnknown_087268E4
_080058C8: .4byte gUnknown_02000810
_080058CC: .4byte gUnknown_02013114
_080058D0: .4byte gUnknown_020126E8
_080058D4: .4byte gUnknown_087F7E60
_080058D8: .4byte gUnknown_020146E0
_080058DC:
	ldr r0, _0800591C @ =gUnknown_087F61F8
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _08005920 @ =gUnknown_08730BC4
	adds r0, r4, #0
	bl sub_8003B2C
	ldr r0, _08005924 @ =gUnknown_02000810
	movs r5, #1
	str r5, [r0, #0x20]
	ldr r1, _08005928 @ =gUnknown_02013114
	str r5, [r1]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r0, r2
	str r5, [r1]
	bl sub_800A2D4
	adds r0, r4, #0
	bl sub_8005C8C
	ldr r1, _0800592C @ =gUnknown_020126E8
	ldr r0, _08005930 @ =gUnknown_087F7E60
	str r0, [r1]
	ldr r4, _08005934 @ =gUnknown_020146E0
	adds r0, r4, #0
	bl sub_80151DC
	movs r0, #0xc0
	lsls r0, r0, #0x10
	b _08005976
	.align 2, 0
_0800591C: .4byte gUnknown_087F61F8
_08005920: .4byte gUnknown_08730BC4
_08005924: .4byte gUnknown_02000810
_08005928: .4byte gUnknown_02013114
_0800592C: .4byte gUnknown_020126E8
_08005930: .4byte gUnknown_087F7E60
_08005934: .4byte gUnknown_020146E0
_08005938:
	ldr r0, _08005988 @ =gUnknown_087F61F8
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _0800598C @ =gUnknown_08742500
	adds r0, r4, #0
	bl sub_8003B2C
	ldr r0, _08005990 @ =gUnknown_02000810
	movs r5, #1
	str r5, [r0, #0x20]
	ldr r1, _08005994 @ =gUnknown_02013114
	str r5, [r1]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r0, r2
	str r5, [r1]
	bl sub_800A2D4
	adds r0, r4, #0
	bl sub_8005C8C
	ldr r1, _08005998 @ =gUnknown_020126E8
	ldr r0, _0800599C @ =gUnknown_087F7E60
	str r0, [r1]
	ldr r4, _080059A0 @ =gUnknown_020146E0
	adds r0, r4, #0
	bl sub_8016BF0
	movs r0, #0xa0
	lsls r0, r0, #0x10
_08005976:
	str r0, [r4]
	movs r0, #0xd0
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	str r5, [r4, #0x20]
_08005980:
	ldr r1, _080059A4 @ =gUnknown_020146D0
	movs r0, #0
	str r0, [r1]
	b _080059FA
	.align 2, 0
_08005988: .4byte gUnknown_087F61F8
_0800598C: .4byte gUnknown_08742500
_08005990: .4byte gUnknown_02000810
_08005994: .4byte gUnknown_02013114
_08005998: .4byte gUnknown_020126E8
_0800599C: .4byte gUnknown_087F7E60
_080059A0: .4byte gUnknown_020146E0
_080059A4: .4byte gUnknown_020146D0
_080059A8:
	ldr r0, _08005A44 @ =gUnknown_087F61F8
	movs r1, #0
	bl sub_8003A5C
	ldr r4, _08005A48 @ =gUnknown_08742500
	adds r0, r4, #0
	bl sub_8003B2C
	ldr r0, _08005A4C @ =gUnknown_02000810
	movs r5, #1
	str r5, [r0, #0x20]
	ldr r1, _08005A50 @ =gUnknown_02013114
	str r5, [r1]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r0, r2
	str r5, [r1]
	bl sub_800A2D4
	adds r0, r4, #0
	bl sub_8005C8C
	ldr r1, _08005A54 @ =gUnknown_020126E8
	ldr r0, _08005A58 @ =gUnknown_087F7E60
	str r0, [r1]
	ldr r4, _08005A5C @ =gUnknown_020146E0
	adds r0, r4, #0
	bl sub_8016E74
	movs r0, #0xa0
	lsls r0, r0, #0x10
	str r0, [r4]
	movs r0, #0xcc
	lsls r0, r0, #0x11
	str r0, [r4, #4]
	str r5, [r4, #0x20]
	ldr r1, _08005A60 @ =gUnknown_020146D0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08005A64 @ =gUnknown_02015538
	str r5, [r0]
_080059FA:
	ldr r4, _08005A4C @ =gUnknown_02000810
	movs r0, #1
	adds r1, r4, #0
	bl sub_8006F10
	ldr r1, _08005A68 @ =gUnknown_020003EC
	ldr r0, [r4]
	str r0, [r1]
	ldr r1, _08005A6C @ =gUnknown_020003F4
	ldr r0, [r4, #4]
	str r0, [r1]
	bl sub_800BB2C
	bl sub_8000B30
	ldr r0, _08005A70 @ =gUnknown_02012688
	ldr r7, [r0]
	ldr r0, _08005A74 @ =gUnknown_020003F8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08005A78 @ =gUnknown_020003E8
	strh r1, [r0]
	ldr r0, _08005A7C @ =gUnknown_087F767C
	movs r1, #2
	bl sub_8003A9C
_08005A2E:
	ldr r0, _08005A80 @ =gUnknown_02000800
	ldr r5, [r0]
	cmp r5, #0
	bge _08005A84
	bl sub_80013A0
	cmp r0, #0
	beq _08005A2E
	movs r0, #0
	b _08005C7C
	.align 2, 0
_08005A44: .4byte gUnknown_087F61F8
_08005A48: .4byte gUnknown_08742500
_08005A4C: .4byte gUnknown_02000810
_08005A50: .4byte gUnknown_02013114
_08005A54: .4byte gUnknown_020126E8
_08005A58: .4byte gUnknown_087F7E60
_08005A5C: .4byte gUnknown_020146E0
_08005A60: .4byte gUnknown_020146D0
_08005A64: .4byte gUnknown_02015538
_08005A68: .4byte gUnknown_020003EC
_08005A6C: .4byte gUnknown_020003F4
_08005A70: .4byte gUnknown_02012688
_08005A74: .4byte gUnknown_020003F8
_08005A78: .4byte gUnknown_020003E8
_08005A7C: .4byte gUnknown_087F767C
_08005A80: .4byte gUnknown_02000800
_08005A84:
	ldr r4, _08005AFC @ =gUnknown_02000810
	ldr r0, [r4, #0x10]
	ldr r1, _08005B00 @ =gUnknown_020003E4
	ldr r2, [r1]
	ldr r1, _08005B04 @ =gUnknown_02000AD4
	ldr r3, [r1]
	ldr r1, _08005B08 @ =gUnknown_020146C0
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, _08005B0C @ =gUnknown_02013CB0
	ldr r1, [r1]
	str r1, [sp, #4]
	adds r1, r5, #0
	bl sub_800B3A4
	bl sub_8008B3C
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _08005B3C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _08005AB6
	subs r0, #1
	str r0, [r4, #0x28]
_08005AB6:
	adds r0, r4, #0
	bl sub_8008E64
	cmp r0, #0
	beq _08005ADE
	ldr r0, _08005B10 @ =gUnknown_02013118
	movs r1, #0
	str r1, [r0]
	ldr r0, [r4, #0x14]
	cmp r0, #0x3f
	beq _08005ADE
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r0, #0x3d
	adds r1, r4, #0
	bl sub_8006F10
_08005ADE:
	ldr r1, _08005AFC @ =gUnknown_02000810
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bgt _08005AF2
	ldr r0, [r1, #0x14]
	cmp r0, #0x3f
	beq _08005AF2
	movs r0, #0x3f
	bl sub_8006F10
_08005AF2:
	cmp r6, #1
	bhi _08005B18
	ldr r1, _08005B14 @ =gUnknown_020154A0
	movs r0, #1
	b _08005B1C
	.align 2, 0
_08005AFC: .4byte gUnknown_02000810
_08005B00: .4byte gUnknown_020003E4
_08005B04: .4byte gUnknown_02000AD4
_08005B08: .4byte gUnknown_020146C0
_08005B0C: .4byte gUnknown_02013CB0
_08005B10: .4byte gUnknown_02013118
_08005B14: .4byte gUnknown_020154A0
_08005B18:
	ldr r1, _08005B50 @ =gUnknown_020154A0
	movs r0, #0
_08005B1C:
	str r0, [r1]
	ldr r4, _08005B54 @ =gUnknown_02000810
	adds r0, r4, #0
	bl sub_8006F60
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r4, r2
	bl sub_800700C
	ldr r1, _08005B50 @ =gUnknown_020154A0
	movs r0, #2
	str r0, [r1]
	adds r0, r4, #0
	bl sub_800AB80
_08005B3C:
	bl sub_800A504
	cmp r6, #4
	bhi _08005BCC
	lsls r0, r6, #2
	ldr r1, _08005B58 @ =_08005B5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005B50: .4byte gUnknown_020154A0
_08005B54: .4byte gUnknown_02000810
_08005B58: .4byte _08005B5C
_08005B5C: @ jump table
	.4byte _08005B84 @ case 0
	.4byte _08005B70 @ case 1
	.4byte _08005B84 @ case 2
	.4byte _08005B84 @ case 3
	.4byte _08005BA4 @ case 4
_08005B70:
	ldr r0, _08005B9C @ =gUnknown_0201A5E4
	ldr r3, [r0]
	lsrs r3, r3, #4
	movs r0, #1
	str r0, [sp]
	movs r0, #0xb8
	movs r1, #1
	movs r2, #5
	bl sub_800B1C8
_08005B84:
	ldr r0, _08005BA0 @ =gUnknown_020146E0
	ldr r3, [r0, #0x10]
	asrs r3, r3, #2
	movs r0, #0
	str r0, [sp]
	movs r0, #0x58
	movs r1, #0x96
	movs r2, #8
	bl sub_800B1C8
	b _08005BCC
	.align 2, 0
_08005B9C: .4byte gUnknown_0201A5E4
_08005BA0: .4byte gUnknown_020146E0
_08005BA4:
	ldr r0, _08005BE8 @ =gUnknown_02012688
	ldr r2, [r0]
	subs r2, r2, r7
	movs r0, #0x6e
	movs r1, #6
	movs r3, #2
	bl sub_800B30C
	ldr r3, _08005BEC @ =gUnknown_08031A1C
	movs r0, #0xf
	movs r1, #0x80
	movs r2, #6
	bl DrawString
	movs r0, #0x8a
	movs r1, #6
	movs r2, #0x28
	movs r3, #2
	bl sub_800B30C
_08005BCC:
	bl sub_800D51C
	ldr r0, _08005BF0 @ =gUnknown_02011994
	movs r1, #1
	str r1, [r0]
	ldr r0, _08005BF4 @ =gUnknown_020119FC
	str r1, [r0]
	ldr r4, _08005BF8 @ =gUnknown_02012704
	ldr r0, [r4]
	cmp r0, #0
	bne _08005BFC
	bl VBlankIntrWait
	b _08005C08
	.align 2, 0
_08005BE8: .4byte gUnknown_02012688
_08005BEC: .4byte gUnknown_08031A1C
_08005BF0: .4byte gUnknown_02011994
_08005BF4: .4byte gUnknown_020119FC
_08005BF8: .4byte gUnknown_02012704
_08005BFC:
	movs r0, #3
	bl sub_8001CF0
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
_08005C08:
	ldr r0, _08005C4C @ =gUnknown_02011994
	movs r1, #0
	str r1, [r0]
	ldr r0, _08005C50 @ =gUnknown_020119FC
	str r1, [r0]
	bl sub_8000A28
	bl sub_800415C
	ldr r0, _08005C54 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08005C3A
	bl sub_8000AC0
	bl sub_8000DFC
	ldr r0, _08005C58 @ =gUnknown_020003F0
	ldr r0, [r0]
	cmp r0, #0
	beq _08005C7C
	bl sub_8000B30
_08005C3A:
	cmp r6, #4
	bne _08005C60
	ldr r0, _08005C5C @ =gUnknown_02012688
	ldr r0, [r0]
	subs r0, r0, r7
	cmp r0, #0x27
	bgt _08005C6A
	b _08005A2E
	.align 2, 0
_08005C4C: .4byte gUnknown_02011994
_08005C50: .4byte gUnknown_020119FC
_08005C54: .4byte gUnknown_020003E8
_08005C58: .4byte gUnknown_020003F0
_08005C5C: .4byte gUnknown_02012688
_08005C60:
	ldr r0, _08005C84 @ =gUnknown_020146E0
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _08005C6A
	b _08005A2E
_08005C6A:
	ldr r0, _08005C88 @ =gUnknown_087F77B0
	movs r1, #2
	bl sub_8003A9C
	bl sub_8003A8C
	bl sub_8000AC0
	movs r0, #1
_08005C7C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005C84: .4byte gUnknown_020146E0
_08005C88: .4byte gUnknown_087F77B0

	thumb_func_start sub_8005C8C
sub_8005C8C: @ 0x08005C8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sl, r1
	mov r0, sb
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #8]
	movs r1, #4
	add sb, r1
	movs r2, #0
	mov r8, r2
	ldr r3, [sp, #8]
	cmp r8, r3
	blo _08005CC0
	b _08006478
_08005CC0:
	movs r7, #0
	mov r5, r8
	adds r5, #1
	str r5, [sp, #0xc]
	cmp r7, sl
	blo _08005CCE
	b _0800646C
_08005CCE:
	mov r0, sl
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, r7
	add r0, sb
	ldrb r3, [r0]
	adds r0, r1, #0
	cmp r3, #0x20
	bne _08005CF0
	ldr r1, _08005CEC @ =gUnknown_02000810
	lsls r0, r7, #0x14
	str r0, [r1]
	mov r2, r8
	lsls r0, r2, #4
	b _08005CFE
	.align 2, 0
_08005CEC: .4byte gUnknown_02000810
_08005CF0:
	cmp r3, #0x24
	bne _08005D0C
	ldr r1, _08005D08 @ =gUnknown_02012320
	lsls r0, r7, #0x14
	str r0, [r1]
	mov r3, r8
	lsls r0, r3, #4
_08005CFE:
	adds r0, #0xf
	lsls r0, r0, #0x10
	str r0, [r1, #4]
	adds r4, r7, #1
	b _08006464
	.align 2, 0
_08005D08: .4byte gUnknown_02012320
_08005D0C:
	cmp r3, #0x60
	bne _08005D50
	ldr r3, _08005D48 @ =gUnknown_02012710
	ldr r4, _08005D4C @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r6, r2, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r1, r3, #4
	adds r1, r2, r1
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #3
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r2, r2, r0
	movs r5, #0
	str r5, [r2]
	movs r0, #2
	b _080060C4
	.align 2, 0
_08005D48: .4byte gUnknown_02012710
_08005D4C: .4byte gUnknown_020126E4
_08005D50:
	cmp r3, #0x61
	bne _08005DA0
	ldr r3, _08005D98 @ =gUnknown_02012710
	ldr r4, _08005D9C @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r6, r2, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r1, r3, #4
	adds r1, r2, r1
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #3
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r2, r2, r0
	movs r5, #0
	str r5, [r2]
	movs r2, #1
	strb r2, [r6, #0x12]
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strb r2, [r0, #0x10]
	b _080060D4
	.align 2, 0
_08005D98: .4byte gUnknown_02012710
_08005D9C: .4byte gUnknown_020126E4
_08005DA0:
	cmp r3, #0x62
	bne _08005DE4
	ldr r3, _08005DDC @ =gUnknown_02012710
	ldr r4, _08005DE0 @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r6, r1, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r2, r3, #4
	adds r2, r1, r2
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r1, r0
	movs r2, #3
	str r2, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r1, r1, r0
	movs r5, #0
	str r5, [r1]
	strb r2, [r6, #0x12]
	b _080060C6
	.align 2, 0
_08005DDC: .4byte gUnknown_02012710
_08005DE0: .4byte gUnknown_020126E4
_08005DE4:
	cmp r3, #0x63
	bne _08005E28
	ldr r3, _08005E20 @ =gUnknown_02012710
	ldr r4, _08005E24 @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r6, r2, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r1, r3, #4
	adds r1, r2, r1
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #3
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r2, r2, r0
	movs r5, #0
	str r5, [r2]
	movs r0, #4
	b _080060C4
	.align 2, 0
_08005E20: .4byte gUnknown_02012710
_08005E24: .4byte gUnknown_020126E4
_08005E28:
	cmp r3, #0x64
	bne _08005E6C
	ldr r3, _08005E64 @ =gUnknown_02012710
	ldr r4, _08005E68 @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r6, r2, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r1, r3, #4
	adds r1, r2, r1
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #7
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r2, r2, r0
	movs r5, #0
	str r5, [r2]
	movs r0, #6
	b _080060C4
	.align 2, 0
_08005E64: .4byte gUnknown_02012710
_08005E68: .4byte gUnknown_020126E4
_08005E6C:
	cmp r3, #0x65
	bne _08005EB0
	ldr r3, _08005EA8 @ =gUnknown_02012710
	ldr r4, _08005EAC @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r6, r1, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r2, r3, #4
	adds r2, r1, r2
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r1, r0
	movs r2, #9
	str r2, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r1, r1, r0
	movs r5, #0
	str r5, [r1]
	strb r2, [r6, #0x12]
	b _080060C6
	.align 2, 0
_08005EA8: .4byte gUnknown_02012710
_08005EAC: .4byte gUnknown_020126E4
_08005EB0:
	cmp r3, #0x66
	bne _08005EF4
	ldr r3, _08005EEC @ =gUnknown_02012710
	ldr r4, _08005EF0 @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r6, r2, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r1, r3, #4
	adds r1, r2, r1
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #0xa
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r2, r2, r0
	movs r5, #0
	str r5, [r2]
	movs r0, #7
	b _080060C4
	.align 2, 0
_08005EEC: .4byte gUnknown_02012710
_08005EF0: .4byte gUnknown_020126E4
_08005EF4:
	cmp r3, #0x67
	bne _08005F38
	ldr r3, _08005F30 @ =gUnknown_02012710
	ldr r4, _08005F34 @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r6, r2, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r1, r3, #4
	adds r1, r2, r1
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #8
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r2, r2, r0
	movs r5, #0
	str r5, [r2]
	movs r0, #5
	b _080060C4
	.align 2, 0
_08005F30: .4byte gUnknown_02012710
_08005F34: .4byte gUnknown_020126E4
_08005F38:
	cmp r3, #0x68
	bne _08005F7C
	ldr r3, _08005F74 @ =gUnknown_02012710
	ldr r4, _08005F78 @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r6, r2, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r1, r3, #4
	adds r1, r2, r1
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #0xb
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r2, r2, r0
	movs r5, #0
	str r5, [r2]
	movs r0, #0xa
	b _080060C4
	.align 2, 0
_08005F74: .4byte gUnknown_02012710
_08005F78: .4byte gUnknown_020126E4
_08005F7C:
	cmp r3, #0x69
	bne _08005FC0
	ldr r3, _08005FB8 @ =gUnknown_02012710
	ldr r4, _08005FBC @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r6, r2, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r1, r3, #4
	adds r1, r2, r1
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #0xd
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r2, r2, r0
	movs r5, #0
	str r5, [r2]
	movs r0, #0xa
	b _080060C4
	.align 2, 0
_08005FB8: .4byte gUnknown_02012710
_08005FBC: .4byte gUnknown_020126E4
_08005FC0:
	cmp r3, #0x6a
	bne _08006004
	ldr r3, _08005FFC @ =gUnknown_02012710
	ldr r4, _08006000 @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r6, r2, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r1, r3, #4
	adds r1, r2, r1
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #0xe
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r2, r2, r0
	movs r5, #0
	str r5, [r2]
	movs r0, #0xa
	b _080060C4
	.align 2, 0
_08005FFC: .4byte gUnknown_02012710
_08006000: .4byte gUnknown_020126E4
_08006004:
	cmp r3, #0x6b
	bne _08006048
	ldr r3, _08006040 @ =gUnknown_02012710
	ldr r4, _08006044 @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r6, r2, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r1, r3, #4
	adds r1, r2, r1
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #0xc
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r2, r2, r0
	movs r5, #0
	str r5, [r2]
	movs r0, #0xa
	b _080060C4
	.align 2, 0
_08006040: .4byte gUnknown_02012710
_08006044: .4byte gUnknown_020126E4
_08006048:
	cmp r3, #0x6d
	bne _0800608C
	ldr r3, _08006084 @ =gUnknown_02012710
	ldr r4, _08006088 @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r6, r2, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r1, r3, #4
	adds r1, r2, r1
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #0xf
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r2, r2, r0
	movs r5, #0
	str r5, [r2]
	movs r0, #0xa
	b _080060C4
	.align 2, 0
_08006084: .4byte gUnknown_02012710
_08006088: .4byte gUnknown_020126E4
_0800608C:
	cmp r3, #0x6c
	bne _080060F4
	ldr r3, _080060EC @ =gUnknown_02012710
	ldr r4, _080060F0 @ =gUnknown_020126E4
	ldr r0, [r4]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r6, r2, r3
	lsls r0, r7, #4
	str r0, [r6]
	adds r1, r3, #4
	adds r1, r2, r1
	mov r5, r8
	lsls r0, r5, #4
	adds r0, #0xf
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #6
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r2, r2, r0
	movs r5, #0
	str r5, [r2]
	movs r0, #8
_080060C4:
	strb r0, [r6, #0x12]
_080060C6:
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0, #0x10]
_080060D4:
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strb r5, [r0, #0x13]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	adds r4, r7, #1
	b _08006464
	.align 2, 0
_080060EC: .4byte gUnknown_02012710
_080060F0: .4byte gUnknown_020126E4
_080060F4:
	cmp r3, #0x43
	bne _0800610E
	lsls r0, r7, #4
	mov r2, r8
	lsls r1, r2, #4
	adds r1, #0xf
	movs r2, #0x12
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #0x20
	b _08006274
_0800610E:
	cmp r3, #0x41
	bne _0800612A
	lsls r0, r7, #4
	subs r0, #0x18
	mov r3, r8
	lsls r1, r3, #4
	adds r1, #0xf
	movs r2, #0x10
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #0x20
	b _08006274
_0800612A:
	cmp r3, #0x42
	bne _08006146
	lsls r0, r7, #4
	subs r0, #0x20
	mov r5, r8
	lsls r1, r5, #4
	adds r1, #0xf
	movs r2, #0x11
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #0x20
	b _08006274
_08006146:
	cmp r3, #0x40
	bne _08006162
	lsls r0, r7, #4
	adds r0, #6
	mov r2, r8
	lsls r1, r2, #4
	adds r1, #0x10
	movs r2, #9
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #0x20
	b _08006274
_08006162:
	cmp r3, #0x30
	bne _08006172
	lsls r0, r7, #4
	adds r0, #0xf
	mov r3, r8
	lsls r1, r3, #4
	movs r2, #0
	b _08006180
_08006172:
	cmp r3, #0x31
	bne _08006188
	lsls r0, r7, #4
	adds r0, #0xf
	mov r5, r8
	lsls r1, r5, #4
	movs r2, #2
_08006180:
	bl sub_800E0D8
	adds r4, r7, #1
	b _08006464
_08006188:
	cmp r3, #0x33
	bne _0800619C
	lsls r0, r7, #4
	adds r0, #0xf
	mov r2, r8
	lsls r1, r2, #4
	bl sub_800E114
	adds r4, r7, #1
	b _08006464
_0800619C:
	cmp r3, #0x34
	bne _080061B6
	lsls r0, r7, #4
	mov r3, r8
	lsls r1, r3, #4
	adds r1, #0xf
	movs r2, #6
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #0x20
	b _08006274
_080061B6:
	cmp r3, #0x35
	bne _080061E0
	adds r2, r7, #0
	mov r5, r8
	lsls r1, r5, #4
	lsls r5, r2, #4
	adds r4, r2, #1
	add r0, sb
	adds r0, r2, r0
_080061C8:
	adds r0, #1
	adds r2, #1
	ldrb r3, [r0]
	cmp r3, #0x36
	bne _080061C8
	adds r1, #0xf
	lsls r2, r2, #4
	adds r2, #0x10
	adds r0, r5, #0
	bl sub_800E14C
	b _08006464
_080061E0:
	cmp r3, #0x38
	bne _08006232
	mov r0, r8
	subs r0, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r7
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0x82
	beq _08006214
	cmp r0, #0x82
	bgt _08006202
	cmp r0, #0x80
	beq _0800620C
	b _0800621C
_08006202:
	cmp r0, #0x84
	beq _08006218
	cmp r0, #0x87
	beq _08006210
	b _0800621C
_0800620C:
	movs r3, #2
	b _0800621E
_08006210:
	movs r3, #6
	b _0800621E
_08006214:
	movs r3, #3
	b _0800621E
_08006218:
	movs r3, #1
	b _0800621E
_0800621C:
	movs r3, #0
_0800621E:
	lsls r0, r7, #4
	mov r2, r8
	lsls r1, r2, #4
	adds r1, #0xf
	movs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	movs r2, #2
	movs r3, #0x38
	b _08006274
_08006232:
	cmp r3, #0x39
	bne _0800624C
	lsls r0, r7, #4
	mov r3, r8
	lsls r1, r3, #4
	adds r1, #0xf
	movs r2, #0xc
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #8
	movs r3, #0x20
	b _08006274
_0800624C:
	cmp r3, #0x3a
	bne _0800625C
	lsls r0, r7, #4
	mov r5, r8
	lsls r1, r5, #4
	adds r1, #0xf
	movs r2, #0xd
	b _0800626A
_0800625C:
	cmp r3, #0x3b
	bne _0800627C
	lsls r0, r7, #4
	mov r2, r8
	lsls r1, r2, #4
	adds r1, #0xf
	movs r2, #0xe
_0800626A:
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #8
	movs r3, #0
_08006274:
	bl sub_800D01C
	adds r4, r7, #1
	b _08006464
_0800627C:
	cmp r3, #0x80
	bne _0800629E
	ldr r3, [sp, #0xc]
	mov r0, sl
	muls r0, r3, r0
	adds r0, r0, r7
	add r0, sb
	ldrb r0, [r0]
	adds r4, r7, #1
	cmp r0, #0x38
	bne _08006294
	b _08006464
_08006294:
	lsls r0, r7, #4
	mov r5, r8
	lsls r1, r5, #4
	movs r2, #2
	b _08006386
_0800629E:
	cmp r3, #0x87
	bne _080062C0
	ldr r1, [sp, #0xc]
	mov r0, sl
	muls r0, r1, r0
	adds r0, r0, r7
	add r0, sb
	ldrb r0, [r0]
	adds r4, r7, #1
	cmp r0, #0x38
	bne _080062B6
	b _08006464
_080062B6:
	lsls r0, r7, #4
	mov r2, r8
	lsls r1, r2, #4
	movs r2, #6
	b _08006386
_080062C0:
	cmp r3, #0x81
	bne _08006338
	ldr r0, _080062DC @ =gUnknown_02000AD0
	ldr r1, [r0]
	adds r3, r0, #0
	adds r4, r7, #1
	cmp r1, #0xa
	bls _080062D2
	b _08006464
_080062D2:
	lsls r0, r1, #2
	ldr r1, _080062E0 @ =_080062E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080062DC: .4byte gUnknown_02000AD0
_080062E0: .4byte _080062E4
_080062E4: @ jump table
	.4byte _08006310 @ case 0
	.4byte _08006310 @ case 1
	.4byte _08006310 @ case 2
	.4byte _08006464 @ case 3
	.4byte _0800631C @ case 4
	.4byte _0800631C @ case 5
	.4byte _0800631C @ case 6
	.4byte _08006464 @ case 7
	.4byte _0800632A @ case 8
	.4byte _0800632A @ case 9
	.4byte _0800632A @ case 10
_08006310:
	lsls r0, r7, #4
	mov r5, r8
	lsls r1, r5, #4
	ldr r3, [r3]
	movs r2, #0xa
	b _08006448
_0800631C:
	lsls r0, r7, #4
	mov r2, r8
	lsls r1, r2, #4
	ldr r3, [r3]
	subs r3, #1
	movs r2, #0xa
	b _08006448
_0800632A:
	lsls r0, r7, #4
	mov r5, r8
	lsls r1, r5, #4
	ldr r3, [r3]
	subs r3, #2
	movs r2, #0xa
	b _08006448
_08006338:
	cmp r3, #0x82
	bne _0800635A
	ldr r1, [sp, #0xc]
	mov r0, sl
	muls r0, r1, r0
	adds r0, r0, r7
	add r0, sb
	ldrb r0, [r0]
	adds r4, r7, #1
	cmp r0, #0x38
	bne _08006350
	b _08006464
_08006350:
	lsls r0, r7, #4
	mov r2, r8
	lsls r1, r2, #4
	movs r2, #3
	b _08006386
_0800635A:
	cmp r3, #0x83
	bne _08006368
	lsls r0, r7, #4
	mov r3, r8
	lsls r1, r3, #4
	movs r2, #4
	b _08006446
_08006368:
	cmp r3, #0x84
	bne _0800638E
	ldr r5, [sp, #0xc]
	mov r0, sl
	muls r0, r5, r0
	adds r0, r0, r7
	add r0, sb
	ldrb r0, [r0]
	adds r4, r7, #1
	cmp r0, #0x38
	beq _08006464
	lsls r0, r7, #4
	mov r2, r8
	lsls r1, r2, #4
	movs r2, #1
_08006386:
	movs r3, #0
	bl sub_80091B4
	b _08006464
_0800638E:
	cmp r3, #0x85
	bne _08006450
	ldr r0, _080063A8 @ =gUnknown_02000AD0
	ldr r0, [r0]
	adds r4, r7, #1
	cmp r0, #0xa
	bhi _08006464
	lsls r0, r0, #2
	ldr r1, _080063AC @ =_080063B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080063A8: .4byte gUnknown_02000AD0
_080063AC: .4byte _080063B0
_080063B0: @ jump table
	.4byte _080063DC @ case 0
	.4byte _080063E8 @ case 1
	.4byte _080063F4 @ case 2
	.4byte _08006464 @ case 3
	.4byte _08006400 @ case 4
	.4byte _0800640C @ case 5
	.4byte _08006418 @ case 6
	.4byte _08006464 @ case 7
	.4byte _08006424 @ case 8
	.4byte _08006430 @ case 9
	.4byte _0800643C @ case 10
_080063DC:
	lsls r0, r7, #4
	mov r3, r8
	lsls r1, r3, #4
	adds r1, #0xf
	movs r2, #0x19
	b _08006446
_080063E8:
	lsls r0, r7, #4
	mov r5, r8
	lsls r1, r5, #4
	adds r1, #0xf
	movs r2, #0x15
	b _08006446
_080063F4:
	lsls r0, r7, #4
	mov r2, r8
	lsls r1, r2, #4
	adds r1, #0xf
	movs r2, #0x1c
	b _08006446
_08006400:
	lsls r0, r7, #4
	mov r3, r8
	lsls r1, r3, #4
	adds r1, #0xf
	movs r2, #0x14
	b _08006446
_0800640C:
	lsls r0, r7, #4
	mov r5, r8
	lsls r1, r5, #4
	adds r1, #0xf
	movs r2, #0x18
	b _08006446
_08006418:
	lsls r0, r7, #4
	mov r2, r8
	lsls r1, r2, #4
	adds r1, #0xf
	movs r2, #0x17
	b _08006446
_08006424:
	lsls r0, r7, #4
	mov r3, r8
	lsls r1, r3, #4
	adds r1, #0xf
	movs r2, #0x16
	b _08006446
_08006430:
	lsls r0, r7, #4
	mov r5, r8
	lsls r1, r5, #4
	adds r1, #0xf
	movs r2, #0x1b
	b _08006446
_0800643C:
	lsls r0, r7, #4
	mov r2, r8
	lsls r1, r2, #4
	adds r1, #0xf
	movs r2, #0x1a
_08006446:
	movs r3, #0
_08006448:
	bl sub_80091B4
	adds r4, r7, #1
	b _08006464
_08006450:
	adds r4, r7, #1
	cmp r3, #0x86
	bne _08006464
	lsls r0, r7, #4
	mov r3, r8
	lsls r1, r3, #4
	movs r2, #5
	movs r3, #0
	bl sub_80091B4
_08006464:
	adds r7, r4, #0
	cmp r7, sl
	bhs _0800646C
	b _08005CCE
_0800646C:
	ldr r5, [sp, #0xc]
	mov r8, r5
	ldr r0, [sp, #8]
	cmp r8, r0
	bhs _08006478
	b _08005CC0
_08006478:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8006488
sub_8006488: @ 0x08006488
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	bl sub_800A600
	cmp r0, #4
	bhi _08006542
	movs r3, #0
	ldr r0, _08006528 @ =gUnknown_020126E4
	ldr r1, [r0]
	mov ip, r0
	cmp r3, r1
	bhs _08006542
	ldr r0, _0800652C @ =gUnknown_02012710
	adds r7, r0, #0
	adds r7, #0xc
	adds r4, r0, #0
_080064AC:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08006534
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _08006534
	adds r0, r6, #0
	subs r0, #0x40
	ldr r2, [r4]
	cmp r2, r0
	blt _08006534
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	cmp r2, r0
	bgt _08006534
	adds r0, r5, #0
	subs r0, #0x40
	ldr r1, [r4, #4]
	cmp r1, r0
	blt _08006534
	adds r0, r5, #0
	adds r0, #0xe0
	cmp r1, r0
	bgt _08006534
	cmp r2, r6
	blt _080064F6
	adds r0, r6, #0
	adds r0, #0xef
	cmp r2, r0
	bgt _080064F6
	cmp r1, r5
	blt _080064F6
	adds r0, r5, #0
	adds r0, #0x9f
	cmp r1, r0
	ble _08006534
_080064F6:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldrb r3, [r4, #0x12]
	ldr r2, [r4, #8]
	str r2, [sp]
	movs r2, #0
	bl sub_8009C44
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08006542
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #6
	ldr r1, _08006530 @ =gUnknown_020146E0
	adds r0, r0, r1
	str r0, [r7]
	movs r0, #1
	strb r0, [r4, #0x13]
	b _08006542
	.align 2, 0
_08006528: .4byte gUnknown_020126E4
_0800652C: .4byte gUnknown_02012710
_08006530: .4byte gUnknown_020146E0
_08006534:
	adds r7, #0x14
	adds r4, #0x14
	adds r3, #1
	mov r1, ip
	ldr r0, [r1]
	cmp r3, r0
	blo _080064AC
_08006542:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800654C
sub_800654C: @ 0x0800654C
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0800657C @ =gUnknown_02012710
	adds r1, r0, #0
	adds r1, #0xc
	movs r4, #0
	movs r2, #0x7f
_0800655A:
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0800656E
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _0800656E
	ldr r0, [r1]
	cmp r0, r3
	bne _0800656E
	strb r4, [r1, #7]
_0800656E:
	adds r1, #0x14
	subs r2, #1
	cmp r2, #0
	bge _0800655A
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800657C: .4byte gUnknown_02012710

	thumb_func_start sub_8006580
sub_8006580: @ 0x08006580
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080065BC @ =gUnknown_02012688
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	ldr r0, _080065C0 @ =gUnknown_02012710
	movs r3, #0
	adds r1, r0, #0
	adds r1, #0xc
	movs r2, #0x7f
_08006596:
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _080065AC
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _080065AC
	ldr r0, [r1]
	cmp r0, r4
	bne _080065AC
	strb r3, [r1, #7]
	strb r3, [r1, #4]
_080065AC:
	adds r1, #0x14
	subs r2, #1
	cmp r2, #0
	bge _08006596
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080065BC: .4byte gUnknown_02012688
_080065C0: .4byte gUnknown_02012710

	thumb_func_start sub_80065C4
sub_80065C4: @ 0x080065C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	str r1, [sp]
	lsrs r2, r2, #3
	str r2, [sp, #4]
	movs r0, #4
	bl IdentifyEeprom
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r5, #0
	bne _080066C8
	bl sub_8003A8C
	movs r0, #0x3c
	bl sub_8001CD0
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _08006634 @ =0x04000208
	strh r5, [r0]
	ldr r0, _08006638 @ =0x040000C4
	strh r5, [r0]
	adds r0, #0xc
	strh r5, [r0]
	adds r0, #0x30
	strh r5, [r0]
	adds r0, #4
	strh r5, [r0]
	ldr r1, _0800663C @ =gUnknown_02011954
	movs r0, #2
	bl SetEepromTimerIntr
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0
	mov sb, r0
	ldr r3, [sp]
	lsrs r3, r3, #3
	mov sl, r3
	cmp sb, sl
	bhs _0800669A
	movs r2, #0
	ldr r0, [sp, #4]
	lsls r7, r0, #0x10
_0800662E:
	movs r4, #0
	adds r6, r7, #0
	b _08006642
	.align 2, 0
_08006634: .4byte 0x04000208
_08006638: .4byte 0x040000C4
_0800663C: .4byte gUnknown_02011954
_08006640:
	adds r4, #1
_08006642:
	ldr r3, _08006664 @ =0x000003FF
	cmp r4, r3
	bhi _0800665E
	lsrs r0, r6, #0x10
	mov r3, r8
	adds r1, r3, r2
	str r2, [sp, #8]
	bl ProgramEepromDword
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, [sp, #8]
	cmp r5, #0
	bne _08006640
_0800665E:
	movs r4, #0
	adds r6, r7, #0
	b _0800666A
	.align 2, 0
_08006664: .4byte 0x000003FF
_08006668:
	adds r4, #1
_0800666A:
	ldr r0, _080066D8 @ =0x000003FF
	cmp r4, r0
	bhi _08006686
	lsrs r0, r6, #0x10
	mov r3, r8
	adds r1, r3, r2
	str r2, [sp, #8]
	bl VerifyEepromDword
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, [sp, #8]
	cmp r5, #0
	bne _08006668
_08006686:
	cmp r5, #0
	bne _080066B6
	adds r2, #8
	movs r0, #0x80
	lsls r0, r0, #9
	adds r7, r7, r0
	movs r3, #1
	add sb, r3
	cmp sb, sl
	blo _0800662E
_0800669A:
	cmp r5, #0
	bne _080066B6
	ldr r1, _080066DC @ =gUnknown_02013140
	ldr r0, [sp, #4]
	adds r1, r0, r1
	ldr r3, [sp]
	lsls r2, r3, #9
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, r8
	bl CpuSet
_080066B6:
	ldr r0, _080066E0 @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	bl m4aSoundInit
	ldr r0, _080066E4 @ =0x00930800
	bl m4aSoundMode
	adds r0, r5, #0
_080066C8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080066D8: .4byte 0x000003FF
_080066DC: .4byte gUnknown_02013140
_080066E0: .4byte 0x04000208
_080066E4: .4byte 0x00930800

	thumb_func_start sub_80066E8
sub_80066E8: @ 0x080066E8
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _08006704 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08006708 @ =gUnknown_02013140
	str r0, [r1, #4]
	ldr r0, _0800670C @ =0x85000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08006704: .4byte 0x040000D4
_08006708: .4byte gUnknown_02013140
_0800670C: .4byte 0x85000080

	thumb_func_start sub_8006710
sub_8006710: @ 0x08006710
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	movs r7, #0
	ldr r0, _08006760 @ =gUnknown_02013130
	ldr r0, [r0]
	cmp r0, #0
	bne _080067B2
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _08006764 @ =0x04000208
	strh r7, [r0]
	ldr r0, _08006768 @ =0x040000C4
	strh r7, [r0]
	adds r0, #0xc
	strh r7, [r0]
	adds r0, #0x30
	strh r7, [r0]
	adds r0, #4
	strh r7, [r0]
	movs r0, #4
	bl IdentifyEeprom
	ldr r1, _0800676C @ =gUnknown_02011954
	movs r0, #2
	bl SetEepromTimerIntr
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r4, #0
_0800675A:
	movs r5, #0
	adds r6, r4, #1
	b _08006772
	.align 2, 0
_08006760: .4byte gUnknown_02013130
_08006764: .4byte 0x04000208
_08006768: .4byte 0x040000C4
_0800676C: .4byte gUnknown_02011954
_08006770:
	adds r5, #1
_08006772:
	ldr r0, _080067D8 @ =0x000003FF
	cmp r5, r0
	bhi _0800678E
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r4, #3
	ldr r2, _080067DC @ =gUnknown_02013140
	adds r1, r1, r2
	bl ReadEepromDword
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	bne _08006770
_0800678E:
	adds r4, r6, #0
	cmp r4, #0x3f
	bls _0800675A
	ldr r0, _080067E0 @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	bl m4aSoundInit
	ldr r0, _080067E4 @ =0x00930800
	bl m4aSoundMode
	cmp r7, #0
	beq _080067AC
	bl sub_80066E8
_080067AC:
	ldr r1, _080067E8 @ =gUnknown_02013130
	movs r0, #1
	str r0, [r1]
_080067B2:
	ldr r0, _080067DC @ =gUnknown_02013140
	add r0, r8
	mov r1, sb
	lsls r2, r1, #9
	lsrs r2, r2, #0xb
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r2, r1
	mov r1, sl
	bl CpuSet
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080067D8: .4byte 0x000003FF
_080067DC: .4byte gUnknown_02013140
_080067E0: .4byte 0x04000208
_080067E4: .4byte 0x00930800
_080067E8: .4byte gUnknown_02013130

	thumb_func_start sub_80067EC
sub_80067EC: @ 0x080067EC
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _080067FA
	b _08006D54
_080067FA:
	lsls r0, r0, #2
	ldr r1, _08006804 @ =_08006808
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006804: .4byte _08006808
_08006808: @ jump table
	.4byte _08006848 @ case 0
	.4byte _0800689C @ case 1
	.4byte _080068F0 @ case 2
	.4byte _08006944 @ case 3
	.4byte _08006998 @ case 4
	.4byte _080069EC @ case 5
	.4byte _08006A40 @ case 6
	.4byte _08006A94 @ case 7
	.4byte _08006AE8 @ case 8
	.4byte _08006CE0 @ case 9
	.4byte _08006B3C @ case 10
	.4byte _08006B90 @ case 11
	.4byte _08006BE4 @ case 12
	.4byte _08006C38 @ case 13
	.4byte _08006C8C @ case 14
	.4byte _08006CE0 @ case 15
_08006848:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0800687C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08006880 @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _08006884 @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006888 @ =gUnknown_08040468
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _0800688C @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006890 @ =gUnknown_08040B64
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08006894 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006898 @ =gUnknown_08040964
	b _08006D12
	.align 2, 0
_0800687C: .4byte 0x040000D4
_08006880: .4byte 0x06004000
_08006884: .4byte 0x85002000
_08006888: .4byte gUnknown_08040468
_0800688C: .4byte 0x84000400
_08006890: .4byte gUnknown_08040B64
_08006894: .4byte 0x84002000
_08006898: .4byte gUnknown_08040964
_0800689C:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080068D0 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _080068D4 @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _080068D8 @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080068DC @ =gUnknown_08041C44
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _080068E0 @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080068E4 @ =gUnknown_08042340
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _080068E8 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080068EC @ =gUnknown_08042140
	b _08006D12
	.align 2, 0
_080068D0: .4byte 0x040000D4
_080068D4: .4byte 0x06004000
_080068D8: .4byte 0x85002000
_080068DC: .4byte gUnknown_08041C44
_080068E0: .4byte 0x84000400
_080068E4: .4byte gUnknown_08042340
_080068E8: .4byte 0x84002000
_080068EC: .4byte gUnknown_08042140
_080068F0:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08006924 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08006928 @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _0800692C @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006930 @ =gUnknown_080440C0
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006934 @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006938 @ =gUnknown_080447BC
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _0800693C @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006940 @ =gUnknown_080445BC
	b _08006D12
	.align 2, 0
_08006924: .4byte 0x040000D4
_08006928: .4byte 0x06004000
_0800692C: .4byte 0x85002000
_08006930: .4byte gUnknown_080440C0
_08006934: .4byte 0x84000400
_08006938: .4byte gUnknown_080447BC
_0800693C: .4byte 0x84002000
_08006940: .4byte gUnknown_080445BC
_08006944:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08006978 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _0800697C @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _08006980 @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006984 @ =gUnknown_08045B3C
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006988 @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800698C @ =gUnknown_08046238
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08006990 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006994 @ =gUnknown_08046038
	b _08006D12
	.align 2, 0
_08006978: .4byte 0x040000D4
_0800697C: .4byte 0x06004000
_08006980: .4byte 0x85002000
_08006984: .4byte gUnknown_08045B3C
_08006988: .4byte 0x84000400
_0800698C: .4byte gUnknown_08046238
_08006990: .4byte 0x84002000
_08006994: .4byte gUnknown_08046038
_08006998:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080069CC @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _080069D0 @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _080069D4 @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080069D8 @ =gUnknown_08047B58
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _080069DC @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080069E0 @ =gUnknown_08048254
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _080069E4 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080069E8 @ =gUnknown_08048054
	b _08006D12
	.align 2, 0
_080069CC: .4byte 0x040000D4
_080069D0: .4byte 0x06004000
_080069D4: .4byte 0x85002000
_080069D8: .4byte gUnknown_08047B58
_080069DC: .4byte 0x84000400
_080069E0: .4byte gUnknown_08048254
_080069E4: .4byte 0x84002000
_080069E8: .4byte gUnknown_08048054
_080069EC:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08006A20 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08006A24 @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _08006A28 @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006A2C @ =gUnknown_0804B0B4
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006A30 @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006A34 @ =gUnknown_0804B7B0
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08006A38 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006A3C @ =gUnknown_0804B5B0
	b _08006D12
	.align 2, 0
_08006A20: .4byte 0x040000D4
_08006A24: .4byte 0x06004000
_08006A28: .4byte 0x85002000
_08006A2C: .4byte gUnknown_0804B0B4
_08006A30: .4byte 0x84000400
_08006A34: .4byte gUnknown_0804B7B0
_08006A38: .4byte 0x84002000
_08006A3C: .4byte gUnknown_0804B5B0
_08006A40:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08006A74 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08006A78 @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _08006A7C @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006A80 @ =gUnknown_0804CF10
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006A84 @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006A88 @ =gUnknown_0804D60C
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08006A8C @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006A90 @ =gUnknown_0804D40C
	b _08006D12
	.align 2, 0
_08006A74: .4byte 0x040000D4
_08006A78: .4byte 0x06004000
_08006A7C: .4byte 0x85002000
_08006A80: .4byte gUnknown_0804CF10
_08006A84: .4byte 0x84000400
_08006A88: .4byte gUnknown_0804D60C
_08006A8C: .4byte 0x84002000
_08006A90: .4byte gUnknown_0804D40C
_08006A94:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08006AC8 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08006ACC @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _08006AD0 @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006AD4 @ =gUnknown_0805096C
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006AD8 @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006ADC @ =gUnknown_08051068
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08006AE0 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006AE4 @ =gUnknown_08050E68
	b _08006D12
	.align 2, 0
_08006AC8: .4byte 0x040000D4
_08006ACC: .4byte 0x06004000
_08006AD0: .4byte 0x85002000
_08006AD4: .4byte gUnknown_0805096C
_08006AD8: .4byte 0x84000400
_08006ADC: .4byte gUnknown_08051068
_08006AE0: .4byte 0x84002000
_08006AE4: .4byte gUnknown_08050E68
_08006AE8:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08006B1C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08006B20 @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _08006B24 @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006B28 @ =gUnknown_08054328
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006B2C @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006B30 @ =gUnknown_08054A24
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08006B34 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006B38 @ =gUnknown_08054824
	b _08006D12
	.align 2, 0
_08006B1C: .4byte 0x040000D4
_08006B20: .4byte 0x06004000
_08006B24: .4byte 0x85002000
_08006B28: .4byte gUnknown_08054328
_08006B2C: .4byte 0x84000400
_08006B30: .4byte gUnknown_08054A24
_08006B34: .4byte 0x84002000
_08006B38: .4byte gUnknown_08054824
_08006B3C:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08006B70 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08006B74 @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _08006B78 @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006B7C @ =gUnknown_0803487C
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006B80 @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006B84 @ =gUnknown_08034F78
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08006B88 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006B8C @ =gUnknown_08034D78
	b _08006D12
	.align 2, 0
_08006B70: .4byte 0x040000D4
_08006B74: .4byte 0x06004000
_08006B78: .4byte 0x85002000
_08006B7C: .4byte gUnknown_0803487C
_08006B80: .4byte 0x84000400
_08006B84: .4byte gUnknown_08034F78
_08006B88: .4byte 0x84002000
_08006B8C: .4byte gUnknown_08034D78
_08006B90:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08006BC4 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08006BC8 @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _08006BCC @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006BD0 @ =gUnknown_08036C78
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006BD4 @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006BD8 @ =gUnknown_08037374
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08006BDC @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006BE0 @ =gUnknown_08037174
	b _08006D12
	.align 2, 0
_08006BC4: .4byte 0x040000D4
_08006BC8: .4byte 0x06004000
_08006BCC: .4byte 0x85002000
_08006BD0: .4byte gUnknown_08036C78
_08006BD4: .4byte 0x84000400
_08006BD8: .4byte gUnknown_08037374
_08006BDC: .4byte 0x84002000
_08006BE0: .4byte gUnknown_08037174
_08006BE4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08006C18 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08006C1C @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _08006C20 @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006C24 @ =gUnknown_080394B4
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006C28 @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006C2C @ =gUnknown_08039BB0
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08006C30 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006C34 @ =gUnknown_080399B0
	b _08006D12
	.align 2, 0
_08006C18: .4byte 0x040000D4
_08006C1C: .4byte 0x06004000
_08006C20: .4byte 0x85002000
_08006C24: .4byte gUnknown_080394B4
_08006C28: .4byte 0x84000400
_08006C2C: .4byte gUnknown_08039BB0
_08006C30: .4byte 0x84002000
_08006C34: .4byte gUnknown_080399B0
_08006C38:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08006C6C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08006C70 @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _08006C74 @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006C78 @ =gUnknown_0803B1F0
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006C7C @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006C80 @ =gUnknown_0803B8EC
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08006C84 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006C88 @ =gUnknown_0803B6EC
	b _08006D12
	.align 2, 0
_08006C6C: .4byte 0x040000D4
_08006C70: .4byte 0x06004000
_08006C74: .4byte 0x85002000
_08006C78: .4byte gUnknown_0803B1F0
_08006C7C: .4byte 0x84000400
_08006C80: .4byte gUnknown_0803B8EC
_08006C84: .4byte 0x84002000
_08006C88: .4byte gUnknown_0803B6EC
_08006C8C:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08006CC0 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08006CC4 @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _08006CC8 @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006CCC @ =gUnknown_0803DA6C
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006CD0 @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006CD4 @ =gUnknown_0803E168
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08006CD8 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006CDC @ =gUnknown_0803DF68
	b _08006D12
	.align 2, 0
_08006CC0: .4byte 0x040000D4
_08006CC4: .4byte 0x06004000
_08006CC8: .4byte 0x85002000
_08006CCC: .4byte gUnknown_0803DA6C
_08006CD0: .4byte 0x84000400
_08006CD4: .4byte gUnknown_0803E168
_08006CD8: .4byte 0x84002000
_08006CDC: .4byte gUnknown_0803DF68
_08006CE0:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08006D2C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08006D30 @ =0x06004000
	str r2, [r0, #4]
	ldr r1, _08006D34 @ =0x85002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006D38 @ =gUnknown_08031A20
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006D3C @ =0x84000400
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006D40 @ =gUnknown_0803211C
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08006D44 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08006D48 @ =gUnknown_08031F1C
_08006D12:
	str r1, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08006D4C @ =0x84000080
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08006D50 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	bl VBlankIntrWait
	b _08006D78
	.align 2, 0
_08006D2C: .4byte 0x040000D4
_08006D30: .4byte 0x06004000
_08006D34: .4byte 0x85002000
_08006D38: .4byte gUnknown_08031A20
_08006D3C: .4byte 0x84000400
_08006D40: .4byte gUnknown_0803211C
_08006D44: .4byte 0x84002000
_08006D48: .4byte gUnknown_08031F1C
_08006D4C: .4byte 0x84000080
_08006D50: .4byte gUnknown_02011994
_08006D54:
	movs r2, #0
	str r2, [sp]
	ldr r1, _08006D80 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08006D84 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _08006D88 @ =0x85002000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r2, [r0]
	ldr r1, _08006D8C @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	bl VBlankIntrWait
_08006D78:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08006D80: .4byte 0x040000D4
_08006D84: .4byte 0x06004000
_08006D88: .4byte 0x85002000
_08006D8C: .4byte gUnknown_02011994

	thumb_func_start sub_8006D90
sub_8006D90: @ 0x08006D90
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	lsls r0, r7, #0x18
	lsrs r6, r0, #0x18
	mov r1, sp
	adds r0, r6, #1
	movs r2, #0x30
	cmp r0, #9
	ble _08006DA6
	movs r2, #0x31
_08006DA6:
	movs r5, #0
	strb r2, [r1]
	mov r4, sp
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r4, #1]
	mov r0, sp
	strb r5, [r0, #2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #4
	strh r0, [r1]
	ldr r0, _08006DF0 @ =gUnknown_02011994
	movs r4, #1
	str r4, [r0]
	bl VBlankIntrWait
	cmp r7, #0
	bne _08006DE8
	adds r0, r4, #0
	lsls r0, r6
	ldr r1, _08006DF4 @ =gUnknown_02000AD4
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08006DF8
_08006DE8:
	adds r0, r6, #0
	bl sub_80067EC
	b _08006E04
	.align 2, 0
_08006DF0: .4byte gUnknown_02011994
_08006DF4: .4byte gUnknown_02000AD4
_08006DF8:
	adds r0, r6, #0
	adds r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80067EC
_08006E04:
	ldr r0, _08006E3C @ =0x04000010
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bl sub_8000B30
	movs r5, #0
	mov r4, sp
_08006E16:
	bl sub_8000A28
	cmp r7, #0
	bne _08006EBA
	ldr r0, _08006E40 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08006E5C
	bl sub_8000AC0
	cmp r6, #0
	beq _08006E44
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _08006E46
	.align 2, 0
_08006E3C: .4byte 0x04000010
_08006E40: .4byte gUnknown_020003E8
_08006E44:
	movs r6, #0xe
_08006E46:
	movs r0, #1
	lsls r0, r6
	ldr r1, _08006E58 @ =gUnknown_02000AD4
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08006E84
	b _08006E90
	.align 2, 0
_08006E58: .4byte gUnknown_02000AD4
_08006E5C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08006EBA
	bl sub_8000AC0
	cmp r6, #0xd
	bhi _08006E74
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _08006E76
_08006E74:
	movs r6, #0
_08006E76:
	movs r0, #1
	lsls r0, r6
	ldr r1, _08006E8C @ =gUnknown_02000AD4
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08006E90
_08006E84:
	adds r0, r6, #0
	bl sub_80067EC
	b _08006E9C
	.align 2, 0
_08006E8C: .4byte gUnknown_02000AD4
_08006E90:
	adds r0, r6, #0
	adds r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80067EC
_08006E9C:
	bl sub_8000B30
	mov r2, sp
	adds r0, r6, #1
	movs r1, #0x30
	cmp r0, #9
	ble _08006EAC
	movs r1, #0x31
_08006EAC:
	strb r1, [r2]
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r4, #1]
	strb r5, [r4, #2]
_08006EBA:
	ldr r0, _08006EF4 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08006F00
	movs r0, #1
	lsls r0, r6
	ldr r1, _08006EF8 @ =gUnknown_02000AD4
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08006EE0
	movs r0, #0xf
	movs r1, #0x4c
	movs r2, #0x78
	ldr r3, _08006EFC @ =gUnknown_08056B44
	bl DrawString
_08006EE0:
	movs r0, #0xf
	movs r1, #0xdc
	movs r2, #8
	mov r3, sp
	bl DrawString
	bl VBlankIntrWait
	b _08006E16
	.align 2, 0
_08006EF4: .4byte gUnknown_020003E8
_08006EF8: .4byte gUnknown_02000AD4
_08006EFC: .4byte gUnknown_08056B44
_08006F00:
	bl sub_8000AC0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8006F0C
sub_8006F0C: @ 0x08006F0C
	movs r0, #0
	bx lr

	thumb_func_start sub_8006F10
sub_8006F10: @ 0x08006F10
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	str r3, [r2, #0x1c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	bne _08006F3C
	adds r1, #0x2c
	movs r3, #0
	adds r0, r2, #0
	adds r0, #0x48
_08006F28:
	str r3, [r0]
	subs r0, #4
	cmp r0, r1
	bge _08006F28
	ldr r1, [r2, #0x14]
	str r1, [r2, #0x1c]
	ldr r0, [r2, #0x18]
	str r0, [r2, #0x14]
	str r1, [r2, #0x18]
	b _08006F5A
_08006F3C:
	cmp r3, #0
	beq _08006F5A
	adds r1, r2, #0
	adds r1, #0x2c
	movs r3, #0
	adds r0, r2, #0
	adds r0, #0x48
_08006F4A:
	str r3, [r0]
	subs r0, #4
	cmp r0, r1
	bge _08006F4A
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x1c]
	str r0, [r2, #0x14]
_08006F5A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8006F60
sub_8006F60: @ 0x08006F60
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	lsls r1, r1, #2
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r4, r2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	str r1, [r4, #0x1c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08006FA2
	adds r1, r4, #0
	adds r1, #0x2c
	movs r2, #0
	adds r0, r4, #0
	adds r0, #0x48
_08006F8E:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _08006F8E
	ldr r1, [r4, #0x14]
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x14]
	str r1, [r4, #0x18]
	b _08006FC0
_08006FA2:
	cmp r1, #0
	beq _08006FC0
	adds r1, r4, #0
	adds r1, #0x2c
	movs r2, #0
	adds r0, r4, #0
	adds r0, #0x48
_08006FB0:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _08006FB0
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x14]
_08006FC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8006FC8
sub_8006FC8: @ 0x08006FC8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r2, #0
	movs r2, #0
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	str r2, [r4]
	str r2, [r4, #4]
	str r1, [r4, #0x1c]
	adds r2, r1, #0
	muls r2, r3, r2
	str r2, [r4, #0x20]
	bl __udivsi3
	str r0, [r4, #0x18]
	movs r0, #1
	str r0, [r4, #0x24]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8006FF0
sub_8006FF0: @ 0x08006FF0
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start sub_8006FFC
sub_8006FFC: @ 0x08006FFC
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0]
	str r1, [r0, #0x10]
	str r1, [r0, #0xc]
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_800700C
sub_800700C: @ 0x0800700C
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, [r2, #8]
	ldr r0, [r2]
	ldr r1, [r2, #0x10]
	cmp r0, r1
	bge _08007020
	adds r0, r0, r4
	cmp r0, r1
	bgt _0800702E
_08007020:
	ldr r0, [r2]
	ldr r1, [r2, #0x10]
	cmp r0, r1
	ble _08007032
	subs r0, r0, r4
	cmp r0, r1
	bge _08007032
_0800702E:
	str r1, [r2]
	b _08007044
_08007032:
	ldr r0, [r2]
	cmp r1, r0
	ble _0800703C
	adds r0, r0, r4
	b _08007042
_0800703C:
	cmp r1, r0
	bge _08007044
	subs r0, r0, r4
_08007042:
	str r0, [r2]
_08007044:
	ldr r0, [r2]
	ldr r1, [r2, #0x18]
	subs r0, r0, r1
	str r0, [r2]
	ldr r4, [r2, #0xc]
	ldr r3, [r2, #4]
	ldr r1, [r2, #0x14]
	cmp r3, r1
	bge _0800705C
	adds r0, r3, r4
	cmp r0, r1
	bgt _08007066
_0800705C:
	cmp r3, r1
	ble _0800706A
	subs r0, r3, r4
	cmp r0, r1
	bge _0800706A
_08007066:
	str r1, [r2, #4]
	b _0800707C
_0800706A:
	adds r0, r3, #0
	cmp r1, r0
	ble _08007074
	adds r0, r0, r4
	b _0800707A
_08007074:
	cmp r1, r3
	bge _0800707C
	subs r0, r3, r4
_0800707A:
	str r0, [r2, #4]
_0800707C:
	ldr r0, [r2, #0x24]
	cmp r0, #1
	bhi _08007090
	ldr r1, [r2, #4]
	ldr r0, _08007098 @ =0xFFF90000
	cmp r1, r0
	ble _08007090
	ldr r0, [r2, #0x20]
	subs r0, r1, r0
	str r0, [r2, #4]
_08007090:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007098: .4byte 0xFFF90000

	thumb_func_start sub_800709C
sub_800709C: @ 0x0800709C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r1, r0, #0
	movs r2, #0
	str r2, [sp]
	adds r6, r1, #0
	ldr r1, _080070E0 @ =gUnknown_02013340
	ldr r1, [r1]
	cmp r1, #0
	beq _080070BC
	bl sub_08008296
_080070BC:
	ldr r3, [r6]
	mov r8, r3
	ldr r4, [r6, #4]
	mov sb, r4
	movs r7, #0x9d
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r0, [r0]
	cmp r0, #8
	bls _080070D4
	bl _08008278
_080070D4:
	lsls r0, r0, #2
	ldr r1, _080070E4 @ =_080070E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080070E0: .4byte gUnknown_02013340
_080070E4: .4byte _080070E8
_080070E8: @ jump table
	.4byte _080075FC @ case 0
	.4byte _0800710C @ case 1
	.4byte _08007558 @ case 2
	.4byte _0800828C @ case 3
	.4byte _08008278 @ case 4
	.4byte _08008278 @ case 5
	.4byte _08007A86 @ case 6
	.4byte _08007CCC @ case 7
	.4byte _08007DEE @ case 8
_0800710C:
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080071E6
	mov r2, sb
	subs r2, r2, r0
	mov sb, r2
	cmp r2, #0
	bge _08007126
	movs r3, #0
	mov sb, r3
_08007126:
	mov r4, r8
	asrs r5, r4, #0x10
	mov r7, sb
	asrs r7, r7, #0x10
	mov sl, r7
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4]
	subs r1, r7, r1
	adds r0, r5, #0
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	bne _0800717A
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	subs r0, r5, r0
	ldr r1, [r4]
	mov r2, sl
	subs r1, r2, r1
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	bne _0800717A
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	adds r0, r5, r0
	ldr r1, [r4]
	mov r4, sl
	subs r1, r4, r1
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	beq _0800718C
_0800717A:
	movs r0, #8
	ands r0, r7
	cmp r0, #0
	bne _0800718C
	movs r7, #0x95
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r0, [r0]
	add sb, r0
_0800718C:
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	add r8, r0
	cmp r0, #0
	bge _080071AA
	mov r2, r8
	asrs r0, r2, #0x10
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r1, [r1]
	subs r0, r0, r1
	b _080071B8
_080071AA:
	mov r4, r8
	asrs r0, r4, #0x10
	movs r7, #0x9e
	lsls r7, r7, #2
	adds r1, r6, r7
	ldr r1, [r1]
	adds r0, r0, r1
_080071B8:
	mov r2, sb
	asrs r1, r2, #0x10
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r2, r6, r3
	movs r3, #0
	bl sub_8003EE8
	cmp r0, #0
	beq _080071D0
	bl _0800828C
_080071D0:
	movs r4, #0x94
	lsls r4, r4, #2
	adds r0, r6, r4
	ldr r0, [r0]
	mov r7, r8
	subs r7, r7, r0
	mov r8, r7
	movs r0, #3
	str r0, [sp]
	bl _0800828C
_080071E6:
	movs r2, #6
	ldrsh r1, [r6, r2]
	ldr r0, _0800736C @ =gUnknown_02011B10
	ldr r0, [r0]
	lsls r0, r0, #4
	adds r0, #0x50
	cmp r1, r0
	bls _08007204
	ldr r0, [r6, #0x14]
	cmp r0, #0x3f
	beq _08007204
	movs r0, #0x3f
	adds r1, r6, #0
	bl sub_8006F10
_08007204:
	ldr r0, _08007370 @ =gUnknown_02000810
	cmp r6, r0
	bne _08007210
	ldr r1, _08007374 @ =gUnknown_020154A0
	movs r0, #0
	str r0, [r1]
_08007210:
	movs r3, #0x95
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	mov r4, sb
	subs r4, r4, r0
	mov sb, r4
	mov r7, r8
	asrs r4, r7, #0x10
	mov r0, sb
	asrs r5, r0, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	bne _08007260
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	adds r0, r4, r0
	adds r1, r5, #0
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	bne _08007260
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	subs r0, r4, r0
	adds r1, r5, #0
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	beq _0800728C
_08007260:
	movs r3, #0x95
	lsls r3, r3, #2
	adds r2, r6, r3
	ldr r0, [r2]
	add sb, r0
	movs r4, #0x97
	lsls r4, r4, #2
	adds r1, r6, r4
	movs r0, #0
	str r0, [r1]
	str r0, [r2]
	movs r7, #0x9d
	lsls r7, r7, #2
	adds r1, r6, r7
	str r0, [r1]
	movs r0, #5
	str r0, [sp]
	movs r0, #0xe0
	lsls r0, r0, #0xb
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_0800728C:
	ldr r0, _08007370 @ =gUnknown_02000810
	mov r2, sb
	asrs r2, r2, #0x10
	str r2, [sp, #0x20]
	cmp r6, r0
	beq _0800729A
	b _080074F8
_0800729A:
	ldr r1, _08007374 @ =gUnknown_020154A0
	movs r0, #1
	str r0, [r1]
	ldr r7, _08007378 @ =0xFFFF0000
	mov r3, sb
	ands r7, r3
	mov r0, r8
	adds r1, r7, #0
	bl sub_801A444
	adds r5, r0, #0
	movs r4, #1
	rsbs r4, r4, #0
	cmp r5, r4
	bne _080072EC
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	lsls r0, r0, #0x10
	add r0, r8
	adds r1, r7, #0
	bl sub_801A444
	adds r5, r0, #0
	cmp r5, r4
	bne _080072EC
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	lsls r0, r0, #0x10
	mov r3, r8
	subs r0, r3, r0
	adds r1, r7, #0
	bl sub_801A444
	adds r5, r0, #0
	cmp r5, r4
	bne _080072EC
	b _080074F8
_080072EC:
	ldr r4, _0800737C @ =gUnknown_020146E0
	lsls r2, r5, #1
	adds r0, r2, r5
	lsls r0, r0, #2
	subs r0, r0, r5
	lsls r3, r0, #6
	adds r0, r3, r4
	ldr r1, [r6]
	ldr r0, [r0]
	str r2, [sp, #0x1c]
	cmp r1, r0
	ble _08007306
	b _08007400
_08007306:
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r3, r0
	movs r1, #0
	str r1, [r0]
	ldr r0, _08007370 @ =gUnknown_02000810
	str r1, [r0, #0x20]
	mov r4, r8
	asrs r4, r4, #0x10
	mov sl, r4
	subs r4, #3
	str r4, [sp, #4]
	mov r7, sb
	asrs r4, r7, #0x10
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r7, r6, r0
	ldr r0, [sp, #4]
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_8003EE8
	str r4, [sp, #0x20]
	cmp r0, #0
	beq _08007384
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	adds r0, #3
	mov r2, sl
	subs r0, r2, r0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	beq _08007384
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	bl sub_8003CFC
	movs r1, #8
	rsbs r1, r1, #0
	cmp r0, r1
	ble _08007384
	ldr r3, _08007380 @ =0xFFFE0000
	add r8, r3
	b _080074E0
	.align 2, 0
_0800736C: .4byte gUnknown_02011B10
_08007370: .4byte gUnknown_02000810
_08007374: .4byte gUnknown_020154A0
_08007378: .4byte 0xFFFF0000
_0800737C: .4byte gUnknown_020146E0
_08007380: .4byte 0xFFFE0000
_08007384:
	ldr r3, _080073FC @ =gUnknown_020146E0
	ldr r4, [sp, #0x1c]
	adds r2, r4, r5
	lsls r2, r2, #2
	subs r2, r2, r5
	lsls r2, r2, #6
	adds r7, r2, r3
	mov sl, r7
	movs r1, #2
	ldrsh r0, [r7, r1]
	adds r0, #2
	adds r1, r3, #4
	adds r4, r2, r1
	movs r7, #2
	ldrsh r1, [r4, r7]
	movs r7, #0x9e
	lsls r7, r7, #2
	adds r3, r3, r7
	adds r7, r2, r3
	adds r2, r7, #0
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	bne _080073B8
	b _080074E0
_080073B8:
	mov r1, sl
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r1, [r7]
	adds r1, #2
	adds r0, r0, r1
	movs r3, #2
	ldrsh r1, [r4, r3]
	adds r2, r7, #0
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	bne _080073D6
	b _080074E0
_080073D6:
	mov r7, sl
	movs r1, #2
	ldrsh r0, [r7, r1]
	adds r0, #2
	movs r2, #2
	ldrsh r1, [r4, r2]
	bl sub_8003CFC
	movs r1, #8
	rsbs r1, r1, #0
	cmp r0, r1
	ble _080074E0
	ldr r0, [r7]
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r0, r3
	str r0, [r7]
	b _080074E0
	.align 2, 0
_080073FC: .4byte gUnknown_020146E0
_08007400:
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r3, r0
	movs r1, #0
	str r1, [r0]
	ldr r0, _08007460 @ =gUnknown_02000810
	str r1, [r0, #0x20]
	mov r7, r8
	asrs r7, r7, #0x10
	mov sl, r7
	adds r0, r7, #0
	adds r0, #3
	str r0, [sp, #8]
	mov r1, sb
	asrs r4, r1, #0x10
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r7, r6, r2
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_8003EE8
	str r4, [sp, #0x20]
	cmp r0, #0
	beq _08007464
	ldr r0, [r7]
	adds r0, #3
	add r0, sl
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	beq _08007464
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x20]
	bl sub_8003CFC
	movs r1, #8
	rsbs r1, r1, #0
	cmp r0, r1
	ble _08007464
	movs r3, #0x80
	lsls r3, r3, #0xa
	add r8, r3
	b _080074E0
	.align 2, 0
_08007460: .4byte gUnknown_02000810
_08007464:
	ldr r4, [sp, #0x1c]
	adds r0, r4, r5
	lsls r0, r0, #2
	subs r0, r0, r5
	lsls r7, r0, #6
	ldr r0, _08007518 @ =gUnknown_020146E0
	adds r4, r7, r0
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #2
	ldr r1, _08007518 @ =gUnknown_020146E0
	adds r1, #4
	adds r1, r1, r7
	mov sl, r1
	movs r2, #2
	ldrsh r1, [r1, r2]
	ldr r3, _08007518 @ =gUnknown_020146E0
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r3, r3, r2
	adds r3, r7, r3
	str r3, [sp, #0xc]
	adds r2, r3, #0
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	beq _080074E0
	movs r3, #2
	ldrsh r0, [r4, r3]
	ldr r2, _08007518 @ =gUnknown_020146E0
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r1, r2, r3
	adds r1, r7, r1
	ldr r1, [r1]
	adds r1, #2
	subs r0, r0, r1
	mov r7, sl
	movs r2, #2
	ldrsh r1, [r7, r2]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	beq _080074E0
	movs r3, #2
	ldrsh r0, [r4, r3]
	subs r0, #2
	movs r2, #2
	ldrsh r1, [r7, r2]
	bl sub_8003CFC
	movs r1, #8
	rsbs r1, r1, #0
	cmp r0, r1
	ble _080074E0
	ldr r0, [r4]
	ldr r3, _0800751C @ =0xFFFE0000
	adds r0, r0, r3
	str r0, [r4]
_080074E0:
	ldr r1, _08007518 @ =gUnknown_020146E0
	ldr r4, [sp, #0x1c]
	adds r0, r4, r5
	lsls r0, r0, #2
	subs r0, r0, r5
	lsls r0, r0, #6
	adds r1, #0x20
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	ldr r0, _08007520 @ =gUnknown_02000810
	str r1, [r0, #0x20]
_080074F8:
	movs r7, #0x94
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r0, [r0]
	add r8, r0
	cmp r0, #0
	bge _08007524
	mov r1, r8
	asrs r0, r1, #0x10
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r1, [r1]
	subs r0, r0, r1
	b _08007532
	.align 2, 0
_08007518: .4byte gUnknown_020146E0
_0800751C: .4byte 0xFFFE0000
_08007520: .4byte gUnknown_02000810
_08007524:
	mov r3, r8
	asrs r0, r3, #0x10
	movs r4, #0x9e
	lsls r4, r4, #2
	adds r1, r6, r4
	ldr r1, [r1]
	adds r0, r0, r1
_08007532:
	movs r7, #0x9e
	lsls r7, r7, #2
	adds r2, r6, r7
	ldr r1, [sp, #0x20]
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	beq _08007548
	bl _0800828C
_08007548:
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	mov r2, r8
	subs r2, r2, r0
	mov r8, r2
	b _08007C9A
_08007558:
	movs r7, #0x94
	lsls r7, r7, #2
	adds r4, r6, r7
	ldr r0, [r4]
	cmp r0, #0
	ble _08007594
	add r0, r8
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	bne _08007586
	ldr r0, [r4]
	add r8, r0
	b _0800758A
_08007586:
	movs r0, #0
	str r0, [r4]
_0800758A:
	cmp r7, #0
	beq _080075C2
	movs r4, #3
	str r4, [sp]
	b _080075C2
_08007594:
	add r0, r8
	movs r7, #0x9e
	lsls r7, r7, #2
	adds r1, r6, r7
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	bne _080075B6
	ldr r0, [r4]
	add r8, r0
	b _080075BA
_080075B6:
	movs r0, #0
	str r0, [r4]
_080075BA:
	cmp r7, #0
	beq _080075C2
	movs r3, #3
	str r3, [sp]
_080075C2:
	mov r4, r8
	asrs r0, r4, #0x10
	movs r7, #0x95
	lsls r7, r7, #2
	adds r4, r6, r7
	ldr r1, [r4]
	mov r2, sb
	subs r1, r2, r1
	asrs r1, r1, #0x10
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	bne _080075E8
	ldr r0, [r4]
	mov r3, sb
	subs r3, r3, r0
	mov sb, r3
	b _080075EC
_080075E8:
	movs r0, #0
	str r0, [r4]
_080075EC:
	cmp r7, #0
	bne _080075F4
	bl _0800828C
_080075F4:
	movs r4, #5
	str r4, [sp]
	bl _0800828C
_080075FC:
	ldr r0, _08007708 @ =gUnknown_02000810
	mov r7, sb
	asrs r7, r7, #0x10
	str r7, [sp, #0x20]
	cmp r6, r0
	beq _0800760A
	b _08007894
_0800760A:
	ldr r0, [r6, #0x14]
	cmp r0, #0x3f
	beq _08007634
	movs r1, #2
	ldrsh r0, [r6, r1]
	movs r2, #6
	ldrsh r1, [r6, r2]
	adds r1, #1
	bl sub_8003B78
	adds r7, r0, #0
	movs r0, #9
	ands r0, r7
	cmp r0, #1
	bne _08007634
	ldr r1, _0800770C @ =gUnknown_020003EC
	ldr r0, [r6]
	str r0, [r1]
	ldr r1, _08007710 @ =gUnknown_020003F4
	ldr r0, [r6, #4]
	str r0, [r1]
_08007634:
	ldr r4, _08007714 @ =0xFFFF0000
	mov r3, sb
	ands r4, r3
	mov r0, r8
	adds r1, r4, #0
	bl sub_801A444
	adds r5, r0, #0
	movs r7, #1
	rsbs r7, r7, #0
	cmp r5, r7
	bne _08007686
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	lsls r0, r0, #0x10
	add r0, r8
	adds r1, r4, #0
	bl sub_801A444
	adds r5, r0, #0
	cmp r5, r7
	bne _08007686
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	lsls r0, r0, #0x10
	mov r3, r8
	subs r0, r3, r0
	adds r1, r4, #0
	bl sub_801A444
	adds r5, r0, #0
	mov r4, sb
	asrs r4, r4, #0x10
	str r4, [sp, #0x20]
	cmp r5, r7
	bne _08007686
	b _08007894
_08007686:
	ldr r4, _08007718 @ =gUnknown_020146E0
	lsls r2, r5, #1
	adds r0, r2, r5
	lsls r0, r0, #2
	subs r0, r0, r5
	lsls r3, r0, #6
	adds r0, r3, r4
	ldr r1, [r6]
	ldr r0, [r0]
	str r2, [sp, #0x1c]
	cmp r1, r0
	ble _080076A0
	b _0800779C
_080076A0:
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r3, r0
	movs r1, #0
	str r1, [r0]
	ldr r0, _08007708 @ =gUnknown_02000810
	str r1, [r0, #0x20]
	mov r7, r8
	asrs r7, r7, #0x10
	mov sl, r7
	adds r0, r7, #0
	subs r0, #3
	str r0, [sp, #0x10]
	mov r1, sb
	asrs r4, r1, #0x10
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r7, r6, r2
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_8003EE8
	str r4, [sp, #0x20]
	cmp r0, #0
	beq _08007720
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	adds r0, #3
	mov r4, sl
	subs r0, r4, r0
	ldr r1, [sp, #0x20]
	adds r2, r7, #0
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	beq _08007720
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	bl sub_8003CFC
	movs r1, #8
	rsbs r1, r1, #0
	cmp r0, r1
	ble _08007720
	ldr r7, _0800771C @ =0xFFFE0000
	add r8, r7
	b _0800787C
	.align 2, 0
_08007708: .4byte gUnknown_02000810
_0800770C: .4byte gUnknown_020003EC
_08007710: .4byte gUnknown_020003F4
_08007714: .4byte 0xFFFF0000
_08007718: .4byte gUnknown_020146E0
_0800771C: .4byte 0xFFFE0000
_08007720:
	ldr r3, _08007798 @ =gUnknown_020146E0
	ldr r0, [sp, #0x1c]
	adds r2, r0, r5
	lsls r2, r2, #2
	subs r2, r2, r5
	lsls r2, r2, #6
	adds r1, r2, r3
	mov sl, r1
	movs r4, #2
	ldrsh r0, [r1, r4]
	adds r0, #2
	adds r1, r3, #4
	adds r4, r2, r1
	movs r7, #2
	ldrsh r1, [r4, r7]
	movs r7, #0x9e
	lsls r7, r7, #2
	adds r3, r3, r7
	adds r7, r2, r3
	adds r2, r7, #0
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	bne _08007754
	b _0800787C
_08007754:
	mov r1, sl
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r1, [r7]
	adds r1, #2
	adds r0, r0, r1
	movs r3, #2
	ldrsh r1, [r4, r3]
	adds r2, r7, #0
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	bne _08007772
	b _0800787C
_08007772:
	mov r7, sl
	movs r1, #2
	ldrsh r0, [r7, r1]
	adds r0, #2
	movs r2, #2
	ldrsh r1, [r4, r2]
	bl sub_8003CFC
	movs r1, #8
	rsbs r1, r1, #0
	cmp r0, r1
	ble _0800787C
	ldr r0, [r7]
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r0, r3
	str r0, [r7]
	b _0800787C
	.align 2, 0
_08007798: .4byte gUnknown_020146E0
_0800779C:
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r3, r0
	movs r1, #0
	str r1, [r0]
	ldr r0, _080077FC @ =gUnknown_02000810
	str r1, [r0, #0x20]
	mov r7, r8
	asrs r7, r7, #0x10
	mov sl, r7
	adds r0, r7, #0
	adds r0, #3
	str r0, [sp, #0x14]
	mov r1, sb
	asrs r4, r1, #0x10
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r7, r6, r2
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_8003EE8
	str r4, [sp, #0x20]
	cmp r0, #0
	beq _08007800
	ldr r0, [r7]
	adds r0, #3
	add r0, sl
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	beq _08007800
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x20]
	bl sub_8003CFC
	movs r1, #8
	rsbs r1, r1, #0
	cmp r0, r1
	ble _08007800
	movs r3, #0x80
	lsls r3, r3, #0xa
	add r8, r3
	b _0800787C
	.align 2, 0
_080077FC: .4byte gUnknown_02000810
_08007800:
	ldr r4, [sp, #0x1c]
	adds r0, r4, r5
	lsls r0, r0, #2
	subs r0, r0, r5
	lsls r7, r0, #6
	ldr r0, _080078CC @ =gUnknown_020146E0
	adds r4, r7, r0
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #2
	ldr r1, _080078CC @ =gUnknown_020146E0
	adds r1, #4
	adds r1, r1, r7
	mov sl, r1
	movs r2, #2
	ldrsh r1, [r1, r2]
	ldr r3, _080078CC @ =gUnknown_020146E0
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r3, r3, r2
	adds r3, r7, r3
	str r3, [sp, #0x18]
	adds r2, r3, #0
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	beq _0800787C
	movs r3, #2
	ldrsh r0, [r4, r3]
	ldr r2, _080078CC @ =gUnknown_020146E0
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r1, r2, r3
	adds r1, r7, r1
	ldr r1, [r1]
	adds r1, #2
	subs r0, r0, r1
	mov r7, sl
	movs r2, #2
	ldrsh r1, [r7, r2]
	ldr r2, [sp, #0x18]
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	beq _0800787C
	movs r3, #2
	ldrsh r0, [r4, r3]
	subs r0, #2
	movs r2, #2
	ldrsh r1, [r7, r2]
	bl sub_8003CFC
	movs r1, #8
	rsbs r1, r1, #0
	cmp r0, r1
	ble _0800787C
	ldr r0, [r4]
	ldr r3, _080078D0 @ =0xFFFE0000
	adds r0, r0, r3
	str r0, [r4]
_0800787C:
	ldr r1, _080078CC @ =gUnknown_020146E0
	ldr r4, [sp, #0x1c]
	adds r0, r4, r5
	lsls r0, r0, #2
	subs r0, r0, r5
	lsls r0, r0, #6
	adds r1, #0x20
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	ldr r0, _080078D4 @ =gUnknown_02000810
	str r1, [r0, #0x20]
_08007894:
	movs r7, #0x94
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r0, [r0]
	add r8, r0
	mov r0, r8
	asrs r7, r0, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	bl sub_8003CFC
	adds r5, r0, #0
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _080078D8
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [sp, #0x20]
	bl sub_8003CFC
	adds r4, r0, #0
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r6, r2
	b _080078F0
	.align 2, 0
_080078CC: .4byte gUnknown_020146E0
_080078D0: .4byte 0xFFFE0000
_080078D4: .4byte gUnknown_02000810
_080078D8:
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	adds r0, r7, r0
	ldr r1, [sp, #0x20]
	bl sub_8003CFC
	adds r4, r0, #0
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r6, r1
_080078F0:
	ldr r0, [r0]
	subs r0, r7, r0
	ldr r1, [sp, #0x20]
	bl sub_8003CFC
	adds r7, r0, #0
	adds r1, r5, #0
	subs r1, #0xf
	movs r0, #0xf
	ldr r2, [sp, #0x20]
	ands r0, r2
	adds r5, r1, r0
	adds r1, r7, #0
	subs r1, #0xf
	adds r7, r1, r0
	adds r1, r4, #0
	subs r1, #0xf
	adds r4, r1, r0
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #0
	blt _08007952
	cmp r4, #0
	bne _08007984
	cmp r5, #0
	beq _0800792C
	cmp r5, #0xf
	ble _08007988
_0800792C:
	cmp r7, #0
	beq _08007934
	cmp r7, #0xf
	ble _08007984
_08007934:
	mov r1, r8
	asrs r0, r1, #0x10
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r2, r6, r3
	ldr r1, [r2]
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	beq _08007984
	bl sub_08008272
_08007952:
	cmp r7, #0
	bne _08007984
	cmp r5, #0
	beq _0800795E
	cmp r5, #0xf
	ble _08007988
_0800795E:
	cmp r4, #0
	beq _08007966
	cmp r4, #0xf
	ble _08007984
_08007966:
	mov r1, r8
	asrs r0, r1, #0x10
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r2, r6, r3
	ldr r1, [r2]
	subs r0, r0, r1
	ldr r1, [sp, #0x20]
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	beq _08007984
	bl sub_08008272
_08007984:
	cmp r5, #0xf
	bgt _08007990
_08007988:
	cmp r7, #0xf
	bgt _08007990
	cmp r4, #0xf
	ble _080079A4
_08007990:
	movs r7, #0x94
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [r0]
	mov r2, r8
	subs r2, r2, r1
	mov r8, r2
	movs r1, #0
	str r1, [r0]
	b _08007C9A
_080079A4:
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r5, r0
	bgt _080079F4
	cmp r7, r0
	bgt _080079F4
	cmp r4, r0
	bgt _080079F4
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #1
	str r0, [r1]
	subs r0, #0x21
	cmp r5, r0
	ble _080079C8
	bl _0800828C
_080079C8:
	cmp r7, r0
	ble _080079D0
	bl _0800828C
_080079D0:
	cmp r4, r0
	ble _080079D8
	bl _0800828C
_080079D8:
	ldr r0, _080079F0 @ =gUnknown_02000810
	cmp r6, r0
	bne _080079E6
	movs r0, #5
	adds r1, r6, #0
	bl sub_8006F10
_080079E6:
	movs r2, #0x95
	lsls r2, r2, #2
	adds r1, r6, r2
	bl _08008288
	.align 2, 0
_080079F0: .4byte gUnknown_02000810
_080079F4:
	cmp r5, r7
	blt _08007A02
	cmp r5, r4
	blt _08007A02
	mov r3, r8
	asrs r0, r3, #0x10
	b _08007A48
_08007A02:
	cmp r7, r5
	blt _08007A2A
	cmp r7, r4
	blt _08007A2A
	adds r5, r7, #0
	mov r4, r8
	asrs r1, r4, #0x10
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _08007A1E
	movs r7, #0x9e
	lsls r7, r7, #2
	adds r0, r6, r7
	b _08007A24
_08007A1E:
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r6, r2
_08007A24:
	ldr r0, [r0]
	subs r0, r1, r0
	b _08007A48
_08007A2A:
	adds r5, r4, #0
	mov r3, r8
	asrs r1, r3, #0x10
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _08007A3E
	movs r4, #0x9f
	lsls r4, r4, #2
	adds r0, r6, r4
	b _08007A44
_08007A3E:
	movs r7, #0x9e
	lsls r7, r7, #2
	adds r0, r6, r7
_08007A44:
	ldr r0, [r0]
	adds r0, r1, r0
_08007A48:
	ldr r2, [sp, #0x20]
	subs r1, r2, r5
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r2, r6, r3
	movs r3, #1
	bl sub_8003EE8
	adds r2, r0, #0
	cmp r2, #0
	beq _08007A6E
	lsls r0, r5, #0x10
	mov r4, sb
	subs r4, r4, r0
	mov sb, r4
	movs r7, #0
	str r7, [sp]
	bl _0800828C
_08007A6E:
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1]
	mov r3, r8
	subs r3, r3, r0
	mov r8, r3
	str r2, [r1]
	movs r4, #3
	str r4, [sp]
	bl _0800828C
_08007A86:
	ldr r0, _08007AF0 @ =gUnknown_02000810
	cmp r6, r0
	bne _08007A92
	ldr r1, _08007AF4 @ =gUnknown_020154DC
	movs r0, #1
	str r0, [r1]
_08007A92:
	movs r7, #2
	ldrsh r0, [r6, r7]
	movs r2, #6
	ldrsh r1, [r6, r2]
	adds r1, #1
	bl sub_8003C5C
	adds r7, r0, #0
	cmp r7, #2
	bne _08007AFC
	movs r3, #0x94
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r2, [r4]
	cmp r2, #0
	bge _08007AB4
	b _08007BD8
_08007AB4:
	ldr r3, [r6]
	ldr r1, _08007AF8 @ =0x000FFFFF
	adds r0, r3, #0
	ands r0, r1
	adds r0, r0, r2
	cmp r0, r1
	bgt _08007AC4
	b _08007BD8
_08007AC4:
	asrs r0, r3, #0x10
	adds r0, #0x10
	movs r7, #6
	ldrsh r1, [r6, r7]
	subs r1, #0x10
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	beq _08007ADA
	b _08007BD8
_08007ADA:
	movs r0, #0x95
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r0, [r4]
	lsls r0, r0, #1
	str r0, [r2]
	movs r3, #0x9d
	lsls r3, r3, #2
	adds r1, r6, r3
	b _08007BBC
	.align 2, 0
_08007AF0: .4byte gUnknown_02000810
_08007AF4: .4byte gUnknown_020154DC
_08007AF8: .4byte 0x000FFFFF
_08007AFC:
	cmp r7, #3
	bne _08007B3C
	movs r7, #0x94
	lsls r7, r7, #2
	adds r4, r6, r7
	ldr r1, [r4]
	cmp r1, #0
	bge _08007BD8
	ldr r2, [r6]
	ldr r0, _08007B38 @ =0x000FFFFF
	ands r0, r2
	cmn r0, r1
	bge _08007BD8
	asrs r0, r2, #0x10
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r6, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	bne _08007BD8
	movs r3, #0x95
	lsls r3, r3, #2
	adds r2, r6, r3
	ldr r0, [r4]
	rsbs r0, r0, #0
	lsls r0, r0, #1
	b _08007BB4
	.align 2, 0
_08007B38: .4byte 0x000FFFFF
_08007B3C:
	cmp r7, #4
	bne _08007B7C
	movs r0, #0x94
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r2, [r4]
	cmp r2, #0
	blt _08007BD8
	ldr r3, [r6]
	ldr r1, _08007B78 @ =0x000FFFFF
	adds r0, r3, #0
	ands r0, r1
	adds r0, r0, r2
	cmp r0, r1
	ble _08007BD8
	asrs r0, r3, #0x10
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r6, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	bne _08007BD8
	movs r3, #0x95
	lsls r3, r3, #2
	adds r2, r6, r3
	ldr r0, [r4]
	b _08007BB4
	.align 2, 0
_08007B78: .4byte 0x000FFFFF
_08007B7C:
	cmp r7, #5
	bne _08007BD8
	movs r0, #0x94
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4]
	cmp r1, #0
	bge _08007BD8
	ldr r2, [r6]
	ldr r0, _08007BD4 @ =0x000FFFFF
	ands r0, r2
	cmn r0, r1
	bge _08007BD8
	asrs r0, r2, #0x10
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r6, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r7, r0, #0
	cmp r7, #0
	bne _08007BD8
	movs r3, #0x95
	lsls r3, r3, #2
	adds r2, r6, r3
	ldr r0, [r4]
	rsbs r0, r0, #0
_08007BB4:
	str r0, [r2]
	movs r7, #0x9d
	lsls r7, r7, #2
	adds r1, r6, r7
_08007BBC:
	movs r0, #7
	str r0, [r1]
	ldr r1, [r6]
	ldr r0, [r4]
	adds r1, r1, r0
	mov r8, r1
	ldr r1, [r6, #4]
	ldr r0, [r2]
	subs r1, r1, r0
	mov sb, r1
	b _0800828C
	.align 2, 0
_08007BD4: .4byte 0x000FFFFF
_08007BD8:
	ldr r0, _08007C10 @ =gUnknown_02000810
	cmp r6, r0
	bne _08007C66
	ldr r0, [r6, #0x14]
	cmp r0, #0x3f
	beq _08007C66
	movs r1, #2
	ldrsh r0, [r6, r1]
	movs r2, #6
	ldrsh r1, [r6, r2]
	adds r1, #1
	bl sub_8003B78
	adds r7, r0, #0
	movs r0, #9
	ands r0, r7
	cmp r0, #1
	bne _08007C66
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08007C14
	movs r3, #2
	ldrsh r0, [r6, r3]
	adds r0, #0x10
	movs r4, #6
	ldrsh r1, [r6, r4]
	b _08007C1E
	.align 2, 0
_08007C10: .4byte gUnknown_02000810
_08007C14:
	movs r7, #2
	ldrsh r0, [r6, r7]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r6, r2]
_08007C1E:
	adds r1, #1
	bl sub_8003B78
	adds r7, r0, #0
	movs r0, #9
	ands r0, r7
	cmp r0, #1
	bne _08007C66
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08007C40
	movs r3, #2
	ldrsh r0, [r6, r3]
	adds r0, #0x20
	movs r4, #6
	ldrsh r1, [r6, r4]
	b _08007C4A
_08007C40:
	movs r7, #2
	ldrsh r0, [r6, r7]
	subs r0, #0x20
	movs r2, #6
	ldrsh r1, [r6, r2]
_08007C4A:
	adds r1, #1
	bl sub_8003B78
	adds r7, r0, #0
	movs r0, #9
	ands r0, r7
	cmp r0, #1
	bne _08007C66
	ldr r1, _08007CA0 @ =gUnknown_020003EC
	ldr r0, [r6]
	str r0, [r1]
	ldr r1, _08007CA4 @ =gUnknown_020003F4
	ldr r0, [r6, #4]
	str r0, [r1]
_08007C66:
	movs r3, #0x94
	lsls r3, r3, #2
	adds r7, r6, r3
	ldr r0, [r7]
	add r8, r0
	mov r4, r8
	asrs r0, r4, #0x10
	mov r1, sb
	asrs r4, r1, #0x10
	adds r1, r4, #0
	bl sub_8003CFC
	adds r5, r0, #0
	adds r1, r5, #0
	subs r1, #0xf
	movs r0, #0xf
	ands r4, r0
	adds r5, r1, r4
	cmp r5, #0xf
	ble _08007CA8
	ldr r0, [r7]
	mov r2, r8
	subs r2, r2, r0
	mov r8, r2
	movs r0, #0
	str r0, [r7]
_08007C9A:
	movs r3, #3
	str r3, [sp]
	b _0800828C
	.align 2, 0
_08007CA0: .4byte gUnknown_020003EC
_08007CA4: .4byte gUnknown_020003F4
_08007CA8:
	adds r0, r5, #2
	cmp r0, #0x11
	bhi _08007CB8
	lsls r0, r5, #0x10
	mov r4, sb
	subs r4, r4, r0
	mov sb, r4
	b _0800828C
_08007CB8:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r5, r0
	blt _08007CC2
	b _0800828C
_08007CC2:
	movs r7, #0x9d
	lsls r7, r7, #2
	adds r1, r6, r7
	movs r0, #7
	b _0800828A
_08007CCC:
	ldr r2, _08007CFC @ =gUnknown_02000810
	cmp r6, r2
	bne _08007CD8
	ldr r1, _08007D00 @ =gUnknown_020154DC
	movs r0, #2
	str r0, [r1]
_08007CD8:
	movs r0, #6
	ldrsh r1, [r6, r0]
	ldr r0, _08007D04 @ =gUnknown_02011B10
	ldr r0, [r0]
	lsls r0, r0, #4
	adds r0, #0x14
	cmp r1, r0
	bls _08007D08
	ldr r0, [r6, #0x14]
	cmp r0, #0x3f
	bne _08007CF0
	b _0800828C
_08007CF0:
	movs r0, #0x3f
	adds r1, r6, #0
	bl sub_8006F10
	b _0800828C
	.align 2, 0
_08007CFC: .4byte gUnknown_02000810
_08007D00: .4byte gUnknown_020154DC
_08007D04: .4byte gUnknown_02011B10
_08007D08:
	cmp r6, r2
	bne _08007D2C
	movs r2, #2
	ldrsh r0, [r6, r2]
	adds r1, #1
	bl sub_8003B78
	adds r7, r0, #0
	movs r0, #9
	ands r0, r7
	cmp r0, #1
	bne _08007D2C
	ldr r1, _08007DD4 @ =gUnknown_020003EC
	ldr r0, [r6]
	str r0, [r1]
	ldr r1, _08007DD8 @ =gUnknown_020003F4
	ldr r0, [r6, #4]
	str r0, [r1]
_08007D2C:
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	add r8, r0
	movs r4, #0x95
	lsls r4, r4, #2
	adds r5, r6, r4
	ldr r0, [r5]
	mov r7, sb
	subs r7, r7, r0
	mov sb, r7
	mov r0, r8
	asrs r4, r0, #0x10
	asrs r7, r7, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_8003B78
	cmp r0, #0
	beq _08007DA4
	movs r2, #6
	ldrsh r1, [r6, r2]
	adds r0, r4, #0
	bl sub_8003B78
	cmp r0, #0
	beq _08007D70
	ldr r3, [r6]
	mov r8, r3
	movs r0, #3
	ldr r4, [sp]
	orrs r4, r0
	str r4, [sp]
_08007D70:
	movs r1, #2
	ldrsh r0, [r6, r1]
	adds r1, r7, #0
	bl sub_8003B78
	cmp r0, #0
	beq _08007DA4
	ldr r2, [r6, #4]
	mov sb, r2
	ldr r0, [r5]
	asrs r0, r0, #1
	str r0, [r5]
	movs r0, #5
	ldr r3, [sp]
	orrs r3, r0
	str r3, [sp]
	movs r4, #0x9c
	lsls r4, r4, #2
	adds r1, r6, r4
	movs r0, #0
	str r0, [r1]
	movs r7, #0x9d
	lsls r7, r7, #2
	adds r1, r6, r7
	movs r0, #6
	str r0, [r1]
_08007DA4:
	mov r1, r8
	asrs r0, r1, #0x10
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r4, r6, r2
	ldr r1, [r4]
	add r1, sb
	asrs r1, r1, #0x10
	bl sub_8003B78
	cmp r0, #0
	bne _08007DE0
	ldr r1, [r4]
	add sb, r1
	ldr r0, _08007DDC @ =0x0007FFFF
	cmp r1, r0
	ble _08007DC8
	b _0800828C
_08007DC8:
	movs r3, #0xa0
	lsls r3, r3, #6
	adds r0, r1, r3
	str r0, [r4]
	b _0800828C
	.align 2, 0
_08007DD4: .4byte gUnknown_020003EC
_08007DD8: .4byte gUnknown_020003F4
_08007DDC: .4byte 0x0007FFFF
_08007DE0:
	movs r0, #0
	str r0, [r4]
	movs r4, #0x9d
	lsls r4, r4, #2
	adds r1, r6, r4
	movs r0, #6
	b _0800828A
_08007DEE:
	ldr r0, _08007E20 @ =gUnknown_02000810
	cmp r6, r0
	bne _08007DFA
	ldr r1, _08007E24 @ =gUnknown_020154DC
	movs r0, #3
	str r0, [r1]
_08007DFA:
	mov r7, r8
	asrs r4, r7, #0x10
	mov r0, sb
	asrs r5, r0, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8003C5C
	adds r7, r0, #0
	str r5, [sp, #0x20]
	cmp r7, #0x16
	bls _08007E14
	b _08008266
_08007E14:
	lsls r0, r7, #2
	ldr r1, _08007E28 @ =_08007E2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08007E20: .4byte gUnknown_02000810
_08007E24: .4byte gUnknown_020154DC
_08007E28: .4byte _08007E2C
_08007E2C: @ jump table
	.4byte _08007E88 @ case 0
	.4byte _08008266 @ case 1
	.4byte _08008266 @ case 2
	.4byte _08008266 @ case 3
	.4byte _08008266 @ case 4
	.4byte _08008266 @ case 5
	.4byte _08008266 @ case 6
	.4byte _08008266 @ case 7
	.4byte _08008266 @ case 8
	.4byte _08008266 @ case 9
	.4byte _08008266 @ case 10
	.4byte _08008266 @ case 11
	.4byte _08008266 @ case 12
	.4byte _08008266 @ case 13
	.4byte _08008266 @ case 14
	.4byte _08008266 @ case 15
	.4byte _08007F78 @ case 16
	.4byte _0800800C @ case 17
	.4byte _08008074 @ case 18
	.4byte _080080FC @ case 19
	.4byte _08008186 @ case 20
	.4byte _080081A4 @ case 21
	.4byte _08008186 @ case 22
_08007E88:
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	blt _08007E9A
	adds r0, r4, #0
	adds r0, #0x10
	b _08007E9E
_08007E9A:
	adds r0, r4, #0
	subs r0, #0x10
_08007E9E:
	ldr r1, [sp, #0x20]
	bl sub_8003C5C
	adds r7, r0, #0
	adds r0, r7, #0
	subs r0, #0x10
	cmp r0, #0xf
	bhi _08007EE4
	cmp r7, #0x14
	beq _08007EE4
	cmp r7, #0x16
	beq _08007EE4
	ldr r0, _08007ED4 @ =0xFFF00000
	mov r2, r8
	ands r2, r0
	mov r8, r2
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #0
	blt _08007ED8
	movs r4, #0x80
	lsls r4, r4, #0xd
	add r8, r4
	b _08008270
	.align 2, 0
_08007ED4: .4byte 0xFFF00000
_08007ED8:
	ldr r0, _08007EE0 @ =0xFFFF0000
	add r8, r0
	b _08008270
	.align 2, 0
_08007EE0: .4byte 0xFFFF0000
_08007EE4:
	ldr r0, [r6, #0x54]
	cmp r0, #0x14
	beq _08007EEE
	cmp r0, #0x16
	bne _08007F18
_08007EEE:
	movs r2, #0x94
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	movs r3, #0x98
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	movs r1, #0
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08007F10
	movs r1, #1
_08007F10:
	str r1, [r6, #8]
	movs r0, #0
	str r0, [r6, #0x4c]
	b _08007F48
_08007F18:
	cmp r0, #0x11
	bne _08007F48
	ldr r2, [r6, #8]
	cmp r2, #0
	bne _08007F48
	ldr r0, _08007F70 @ =gUnknown_02000810
	cmp r6, r0
	bne _08007F48
	ldr r1, [r6, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r1, r0
	bne _08007F48
	movs r4, #0x94
	lsls r4, r4, #2
	adds r0, r6, r4
	str r2, [r0]
	movs r1, #0
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08007F44
	movs r1, #1
_08007F44:
	str r1, [r6, #8]
	str r2, [r6, #0x4c]
_08007F48:
	movs r0, #0x99
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, _08007F74 @ =0xFFFE0000
	str r0, [r1]
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r0, #7
	str r0, [r1]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0
	str r1, [r0]
	movs r4, #0x95
	lsls r4, r4, #2
	adds r0, r6, r4
	str r1, [r0]
	b _08008270
	.align 2, 0
_08007F70: .4byte gUnknown_02000810
_08007F74: .4byte 0xFFFE0000
_08007F78:
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r2, [r0]
	cmp r2, #0
	blt _08007FBC
	ldr r1, _08007FB0 @ =0x000FFFFF
	mov r0, r8
	ands r0, r1
	adds r0, r0, r2
	cmp r0, r1
	ble _08007FEC
	ldr r1, _08007FB4 @ =0xFFFF0000
	mov r2, r8
	ands r2, r1
	movs r0, #0xf0
	lsls r0, r0, #0xc
	orrs r2, r0
	mov r8, r2
	ldr r0, _08007FB8 @ =0xFFF00000
	mov r3, sb
	ands r3, r0
	mov sb, r3
	add sb, r1
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r6, #0x4c]
	b _08008270
	.align 2, 0
_08007FB0: .4byte 0x000FFFFF
_08007FB4: .4byte 0xFFFF0000
_08007FB8: .4byte 0xFFF00000
_08007FBC:
	ldr r0, _08007FE0 @ =0x000FFFFF
	mov r1, r8
	ands r0, r1
	cmn r0, r2
	bge _08007FEC
	ldr r0, _08007FE4 @ =0xFFF00000
	ands r1, r0
	mov r8, r1
	ldr r2, _08007FE8 @ =0xFFFF0000
	add r8, r2
	mov r3, sb
	ands r3, r0
	movs r0, #0xf0
	lsls r0, r0, #0xc
	orrs r3, r0
	mov sb, r3
	b _080080A6
	.align 2, 0
_08007FE0: .4byte 0x000FFFFF
_08007FE4: .4byte 0xFFF00000
_08007FE8: .4byte 0xFFFF0000
_08007FEC:
	add r8, r2
	ldr r0, _08008008 @ =0xFFF00000
	mov r4, sb
	ands r4, r0
	movs r1, #0xf0
	lsls r1, r1, #0xc
	orrs r4, r1
	mov r0, r8
	ands r0, r1
	subs r4, r4, r0
	mov sb, r4
	lsrs r0, r0, #6
	str r0, [r6, #0x4c]
	b _08008270
	.align 2, 0
_08008008: .4byte 0xFFF00000
_0800800C:
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [sp, #0x20]
	bl sub_8003C5C
	subs r0, #1
	cmp r0, #0xe
	bls _0800804C
	adds r0, r4, #0
	subs r0, #0x10
	ldr r1, [sp, #0x20]
	bl sub_8003C5C
	subs r0, #1
	cmp r0, #0xe
	bhi _08008060
	ldr r0, _08008048 @ =0xFFF00000
	mov r4, r8
	ands r4, r0
	mov r8, r4
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	add sb, r0
	b _08008270
	.align 2, 0
_08008048: .4byte 0xFFF00000
_0800804C:
	ldr r0, _08008070 @ =0xFFF00000
	mov r1, r8
	ands r1, r0
	movs r0, #0xf0
	lsls r0, r0, #0xc
	orrs r1, r0
	mov r8, r1
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r6, #0x4c]
_08008060:
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	mov r3, sb
	subs r3, r3, r0
	mov sb, r3
	b _08008270
	.align 2, 0
_08008070: .4byte 0xFFF00000
_08008074:
	ldr r1, _080080AC @ =0xFFF00000
	mov r4, sb
	ands r4, r1
	movs r3, #0xf0
	lsls r3, r3, #0xc
	orrs r4, r3
	mov sb, r4
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0]
	cmp r2, #0
	blt _080080C2
	ldr r1, _080080B0 @ =0x000FFFFF
	mov r0, r8
	ands r0, r1
	adds r0, r0, r2
	cmp r0, r1
	ble _080080B4
	mov r4, r8
	orrs r4, r3
	mov r8, r4
	movs r0, #0x80
	lsls r0, r0, #9
	add r8, r0
_080080A6:
	movs r0, #0
	str r0, [r6, #0x4c]
	b _08008270
	.align 2, 0
_080080AC: .4byte 0xFFF00000
_080080B0: .4byte 0x000FFFFF
_080080B4:
	add r8, r2
	mov r0, r8
	ands r0, r3
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
	b _080080F0
_080080C2:
	ldr r0, _080080DC @ =0x000FFFFF
	mov r4, r8
	ands r0, r4
	cmn r0, r2
	bge _080080E4
	ands r4, r1
	mov r8, r4
	mov r0, sb
	ands r0, r1
	mov sb, r0
	ldr r1, _080080E0 @ =0xFFFF0000
	b _080081E4
	.align 2, 0
_080080DC: .4byte 0x000FFFFF
_080080E0: .4byte 0xFFFF0000
_080080E4:
	add r8, r2
	mov r0, r8
	ands r0, r3
	mov r2, sb
	subs r2, r2, r0
	mov sb, r2
_080080F0:
	lsrs r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r6, #0x4c]
	b _08008270
_080080FC:
	ldr r1, _08008130 @ =0xFFFF0000
	mov r3, r8
	ands r3, r1
	mov r8, r3
	ldr r3, _08008134 @ =0xFFF00000
	mov r4, sb
	ands r4, r3
	mov sb, r4
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0]
	cmp r2, #0
	blt _0800813C
	ldr r0, _08008138 @ =0x000FFFFF
	mov r4, r8
	ands r0, r4
	cmp r0, r2
	bge _08008168
	ands r4, r3
	mov r8, r4
	mov r0, sb
	ands r0, r3
	mov sb, r0
	add r8, r1
	b _08008176
	.align 2, 0
_08008130: .4byte 0xFFFF0000
_08008134: .4byte 0xFFF00000
_08008138: .4byte 0x000FFFFF
_0800813C:
	ldr r1, _08008164 @ =0x000FFFFF
	mov r0, r8
	ands r0, r1
	subs r0, r0, r2
	cmp r0, r1
	ble _08008168
	mov r2, r8
	ands r2, r3
	mov r4, sb
	ands r4, r3
	movs r0, #0xf0
	lsls r0, r0, #0xc
	orrs r2, r0
	mov r8, r2
	orrs r4, r0
	mov sb, r4
	movs r0, #0x80
	lsls r0, r0, #9
	b _08008174
	.align 2, 0
_08008164: .4byte 0x000FFFFF
_08008168:
	mov r1, r8
	subs r1, r1, r2
	mov r8, r1
	asrs r0, r1, #0x10
	movs r1, #0xf
	ands r0, r1
_08008174:
	add sb, r0
_08008176:
	movs r1, #0xf0
	lsls r1, r1, #0xc
	mov r2, r8
	ands r1, r2
	lsrs r1, r1, #6
	movs r0, #0x80
	lsls r0, r0, #8
	b _08008260
_08008186:
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	mov r4, r8
	subs r4, r4, r0
	mov r8, r4
	ldr r0, _080081A0 @ =0xFFF00000
	mov r1, sb
	ands r1, r0
	mov sb, r1
	b _08008232
	.align 2, 0
_080081A0: .4byte 0xFFF00000
_080081A4:
	ldr r1, _080081F0 @ =0xFFFF0000
	mov r2, r8
	ands r2, r1
	mov r8, r2
	mov r3, sb
	ands r3, r1
	mov sb, r3
	movs r3, #0xf0
	lsls r3, r3, #0xc
	mov r4, sb
	orrs r4, r3
	mov sb, r4
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0]
	cmp r2, #0
	blt _08008210
	ldr r0, _080081F4 @ =0x000FFFFF
	mov r4, r8
	ands r0, r4
	cmp r0, r2
	bge _080081FC
	ldr r0, _080081F8 @ =0xFFF00000
	ands r4, r0
	mov r8, r4
	mov r0, sb
	ands r0, r1
	orrs r0, r3
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #9
_080081E4:
	add sb, r1
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	b _08008270
	.align 2, 0
_080081F0: .4byte 0xFFFF0000
_080081F4: .4byte 0x000FFFFF
_080081F8: .4byte 0xFFF00000
_080081FC:
	mov r4, r8
	subs r4, r4, r2
	mov r8, r4
	asrs r0, r4, #0x10
	movs r1, #0xf
	ands r0, r1
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
	b _08008256
_08008210:
	ldr r1, _0800823C @ =0x000FFFFF
	mov r0, r8
	ands r0, r1
	subs r0, r0, r2
	cmp r0, r1
	ble _08008244
	ldr r0, _08008240 @ =0xFFF00000
	mov r2, r8
	ands r2, r0
	mov r4, sb
	ands r4, r0
	mov sb, r4
	orrs r2, r3
	mov r8, r2
	movs r0, #0x80
	lsls r0, r0, #9
	add r8, r0
_08008232:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	b _08008270
	.align 2, 0
_0800823C: .4byte 0x000FFFFF
_08008240: .4byte 0xFFF00000
_08008244:
	mov r1, r8
	subs r1, r1, r2
	mov r8, r1
	asrs r0, r1, #0x10
	movs r1, #0xf
	ands r0, r1
	mov r2, sb
	subs r2, r2, r0
	mov sb, r2
_08008256:
	mov r1, r8
	ands r1, r3
	lsrs r1, r1, #6
	movs r0, #0xc0
	lsls r0, r0, #8
_08008260:
	subs r0, r0, r1
	str r0, [r6, #0x4c]
	b _08008270
_08008266:
	movs r3, #0x9d
	lsls r3, r3, #2
	adds r1, r6, r3
	movs r0, #7
	str r0, [r1]
_08008270:
	str r7, [r6, #0x54]

	non_word_aligned_thumb_func_start sub_08008272
sub_08008272: @ 0x08008272
	movs r4, #0
	str r4, [sp]
	b _0800828C
_08008278:
	movs r7, #0x9d
	lsls r7, r7, #2
	adds r1, r6, r7
	movs r0, #1
	str r0, [r1]
	movs r0, #0x95
	lsls r0, r0, #2
	adds r1, r6, r0
_08008288:
	movs r0, #0
_0800828A:
	str r0, [r1]
_0800828C:
	mov r1, r8
	str r1, [r6]
	mov r2, sb
	str r2, [r6, #4]
	ldr r0, [sp]

	non_word_aligned_thumb_func_start sub_08008296
sub_08008296: @ 0x08008296
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80082A8
sub_80082A8: @ 0x080082A8
	push {r4, lr}
	movs r4, #0
	movs r3, #0
	ldr r0, _080082D8 @ =gUnknown_02013730
	adds r2, r0, #0
	adds r2, #0x10
	adds r1, r0, #0
	adds r1, #0x14
_080082B8:
	ldr r0, [r1]
	cmp r0, #0
	beq _080082C6
	ldr r0, [r2]
	cmp r0, #1
	bne _080082C6
	adds r4, #1
_080082C6:
	adds r2, #0x8c
	adds r1, #0x8c
	adds r3, #1
	cmp r3, #9
	bls _080082B8
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080082D8: .4byte gUnknown_02013730

	thumb_func_start sub_80082DC
sub_80082DC: @ 0x080082DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	mov r8, r1
	adds r4, r3, #0
	ldr r6, [sp, #0x24]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	subs r0, r2, #2
	cmp r0, #0xc
	bls _080082F8
	b _080087D4
_080082F8:
	lsls r0, r0, #2
	ldr r1, _08008304 @ =_08008308
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008304: .4byte _08008308
_08008308: @ jump table
	.4byte _0800833C @ case 0
	.4byte _0800838C @ case 1
	.4byte _080083DC @ case 2
	.4byte _08008418 @ case 3
	.4byte _080087D4 @ case 4
	.4byte _0800854C @ case 5
	.4byte _080085C4 @ case 6
	.4byte _08008638 @ case 7
	.4byte _08008774 @ case 8
	.4byte _08008484 @ case 9
	.4byte _080084E8 @ case 10
	.4byte _080086A8 @ case 11
	.4byte _08008714 @ case 12
_0800833C:
	str r4, [sp]
	str r6, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_80087EC
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _0800835C
	b _080087D4
_0800835C:
	ldr r2, _08008384 @ =gUnknown_082F4484
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #6
	movs r3, #5
	bl sub_8008AFC
	ldr r3, _08008388 @ =gUnknown_02013730
	movs r0, #0x8c
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r1, r0
	movs r2, #4
	b _0800845E
	.align 2, 0
_08008384: .4byte gUnknown_082F4484
_08008388: .4byte gUnknown_02013730
_0800838C:
	str r4, [sp]
	str r6, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_80087EC
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _080083AC
	b _080087D4
_080083AC:
	ldr r2, _080083D4 @ =gUnknown_083148A8
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #6
	movs r3, #5
	bl sub_8008AFC
	ldr r3, _080083D8 @ =gUnknown_02013730
	movs r0, #0x8c
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r1, r0
	movs r2, #4
	b _0800845E
	.align 2, 0
_080083D4: .4byte gUnknown_083148A8
_080083D8: .4byte gUnknown_02013730
_080083DC:
	str r4, [sp]
	str r6, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_80087EC
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _080083FC
	b _080087D4
_080083FC:
	ldr r2, _08008414 @ =gUnknown_083F6E64
	movs r0, #5
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #4
	movs r3, #6
	b _0800844A
	.align 2, 0
_08008414: .4byte gUnknown_083F6E64
_08008418:
	str r4, [sp]
	str r6, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_80087EC
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _08008438
	b _080087D4
_08008438:
	ldr r2, _0800847C @ =gUnknown_083F6E64
	movs r1, #0
	str r1, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r5, #0
	movs r1, #4
	movs r3, #7
_0800844A:
	bl sub_8008AFC
	ldr r3, _08008480 @ =gUnknown_02013730
	movs r0, #0x8c
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r1, r0
	movs r2, #8
_0800845E:
	str r2, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r3, #0
	adds r0, #0x28
	adds r1, r1, r0
	str r2, [r1]
	b _080087D4
	.align 2, 0
_0800847C: .4byte gUnknown_083F6E64
_08008480: .4byte gUnknown_02013730
_08008484:
	str r4, [sp]
	str r6, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_80087EC
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _080084A4
	b _080087D4
_080084A4:
	ldr r2, _080084E0 @ =gUnknown_083D3A14
	movs r0, #7
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xb
	movs r3, #4
	bl sub_8008AFC
	ldr r3, _080084E4 @ =gUnknown_02013730
	movs r0, #0x8c
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r2, r0
	movs r1, #4
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	movs r1, #0x18
	b _080087CA
	.align 2, 0
_080084E0: .4byte gUnknown_083D3A14
_080084E4: .4byte gUnknown_02013730
_080084E8:
	str r4, [sp]
	str r6, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_80087EC
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _08008508
	b _080087D4
_08008508:
	ldr r2, _08008544 @ =gUnknown_083D3A14
	movs r0, #9
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #8
	movs r3, #2
	bl sub_8008AFC
	ldr r3, _08008548 @ =gUnknown_02013730
	movs r0, #0x8c
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r2, r0
	movs r1, #8
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	movs r1, #0x10
	b _080087CA
	.align 2, 0
_08008544: .4byte gUnknown_083D3A14
_08008548: .4byte gUnknown_02013730
_0800854C:
	bl sub_80082A8
	cmp r0, #3
	bhi _08008640
	str r4, [sp]
	str r6, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	adds r1, r7, #0
	mov r2, r8
	movs r3, #2
	bl sub_80087EC
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _08008574
	b _080087D4
_08008574:
	ldr r0, _080085B8 @ =gUnknown_087F7BC0
	movs r1, #0
	bl sub_8003A9C
	ldr r2, _080085BC @ =gUnknown_080D2D50
	movs r0, #5
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0x1a
	bl sub_8008AFC
	ldr r3, _080085C0 @ =gUnknown_02013730
	movs r0, #0x8c
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r2, r0
	movs r1, #0x10
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	movs r1, #0x20
	b _080087CA
	.align 2, 0
_080085B8: .4byte gUnknown_087F7BC0
_080085BC: .4byte gUnknown_080D2D50
_080085C0: .4byte gUnknown_02013730
_080085C4:
	bl sub_80082A8
	cmp r0, #3
	bhi _08008640
	str r4, [sp]
	str r6, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	adds r1, r7, #0
	mov r2, r8
	movs r3, #3
	bl sub_80087EC
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _080085EC
	b _080087D4
_080085EC:
	ldr r0, _0800862C @ =gUnknown_087F7A54
	movs r1, #2
	bl sub_8003A9C
	ldr r2, _08008630 @ =gUnknown_0826260C
	movs r0, #1
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0x30
	bl sub_8008AFC
	ldr r3, _08008634 @ =gUnknown_02013730
	movs r0, #0x8c
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r2, r0
	movs r1, #0x10
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	b _080087CA
	.align 2, 0
_0800862C: .4byte gUnknown_087F7A54
_08008630: .4byte gUnknown_0826260C
_08008634: .4byte gUnknown_02013730
_08008638:
	bl sub_80082A8
	cmp r0, #3
	bls _08008646
_08008640:
	movs r0, #1
	rsbs r0, r0, #0
	b _080087D6
_08008646:
	str r4, [sp]
	str r6, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_80087EC
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _08008666
	b _080087D4
_08008666:
	ldr r2, _080086A0 @ =gUnknown_0826260C
	movs r0, #1
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0x31
	bl sub_8008AFC
	ldr r3, _080086A4 @ =gUnknown_02013730
	movs r0, #0x8c
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r2, r0
	movs r1, #0x18
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	b _080087CA
	.align 2, 0
_080086A0: .4byte gUnknown_0826260C
_080086A4: .4byte gUnknown_02013730
_080086A8:
	str r4, [sp]
	str r6, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_80087EC
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _080086C8
	b _080087D4
_080086C8:
	ldr r0, _08008708 @ =gUnknown_087F7A54
	movs r1, #2
	bl sub_8003A9C
	ldr r2, _0800870C @ =gUnknown_0826260C
	movs r0, #1
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #8
	movs r3, #0x30
	bl sub_8008AFC
	ldr r3, _08008710 @ =gUnknown_02013730
	movs r0, #0x8c
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r2, r0
	movs r1, #0x10
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	b _080087CA
	.align 2, 0
_08008708: .4byte gUnknown_087F7A54
_0800870C: .4byte gUnknown_0826260C
_08008710: .4byte gUnknown_02013730
_08008714:
	str r4, [sp]
	str r6, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_80087EC
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _080087D4
	ldr r2, _0800876C @ =gUnknown_0826260C
	movs r0, #1
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #8
	movs r3, #0x31
	bl sub_8008AFC
	ldr r3, _08008770 @ =gUnknown_02013730
	movs r0, #0x8c
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r2, r0
	movs r1, #0x18
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	b _080087CA
	.align 2, 0
_0800876C: .4byte gUnknown_0826260C
_08008770: .4byte gUnknown_02013730
_08008774:
	str r4, [sp]
	str r6, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_80087EC
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _080087D4
	ldr r2, _080087E4 @ =gUnknown_083A3ECC
	movs r0, #5
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #8
	movs r3, #6
	bl sub_8008AFC
	ldr r3, _080087E8 @ =gUnknown_02013730
	movs r0, #0x8c
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r2, r0
	movs r1, #8
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	movs r1, #0xc
_080087CA:
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x28
	adds r2, r2, r0
	str r4, [r2]
_080087D4:
	adds r0, r5, #0
_080087D6:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080087E4: .4byte gUnknown_083A3ECC
_080087E8: .4byte gUnknown_02013730

	thumb_func_start sub_80087EC
sub_80087EC: @ 0x080087EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0
	mov sl, r0
	ldr r1, _080088F0 @ =gUnknown_02013730
	mov sb, r1
	mov r6, sb
_0800880A:
	movs r0, #0x8c
	mov r5, sl
	muls r5, r0, r5
	mov r0, sb
	adds r0, #0x14
	adds r7, r5, r0
	ldr r2, [r7]
	mov r8, r2
	cmp r2, #0
	bne _08008910
	adds r4, r6, #0
	adds r4, #0x30
	adds r4, r5, r4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8006FC8
	movs r1, #1
	str r1, [r7]
	adds r7, r5, r6
	ldr r0, [sp, #8]
	str r0, [r7]
	adds r0, r6, #4
	adds r0, r5, r0
	ldr r2, [sp, #0xc]
	str r2, [r0]
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r5, r0
	ldr r2, [sp, #4]
	str r2, [r0]
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r5, r0
	ldr r2, [sp, #0x10]
	str r2, [r0]
	ldr r0, [sp, #0x34]
	str r0, [r4]
	adds r0, r6, #0
	adds r0, #0x38
	adds r0, r5, r0
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0x40
	adds r0, r5, r0
	mov r2, r8
	str r2, [r0]
	adds r0, r6, #0
	adds r0, #0x34
	adds r0, r5, r0
	ldr r2, [sp, #0x38]
	str r2, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	adds r4, r5, r0
	str r1, [r4]
	adds r0, #8
	adds r3, r5, r0
	mov r0, r8
	str r0, [r3]
	adds r0, r6, #0
	adds r0, #0x18
	adds r2, r5, r0
	mov r0, r8
	str r0, [r2]
	adds r0, r6, #0
	adds r0, #0x1c
	adds r0, r5, r0
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r5, r0
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r5, r0
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0x28
	adds r0, r5, r0
	str r1, [r0]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _080088C2
	str r1, [r2]
	ldr r0, _080088F4 @ =0xFFFC0000
	str r0, [r3]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4]
_080088C2:
	mov r0, sb
	adds r0, #0x74
	adds r0, r5, r0
	str r1, [r0]
	adds r1, r7, #0
	adds r1, #0x78
	movs r0, #0xb
	strh r0, [r1]
	ldr r1, _080088F8 @ =gUnknown_0201375C
	adds r0, r5, r1
	mov r2, r8
	str r2, [r0]
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _080088FC
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_800AE28
	b _0800890C
	.align 2, 0
_080088F0: .4byte gUnknown_02013730
_080088F4: .4byte 0xFFFC0000
_080088F8: .4byte gUnknown_0201375C
_080088FC:
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	movs r3, #3
	bl sub_800AE28
_0800890C:
	mov r0, sl
	b _08008920
_08008910:
	movs r2, #1
	add sl, r2
	mov r0, sl
	cmp r0, #9
	bgt _0800891C
	b _0800880A
_0800891C:
	movs r0, #1
	rsbs r0, r0, #0
_08008920:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8008930
sub_8008930: @ 0x08008930
	push {r4, r5, lr}
	sub sp, #0x10
	adds r2, r0, #0
	adds r4, r1, #0
	cmp r3, #0x10
	bhi _08008A14
	lsls r0, r3, #2
	ldr r1, _08008948 @ =_0800894C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008948: .4byte _0800894C
_0800894C: @ jump table
	.4byte _08008990 @ case 0
	.4byte _080089B4 @ case 1
	.4byte _080089BE @ case 2
	.4byte _080089C8 @ case 3
	.4byte _080089C8 @ case 4
	.4byte _080089C8 @ case 5
	.4byte _080089D8 @ case 6
	.4byte _08008A14 @ case 7
	.4byte _08008A14 @ case 8
	.4byte _08008A14 @ case 9
	.4byte _08008A14 @ case 10
	.4byte _08008A14 @ case 11
	.4byte _08008A14 @ case 12
	.4byte _08008A14 @ case 13
	.4byte _08008A14 @ case 14
	.4byte _08008A14 @ case 15
	.4byte _08008A10 @ case 16
_08008990:
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x11
	bl sub_8008A20
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _08008A14
	ldr r0, _080089B0 @ =gUnknown_087F759C
	movs r1, #2
	bl sub_8003A9C
	b _08008A14
	.align 2, 0
_080089B0: .4byte gUnknown_087F759C
_080089B4:
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0xc
	b _080089D0
_080089BE:
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #3
	b _080089D0
_080089C8:
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #3
	movs r3, #4
_080089D0:
	bl sub_8008A20
	adds r5, r0, #0
	b _08008A14
_080089D8:
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #3
	movs r3, #8
	bl sub_8008A20
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _08008A14
	ldr r3, _08008A08 @ =gUnknown_02013350
	lsls r0, r5, #5
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r3
	adds r1, #0x68
	movs r2, #8
	strh r2, [r1]
	adds r3, #0x1c
	adds r0, r0, r3
	ldr r1, _08008A0C @ =gUnknown_083D3A14
	str r1, [r0]
	b _08008A14
	.align 2, 0
_08008A08: .4byte gUnknown_02013350
_08008A0C: .4byte gUnknown_083D3A14
_08008A10:
	movs r5, #1
	rsbs r5, r5, #0
_08008A14:
	adds r0, r5, #0
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008A20
sub_8008A20: @ 0x08008A20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	movs r5, #0
	ldr r6, _08008A7C @ =gUnknown_02013350
	adds r6, #0x68
	ldr r4, _08008A7C @ =gUnknown_02013350
	adds r1, r4, #0
	movs r3, #0
_08008A40:
	ldrb r2, [r1, #0xb]
	cmp r2, #0
	bne _08008A84
	movs r0, #1
	strb r0, [r1, #0xb]
	mov r0, ip
	str r0, [r1]
	ldr r0, _08008A7C @ =gUnknown_02013350
	adds r0, #4
	adds r0, r3, r0
	mov r7, r8
	str r7, [r0]
	strb r2, [r1, #8]
	movs r0, #0xc
	strh r0, [r6]
	ldr r0, _08008A7C @ =gUnknown_02013350
	adds r0, #0x1c
	adds r0, r3, r0
	ldr r1, _08008A80 @ =gUnknown_083E0BD8
	str r1, [r0]
	str r2, [sp]
	adds r0, r4, #0
	mov r1, sb
	mov r2, sl
	movs r3, #3
	bl sub_800AF10
	adds r0, r5, #0
	b _08008A96
	.align 2, 0
_08008A7C: .4byte gUnknown_02013350
_08008A80: .4byte gUnknown_083E0BD8
_08008A84:
	adds r6, #0x7c
	adds r1, #0x7c
	adds r4, #0x7c
	adds r3, #0x7c
	adds r5, #1
	cmp r5, #7
	ble _08008A40
	movs r0, #1
	rsbs r0, r0, #0
_08008A96:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008AA8
sub_8008AA8: @ 0x08008AA8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r4, #7
	bhi _08008AF2
	ldr r1, _08008AF8 @ =gUnknown_02013350
	mov ip, r1
	lsls r3, r4, #5
	subs r3, r3, r4
	lsls r3, r3, #2
	adds r1, r3, r1
	strb r2, [r1, #8]
	strb r6, [r1, #9]
	mov r1, ip
	adds r1, #0xc
	adds r1, r3, r1
	ldr r2, [r5]
	str r2, [r1]
	mov r1, ip
	adds r1, #0x10
	adds r1, r3, r1
	ldr r2, [r5, #4]
	str r2, [r1]
	mov r1, ip
	adds r1, #0x14
	adds r1, r3, r1
	ldr r2, [r5, #8]
	str r2, [r1]
	mov r1, ip
	adds r1, #0x18
	adds r3, r3, r1
	ldr r1, [r5, #0xc]
	str r1, [r3]
_08008AF2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08008AF8: .4byte gUnknown_02013350

	thumb_func_start sub_8008AFC
sub_8008AFC: @ 0x08008AFC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r4, #9
	bhi _08008B30
	ldr r3, _08008B38 @ =gUnknown_02013730
	movs r0, #0x8c
	adds r2, r4, #0
	muls r2, r0, r2
	adds r0, r2, r3
	adds r1, r0, #0
	adds r1, #0x78
	strh r5, [r1]
	adds r3, #0x2c
	adds r2, r2, r3
	str r6, [r2]
	ldr r1, [sp, #0x20]
	str r1, [sp]
	adds r1, r7, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_800AE28
_08008B30:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008B38: .4byte gUnknown_02013730

	thumb_func_start sub_8008B3C
sub_8008B3C: @ 0x08008B3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _08008BAC @ =gUnknown_020154A0
	movs r0, #0
	str r0, [r1]
	str r0, [sp, #8]
	ldr r1, _08008BB0 @ =gUnknown_02013730
	mov sl, r1
	movs r7, #0
	ldr r2, _08008BB4 @ =gUnknown_02013744
	mov sb, r2
	mov r8, sl
	mov r3, sl
	adds r3, #0x34
	str r3, [sp, #0xc]
_08008B62:
	mov r4, sb
	ldr r0, [r4]
	cmp r0, #0
	bne _08008B6C
	b _08008D68
_08008B6C:
	mov r0, sl
	adds r0, #0x30
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_800700C
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r4]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2]
	mov r1, sl
	adds r1, #4
	adds r1, r7, r1
	ldr r2, [r1]
	mov r3, sb
	ldr r0, [r3, #0x20]
	subs r2, r2, r0
	str r2, [r1]
	ldr r1, [sp, #0xc]
	ldrh r0, [r1, #0x26]
	cmp r0, #0x31
	bne _08008BF0
	ldr r0, [r4]
	cmp r0, #0
	ble _08008BB8
	mov r3, r8
	movs r4, #2
	ldrsh r0, [r3, r4]
	adds r0, #0x18
	b _08008BC0
	.align 2, 0
_08008BAC: .4byte gUnknown_020154A0
_08008BB0: .4byte gUnknown_02013730
_08008BB4: .4byte gUnknown_02013744
_08008BB8:
	mov r1, r8
	movs r3, #2
	ldrsh r0, [r1, r3]
	subs r0, #0x18
_08008BC0:
	asrs r1, r2, #0x10
	adds r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _08008BF0
	mov r4, r8
	ldr r0, [r4]
	mov r1, sl
	adds r1, #4
	adds r1, r7, r1
	ldr r1, [r1]
	ldr r3, _08008BEC @ =gUnknown_02013740
	adds r2, r7, r3
	ldrb r2, [r2]
	movs r3, #0
	bl sub_8008930
	mov r4, sb
	str r5, [r4]
	b _08008D68
	.align 2, 0
_08008BEC: .4byte gUnknown_02013740
_08008BF0:
	ldr r4, _08008C24 @ =gUnknown_02013730
	adds r0, r7, r4
	ldr r0, [r0]
	bl sub_800BB44
	adds r5, r0, #0
	adds r0, r4, #4
	adds r0, r7, r0
	ldr r0, [r0]
	bl sub_800BB54
	adds r2, r0, #0
	adds r3, r4, #0
	cmp r5, #0xff
	bls _08008C28
	adds r0, r3, #0
	adds r0, #0x18
	adds r0, r7, r0
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08008C28
	mov r0, sb
	str r1, [r0]
	b _08008D68
	.align 2, 0
_08008C24: .4byte gUnknown_02013730
_08008C28:
	cmp r2, #0
	bge _08008C4C
	ldr r0, _08008C48 @ =gUnknown_02013730
	adds r1, r0, #0
	adds r1, #0x18
	adds r1, r7, r1
	ldr r2, [r1]
	movs r1, #1
	ands r2, r1
	adds r3, r0, #0
	cmp r2, #0
	bne _08008C60
	mov r1, sb
	str r2, [r1]
	b _08008D68
	.align 2, 0
_08008C48: .4byte gUnknown_02013730
_08008C4C:
	ldr r3, _08008C5C @ =gUnknown_02013730
	cmp r2, #0xbf
	ble _08008C60
	movs r0, #0
	mov r2, sb
	str r0, [r2]
	b _08008D68
	.align 2, 0
_08008C5C: .4byte gUnknown_02013730
_08008C60:
	adds r6, r7, r3
	movs r4, #2
	ldrsh r0, [r6, r4]
	adds r1, r3, #4
	adds r4, r7, r1
	movs r2, #2
	ldrsh r1, [r4, r2]
	str r3, [sp, #0x10]
	bl sub_8003B78
	adds r5, r0, #0
	ldr r3, [sp, #0x10]
	cmp r5, #0
	beq _08008D3C
	adds r2, r3, #0
	adds r2, #0x18
	cmp r5, #0x20
	bne _08008C90
	adds r0, r7, r2
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08008D3C
_08008C90:
	adds r3, r7, r2
	ldr r1, [r3]
	movs r2, #2
	ands r2, r1
	cmp r2, #0
	bne _08008D3C
	cmp r5, #0x20
	bne _08008CAC
	ldr r3, _08008CA8 @ =gUnknown_02013744
	adds r0, r7, r3
	str r2, [r0]
	b _08008D68
	.align 2, 0
_08008CA8: .4byte gUnknown_02013744
_08008CAC:
	movs r0, #9
	ands r0, r5
	cmp r0, #1
	bne _08008CD4
	ands r1, r0
	cmp r1, #0
	beq _08008CC8
	ldr r0, [r6]
	ldr r1, [r4]
	ldr r4, _08008CC4 @ =gUnknown_02013740
	adds r2, r7, r4
	b _08008D0E
	.align 2, 0
_08008CC4: .4byte gUnknown_02013740
_08008CC8:
	adds r0, r6, #0
	adds r0, #0x5a
	ldrh r0, [r0]
	cmp r0, #0x30
	bne _08008D20
	b _08008D06
_08008CD4:
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	beq _08008D3C
	ldr r0, [r6]
	ldr r1, [r4]
	str r3, [sp, #0x10]
	bl sub_800D45C
	adds r5, r0, #0
	ldr r1, _08008D18 @ =gUnknown_020155D0
	movs r0, #0x94
	muls r0, r5, r0
	adds r0, r0, r1
	ldrh r1, [r0, #0x1a]
	movs r0, #4
	ands r0, r1
	ldr r3, [sp, #0x10]
	cmp r0, #0
	bne _08008D3C
	ldr r0, [r3]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08008D20
_08008D06:
	ldr r0, [r6]
	ldr r1, [r4]
	ldr r3, _08008D1C @ =gUnknown_02013740
	adds r2, r7, r3
_08008D0E:
	ldrb r2, [r2]
	movs r3, #0
	bl sub_8008930
	b _08008D30
	.align 2, 0
_08008D18: .4byte gUnknown_020155D0
_08008D1C: .4byte gUnknown_02013740
_08008D20:
	ldr r0, [r6]
	ldr r1, [r4]
	ldr r4, _08008D38 @ =gUnknown_02013740
	adds r2, r7, r4
	ldrb r2, [r2]
	movs r3, #3
	bl sub_8008930
_08008D30:
	movs r0, #0
	mov r1, sb
	str r0, [r1]
	b _08008D68
	.align 2, 0
_08008D38: .4byte gUnknown_02013740
_08008D3C:
	ldr r0, _08008D54 @ =gUnknown_02013730
	adds r1, r0, #0
	adds r1, #0x30
	adds r1, r7, r1
	ldr r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	bge _08008D58
	adds r0, #8
	adds r0, r7, r0
	movs r1, #1
	b _08008D60
	.align 2, 0
_08008D54: .4byte gUnknown_02013730
_08008D58:
	adds r0, r3, #0
	adds r0, #8
	adds r0, r7, r0
	movs r1, #0
_08008D60:
	str r1, [r0]
	adds r0, r7, r3
	bl sub_800AD7C
_08008D68:
	adds r7, #0x8c
	movs r2, #0x8c
	add sb, r2
	add r8, r2
	ldr r3, [sp, #0xc]
	adds r3, #0x8c
	str r3, [sp, #0xc]
	ldr r4, [sp, #8]
	adds r4, #1
	str r4, [sp, #8]
	cmp r4, #9
	bgt _08008D82
	b _08008B62
_08008D82:
	ldr r6, _08008DF0 @ =gUnknown_02013350
	movs r0, #0x77
	adds r0, r0, r6
	mov r8, r0
	adds r5, r6, #0
	movs r7, #0
_08008D8E:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _08008E40
	adds r0, r5, #0
	bl sub_800AE68
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _08008E34
	ldrb r1, [r5, #9]
	mov ip, r1
	cmp r1, #0
	bne _08008DF4
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r7, r0
	ldr r2, [r0]
	lsls r2, r2, #0x10
	ldr r0, [r5]
	subs r0, r0, r2
	adds r3, r6, #4
	adds r3, r7, r3
	adds r1, r6, #0
	adds r1, #0x14
	adds r1, r7, r1
	ldr r4, [r1]
	lsls r4, r4, #0x10
	ldr r1, [r3]
	subs r1, r1, r4
	adds r3, r6, #0
	adds r3, #0xc
	adds r3, r7, r3
	ldr r3, [r3]
	lsls r3, r3, #0x10
	adds r2, r2, r3
	adds r3, r6, #0
	adds r3, #0x18
	adds r3, r7, r3
	ldr r3, [r3]
	lsls r3, r3, #0x10
	adds r3, r3, r4
	ldrb r4, [r5, #8]
	str r4, [sp]
	mov r4, ip
	str r4, [sp, #4]
	bl sub_800A770
	b _08008E34
	.align 2, 0
_08008DF0: .4byte gUnknown_02013350
_08008DF4:
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r7, r0
	ldr r2, [r0]
	lsls r2, r2, #0x10
	ldr r0, [r5]
	subs r0, r0, r2
	adds r3, r6, #4
	adds r3, r7, r3
	adds r1, r6, #0
	adds r1, #0x14
	adds r1, r7, r1
	ldr r4, [r1]
	lsls r4, r4, #0x10
	ldr r1, [r3]
	subs r1, r1, r4
	adds r3, r6, #0
	adds r3, #0xc
	adds r3, r7, r3
	ldr r3, [r3]
	lsls r3, r3, #0x10
	adds r2, r2, r3
	adds r3, r6, #0
	adds r3, #0x18
	adds r3, r7, r3
	ldr r3, [r3]
	lsls r3, r3, #0x10
	adds r3, r3, r4
	ldrb r4, [r5, #8]
	str r4, [sp]
	bl sub_800A2EC
_08008E34:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08008E40
	movs r0, #0
	strb r0, [r5, #0xb]
_08008E40:
	movs r2, #0x7c
	add r8, r2
	adds r5, #0x7c
	adds r7, #0x7c
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r0, r6, r3
	cmp r5, r0
	ble _08008D8E
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8008E64
sub_8008E64: @ 0x08008E64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _08008E7A
	b _08009102
_08008E7A:
	ldr r0, [r4, #0x14]
	mov sl, r0
	cmp r0, #0x3f
	bne _08008E84
	b _08009102
_08008E84:
	mov r1, sl
	cmp r1, #0x3d
	bne _08008E8C
	b _08009102
_08008E8C:
	ldr r6, _08008F74 @ =gUnknown_02013730
	str r6, [sp]
	movs r2, #0
	mov r8, r2
	mov sb, r6
_08008E96:
	adds r0, r6, #0
	adds r0, #0x14
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _08008EA4
	b _080090F2
_08008EA4:
	ldr r0, [sp]
	adds r0, #0x10
	add r0, r8
	ldr r0, [r0]
	mov ip, r0
	ldr r0, [r4, #0x24]
	cmp ip, r0
	beq _08008EB6
	b _080090F2
_08008EB6:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08008EBE
	b _08008FC4
_08008EBE:
	adds r0, r6, #0
	adds r0, #0x1c
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #0x10
	mov r3, sb
	ldr r7, [r3]
	adds r1, r7, r1
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, [r4]
	subs r0, r2, r0
	cmp r1, r0
	bge _08008EE2
	b _080090F2
_08008EE2:
	adds r0, r6, #0
	adds r0, #0x20
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #0x10
	subs r1, r7, r1
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	cmp r1, r0
	ble _08008F00
	b _080090F2
_08008F00:
	adds r1, r6, #4
	add r1, r8
	adds r0, r6, #0
	adds r0, #0x28
	add r0, r8
	ldr r2, [r0]
	lsls r2, r2, #0x10
	ldr r5, [r1]
	adds r2, r5, r2
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r3, [r4, #4]
	subs r0, r3, r0
	cmp r2, r0
	bge _08008F26
	b _080090F2
_08008F26:
	adds r0, r6, #0
	adds r0, #0x24
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #0x10
	subs r1, r5, r1
	movs r2, #0xa1
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	lsls r0, r0, #0x10
	adds r0, r3, r0
	cmp r1, r0
	ble _08008F44
	b _080090F2
_08008F44:
	mov r3, sl
	cmp r3, #0x3f
	bne _08008F4C
	b _080090F2
_08008F4C:
	cmp r3, #0x3d
	bne _08008F52
	b _080090F2
_08008F52:
	adds r0, r6, #0
	adds r0, #0x18
	add r0, r8
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08008F78
	mov r0, ip
	lsls r2, r0, #0x18
	lsrs r2, r2, #0x18
	adds r0, r7, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_8008930
	b _08008F88
	.align 2, 0
_08008F74: .4byte gUnknown_02013730
_08008F78:
	mov r1, ip
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	adds r0, r7, #0
	adds r1, r5, #0
	movs r3, #3
	bl sub_8008930
_08008F88:
	ldr r2, [r4, #0x28]
	cmp r2, #0
	beq _08008F90
	b _080090E4
_08008F90:
	ldr r3, _08008FBC @ =gUnknown_02013730
	adds r0, r3, #0
	adds r0, #0x10
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	beq _08008FA6
	ldr r0, _08008FC0 @ =0x000002BD
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
_08008FA6:
	adds r0, r3, #0
	adds r0, #0xc
	add r0, r8
	ldr r1, [r4, #0x10]
	ldr r0, [r0]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	cmp r1, #0
	ble _080090AE
	b _080090DC
	.align 2, 0
_08008FBC: .4byte gUnknown_02013730
_08008FC0: .4byte 0x000002BD
_08008FC4:
	adds r0, r6, #0
	adds r0, #0x1c
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #0x10
	mov r0, sb
	ldr r7, [r0]
	adds r1, r7, r1
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, [r4]
	subs r0, r2, r0
	cmp r1, r0
	bge _08008FE8
	b _080090F2
_08008FE8:
	adds r0, r6, #0
	adds r0, #0x20
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #0x10
	subs r1, r7, r1
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	cmp r1, r0
	bgt _080090F2
	adds r1, r6, #4
	add r1, r8
	adds r0, r6, #0
	adds r0, #0x28
	add r0, r8
	ldr r2, [r0]
	lsls r2, r2, #0x10
	ldr r5, [r1]
	adds r2, r5, r2
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r3, [r4, #4]
	subs r0, r3, r0
	cmp r2, r0
	blt _080090F2
	adds r0, r6, #0
	adds r0, #0x24
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #0x10
	subs r1, r5, r1
	movs r2, #0xa1
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	lsls r0, r0, #0x10
	adds r0, r3, r0
	cmp r1, r0
	bgt _080090F2
	mov r3, sl
	cmp r3, #0x3f
	beq _080090F2
	cmp r3, #0x3d
	beq _080090F2
	adds r0, r6, #0
	adds r0, #0x18
	add r0, r8
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08009070
	mov r0, ip
	lsls r2, r0, #0x18
	lsrs r2, r2, #0x18
	adds r0, r7, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_8008930
	b _08009080
_08009070:
	mov r1, ip
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	adds r0, r7, #0
	adds r1, r5, #0
	movs r3, #3
	bl sub_8008930
_08009080:
	ldr r2, [r4, #0x28]
	cmp r2, #0
	bne _080090E4
	ldr r3, _080090D4 @ =gUnknown_02013730
	adds r0, r3, #0
	adds r0, #0x10
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800909C
	ldr r0, _080090D8 @ =0x000002BD
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
_0800909C:
	adds r0, r3, #0
	adds r0, #0xc
	add r0, r8
	ldr r1, [r4, #0x10]
	ldr r0, [r0]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	cmp r1, #0
	bgt _080090DC
_080090AE:
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	str r2, [r0]
	movs r3, #0x95
	lsls r3, r3, #2
	adds r0, r4, r3
	str r2, [r0]
	adds r1, #8
	adds r0, r4, r1
	str r2, [r0]
	adds r3, #8
	adds r0, r4, r3
	str r2, [r0]
	movs r0, #0x3f
	adds r1, r4, #0
	bl sub_8006F10
	b _080090E4
	.align 2, 0
_080090D4: .4byte gUnknown_02013730
_080090D8: .4byte 0x000002BD
_080090DC:
	movs r0, #0x3d
	adds r1, r4, #0
	bl sub_8006F10
_080090E4:
	adds r0, r6, #0
	adds r0, #0x14
	add r0, r8
	movs r1, #0
	str r1, [r0]
	movs r0, #1
	b _08009104
_080090F2:
	movs r0, #0x8c
	add r8, r0
	add sb, r0
	ldr r1, _08009114 @ =0x000004EC
	adds r0, r6, r1
	cmp sb, r0
	bgt _08009102
	b _08008E96
_08009102:
	movs r0, #0
_08009104:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009114: .4byte 0x000004EC

	thumb_func_start sub_8009118
sub_8009118: @ 0x08009118
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _08009198 @ =gUnknown_083D3A14
	movs r2, #0
	ldr r3, _0800919C @ =0x040000D4
	ldr r0, _080091A0 @ =gUnknown_02013788
	movs r1, #0x44
	rsbs r1, r1, #0
	adds r1, r1, r0
	mov ip, r1
	adds r1, r0, #0
	ldr r0, _080091A4 @ =0x000004EC
	adds r5, r1, r0
	ldr r4, _080091A8 @ =0x8500000B
_08009134:
	str r2, [sp]
	mov r0, sp
	str r0, [r3]
	str r1, [r3, #4]
	str r4, [r3, #8]
	ldr r0, [r3, #8]
	mov r0, ip
	str r2, [r0]
	movs r0, #0x8c
	add ip, r0
	adds r1, #0x8c
	cmp r1, r5
	ble _08009134
	movs r4, #0
	ldr r1, _0800919C @ =0x040000D4
	ldr r0, _080091AC @ =gUnknown_02013398
	movs r2, #0x48
	rsbs r2, r2, #0
	adds r2, r2, r0
	mov ip, r2
	adds r2, r0, #0
	ldr r5, _080091A8 @ =0x8500000B
	movs r3, #7
_08009162:
	str r4, [sp]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, #4]
	str r5, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, ip
	strb r4, [r0, #0xb]
	movs r0, #0x7c
	add ip, r0
	adds r2, #0x7c
	subs r3, #1
	cmp r3, #0
	bge _08009162
	movs r0, #0xb
	movs r1, #4
	adds r2, r6, #0
	bl sub_801A434
	ldr r1, _080091B0 @ =gUnknown_083E0BD8
	movs r0, #0xc
	bl sub_801A42C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08009198: .4byte gUnknown_083D3A14
_0800919C: .4byte 0x040000D4
_080091A0: .4byte gUnknown_02013788
_080091A4: .4byte 0x000004EC
_080091A8: .4byte 0x8500000B
_080091AC: .4byte gUnknown_02013398
_080091B0: .4byte gUnknown_083E0BD8

	thumb_func_start sub_80091B4
sub_80091B4: @ 0x080091B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	str r2, [sp, #4]
	mov ip, r3
	movs r0, #0
	mov r8, r0
	ldr r6, _08009244 @ =gUnknown_02013CC0
_080091CE:
	mov r1, r8
	lsls r0, r1, #2
	adds r1, r0, r1
	lsls r4, r1, #4
	adds r1, r6, #0
	adds r1, #0x10
	adds r1, r4, r1
	ldr r2, [r1]
	adds r5, r0, #0
	cmp r2, #0
	beq _080091E6
	b _08009712
_080091E6:
	movs r3, #1
	str r3, [r1]
	adds r0, r6, #0
	adds r0, #0x14
	adds r0, r4, r0
	str r2, [r0]
	adds r2, r4, r6
	mov r7, sb
	lsls r0, r7, #0x10
	str r0, [r2]
	adds r0, r6, #4
	adds r0, r4, r0
	mov r7, sl
	lsls r1, r7, #0x10
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #8
	adds r0, r4, r0
	ldr r1, [sp, #4]
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	mov r7, ip
	str r7, [r0]
	adds r0, r6, #0
	adds r0, #0x18
	adds r0, r4, r0
	ldr r1, _08009248 @ =gUnknown_083E8F6C
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0x38
	adds r0, r4, r0
	str r3, [r0]
	movs r0, #0xd
	strh r0, [r2, #0x3c]
	ldr r0, [sp, #4]
	subs r0, #1
	cmp r0, #0x1b
	bls _08009238
	b _080096FC
_08009238:
	lsls r0, r0, #2
	ldr r1, _0800924C @ =_08009250
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009244: .4byte gUnknown_02013CC0
_08009248: .4byte gUnknown_083E8F6C
_0800924C: .4byte _08009250
_08009250: @ jump table
	.4byte _080092F8 @ case 0
	.4byte _0800930A @ case 1
	.4byte _0800932C @ case 2
	.4byte _0800933E @ case 3
	.4byte _08009350 @ case 4
	.4byte _0800931A @ case 5
	.4byte _080096FC @ case 6
	.4byte _080096FC @ case 7
	.4byte _080096FC @ case 8
	.4byte _080092C0 @ case 9
	.4byte _08009368 @ case 10
	.4byte _0800937A @ case 11
	.4byte _0800938C @ case 12
	.4byte _0800939E @ case 13
	.4byte _080096FC @ case 14
	.4byte _080096FC @ case 15
	.4byte _080096FC @ case 16
	.4byte _080096FC @ case 17
	.4byte _080096FC @ case 18
	.4byte _080093B8 @ case 19
	.4byte _08009414 @ case 20
	.4byte _08009470 @ case 21
	.4byte _080094CC @ case 22
	.4byte _08009528 @ case 23
	.4byte _08009584 @ case 24
	.4byte _080095E0 @ case 25
	.4byte _0800963C @ case 26
	.4byte _08009698 @ case 27
_080092C0:
	ldr r1, _080092E4 @ =gUnknown_02000AD4
	movs r0, #1
	mov r2, ip
	lsls r0, r2
	ldr r1, [r1]
	ands r1, r0
	cmp r1, #0
	beq _080092E8
	mov r7, r8
	adds r0, r5, r7
	lsls r0, r0, #4
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	b _0800971E
	.align 2, 0
_080092E4: .4byte gUnknown_02000AD4
_080092E8:
	mov r2, r8
	adds r0, r5, r2
	lsls r0, r0, #4
	adds r0, r0, r6
	str r1, [sp]
	movs r1, #4
	movs r2, #0xf
	b _080093B0
_080092F8:
	mov r7, r8
	adds r0, r5, r7
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	str r1, [sp]
	movs r1, #2
	movs r2, #8
	b _08009360
_0800930A:
	mov r1, r8
	adds r0, r5, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	str r1, [sp]
	movs r2, #5
	b _080093B0
_0800931A:
	mov r2, r8
	adds r0, r5, r2
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xa
	movs r2, #5
	b _080093B0
_0800932C:
	mov r7, r8
	adds r0, r5, r7
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r2, #9
	b _08009360
_0800933E:
	mov r1, r8
	adds r0, r5, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	str r1, [sp]
	movs r1, #3
	movs r2, #0x13
	b _08009360
_08009350:
	mov r2, r8
	adds r0, r5, r2
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	str r1, [sp]
	movs r1, #5
	movs r2, #0x15
_08009360:
	movs r3, #3
	bl sub_800AFF8
	b _0800970E
_08009368:
	mov r7, r8
	adds r0, r5, r7
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	strh r1, [r0, #0x3c]
	str r1, [sp]
	movs r1, #6
	b _080093AE
_0800937A:
	mov r1, r8
	adds r0, r5, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	strh r1, [r0, #0x3c]
	str r1, [sp]
	movs r1, #7
	b _080093AE
_0800938C:
	mov r2, r8
	adds r0, r5, r2
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	strh r1, [r0, #0x3c]
	str r1, [sp]
	movs r1, #8
	b _080093AE
_0800939E:
	mov r7, r8
	adds r0, r5, r7
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	strh r1, [r0, #0x3c]
	str r1, [sp]
	movs r1, #9
_080093AE:
	movs r2, #2
_080093B0:
	movs r3, #4
	bl sub_800AFF8
	b _0800970E
_080093B8:
	ldr r0, _080093D8 @ =gUnknown_02000AE0
	ldr r7, [r0]
	cmp r7, #0
	beq _080093E4
	ldr r1, _080093DC @ =gUnknown_02012694
	ldr r0, _080093E0 @ =0x00001388
	str r0, [r1]
	mov r0, r8
	adds r1, r5, r0
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #0x10
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _0800971E
	.align 2, 0
_080093D8: .4byte gUnknown_02000AE0
_080093DC: .4byte gUnknown_02012694
_080093E0: .4byte 0x00001388
_080093E4:
	ldr r4, _0800940C @ =gUnknown_0841E11C
	movs r0, #0xa
	movs r1, #0
	adds r2, r4, #0
	bl sub_801A434
	ldr r3, _08009410 @ =gUnknown_02013CC0
	mov r1, r8
	adds r2, r5, r1
	lsls r2, r2, #4
	adds r0, r2, r3
	movs r1, #0xa
	strh r1, [r0, #0x3c]
	adds r3, #0x18
	adds r2, r2, r3
	str r4, [r2]
	str r7, [sp]
	movs r1, #0
	b _080096E8
	.align 2, 0
_0800940C: .4byte gUnknown_0841E11C
_08009410: .4byte gUnknown_02013CC0
_08009414:
	ldr r0, _08009434 @ =gUnknown_02000AE0
	ldr r7, [r0, #4]
	cmp r7, #0
	beq _08009440
	ldr r1, _08009438 @ =gUnknown_02012694
	ldr r0, _0800943C @ =0x00001388
	str r0, [r1]
	mov r2, r8
	adds r1, r5, r2
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #0x10
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _0800971E
	.align 2, 0
_08009434: .4byte gUnknown_02000AE0
_08009438: .4byte gUnknown_02012694
_0800943C: .4byte 0x00001388
_08009440:
	ldr r4, _08009468 @ =gUnknown_0841E11C
	movs r0, #0xa
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r3, _0800946C @ =gUnknown_02013CC0
	mov r0, r8
	adds r2, r5, r0
	lsls r2, r2, #4
	adds r0, r2, r3
	movs r1, #0xa
	strh r1, [r0, #0x3c]
	adds r3, #0x18
	adds r2, r2, r3
	str r4, [r2]
	str r7, [sp]
	movs r1, #1
	b _080096E8
	.align 2, 0
_08009468: .4byte gUnknown_0841E11C
_0800946C: .4byte gUnknown_02013CC0
_08009470:
	ldr r0, _08009490 @ =gUnknown_02000AE0
	ldr r7, [r0, #8]
	cmp r7, #0
	beq _0800949C
	ldr r1, _08009494 @ =gUnknown_02012694
	ldr r0, _08009498 @ =0x00001388
	str r0, [r1]
	mov r2, r8
	adds r1, r5, r2
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #0x10
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _0800971E
	.align 2, 0
_08009490: .4byte gUnknown_02000AE0
_08009494: .4byte gUnknown_02012694
_08009498: .4byte 0x00001388
_0800949C:
	ldr r4, _080094C4 @ =gUnknown_0841E11C
	movs r0, #0xa
	movs r1, #2
	adds r2, r4, #0
	bl sub_801A434
	ldr r3, _080094C8 @ =gUnknown_02013CC0
	mov r0, r8
	adds r2, r5, r0
	lsls r2, r2, #4
	adds r0, r2, r3
	movs r1, #0xa
	strh r1, [r0, #0x3c]
	adds r3, #0x18
	adds r2, r2, r3
	str r4, [r2]
	str r7, [sp]
	movs r1, #2
	b _080096E8
	.align 2, 0
_080094C4: .4byte gUnknown_0841E11C
_080094C8: .4byte gUnknown_02013CC0
_080094CC:
	ldr r0, _080094EC @ =gUnknown_02000AE0
	ldr r7, [r0, #0xc]
	cmp r7, #0
	beq _080094F8
	ldr r1, _080094F0 @ =gUnknown_02012694
	ldr r0, _080094F4 @ =0x00001388
	str r0, [r1]
	mov r2, r8
	adds r1, r5, r2
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #0x10
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _0800971E
	.align 2, 0
_080094EC: .4byte gUnknown_02000AE0
_080094F0: .4byte gUnknown_02012694
_080094F4: .4byte 0x00001388
_080094F8:
	ldr r4, _08009520 @ =gUnknown_0841E11C
	movs r0, #0xa
	movs r1, #3
	adds r2, r4, #0
	bl sub_801A434
	ldr r3, _08009524 @ =gUnknown_02013CC0
	mov r0, r8
	adds r2, r5, r0
	lsls r2, r2, #4
	adds r0, r2, r3
	movs r1, #0xa
	strh r1, [r0, #0x3c]
	adds r3, #0x18
	adds r2, r2, r3
	str r4, [r2]
	str r7, [sp]
	movs r1, #3
	b _080096E8
	.align 2, 0
_08009520: .4byte gUnknown_0841E11C
_08009524: .4byte gUnknown_02013CC0
_08009528:
	ldr r0, _08009548 @ =gUnknown_02000AE0
	ldr r7, [r0, #0x10]
	cmp r7, #0
	beq _08009554
	ldr r1, _0800954C @ =gUnknown_02012694
	ldr r0, _08009550 @ =0x00001388
	str r0, [r1]
	mov r2, r8
	adds r1, r5, r2
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #0x10
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _0800971E
	.align 2, 0
_08009548: .4byte gUnknown_02000AE0
_0800954C: .4byte gUnknown_02012694
_08009550: .4byte 0x00001388
_08009554:
	ldr r4, _0800957C @ =gUnknown_0841E11C
	movs r0, #0xa
	movs r1, #4
	adds r2, r4, #0
	bl sub_801A434
	ldr r3, _08009580 @ =gUnknown_02013CC0
	mov r0, r8
	adds r2, r5, r0
	lsls r2, r2, #4
	adds r0, r2, r3
	movs r1, #0xa
	strh r1, [r0, #0x3c]
	adds r3, #0x18
	adds r2, r2, r3
	str r4, [r2]
	str r7, [sp]
	movs r1, #4
	b _080096E8
	.align 2, 0
_0800957C: .4byte gUnknown_0841E11C
_08009580: .4byte gUnknown_02013CC0
_08009584:
	ldr r0, _080095A4 @ =gUnknown_02000AE0
	ldr r7, [r0, #0x14]
	cmp r7, #0
	beq _080095B0
	ldr r1, _080095A8 @ =gUnknown_02012694
	ldr r0, _080095AC @ =0x00001388
	str r0, [r1]
	mov r2, r8
	adds r1, r5, r2
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #0x10
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _0800971E
	.align 2, 0
_080095A4: .4byte gUnknown_02000AE0
_080095A8: .4byte gUnknown_02012694
_080095AC: .4byte 0x00001388
_080095B0:
	ldr r4, _080095D8 @ =gUnknown_0841E11C
	movs r0, #0xa
	movs r1, #5
	adds r2, r4, #0
	bl sub_801A434
	ldr r3, _080095DC @ =gUnknown_02013CC0
	mov r0, r8
	adds r2, r5, r0
	lsls r2, r2, #4
	adds r0, r2, r3
	movs r1, #0xa
	strh r1, [r0, #0x3c]
	adds r3, #0x18
	adds r2, r2, r3
	str r4, [r2]
	str r7, [sp]
	movs r1, #5
	b _080096E8
	.align 2, 0
_080095D8: .4byte gUnknown_0841E11C
_080095DC: .4byte gUnknown_02013CC0
_080095E0:
	ldr r0, _08009600 @ =gUnknown_02000AE0
	ldr r7, [r0, #0x18]
	cmp r7, #0
	beq _0800960C
	ldr r1, _08009604 @ =gUnknown_02012694
	ldr r0, _08009608 @ =0x00001388
	str r0, [r1]
	mov r2, r8
	adds r1, r5, r2
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #0x10
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _0800971E
	.align 2, 0
_08009600: .4byte gUnknown_02000AE0
_08009604: .4byte gUnknown_02012694
_08009608: .4byte 0x00001388
_0800960C:
	ldr r4, _08009634 @ =gUnknown_0841E11C
	movs r0, #0xa
	movs r1, #6
	adds r2, r4, #0
	bl sub_801A434
	ldr r3, _08009638 @ =gUnknown_02013CC0
	mov r0, r8
	adds r2, r5, r0
	lsls r2, r2, #4
	adds r0, r2, r3
	movs r1, #0xa
	strh r1, [r0, #0x3c]
	adds r3, #0x18
	adds r2, r2, r3
	str r4, [r2]
	str r7, [sp]
	movs r1, #6
	b _080096E8
	.align 2, 0
_08009634: .4byte gUnknown_0841E11C
_08009638: .4byte gUnknown_02013CC0
_0800963C:
	ldr r0, _0800965C @ =gUnknown_02000AE0
	ldr r7, [r0, #0x1c]
	cmp r7, #0
	beq _08009668
	ldr r1, _08009660 @ =gUnknown_02012694
	ldr r0, _08009664 @ =0x00001388
	str r0, [r1]
	mov r2, r8
	adds r1, r5, r2
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #0x10
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _0800971E
	.align 2, 0
_0800965C: .4byte gUnknown_02000AE0
_08009660: .4byte gUnknown_02012694
_08009664: .4byte 0x00001388
_08009668:
	ldr r4, _08009690 @ =gUnknown_0841E11C
	movs r0, #0xa
	movs r1, #7
	adds r2, r4, #0
	bl sub_801A434
	ldr r3, _08009694 @ =gUnknown_02013CC0
	mov r0, r8
	adds r2, r5, r0
	lsls r2, r2, #4
	adds r0, r2, r3
	movs r1, #0xa
	strh r1, [r0, #0x3c]
	adds r3, #0x18
	adds r2, r2, r3
	str r4, [r2]
	str r7, [sp]
	movs r1, #7
	b _080096E8
	.align 2, 0
_08009690: .4byte gUnknown_0841E11C
_08009694: .4byte gUnknown_02013CC0
_08009698:
	ldr r0, _080096B8 @ =gUnknown_02000AE0
	ldr r7, [r0, #0x20]
	cmp r7, #0
	beq _080096C4
	ldr r1, _080096BC @ =gUnknown_02012694
	ldr r0, _080096C0 @ =0x00001388
	str r0, [r1]
	mov r2, r8
	adds r1, r5, r2
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #0x10
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _0800971E
	.align 2, 0
_080096B8: .4byte gUnknown_02000AE0
_080096BC: .4byte gUnknown_02012694
_080096C0: .4byte 0x00001388
_080096C4:
	ldr r4, _080096F4 @ =gUnknown_0841E11C
	movs r0, #0xa
	movs r1, #8
	adds r2, r4, #0
	bl sub_801A434
	ldr r3, _080096F8 @ =gUnknown_02013CC0
	mov r0, r8
	adds r2, r5, r0
	lsls r2, r2, #4
	adds r0, r2, r3
	movs r1, #0xa
	strh r1, [r0, #0x3c]
	adds r3, #0x18
	adds r2, r2, r3
	str r4, [r2]
	str r7, [sp]
	movs r1, #8
_080096E8:
	movs r2, #0xff
	movs r3, #5
	bl sub_800AFF8
	b _0800970E
	.align 2, 0
_080096F4: .4byte gUnknown_0841E11C
_080096F8: .4byte gUnknown_02013CC0
_080096FC:
	mov r1, r8
	adds r0, r5, r1
	lsls r0, r0, #4
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	b _0800971E
_0800970E:
	mov r0, r8
	b _08009722
_08009712:
	movs r2, #1
	add r8, r2
	mov r7, r8
	cmp r7, #0x1f
	bgt _0800971E
	b _080091CE
_0800971E:
	movs r0, #1
	rsbs r0, r0, #0
_08009722:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009734
sub_8009734: @ 0x08009734
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	movs r1, #0
	mov sb, r1
_0800974A:
	ldr r1, _08009778 @ =gUnknown_02013CC0
	mov r3, sb
	lsls r2, r3, #2
	adds r0, r2, r3
	lsls r5, r0, #4
	adds r0, r1, #0
	adds r0, #0x10
	adds r0, r5, r0
	ldr r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	bne _08009764
	b _08009BA4
_08009764:
	adds r0, r6, #0
	adds r0, #0x14
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800977C
	subs r0, #1
	str r0, [r1]
	b _08009BA4
	.align 2, 0
_08009778: .4byte gUnknown_02013CC0
_0800977C:
	adds r0, r5, r6
	ldr r4, [r0]
	movs r7, #0x80
	lsls r7, r7, #0xb
	mov ip, r7
	mov r0, ip
	adds r1, r4, r0
	movs r0, #0x9f
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	lsls r0, r0, #0x10
	mov r7, r8
	ldr r3, [r7]
	subs r0, r3, r0
	cmp r1, r0
	bge _080097A0
	b _08009B98
_080097A0:
	ldr r0, _08009804 @ =0xFFFC0000
	adds r1, r4, r0
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	lsls r0, r0, #0x10
	adds r0, r3, r0
	cmp r1, r0
	ble _080097B6
	b _08009B98
_080097B6:
	adds r0, r6, #4
	adds r0, r5, r0
	ldr r4, [r0]
	mov r3, ip
	adds r1, r4, r3
	movs r0, #0xa0
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r3, [r7, #4]
	subs r0, r3, r0
	cmp r1, r0
	bge _080097D4
	b _08009B98
_080097D4:
	ldr r7, _08009804 @ =0xFFFC0000
	adds r1, r4, r7
	movs r0, #0xa1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	lsls r0, r0, #0x10
	adds r0, r3, r0
	cmp r1, r0
	ble _080097EA
	b _08009B98
_080097EA:
	adds r0, r6, #0
	adds r0, #8
	adds r0, r5, r0
	ldr r0, [r0]
	subs r0, #1
	cmp r0, #0x1b
	bls _080097FA
	b _08009B7A
_080097FA:
	lsls r0, r0, #2
	ldr r1, _08009808 @ =_0800980C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009804: .4byte 0xFFFC0000
_08009808: .4byte _0800980C
_0800980C: @ jump table
	.4byte _080098C0 @ case 0
	.4byte _08009908 @ case 1
	.4byte _08009978 @ case 2
	.4byte _080099BC @ case 3
	.4byte _080099F4 @ case 4
	.4byte _08009940 @ case 5
	.4byte _08009B7A @ case 6
	.4byte _08009B7A @ case 7
	.4byte _08009B7A @ case 8
	.4byte _0800987C @ case 9
	.4byte _08009A28 @ case 10
	.4byte _08009A68 @ case 11
	.4byte _08009AA8 @ case 12
	.4byte _08009AE8 @ case 13
	.4byte _08009B7A @ case 14
	.4byte _08009B7A @ case 15
	.4byte _08009B7A @ case 16
	.4byte _08009B7A @ case 17
	.4byte _08009B7A @ case 18
	.4byte _08009B34 @ case 19
	.4byte _08009B34 @ case 20
	.4byte _08009B34 @ case 21
	.4byte _08009B34 @ case 22
	.4byte _08009B34 @ case 23
	.4byte _08009B34 @ case 24
	.4byte _08009B34 @ case 25
	.4byte _08009B34 @ case 26
	.4byte _08009B34 @ case 27
_0800987C:
	mov r0, sb
	adds r4, r2, r0
	lsls r4, r4, #4
	adds r0, r4, r6
	ldr r0, [r0]
	adds r1, r6, #4
	adds r1, r4, r1
	ldr r1, [r1]
	ldr r2, _080098B8 @ =0xFFF80000
	adds r1, r1, r2
	movs r2, #0
	movs r3, #0x10
	bl sub_8008930
	ldr r2, _080098BC @ =gUnknown_02000AD4
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	adds r0, r6, #0
	adds r0, #0x10
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	b _08009B1A
	.align 2, 0
_080098B8: .4byte 0xFFF80000
_080098BC: .4byte gUnknown_02000AD4
_080098C0:
	ldr r5, _080098FC @ =gUnknown_02000800
	ldr r0, [r5]
	cmp r0, #8
	ble _080098CA
	b _08009B7A
_080098CA:
	mov r3, sb
	adds r4, r2, r3
	lsls r4, r4, #4
	adds r0, r4, r6
	ldr r0, [r0]
	adds r1, r6, #4
	adds r1, r4, r1
	ldr r1, [r1]
	ldr r7, _08009900 @ =0xFFF80000
	adds r1, r1, r7
	movs r2, #0
	movs r3, #0x10
	bl sub_8008930
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	adds r0, r6, #0
	adds r0, #0x10
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	ldr r0, _08009904 @ =gUnknown_087F7644
	b _08009B1C
	.align 2, 0
_080098FC: .4byte gUnknown_02000800
_08009900: .4byte 0xFFF80000
_08009904: .4byte gUnknown_087F7644
_08009908:
	mov r0, sb
	adds r4, r2, r0
	lsls r4, r4, #4
	adds r0, r4, r6
	ldr r0, [r0]
	adds r1, r6, #4
	adds r1, r4, r1
	ldr r1, [r1]
	ldr r2, _08009938 @ =0xFFF80000
	adds r1, r1, r2
	movs r2, #0
	movs r3, #0x10
	bl sub_8008930
	ldr r1, _0800993C @ =gUnknown_02012638
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x10
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	b _08009B1A
	.align 2, 0
_08009938: .4byte 0xFFF80000
_0800993C: .4byte gUnknown_02012638
_08009940:
	mov r3, sb
	adds r4, r2, r3
	lsls r4, r4, #4
	adds r0, r4, r6
	ldr r0, [r0]
	adds r1, r6, #4
	adds r1, r4, r1
	ldr r1, [r1]
	ldr r7, _08009970 @ =0xFFF80000
	adds r1, r1, r7
	movs r2, #0
	movs r3, #0x10
	bl sub_8008930
	ldr r1, _08009974 @ =gUnknown_02012638
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x10
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	b _08009B1A
	.align 2, 0
_08009970: .4byte 0xFFF80000
_08009974: .4byte gUnknown_02012638
_08009978:
	mov r1, sb
	adds r0, r2, r1
	lsls r4, r0, #4
	adds r0, r4, r6
	ldr r0, [r0]
	adds r1, r6, #4
	adds r1, r4, r1
	ldr r1, [r1]
	ldr r2, _080099B4 @ =0xFFF80000
	adds r1, r1, r2
	movs r2, #0
	movs r3, #0x10
	bl sub_8008930
	mov r3, r8
	ldr r0, [r3, #0x10]
	adds r0, #2
	str r0, [r3, #0x10]
	ldr r1, [r3, #0xc]
	cmp r0, r1
	ble _080099A4
	str r1, [r3, #0x10]
_080099A4:
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0]
	ldr r0, _080099B8 @ =gUnknown_087F7644
	b _08009B1C
	.align 2, 0
_080099B4: .4byte 0xFFF80000
_080099B8: .4byte gUnknown_087F7644
_080099BC:
	mov r7, sb
	adds r4, r2, r7
	lsls r4, r4, #4
	adds r0, r4, r6
	ldr r0, [r0]
	adds r1, r6, #4
	adds r1, r4, r1
	ldr r1, [r1]
	ldr r2, _080099EC @ =0xFFF80000
	adds r1, r1, r2
	movs r2, #0
	movs r3, #0x10
	bl sub_8008930
	ldr r1, _080099F0 @ =gUnknown_020126F8
	movs r0, #1
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x10
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	b _08009B1A
	.align 2, 0
_080099EC: .4byte 0xFFF80000
_080099F0: .4byte gUnknown_020126F8
_080099F4:
	mov r3, sb
	adds r4, r2, r3
	lsls r4, r4, #4
	adds r0, r4, r6
	ldr r0, [r0]
	adds r1, r6, #4
	adds r1, r4, r1
	ldr r1, [r1]
	ldr r7, _08009A24 @ =0xFFF80000
	adds r1, r1, r7
	movs r2, #0
	movs r3, #0x10
	bl sub_8008930
	mov r1, r8
	ldr r0, [r1, #0x58]
	adds r0, #1
	str r0, [r1, #0x58]
	adds r0, r6, #0
	adds r0, #0x14
	adds r4, r4, r0
	movs r0, #0x78
	str r0, [r4]
	b _08009B1A
	.align 2, 0
_08009A24: .4byte 0xFFF80000
_08009A28:
	mov r3, sb
	adds r4, r2, r3
	lsls r4, r4, #4
	adds r0, r4, r6
	ldr r0, [r0]
	adds r1, r6, #4
	adds r1, r4, r1
	ldr r1, [r1]
	ldr r7, _08009A5C @ =0xFFF80000
	adds r1, r1, r7
	movs r2, #0
	movs r3, #0x10
	bl sub_8008930
	ldr r1, _08009A60 @ =gUnknown_020003A0
	movs r0, #1
	str r0, [r1, #0x28]
	adds r0, r6, #0
	adds r0, #0x10
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	ldr r1, _08009A64 @ =gUnknown_0201A638
	movs r0, #3
	b _08009B18
	.align 2, 0
_08009A5C: .4byte 0xFFF80000
_08009A60: .4byte gUnknown_020003A0
_08009A64: .4byte gUnknown_0201A638
_08009A68:
	mov r0, sb
	adds r4, r2, r0
	lsls r4, r4, #4
	adds r0, r4, r6
	ldr r0, [r0]
	adds r1, r6, #4
	adds r1, r4, r1
	ldr r1, [r1]
	ldr r2, _08009A9C @ =0xFFF80000
	adds r1, r1, r2
	movs r2, #0
	movs r3, #0x10
	bl sub_8008930
	ldr r0, _08009AA0 @ =gUnknown_020003A0
	movs r1, #1
	str r1, [r0, #0x20]
	adds r0, r6, #0
	adds r0, #0x10
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	ldr r0, _08009AA4 @ =gUnknown_0201A638
	str r1, [r0]
	b _08009B1A
	.align 2, 0
_08009A9C: .4byte 0xFFF80000
_08009AA0: .4byte gUnknown_020003A0
_08009AA4: .4byte gUnknown_0201A638
_08009AA8:
	mov r3, sb
	adds r4, r2, r3
	lsls r4, r4, #4
	adds r0, r4, r6
	ldr r0, [r0]
	adds r1, r6, #4
	adds r1, r4, r1
	ldr r1, [r1]
	ldr r7, _08009ADC @ =0xFFF80000
	adds r1, r1, r7
	movs r2, #0
	movs r3, #0x10
	bl sub_8008930
	ldr r1, _08009AE0 @ =gUnknown_020003A0
	movs r0, #1
	str r0, [r1, #0x24]
	adds r0, r6, #0
	adds r0, #0x10
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	ldr r1, _08009AE4 @ =gUnknown_0201A638
	movs r0, #2
	b _08009B18
	.align 2, 0
_08009ADC: .4byte 0xFFF80000
_08009AE0: .4byte gUnknown_020003A0
_08009AE4: .4byte gUnknown_0201A638
_08009AE8:
	mov r0, sb
	adds r4, r2, r0
	lsls r4, r4, #4
	adds r0, r4, r6
	ldr r0, [r0]
	adds r1, r6, #4
	adds r1, r4, r1
	ldr r1, [r1]
	ldr r2, _08009B24 @ =0xFFF80000
	adds r1, r1, r2
	movs r2, #0
	movs r3, #0x10
	bl sub_8008930
	ldr r1, _08009B28 @ =gUnknown_020003A0
	movs r0, #1
	str r0, [r1, #0x2c]
	adds r0, r6, #0
	adds r0, #0x10
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	ldr r1, _08009B2C @ =gUnknown_0201A638
	movs r0, #4
_08009B18:
	str r0, [r1]
_08009B1A:
	ldr r0, _08009B30 @ =gUnknown_087F79AC
_08009B1C:
	movs r1, #2
	bl sub_8003A9C
	b _08009B7A
	.align 2, 0
_08009B24: .4byte 0xFFF80000
_08009B28: .4byte gUnknown_020003A0
_08009B2C: .4byte gUnknown_0201A638
_08009B30: .4byte gUnknown_087F79AC
_08009B34:
	mov r3, sb
	adds r4, r2, r3
	lsls r4, r4, #4
	adds r5, r4, r6
	ldr r0, [r5]
	adds r1, r6, #4
	adds r1, r4, r1
	ldr r1, [r1]
	ldr r7, _08009B80 @ =0xFFF80000
	adds r1, r1, r7
	movs r2, #0
	movs r3, #0x10
	bl sub_8008930
	ldr r1, _08009B84 @ =gUnknown_02000AE0
	ldrh r0, [r5, #0x1e]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	ldr r1, _08009B88 @ =gUnknown_02012694
	ldr r0, _08009B8C @ =0x00001388
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x10
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	ldr r1, _08009B90 @ =gUnknown_02012624
	ldrh r0, [r5, #0x1e]
	str r0, [r1]
	ldr r0, _08009B94 @ =gUnknown_087F77CC
	movs r1, #2
	bl sub_8003A9C
_08009B7A:
	mov sl, sb
	b _08009BA4
	.align 2, 0
_08009B80: .4byte 0xFFF80000
_08009B84: .4byte gUnknown_02000AE0
_08009B88: .4byte gUnknown_02012694
_08009B8C: .4byte 0x00001388
_08009B90: .4byte gUnknown_02012624
_08009B94: .4byte gUnknown_087F77CC
_08009B98:
	mov r1, sb
	adds r0, r2, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	bl sub_800AF50
_08009BA4:
	movs r2, #1
	add sb, r2
	mov r3, sb
	cmp r3, #0x1f
	bgt _08009BB0
	b _0800974A
_08009BB0:
	mov r0, sl
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8009BC0
sub_8009BC0: @ 0x08009BC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08009C30 @ =gUnknown_083E8F6C
	mov sb, r0
	movs r5, #0
	ldr r2, _08009C34 @ =0x040000D4
	ldr r0, _08009C38 @ =gUnknown_02013CDC
	movs r1, #0xc
	rsbs r1, r1, #0
	adds r1, r1, r0
	mov ip, r1
	adds r3, r0, #0
	movs r4, #0
	ldr r0, _08009C3C @ =0x8500000B
	mov r8, r0
	adds r7, r3, #0
	subs r7, #0x1c
	movs r6, #0xd
	movs r1, #0x1f
_08009BEC:
	str r5, [sp]
	mov r0, sp
	str r0, [r2]
	str r3, [r2, #4]
	mov r0, r8
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, r7
	strh r6, [r0, #0x3c]
	mov r0, ip
	str r5, [r0]
	movs r0, #0x50
	add ip, r0
	adds r3, #0x50
	adds r4, #0x50
	subs r1, #1
	cmp r1, #0
	bge _08009BEC
	movs r0, #0xd
	mov r1, sb
	bl sub_801A42C
	ldr r1, _08009C40 @ =gUnknown_0841E11C
	movs r0, #0xa
	bl sub_801A42C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009C30: .4byte gUnknown_083E8F6C
_08009C34: .4byte 0x040000D4
_08009C38: .4byte gUnknown_02013CDC
_08009C3C: .4byte 0x8500000B
_08009C40: .4byte gUnknown_0841E11C

	thumb_func_start sub_8009C44
sub_8009C44: @ 0x08009C44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	movs r7, #0
	ldr r3, _08009E54 @ =gUnknown_020146E0
_08009C5C:
	lsls r2, r7, #1
	adds r0, r2, r7
	lsls r0, r0, #2
	subs r0, r0, r7
	lsls r0, r0, #6
	adds r1, r3, #0
	adds r1, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	str r2, [sp, #0x20]
	cmp r0, #0
	beq _08009C76
	b _0800A2B8
_08009C76:
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r1, _08009E58 @ =gUnknown_087F85D8
	mov sb, r1
_08009C7E:
	ldr r2, [sp, #0x18]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #2
	mov sl, r0
	add r0, sb
	ldr r0, [r0]
	ldr r3, [sp, #0x14]
	cmp r3, r0
	beq _08009C94
	b _0800A22C
_08009C94:
	movs r4, #0
	str r4, [sp, #4]
	ldr r1, _08009E5C @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r2, [sp, #0x20]
	adds r4, r2, r7
	lsls r4, r4, #2
	subs r4, r4, r7
	lsls r4, r4, #6
	ldr r5, _08009E60 @ =gUnknown_02014968
	adds r0, r4, r5
	str r0, [r1, #4]
	ldr r0, _08009E64 @ =0x8500000B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r5, #0
	subs r0, #0x38
	adds r0, r4, r0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0
	movs r3, #0x40
	bl sub_8006FC8
	mov r6, sb
	adds r6, #8
	add r6, sl
	ldr r0, [r6]
	movs r3, #0x20
	add r3, sb
	mov r8, r3
	add r8, sl
	mov r2, r8
	ldr r1, [r2]
	bl sub_801A42C
	ldr r3, _08009E68 @ =0xFFFFFD78
	adds r0, r5, r3
	adds r0, r4, r0
	str r0, [sp, #0x1c]
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800ACF8
	ldr r1, _08009E6C @ =0xFFFFFD84
	adds r2, r5, r1
	adds r2, r4, r2
	mov r1, sb
	adds r1, #4
	add r1, sl
	ldr r0, [r1]
	str r0, [r2]
	ldr r2, _08009E70 @ =0xFFFFFD88
	adds r0, r5, r2
	adds r0, r4, r0
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6]
	ldr r3, [sp, #0x1c]
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r3, r2
	strh r1, [r0]
	ldr r1, [r6]
	adds r2, #0x14
	adds r0, r3, r2
	strb r1, [r0]
	adds r1, r5, #0
	subs r1, #0x3c
	adds r1, r4, r1
	mov r3, r8
	ldr r0, [r3]
	str r0, [r1]
	ldr r2, _08009E74 @ =0xFFFFFD80
	adds r1, r5, r2
	adds r1, r4, r1
	movs r2, #1
	str r2, [r1]
	ldr r3, _08009E78 @ =0xFFFFFDC4
	adds r1, r5, r3
	adds r1, r4, r1
	movs r2, #0
	str r2, [r1]
	adds r3, #4
	adds r1, r5, r3
	adds r1, r4, r1
	str r2, [r1]
	ldr r2, _08009E7C @ =0xFFFFFDCC
	adds r1, r5, r2
	adds r1, r4, r1
	movs r3, #0
	str r3, [r1]
	adds r2, #4
	adds r1, r5, r2
	adds r1, r4, r1
	str r3, [r1]
	ldr r3, _08009E80 @ =0xFFFFFDD4
	adds r1, r5, r3
	adds r1, r4, r1
	movs r2, #0
	str r2, [r1]
	adds r3, #0x18
	adds r1, r5, r3
	adds r1, r4, r1
	ldr r2, [sp, #0x18]
	str r2, [r1]
	adds r3, #4
	adds r1, r5, r3
	adds r1, r4, r1
	ldr r2, [sp, #0x14]
	str r2, [r1]
	adds r3, #0xc
	adds r1, r5, r3
	adds r1, r4, r1
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	str r2, [r1]
	ldr r2, _08009E84 @ =0xFFFFFE00
	adds r1, r5, r2
	adds r1, r4, r1
	ldr r3, [sp, #0xc]
	lsls r2, r3, #0x10
	str r2, [r1]
	ldr r1, _08009E88 @ =0xFFFFFE04
	adds r2, r5, r1
	adds r2, r4, r2
	mov r1, sb
	adds r1, #0x14
	add r1, sl
	ldr r1, [r1]
	str r1, [r2]
	ldr r3, _08009E8C @ =0xFFFFFE08
	adds r2, r5, r3
	adds r2, r4, r2
	mov r1, sb
	adds r1, #0x18
	add r1, sl
	ldr r1, [r1]
	str r1, [r2]
	ldr r1, _08009E90 @ =0xFFFFFE0C
	adds r2, r5, r1
	adds r2, r4, r2
	mov r1, sb
	adds r1, #0x1c
	add r1, sl
	ldr r1, [r1]
	str r1, [r2]
	adds r3, #0xc
	adds r2, r5, r3
	adds r2, r4, r2
	mov r1, sb
	adds r1, #0xc
	add r1, sl
	ldr r1, [r1]
	str r1, [r2]
	ldr r1, _08009E94 @ =0xFFFFFE18
	adds r2, r5, r1
	adds r2, r4, r2
	mov r1, sb
	adds r1, #0x10
	add r1, sl
	ldr r1, [r1]
	str r1, [r2]
	ldr r2, _08009E98 @ =0xFFFFFEC4
	adds r1, r5, r2
	adds r1, r4, r1
	ldr r2, _08009E9C @ =sub_8006F0C
	str r2, [r1]
	adds r3, #0xb4
	adds r1, r5, r3
	adds r1, r4, r1
	ldr r2, _08009EA0 @ =sub_80106D8
	str r2, [r1]
	ldr r2, _08009EA4 @ =0xFFFFFED8
	adds r1, r5, r2
	adds r1, r4, r1
	ldr r2, _08009EA8 @ =sub_80106D4
	str r2, [r1]
	adds r3, #0xc
	adds r1, r5, r3
	adds r1, r4, r1
	ldr r2, _08009EAC @ =sub_8010724
	str r2, [r1]
	ldr r2, _08009EB0 @ =0xFFFFFEF0
	adds r1, r5, r2
	adds r1, r4, r1
	ldr r2, _08009EB4 @ =sub_801084C
	str r2, [r1]
	adds r1, r5, #0
	subs r1, #0xf0
	adds r1, r4, r1
	ldr r2, _08009EB8 @ =sub_8010958
	str r2, [r1]
	adds r1, r5, #0
	subs r1, #0x40
	adds r1, r4, r1
	ldr r2, _08009EBC @ =sub_8010B1C
	str r2, [r1]
	subs r5, #0x48
	adds r4, r4, r5
	ldr r1, _08009EC0 @ =sub_8010A58
	str r1, [r4]
	movs r1, #0
	movs r2, #0
	bl sub_801A44C
	cmp r0, #0
	beq _08009EC4
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #4]
	rsbs r2, r2, #0
	ldr r3, [r0, #8]
	rsbs r3, r3, #0
	ldr r0, [r0, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	bl sub_80040F4
	b _08009ED2
	.align 2, 0
_08009E54: .4byte gUnknown_020146E0
_08009E58: .4byte gUnknown_087F85D8
_08009E5C: .4byte 0x040000D4
_08009E60: .4byte gUnknown_02014968
_08009E64: .4byte 0x8500000B
_08009E68: .4byte 0xFFFFFD78
_08009E6C: .4byte 0xFFFFFD84
_08009E70: .4byte 0xFFFFFD88
_08009E74: .4byte 0xFFFFFD80
_08009E78: .4byte 0xFFFFFDC4
_08009E7C: .4byte 0xFFFFFDCC
_08009E80: .4byte 0xFFFFFDD4
_08009E84: .4byte 0xFFFFFE00
_08009E88: .4byte 0xFFFFFE04
_08009E8C: .4byte 0xFFFFFE08
_08009E90: .4byte 0xFFFFFE0C
_08009E94: .4byte 0xFFFFFE18
_08009E98: .4byte 0xFFFFFEC4
_08009E9C: .4byte sub_8006F0C
_08009EA0: .4byte sub_80106D8
_08009EA4: .4byte 0xFFFFFED8
_08009EA8: .4byte sub_80106D4
_08009EAC: .4byte sub_8010724
_08009EB0: .4byte 0xFFFFFEF0
_08009EB4: .4byte sub_801084C
_08009EB8: .4byte sub_8010958
_08009EBC: .4byte sub_8010B1C
_08009EC0: .4byte sub_8010A58
_08009EC4:
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0x10
	bl sub_80040F4
_08009ED2:
	ldr r3, [sp, #0x44]
	cmp r3, #0xf
	bls _08009EDA
	b _0800A1F4
_08009EDA:
	lsls r0, r3, #2
	ldr r1, _08009EE4 @ =_08009EE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009EE4: .4byte _08009EE8
_08009EE8: @ jump table
	.4byte _08009F28 @ case 0
	.4byte _08009F48 @ case 1
	.4byte _08009F80 @ case 2
	.4byte _08009F60 @ case 3
	.4byte _08009FA0 @ case 4
	.4byte _08009FC0 @ case 5
	.4byte _08009FE0 @ case 6
	.4byte _0800A000 @ case 7
	.4byte _0800A078 @ case 8
	.4byte _0800A044 @ case 9
	.4byte _0800A0AC @ case 10
	.4byte _0800A0F0 @ case 11
	.4byte _0800A18C @ case 12
	.4byte _0800A124 @ case 13
	.4byte _0800A158 @ case 14
	.4byte _0800A1C0 @ case 15
_08009F28:
	ldr r0, _08009F40 @ =gUnknown_020146E0
	ldr r4, [sp, #0x20]
	adds r1, r4, r7
	lsls r1, r1, #2
	subs r1, r1, r7
	lsls r1, r1, #6
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, _08009F44 @ =sub_8010C3C
	b _0800A20A
	.align 2, 0
_08009F40: .4byte gUnknown_020146E0
_08009F44: .4byte sub_8010C3C
_08009F48:
	ldr r0, _08009F5C @ =gUnknown_020146E0
	ldr r3, [sp, #0x20]
	adds r1, r3, r7
	lsls r1, r1, #2
	subs r1, r1, r7
	lsls r1, r1, #6
	movs r4, #0x8f
	lsls r4, r4, #2
	adds r0, r0, r4
	b _0800A206
	.align 2, 0
_08009F5C: .4byte gUnknown_020146E0
_08009F60:
	ldr r0, _08009F78 @ =gUnknown_020146E0
	ldr r2, [sp, #0x20]
	adds r1, r2, r7
	lsls r1, r1, #2
	subs r1, r1, r7
	lsls r1, r1, #6
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r1, r1, r0
	ldr r0, _08009F7C @ =sub_8010DA8
	b _0800A20A
	.align 2, 0
_08009F78: .4byte gUnknown_020146E0
_08009F7C: .4byte sub_8010DA8
_08009F80:
	ldr r0, _08009F98 @ =gUnknown_020146E0
	ldr r4, [sp, #0x20]
	adds r1, r4, r7
	lsls r1, r1, #2
	subs r1, r1, r7
	lsls r1, r1, #6
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, _08009F9C @ =sub_8010CFC
	b _0800A20A
	.align 2, 0
_08009F98: .4byte gUnknown_020146E0
_08009F9C: .4byte sub_8010CFC
_08009FA0:
	ldr r0, _08009FB8 @ =gUnknown_020146E0
	ldr r3, [sp, #0x20]
	adds r1, r3, r7
	lsls r1, r1, #2
	subs r1, r1, r7
	lsls r1, r1, #6
	movs r4, #0x8f
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r1, r1, r0
	ldr r0, _08009FBC @ =sub_8010FFC
	b _0800A20A
	.align 2, 0
_08009FB8: .4byte gUnknown_020146E0
_08009FBC: .4byte sub_8010FFC
_08009FC0:
	ldr r0, _08009FD8 @ =gUnknown_020146E0
	ldr r2, [sp, #0x20]
	adds r1, r2, r7
	lsls r1, r1, #2
	subs r1, r1, r7
	lsls r1, r1, #6
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r1, r1, r0
	ldr r0, _08009FDC @ =sub_8011020
	b _0800A20A
	.align 2, 0
_08009FD8: .4byte gUnknown_020146E0
_08009FDC: .4byte sub_8011020
_08009FE0:
	ldr r0, _08009FF8 @ =gUnknown_020146E0
	ldr r4, [sp, #0x20]
	adds r1, r4, r7
	lsls r1, r1, #2
	subs r1, r1, r7
	lsls r1, r1, #6
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, _08009FFC @ =sub_8010EF0
	b _0800A20A
	.align 2, 0
_08009FF8: .4byte gUnknown_020146E0
_08009FFC: .4byte sub_8010EF0
_0800A000:
	ldr r3, _0800A034 @ =gUnknown_020146E0
	ldr r4, [sp, #0x20]
	adds r0, r4, r7
	lsls r0, r0, #2
	subs r0, r0, r7
	lsls r0, r0, #6
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r3, r2
	adds r1, r0, r1
	ldr r2, _0800A038 @ =sub_8011048
	str r2, [r1]
	movs r4, #0xcc
	lsls r4, r4, #1
	adds r1, r3, r4
	adds r1, r0, r1
	ldr r2, _0800A03C @ =sub_80110C0
	str r2, [r1]
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r1, r3, r2
	adds r0, r0, r1
	ldr r1, _0800A040 @ =sub_8011020
	str r1, [r0]
	b _0800A20C
	.align 2, 0
_0800A034: .4byte gUnknown_020146E0
_0800A038: .4byte sub_8011048
_0800A03C: .4byte sub_80110C0
_0800A040: .4byte sub_8011020
_0800A044:
	ldr r3, _0800A06C @ =gUnknown_020146E0
	ldr r4, [sp, #0x20]
	adds r0, r4, r7
	lsls r0, r0, #2
	subs r0, r0, r7
	lsls r0, r0, #6
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r3, r2
	adds r1, r0, r1
	ldr r2, _0800A070 @ =sub_801121C
	str r2, [r1]
	movs r4, #0x8f
	lsls r4, r4, #2
	adds r1, r3, r4
	adds r0, r0, r1
	ldr r1, _0800A074 @ =sub_8010DA8
	str r1, [r0]
	b _0800A20C
	.align 2, 0
_0800A06C: .4byte gUnknown_020146E0
_0800A070: .4byte sub_801121C
_0800A074: .4byte sub_8010DA8
_0800A078:
	ldr r3, _0800A0A0 @ =gUnknown_020146E0
	ldr r1, [sp, #0x20]
	adds r0, r1, r7
	lsls r0, r0, #2
	subs r0, r0, r7
	lsls r0, r0, #6
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r1, r3, r2
	adds r1, r0, r1
	ldr r2, _0800A0A4 @ =sub_8010DA8
	str r2, [r1]
	movs r4, #0x92
	lsls r4, r4, #2
	adds r1, r3, r4
	adds r0, r0, r1
	ldr r1, _0800A0A8 @ =sub_8010BCC
	str r1, [r0]
	b _0800A20C
	.align 2, 0
_0800A0A0: .4byte gUnknown_020146E0
_0800A0A4: .4byte sub_8010DA8
_0800A0A8: .4byte sub_8010BCC
_0800A0AC:
	ldr r3, _0800A0E0 @ =gUnknown_020146E0
	ldr r1, [sp, #0x20]
	adds r0, r1, r7
	lsls r0, r0, #2
	subs r0, r0, r7
	lsls r0, r0, #6
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r1, r3, r2
	adds r1, r0, r1
	ldr r2, _0800A0E4 @ =sub_8011460
	str r2, [r1]
	movs r4, #0xae
	lsls r4, r4, #1
	adds r1, r3, r4
	adds r1, r0, r1
	ldr r2, _0800A0E8 @ =sub_8011314
	str r2, [r1]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r3, r2
	adds r0, r0, r1
	ldr r1, _0800A0EC @ =sub_8011360
	str r1, [r0]
	b _0800A20C
	.align 2, 0
_0800A0E0: .4byte gUnknown_020146E0
_0800A0E4: .4byte sub_8011460
_0800A0E8: .4byte sub_8011314
_0800A0EC: .4byte sub_8011360
_0800A0F0:
	ldr r3, [sp, #0x20]
	adds r4, r3, r7
	lsls r4, r4, #2
	subs r4, r4, r7
	lsls r4, r4, #6
	ldr r5, _0800A11C @ =gUnknown_020146E0
	adds r0, r4, r5
	adds r1, r7, #0
	movs r2, #0
	bl sub_8017A44
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r0, r4, r0
	ldr r1, _0800A120 @ =sub_8016F78
	str r1, [r0]
	adds r5, #0x50
	adds r4, r4, r5
	movs r0, #0
	str r0, [r4]
	b _0800A20C
	.align 2, 0
_0800A11C: .4byte gUnknown_020146E0
_0800A120: .4byte sub_8016F78
_0800A124:
	ldr r2, [sp, #0x20]
	adds r4, r2, r7
	lsls r4, r4, #2
	subs r4, r4, r7
	lsls r4, r4, #6
	ldr r5, _0800A150 @ =gUnknown_020146E0
	adds r0, r4, r5
	adds r1, r7, #0
	movs r2, #1
	bl sub_8017A44
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r5, r3
	adds r0, r4, r0
	ldr r1, _0800A154 @ =sub_8017108
	str r1, [r0]
	adds r5, #0x50
	adds r4, r4, r5
	movs r0, #1
	str r0, [r4]
	b _0800A20C
	.align 2, 0
_0800A150: .4byte gUnknown_020146E0
_0800A154: .4byte sub_8017108
_0800A158:
	ldr r0, [sp, #0x20]
	adds r4, r0, r7
	lsls r4, r4, #2
	subs r4, r4, r7
	lsls r4, r4, #6
	ldr r5, _0800A184 @ =gUnknown_020146E0
	adds r0, r4, r5
	adds r1, r7, #0
	movs r2, #3
	bl sub_8017A44
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r0, r4, r0
	ldr r1, _0800A188 @ =sub_8017108
	str r1, [r0]
	adds r5, #0x50
	adds r4, r4, r5
	movs r0, #3
	str r0, [r4]
	b _0800A20C
	.align 2, 0
_0800A184: .4byte gUnknown_020146E0
_0800A188: .4byte sub_8017108
_0800A18C:
	ldr r2, [sp, #0x20]
	adds r4, r2, r7
	lsls r4, r4, #2
	subs r4, r4, r7
	lsls r4, r4, #6
	ldr r5, _0800A1B8 @ =gUnknown_020146E0
	adds r0, r4, r5
	adds r1, r7, #0
	movs r2, #2
	bl sub_8017A44
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r5, r3
	adds r0, r4, r0
	ldr r1, _0800A1BC @ =sub_8016F78
	str r1, [r0]
	adds r5, #0x50
	adds r4, r4, r5
	movs r0, #2
	str r0, [r4]
	b _0800A20C
	.align 2, 0
_0800A1B8: .4byte gUnknown_020146E0
_0800A1BC: .4byte sub_8016F78
_0800A1C0:
	ldr r0, [sp, #0x20]
	adds r4, r0, r7
	lsls r4, r4, #2
	subs r4, r4, r7
	lsls r4, r4, #6
	ldr r5, _0800A1EC @ =gUnknown_020146E0
	adds r0, r4, r5
	adds r1, r7, #0
	movs r2, #4
	bl sub_8017A44
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r0, r4, r0
	ldr r1, _0800A1F0 @ =sub_8017108
	str r1, [r0]
	adds r5, #0x50
	adds r4, r4, r5
	movs r0, #4
	str r0, [r4]
	b _0800A20C
	.align 2, 0
_0800A1EC: .4byte gUnknown_020146E0
_0800A1F0: .4byte sub_8017108
_0800A1F4:
	ldr r0, _0800A224 @ =gUnknown_020146E0
	ldr r2, [sp, #0x20]
	adds r1, r2, r7
	lsls r1, r1, #2
	subs r1, r1, r7
	lsls r1, r1, #6
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r0, r3
_0800A206:
	adds r1, r1, r0
	ldr r0, _0800A228 @ =sub_8010C40
_0800A20A:
	str r0, [r1]
_0800A20C:
	ldr r4, [sp, #0x20]
	adds r1, r4, r7
	lsls r1, r1, #2
	subs r1, r1, r7
	lsls r1, r1, #6
	ldr r0, _0800A224 @ =gUnknown_020146E0
	adds r1, r1, r0
	movs r0, #0x3c
	bl sub_8006F10
	b _0800A238
	.align 2, 0
_0800A224: .4byte gUnknown_020146E0
_0800A228: .4byte sub_8010C40
_0800A22C:
	ldr r0, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0x13
	bgt _0800A238
	b _08009C7E
_0800A238:
	ldr r1, [sp, #0x18]
	cmp r1, #0x13
	ble _0800A258
	ldr r0, _0800A254 @ =gUnknown_020146E0
	ldr r2, [sp, #0x20]
	adds r1, r2, r7
	lsls r1, r1, #2
	subs r1, r1, r7
	lsls r1, r1, #6
	adds r0, #0x20
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _0800A2C0
	.align 2, 0
_0800A254: .4byte gUnknown_020146E0
_0800A258:
	ldr r3, _0800A2B0 @ =gUnknown_020146E0
	ldr r4, [sp, #0x20]
	adds r2, r4, r7
	lsls r2, r2, #2
	subs r2, r2, r7
	lsls r2, r2, #6
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r3, r0
	adds r1, r2, r1
	ldr r0, _0800A2B4 @ =gUnknown_02013114
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #0x28
	adds r0, r2, r0
	movs r1, #0
	str r1, [r0]
	adds r1, r2, r3
	ldr r4, [sp, #8]
	lsls r0, r4, #0x10
	str r0, [r1]
	adds r0, r3, #4
	adds r0, r2, r0
	ldr r4, [sp, #0xc]
	lsls r1, r4, #0x10
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	ldr r1, [sp, #0x10]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	movs r1, #1
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r2, r2, r0
	str r1, [r2]
	adds r0, r7, #0
	b _0800A2C4
	.align 2, 0
_0800A2B0: .4byte gUnknown_020146E0
_0800A2B4: .4byte gUnknown_02013114
_0800A2B8:
	adds r7, #1
	cmp r7, #4
	bgt _0800A2C0
	b _08009C5C
_0800A2C0:
	movs r0, #1
	rsbs r0, r0, #0
_0800A2C4:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800A2D4
sub_800A2D4: @ 0x0800A2D4
	ldr r1, _0800A2DC @ =gUnknown_020146D4
	str r0, [r1]
	bx lr
	.align 2, 0
_0800A2DC: .4byte gUnknown_020146D4
_0800A2E0:
	.byte 0x01, 0x48, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00, 0xD4, 0x46, 0x01, 0x02

	thumb_func_start sub_800A2EC
sub_800A2EC: @ 0x0800A2EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	mov sb, r1
	mov sl, r2
	str r3, [sp, #4]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r4, _0800A3E8 @ =gUnknown_020146E0
	adds r1, r3, #0
	add r1, sb
	str r1, [sp, #0x10]
	adds r7, r4, #0
	movs r5, #0
	movs r2, #4
	str r2, [sp, #8]
_0800A314:
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800A322
	b _0800A4C6
_0800A322:
	adds r0, r4, #0
	adds r0, #0x28
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800A330
	b _0800A4C6
_0800A330:
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0x3f
	bne _0800A33E
	b _0800A4C6
_0800A33E:
	cmp r0, #0x3d
	bne _0800A344
	b _0800A4C6
_0800A344:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800A408
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r4, r3
	adds r0, r5, r0
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, [r7]
	adds r0, r1, r0
	cmp r8, r0
	ble _0800A366
	b _0800A4C6
_0800A366:
	mov r6, r8
	add r6, sl
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r4, r2
	adds r0, r5, r0
	ldr r0, [r0]
	lsls r0, r0, #0x10
	subs r0, r1, r0
	cmp r6, r0
	bge _0800A37E
	b _0800A4C6
_0800A37E:
	adds r0, r4, #4
	adds r0, r5, r0
	adds r3, #0xc
	adds r1, r4, r3
	adds r1, r5, r1
	ldr r1, [r1]
	lsls r1, r1, #0x10
	ldr r2, [r0]
	adds r1, r2, r1
	cmp sb, r1
	ble _0800A396
	b _0800A4C6
_0800A396:
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r0, r5, r0
	ldr r0, [r0]
	lsls r0, r0, #0x10
	subs r0, r2, r0
	ldr r2, [sp, #0x10]
	cmp r2, r0
	bge _0800A3AC
	b _0800A4C6
_0800A3AC:
	movs r3, #1
	str r3, [sp, #0xc]
	ldr r0, _0800A3EC @ =gUnknown_020119F0
	ldr r3, [r0]
	ldr r0, [sp, #0xc]
	ands r3, r0
	adds r3, #3
	adds r0, r6, #0
	mov r1, sb
	movs r2, #0
	bl sub_8008930
	adds r0, r4, #0
	adds r0, #0x5c
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800A3F0
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r5, r1
	ldr r0, [r1]
	ldr r2, [sp, #0x34]
	subs r0, r0, r2
	str r0, [r1]
	cmp r0, #0
	bgt _0800A49C
	movs r0, #0x3f
	b _0800A49E
	.align 2, 0
_0800A3E8: .4byte gUnknown_020146E0
_0800A3EC: .4byte gUnknown_020119F0
_0800A3F0:
	ldr r1, _0800A404 @ =gUnknown_02000810
	ldr r0, [r1, #0x10]
	subs r0, #1
	str r0, [r1, #0x10]
	cmp r0, #0
	ble _0800A4B2
	movs r0, #0x3d
	bl sub_8006F10
	b _0800A4C6
	.align 2, 0
_0800A404: .4byte gUnknown_02000810
_0800A408:
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r0, r4, r3
	adds r0, r5, r0
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, [r7]
	adds r0, r2, r0
	cmp r8, r0
	bgt _0800A4C6
	mov r0, r8
	add r0, sl
	subs r3, #4
	adds r1, r4, r3
	adds r1, r5, r1
	ldr r1, [r1]
	lsls r1, r1, #0x10
	subs r1, r2, r1
	cmp r0, r1
	blt _0800A4C6
	adds r0, r4, #4
	adds r0, r5, r0
	movs r2, #0xa1
	lsls r2, r2, #2
	adds r1, r4, r2
	adds r1, r5, r1
	ldr r1, [r1]
	lsls r1, r1, #0x10
	ldr r2, [r0]
	adds r1, r2, r1
	cmp sb, r1
	bgt _0800A4C6
	adds r3, #8
	adds r0, r4, r3
	adds r0, r5, r0
	ldr r0, [r0]
	lsls r0, r0, #0x10
	subs r0, r2, r0
	ldr r1, [sp, #0x10]
	cmp r1, r0
	blt _0800A4C6
	movs r2, #1
	str r2, [sp, #0xc]
	mov r3, sl
	asrs r0, r3, #1
	ldr r1, _0800A498 @ =gUnknown_020119F0
	ldr r3, [r1]
	ands r3, r2
	adds r3, #3
	add r0, r8
	mov r1, sb
	movs r2, #0
	bl sub_8008930
	adds r0, r4, #0
	adds r0, #0x5c
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800A4A6
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r5, r1
	ldr r0, [r1]
	ldr r2, [sp, #0x34]
	subs r0, r0, r2
	str r0, [r1]
	cmp r0, #0
	bgt _0800A49C
	movs r0, #0x3f
	b _0800A49E
	.align 2, 0
_0800A498: .4byte gUnknown_020119F0
_0800A49C:
	movs r0, #0x3d
_0800A49E:
	adds r1, r7, #0
	bl sub_8006F10
	b _0800A4C6
_0800A4A6:
	ldr r1, _0800A4BC @ =gUnknown_02000810
	ldr r0, [r1, #0x10]
	subs r0, #1
	str r0, [r1, #0x10]
	cmp r0, #0
	bgt _0800A4C0
_0800A4B2:
	movs r0, #0x3f
	bl sub_8006F10
	b _0800A4C6
	.align 2, 0
_0800A4BC: .4byte gUnknown_02000810
_0800A4C0:
	movs r0, #0x3d
	bl sub_8006F10
_0800A4C6:
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r7, r7, r3
	adds r5, r5, r3
	ldr r0, [sp, #8]
	subs r0, #1
	str r0, [sp, #8]
	cmp r0, #0
	blt _0800A4DA
	b _0800A314
_0800A4DA:
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bne _0800A4F2
	ldr r2, [sp, #0x34]
	str r2, [sp]
	mov r0, r8
	mov r1, sb
	mov r2, sl
	ldr r3, [sp, #4]
	bl sub_800E25C
	str r0, [sp, #0xc]
_0800A4F2:
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800A504
sub_800A504: @ 0x0800A504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0800A58C @ =gUnknown_020146E0
	mov r8, r0
	movs r1, #0x20
	add r1, r8
	mov sl, r1
	movs r0, #0x94
	lsls r0, r0, #2
	add r0, r8
	mov sb, r0
	mov r5, r8
	movs r6, #0
_0800A524:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0800A5DC
	mov r0, r8
	adds r0, #0x28
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800A53A
	subs r0, #1
	str r0, [r1]
_0800A53A:
	ldr r0, [r5]
	bl sub_800BB44
	adds r7, r0, #0
	ldr r0, [r5, #4]
	bl sub_800BB54
	adds r4, r0, #0
	ldr r0, _0800A590 @ =gUnknown_020146D0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800A5A8
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0xf0
	lsls r0, r0, #2
	cmp r1, r0
	bhi _0800A56C
	movs r0, #0x78
	rsbs r0, r0, #0
	cmp r4, r0
	blt _0800A56C
	cmp r4, r2
	ble _0800A5A8
_0800A56C:
	ldr r2, _0800A58C @ =gUnknown_020146E0
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0x3f
	bne _0800A594
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800A5A2
	movs r0, #0
	str r0, [r5, #0x20]
	b _0800A5DC
	.align 2, 0
_0800A58C: .4byte gUnknown_020146E0
_0800A590: .4byte gUnknown_020146D0
_0800A594:
	mov r1, sl
	adds r0, r6, r1
	movs r1, #0
	str r1, [r0]
	adds r0, r6, r2
	bl sub_800654C
_0800A5A2:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0800A5DC
_0800A5A8:
	adds r0, r5, #0
	bl sub_8008E64
	adds r0, r5, #0
	bl sub_8006F60
	mov r0, sb
	bl sub_800700C
	adds r1, r7, #0
	adds r1, #0xb7
	movs r0, #0xfd
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800A5DC
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r4, r0
	ble _0800A5DC
	movs r0, #0x85
	lsls r0, r0, #1
	cmp r4, r0
	bgt _0800A5DC
	adds r0, r5, #0
	bl sub_800AB80
_0800A5DC:
	movs r0, #0xb0
	lsls r0, r0, #2
	add sb, r0
	adds r5, r5, r0
	adds r6, r6, r0
	movs r0, #0xb0
	lsls r0, r0, #4
	add r0, r8
	cmp r5, r0
	ble _0800A524
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800A600
sub_800A600: @ 0x0800A600
	push {r4, lr}
	movs r3, #0
	ldr r0, _0800A628 @ =gUnknown_020146E0
	adds r2, r0, #0
	adds r2, #0x20
	movs r4, #0xb0
	lsls r4, r4, #2
	movs r1, #4
_0800A610:
	ldr r0, [r2]
	cmp r0, #0
	beq _0800A618
	adds r3, #1
_0800A618:
	adds r2, r2, r4
	subs r1, #1
	cmp r1, #0
	bge _0800A610
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A628: .4byte gUnknown_020146E0

	thumb_func_start sub_800A62C
sub_800A62C: @ 0x0800A62C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0800A650 @ =gUnknown_020146D4
	ldr r0, [r0]
	ldr r3, [r0]
	ldr r2, [r1]
	cmp r3, r2
	bgt _0800A646
	ldr r0, [r1, #8]
	cmp r0, #1
	beq _0800A64C
	cmp r3, r2
	blt _0800A654
_0800A646:
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _0800A654
_0800A64C:
	movs r0, #1
	b _0800A656
	.align 2, 0
_0800A650: .4byte gUnknown_020146D4
_0800A654:
	movs r0, #0
_0800A656:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A65C
sub_800A65C: @ 0x0800A65C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800A62C
	adds r2, r0, #0
	cmp r2, #0
	bne _0800A698
	ldr r0, _0800A67C @ =gUnknown_020146D4
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r0, [r4]
	cmp r1, r0
	bgt _0800A680
	movs r0, #1
	str r0, [r4, #8]
	b _0800A682
	.align 2, 0
_0800A67C: .4byte gUnknown_020146D4
_0800A680:
	str r2, [r4, #8]
_0800A682:
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
_0800A698:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800A6A0
sub_800A6A0: @ 0x0800A6A0
	push {r4, lr}
	ldr r1, _0800A6C4 @ =gUnknown_020146D4
	ldr r2, [r1]
	ldr r1, [r0]
	ldr r3, [r2]
	cmp r1, r3
	blt _0800A6D8
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0800A6C8
	movs r4, #0x9e
	lsls r4, r4, #2
	adds r0, r2, r4
	ldr r0, [r0]
	lsls r0, r0, #0x10
	adds r0, r3, r0
	subs r0, r1, r0
	b _0800A6F2
	.align 2, 0
_0800A6C4: .4byte gUnknown_020146D4
_0800A6C8:
	movs r4, #0x9f
	lsls r4, r4, #2
	adds r0, r2, r4
	ldr r0, [r0]
	lsls r0, r0, #0x10
	adds r0, r3, r0
	subs r0, r1, r0
	b _0800A6F2
_0800A6D8:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0800A6E4
	movs r4, #0x9f
	lsls r4, r4, #2
	b _0800A6E8
_0800A6E4:
	movs r4, #0x9e
	lsls r4, r4, #2
_0800A6E8:
	adds r0, r2, r4
	ldr r0, [r0]
	lsls r0, r0, #0x10
	subs r0, r3, r0
	subs r0, r0, r1
_0800A6F2:
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800A6FA
	movs r0, #0
_0800A6FA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800A700
sub_800A700: @ 0x0800A700
	push {lr}
	ldr r1, _0800A714 @ =gUnknown_020146D4
	ldr r1, [r1]
	ldr r2, [r0, #4]
	ldr r0, [r1, #4]
	cmp r2, r0
	bge _0800A718
	subs r0, r0, r2
	b _0800A71A
	.align 2, 0
_0800A714: .4byte gUnknown_020146D4
_0800A718:
	subs r0, r2, r0
_0800A71A:
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_800A720
sub_800A720: @ 0x0800A720
	push {lr}
	sub sp, #4
	ldr r1, _0800A75C @ =gUnknown_020146D0
	movs r0, #1
	str r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0800A760 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _0800A764 @ =gUnknown_020146E0
	str r2, [r1, #4]
	ldr r0, _0800A768 @ =0x85000370
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0
	movs r0, #4
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r2, r2, r1
	ldr r1, _0800A76C @ =0xFFFFFD40
_0800A74A:
	str r3, [r2]
	adds r2, r2, r1
	subs r0, #1
	cmp r0, #0
	bge _0800A74A
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0800A75C: .4byte gUnknown_020146D0
_0800A760: .4byte 0x040000D4
_0800A764: .4byte gUnknown_020146E0
_0800A768: .4byte 0x85000370
_0800A76C: .4byte 0xFFFFFD40

	thumb_func_start sub_800A770
sub_800A770: @ 0x0800A770
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r0, _0800A7CC @ =gUnknown_020146D4
	ldr r1, [r0]
	mov ip, r1
	ldr r1, [r1, #0x28]
	mov sl, r0
	cmp r1, #0
	bne _0800A7C6
	mov r3, ip
	ldr r7, [r3, #0x14]
	cmp r7, #0x3f
	beq _0800A7C6
	cmp r7, #0x3d
	beq _0800A7C6
	adds r3, r4, r2
	asrs r1, r3, #0x10
	ldr r0, _0800A7D0 @ =gUnknown_02015500
	ldr r0, [r0]
	cmp r1, r0
	blt _0800A7C6
	asrs r1, r4, #0x10
	adds r0, #0xef
	cmp r1, r0
	bgt _0800A7C6
	adds r6, r5, r6
	asrs r1, r6, #0x10
	ldr r0, _0800A7D4 @ =gUnknown_02015530
	ldr r0, [r0]
	cmp r1, r0
	blt _0800A7C6
	asrs r1, r5, #0x10
	adds r0, #0x9f
	cmp r1, r0
	ble _0800A7D8
_0800A7C6:
	movs r0, #0
	b _0800AA12
	.align 2, 0
_0800A7CC: .4byte gUnknown_020146D4
_0800A7D0: .4byte gUnknown_02015500
_0800A7D4: .4byte gUnknown_02015530
_0800A7D8:
	movs r0, #0
	mov sb, r0
	mov r1, ip
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0800A7E6
	b _0800A8F8
_0800A7E6:
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, [r1]
	adds r0, r2, r0
	cmp r4, r0
	ble _0800A7FA
	b _0800AA10
_0800A7FA:
	movs r0, #0x9f
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	subs r0, r2, r0
	cmp r3, r0
	bge _0800A80C
	b _0800AA10
_0800A80C:
	movs r0, #0xa1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, [r1, #4]
	adds r0, r1, r0
	cmp r5, r0
	ble _0800A820
	b _0800AA10
_0800A820:
	movs r0, #0xa0
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	subs r0, r1, r0
	cmp r6, r0
	bge _0800A832
	b _0800AA10
_0800A832:
	cmp r7, #0x11
	bne _0800A858
	mov r3, r8
	ldr r0, [r3]
	cmp r2, r0
	bgt _0800A858
	movs r0, #0x98
	lsls r0, r0, #2
	add r0, ip
	mov r1, sb
	str r1, [r0]
	movs r1, #0x94
	lsls r1, r1, #2
	add r1, ip
	ldr r0, _0800A854 @ =0xFFFE8000
	b _0800A960
	.align 2, 0
_0800A854: .4byte 0xFFFE8000
_0800A858:
	mov r0, sl
	ldr r2, [r0]
	ldr r3, [r2, #0x5c]
	cmp r3, #0
	bne _0800A8C0
	ldr r1, [r2, #0x10]
	ldr r0, [sp, #0x20]
	subs r1, r1, r0
	str r1, [r2, #0x10]
	ldr r0, _0800A880 @ =gUnknown_02013118
	str r3, [r0]
	movs r3, #1
	mov sb, r3
	cmp r1, #0
	bgt _0800A884
	movs r0, #0x3f
	adds r1, r2, #0
	bl sub_8006F10
	b _0800A88C
	.align 2, 0
_0800A880: .4byte gUnknown_02013118
_0800A884:
	movs r0, #0x3d
	adds r1, r2, #0
	bl sub_8006F10
_0800A88C:
	ldr r0, _0800A8B8 @ =gUnknown_020146D4
	ldr r2, [r0]
	ldr r1, [r2]
	mov r3, r8
	ldr r0, [r3]
	cmp r1, r0
	ble _0800A89C
	b _0800A9F0
_0800A89C:
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	movs r3, #0x94
	lsls r3, r3, #2
	adds r1, r2, r3
	ldr r0, _0800A8BC @ =0xFFFE8000
	str r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r2, r0
	b _0800AA0A
	.align 2, 0
_0800A8B8: .4byte gUnknown_020146D4
_0800A8BC: .4byte 0xFFFE8000
_0800A8C0:
	mov r0, r8
	cmp r0, #0
	bne _0800A8C8
	b _0800AA10
_0800A8C8:
	ldr r0, [r0, #0x10]
	subs r0, #1
	mov r1, r8
	str r0, [r1, #0x10]
	cmp r0, #0
	bgt _0800A8E4
	ldr r0, [r1, #0x14]
	cmp r0, #0x3f
	bne _0800A8DC
	b _0800AA10
_0800A8DC:
	movs r0, #0x3f
	bl sub_8006F10
	b _0800AA10
_0800A8E4:
	mov r2, r8
	ldr r0, [r2, #0x14]
	cmp r0, #0x3d
	bne _0800A8EE
	b _0800AA10
_0800A8EE:
	movs r0, #0x3d
	mov r1, r8
	bl sub_8006F10
	b _0800AA10
_0800A8F8:
	movs r0, #0x9f
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	mov r1, ip
	ldr r2, [r1]
	adds r0, r2, r0
	cmp r4, r0
	ble _0800A90E
	b _0800AA10
_0800A90E:
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	subs r0, r2, r0
	cmp r3, r0
	blt _0800AA10
	movs r0, #0xa1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, [r1, #4]
	adds r0, r1, r0
	cmp r5, r0
	bgt _0800AA10
	movs r0, #0xa0
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	subs r0, r1, r0
	cmp r6, r0
	blt _0800AA10
	cmp r7, #0x11
	bne _0800A986
	mov r3, r8
	ldr r0, [r3]
	cmp r2, r0
	blt _0800A986
	movs r0, #0x98
	lsls r0, r0, #2
	add r0, ip
	mov r1, sb
	str r1, [r0]
	movs r1, #0x94
	lsls r1, r1, #2
	add r1, ip
	movs r0, #0xc0
	lsls r0, r0, #9
_0800A960:
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #2
	add r1, ip
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1]
	ldr r2, [sp, #0x20]
	asrs r1, r2, #2
	mov r3, ip
	ldr r0, [r3, #0x10]
	subs r0, r0, r1
	str r0, [r3, #0x10]
	cmp r0, #0
	bgt _0800A982
	movs r0, #1
	str r0, [r3, #0x10]
_0800A982:
	movs r0, #1
	b _0800AA12
_0800A986:
	ldr r0, _0800A9AC @ =gUnknown_020146D4
	ldr r3, [r0]
	ldr r1, [r3, #0x10]
	ldr r0, [sp, #0x20]
	subs r1, r1, r0
	str r1, [r3, #0x10]
	ldr r2, _0800A9B0 @ =gUnknown_02013118
	movs r0, #0
	str r0, [r2]
	movs r2, #1
	mov sb, r2
	cmp r1, #0
	bgt _0800A9B4
	movs r0, #0x3f
	adds r1, r3, #0
	bl sub_8006F10
	b _0800A9BC
	.align 2, 0
_0800A9AC: .4byte gUnknown_020146D4
_0800A9B0: .4byte gUnknown_02013118
_0800A9B4:
	movs r0, #0x3d
	adds r1, r3, #0
	bl sub_8006F10
_0800A9BC:
	ldr r0, _0800A9E8 @ =gUnknown_020146D4
	ldr r2, [r0]
	ldr r1, [r2]
	mov r3, r8
	ldr r0, [r3]
	cmp r1, r0
	bgt _0800A9F0
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	movs r3, #0x94
	lsls r3, r3, #2
	adds r1, r2, r3
	ldr r0, _0800A9EC @ =0xFFFE8000
	str r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r2, r0
	b _0800AA0A
	.align 2, 0
_0800A9E8: .4byte gUnknown_020146D4
_0800A9EC: .4byte 0xFFFE8000
_0800A9F0:
	movs r3, #0x98
	lsls r3, r3, #2
	adds r1, r2, r3
	movs r0, #0
	str r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1]
	subs r3, #8
	adds r1, r2, r3
_0800AA0A:
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1]
_0800AA10:
	mov r0, sb
_0800AA12:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800AA20
sub_800AA20: @ 0x0800AA20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, _0800AA4C @ =gUnknown_020146D4
	mov sl, r0
	ldr r2, [r0]
	ldr r1, [r2, #0x28]
	mov sb, r1
	cmp r1, #0
	bne _0800AA46
	ldr r0, [r2, #0x14]
	cmp r0, #0x3f
	bne _0800AA50
_0800AA46:
	movs r0, #0
	b _0800AABA
	.align 2, 0
_0800AA4C: .4byte gUnknown_020146D4
_0800AA50:
	movs r0, #0
	mov r8, r0
	ldr r1, [r2]
	cmp r4, r1
	bgt _0800AAB8
	adds r0, r4, r6
	cmp r0, r1
	blt _0800AAB8
	ldr r3, [r2, #4]
	cmp r5, r3
	bgt _0800AAB8
	adds r0, r5, r7
	cmp r0, r3
	blt _0800AAB8
	ldr r0, [r2, #0x10]
	ldr r1, [sp, #0x20]
	subs r0, r0, r1
	str r0, [r2, #0x10]
	ldr r1, _0800AA8C @ =gUnknown_02013118
	mov r4, r8
	str r4, [r1]
	movs r1, #1
	mov r8, r1
	cmp r0, #0
	bgt _0800AA90
	movs r0, #0x3f
	adds r1, r2, #0
	bl sub_8006F10
	b _0800AAB8
	.align 2, 0
_0800AA8C: .4byte gUnknown_02013118
_0800AA90:
	movs r0, #0x1e
	str r0, [r2, #0x28]
	ldr r4, _0800AAC8 @ =0xFFFE0000
	adds r0, r3, r4
	str r0, [r2, #4]
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r2, r1
	bl sub_8006FFC
	mov r2, sl
	ldr r1, [r2]
	movs r4, #0x9d
	lsls r4, r4, #2
	adds r0, r1, r4
	mov r2, sb
	str r2, [r0]
	movs r0, #5
	bl sub_8006F10
_0800AAB8:
	mov r0, r8
_0800AABA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800AAC8: .4byte 0xFFFE0000

	thumb_func_start sub_800AACC
sub_800AACC: @ 0x0800AACC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r4, [sp, #0x14]
	ldr r5, [sp, #0x18]
	ldr r7, [sp, #0x1c]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0800AB04 @ =gUnknown_020154B0
	strh r3, [r0, #4]
	strh r2, [r0, #2]
	strh r4, [r0, #0x20]
	strh r6, [r0, #0x22]
	strh r1, [r0, #0x24]
	str r5, [r0, #0xc]
	ldr r1, _0800AB08 @ =gUnknown_02010B20
	adds r2, r7, #0
	bl sub_801A43C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB04: .4byte gUnknown_020154B0
_0800AB08: .4byte gUnknown_02010B20
_0800AB0C:
	.byte 0xF0, 0xB5, 0x4F, 0x46
	.byte 0x46, 0x46, 0xC0, 0xB4, 0x0D, 0x1C, 0x07, 0x99, 0x08, 0x9C, 0x12, 0x06, 0x12, 0x0E, 0x91, 0x46
	.byte 0x1B, 0x06, 0x1E, 0x0E, 0x09, 0x06, 0x0F, 0x0E, 0x24, 0x06, 0x24, 0x0E, 0xA0, 0x46, 0x01, 0xF0
	.byte 0x09, 0xF8, 0x04, 0x1C, 0x28, 0x1C, 0x01, 0xF0, 0x0D, 0xF8, 0x02, 0x1C, 0x21, 0x1C, 0x1F, 0x31
	.byte 0x97, 0x20, 0x40, 0x00, 0x81, 0x42, 0x10, 0xD8, 0x10, 0x1C, 0x1F, 0x30, 0xDE, 0x28, 0x0C, 0xD8
	.byte 0x09, 0x48, 0x86, 0x80, 0x49, 0x46, 0x41, 0x80, 0x07, 0x84, 0x44, 0x84, 0x82, 0x84, 0x41, 0x46
	.byte 0xC1, 0x60, 0x06, 0x49, 0x09, 0x9A, 0x0F, 0xF0, 0x69, 0xFC, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xB0, 0x54, 0x01, 0x02, 0x20, 0x0B, 0x01, 0x02

	thumb_func_start sub_800AB80
sub_800AB80: @ 0x0800AB80
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0800AB92
	b _0800ACEA
_0800AB92:
	movs r3, #0xad
	lsls r3, r3, #2
	adds r2, r4, r3
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, #2
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r1, r0
	blt _0800AC1A
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0800ABC8 @ =0x000002B5
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800ABD0
	ldr r2, _0800ABCC @ =0x000002B7
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	adds r3, #3
	adds r1, r4, r3
	b _0800AC14
	.align 2, 0
_0800ABC8: .4byte 0x000002B5
_0800ABCC: .4byte 0x000002B7
_0800ABD0:
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r0, [r2]
	ldrb r3, [r1]
	cmp r0, r3
	bhs _0800ABF8
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bne _0800AC1A
	ldr r0, _0800ABF4 @ =0x000002B7
	adds r1, r4, r0
	movs r0, #1
	b _0800AC18
	.align 2, 0
_0800ABF4: .4byte 0x000002B7
_0800ABF8:
	ldr r1, _0800ACA4 @ =0x000002BA
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2]
	movs r2, #0xae
	lsls r2, r2, #2
	adds r0, r4, r2
	strb r1, [r0]
	ldr r3, _0800ACA8 @ =0x000002B7
	adds r0, r4, r3
	strb r1, [r0]
	ldr r0, _0800ACAC @ =0x000002B9
	adds r1, r4, r0
_0800AC14:
	ldrb r0, [r1]
	adds r0, #1
_0800AC18:
	strb r0, [r1]
_0800AC1A:
	ldr r0, _0800ACB0 @ =gUnknown_02000810
	cmp r4, r0
	bne _0800AC34
	ldr r0, [r4, #0x28]
	subs r0, #1
	cmp r0, #0x62
	bhi _0800AC34
	ldr r0, _0800ACB4 @ =gUnknown_020119F0
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0800ACEA
_0800AC34:
	ldr r0, [r4]
	bl sub_800BB44
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_800BB54
	adds r2, r0, #0
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0xa7
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800ACEA
	adds r1, r2, #0
	adds r1, #0x1f
	subs r0, #0x38
	cmp r1, r0
	bhi _0800ACEA
	ldr r1, _0800ACB8 @ =0x000002AA
	adds r0, r4, r1
	strh r5, [r0]
	movs r3, #0xab
	lsls r3, r3, #2
	adds r0, r4, r3
	strh r2, [r0]
	movs r0, #0xa5
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, [r4, #8]
	str r0, [r1]
	ldr r0, _0800ACBC @ =gUnknown_02013340
	ldr r1, [r0]
	cmp r1, #0
	bne _0800AC8A
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #4
	beq _0800AC8A
	cmp r0, #5
	bne _0800ACC0
_0800AC8A:
	movs r3, #0xa4
	lsls r3, r3, #2
	adds r1, r4, r3
	movs r0, #1
	str r0, [r1]
	movs r0, #0xab
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #7
	strh r0, [r1]
	b _0800ACC8
	.align 2, 0
_0800ACA4: .4byte 0x000002BA
_0800ACA8: .4byte 0x000002B7
_0800ACAC: .4byte 0x000002B9
_0800ACB0: .4byte gUnknown_02000810
_0800ACB4: .4byte gUnknown_020119F0
_0800ACB8: .4byte 0x000002AA
_0800ACBC: .4byte gUnknown_02013340
_0800ACC0:
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
_0800ACC8:
	ldr r3, _0800ACF0 @ =0x000002BD
	adds r1, r4, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800ACD6
	subs r0, #1
	strb r0, [r1]
_0800ACD6:
	movs r1, #0xa2
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _0800ACF4 @ =gUnknown_02010B20
	movs r3, #0x93
	lsls r3, r3, #2
	adds r2, r4, r3
	ldr r2, [r2]
	bl sub_801A43C
_0800ACEA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800ACF0: .4byte 0x000002BD
_0800ACF4: .4byte gUnknown_02010B20

	thumb_func_start sub_800ACF8
sub_800ACF8: @ 0x0800ACF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [sp, #0x18]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r5, #0xff
	bne _0800AD2C
	movs r2, #0x93
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	bl sub_801A454
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0800AD2C:
	ldr r3, _0800AD78 @ =0x0000028A
	adds r0, r4, r3
	movs r2, #0
	movs r1, #0
	strh r6, [r0]
	adds r3, #2
	adds r0, r4, r3
	strh r1, [r0]
	movs r1, #0xad
	lsls r1, r1, #2
	adds r0, r4, r1
	strb r2, [r0]
	adds r3, #0x2a
	adds r0, r4, r3
	strb r7, [r0]
	adds r1, #1
	adds r0, r4, r1
	strb r5, [r0]
	adds r3, #1
	adds r0, r4, r3
	strb r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	strb r2, [r0]
	movs r2, #0xae
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	adds r3, #3
	adds r0, r4, r3
	mov r1, r8
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AD78: .4byte 0x0000028A

	thumb_func_start sub_800AD7C
sub_800AD7C: @ 0x0800AD7C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x84
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r4, #0
	adds r1, #0x86
	ldrb r1, [r1]
	cmp r0, r1
	blt _0800ADDE
	movs r0, #0
	strb r0, [r2]
	subs r2, #0x28
	adds r1, r4, #0
	adds r1, #0x85
	ldrh r0, [r2]
	ldrb r3, [r1]
	cmp r0, r3
	bhs _0800ADC0
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bne _0800ADDE
	adds r1, r4, #0
	adds r1, #0x87
	movs r0, #1
	b _0800ADDC
_0800ADC0:
	adds r0, r4, #0
	adds r0, #0x8a
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x88
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x89
	ldrb r0, [r1]
	adds r0, #1
_0800ADDC:
	strb r0, [r1]
_0800ADDE:
	ldr r0, [r4]
	bl sub_800BB44
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_800BB54
	adds r2, r0, #0
	adds r1, r5, #0
	adds r1, #0x1f
	movs r0, #0x97
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800AE1C
	adds r0, r2, #0
	adds r0, #0x1f
	cmp r0, #0xde
	bhi _0800AE1C
	adds r0, r4, #0
	adds r0, #0x7a
	strh r5, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r4, #8]
	str r0, [r4, #0x64]
	adds r0, r4, #0
	adds r0, #0x58
	ldr r1, _0800AE24 @ =gUnknown_02010B20
	ldr r2, [r4, #0x2c]
	bl sub_801A43C
_0800AE1C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AE24: .4byte gUnknown_02010B20

	thumb_func_start sub_800AE28
sub_800AE28: @ 0x0800AE28
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r6, [sp, #0x10]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, #0x5a
	movs r5, #0
	movs r4, #0
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x28
	strb r5, [r0]
	adds r0, #2
	strb r3, [r0]
	subs r0, #1
	strb r2, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #2
	strb r5, [r0]
	mov r1, ip
	adds r1, #0x88
	movs r0, #1
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x8a
	strb r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800AE68
sub_800AE68: @ 0x0800AE68
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x74
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r4, #0
	adds r1, #0x76
	ldrb r1, [r1]
	cmp r0, r1
	blt _0800AECA
	movs r0, #0
	strb r0, [r2]
	subs r2, #0x28
	adds r1, r4, #0
	adds r1, #0x75
	ldrh r0, [r2]
	ldrb r3, [r1]
	cmp r0, r3
	bhs _0800AEAC
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bne _0800AECA
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #1
	b _0800AEC8
_0800AEAC:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x78
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
_0800AEC8:
	strb r0, [r1]
_0800AECA:
	ldr r0, [r4]
	bl sub_800BB44
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_800BB54
	adds r2, r0, #0
	adds r1, r5, #0
	adds r1, #0x1f
	movs r0, #0x97
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800AF06
	adds r0, r2, #0
	adds r0, #0x1f
	cmp r0, #0xde
	bhi _0800AF06
	adds r0, r4, #0
	adds r0, #0x6a
	movs r1, #0
	strh r5, [r0]
	adds r0, #2
	strh r2, [r0]
	str r1, [r4, #0x54]
	subs r0, #0x24
	ldr r1, _0800AF0C @ =gUnknown_02010B20
	ldr r2, [r4, #0x1c]
	bl sub_801A43C
_0800AF06:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF0C: .4byte gUnknown_02010B20

	thumb_func_start sub_800AF10
sub_800AF10: @ 0x0800AF10
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r6, [sp, #0x10]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, #0x4a
	movs r5, #0
	movs r4, #0
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x28
	strb r5, [r0]
	adds r0, #2
	strb r3, [r0]
	subs r0, #1
	strb r2, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r0, #2
	strb r5, [r0]
	mov r1, ip
	adds r1, #0x78
	movs r0, #1
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x7a
	strb r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800AF50
sub_800AF50: @ 0x0800AF50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x48
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r4, #0
	adds r1, #0x4a
	ldrb r1, [r1]
	cmp r0, r1
	blt _0800AFB0
	movs r0, #0
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x49
	ldrh r0, [r4, #0x20]
	ldrb r2, [r1]
	cmp r0, r2
	bhs _0800AF92
	adds r0, #1
	strh r0, [r4, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bne _0800AFB0
	adds r1, r4, #0
	adds r1, #0x4b
	movs r0, #1
	b _0800AFAE
_0800AF92:
	adds r0, r4, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x4c
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x4d
	ldrb r0, [r1]
	adds r0, #1
_0800AFAE:
	strb r0, [r1]
_0800AFB0:
	ldr r0, [r4]
	bl sub_800BB44
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_800BB54
	adds r2, r0, #0
	adds r1, r5, #0
	adds r1, #0x7f
	movs r0, #0xf7
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800AFEC
	adds r1, r2, #0
	adds r1, #0x1f
	subs r0, #0xd0
	cmp r1, r0
	bhi _0800AFEC
	movs r1, #0
	strh r5, [r4, #0x3e]
	adds r0, r4, #0
	adds r0, #0x40
	strh r2, [r0]
	str r1, [r4, #0x28]
	subs r0, #0x24
	ldr r1, _0800AFF4 @ =gUnknown_02010B20
	ldr r2, [r4, #0x18]
	bl sub_801A43C
_0800AFEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AFF4: .4byte gUnknown_02010B20

	thumb_func_start sub_800AFF8
sub_800AFF8: @ 0x0800AFF8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r2, #0xff
	bne _0800B020
	ldr r0, [r4, #0x18]
	bl sub_801A454
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0800B020:
	movs r1, #0
	movs r0, #0
	strh r5, [r4, #0x1e]
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x48
	strb r1, [r0]
	adds r0, #2
	strb r6, [r0]
	subs r0, #1
	strb r2, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x4c
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x4e
	strb r7, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800B054
sub_800B054: @ 0x0800B054
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xc
	ldrsb r0, [r4, r0]
	ldrb r1, [r4, #0xe]
	cmp r0, r1
	blt _0800B0A2
	movs r0, #0
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0800B078
	movs r0, #1
	strb r0, [r4, #0xf]
	b _0800B09C
_0800B078:
	ldrh r0, [r4, #0x18]
	ldrb r1, [r4, #0xd]
	cmp r0, r1
	bhs _0800B092
	adds r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bne _0800B0A2
	movs r0, #1
	strb r0, [r4, #0xf]
	b _0800B0A2
_0800B092:
	ldrb r0, [r4, #0x12]
	movs r1, #0
	strh r0, [r4, #0x18]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0xf]
_0800B09C:
	ldrb r0, [r4, #0x11]
	adds r0, #1
	strb r0, [r4, #0x11]
_0800B0A2:
	ldr r0, [r4]
	bl sub_800BB44
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_800BB54
	adds r2, r0, #0
	adds r1, r5, #0
	adds r1, #0x7f
	movs r0, #0xf7
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800B0EA
	adds r1, r2, #0
	adds r1, #0x1f
	subs r0, #0xb6
	cmp r1, r0
	bhi _0800B0EA
	strh r5, [r4, #0x36]
	strh r2, [r4, #0x38]
	ldr r0, [r4, #8]
	str r0, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800B0DE
	subs r0, #1
	strb r0, [r1]
_0800B0DE:
	adds r0, r4, #0
	adds r0, #0x14
	ldr r1, _0800B0F0 @ =gUnknown_02010B20
	ldr r2, [r4, #0x40]
	bl sub_801A43C
_0800B0EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B0F0: .4byte gUnknown_02010B20

	thumb_func_start sub_800B0F4
sub_800B0F4: @ 0x0800B0F4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r2, #0xff
	bne _0800B11C
	ldr r0, [r4, #0x40]
	bl sub_801A454
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0800B11C:
	movs r1, #0
	movs r0, #0
	strh r6, [r4, #0x16]
	strh r0, [r4, #0x18]
	strb r1, [r4, #0xc]
	strb r5, [r4, #0xe]
	strb r2, [r4, #0xd]
	strb r1, [r4, #0xf]
	strb r1, [r4, #0x11]
	movs r0, #1
	strb r0, [r4, #0x10]
	strb r7, [r4, #0x12]
	adds r0, r4, #0
	adds r0, #0x45
	strb r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800B140
sub_800B140: @ 0x0800B140
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	movs r0, #0xc
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xe]
	cmp r0, r1
	blt _0800B182
	movs r0, #0
	strb r0, [r2, #0xc]
	ldrh r0, [r2, #0x18]
	ldrb r1, [r2, #0xd]
	cmp r0, r1
	bhs _0800B172
	adds r0, #1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bne _0800B182
	movs r0, #1
	strb r0, [r2, #0xf]
	b _0800B182
_0800B172:
	ldrb r0, [r2, #0x12]
	movs r1, #0
	strh r0, [r2, #0x18]
	strb r1, [r2, #0x10]
	strb r1, [r2, #0xf]
	ldrb r0, [r2, #0x11]
	adds r0, #1
	strb r0, [r2, #0x11]
_0800B182:
	ldr r3, [r2]
	ldr r4, [r2, #4]
	adds r1, r3, #0
	adds r1, #0x5f
	movs r0, #0xd7
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800B1BE
	adds r1, r4, #0
	adds r1, #0x3f
	subs r0, #0x90
	cmp r1, r0
	bhi _0800B1BE
	strh r3, [r2, #0x36]
	strh r4, [r2, #0x38]
	ldr r0, [r2, #8]
	str r0, [r2, #0x20]
	adds r1, r2, #0
	adds r1, #0x45
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800B1B2
	subs r0, #1
	strb r0, [r1]
_0800B1B2:
	adds r0, r2, #0
	adds r0, #0x14
	ldr r1, _0800B1C4 @ =gUnknown_02010B20
	ldr r2, [r2, #0x40]
	bl sub_801A43C
_0800B1BE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800B1C4: .4byte gUnknown_02010B20

	thumb_func_start sub_800B1C8
sub_800B1C8: @ 0x0800B1C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	adds r6, r1, #0
	mov sb, r2
	str r3, [sp, #0xc]
	movs r0, #0xe
	mov r8, r0
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	ldr r4, _0800B244 @ =gUnknown_083DC580
	str r4, [sp, #8]
	adds r0, r7, #0
	movs r2, #6
	movs r3, #0
	bl sub_800AACC
	mov r1, sb
	lsls r0, r1, #3
	adds r0, #8
	adds r0, r7, r0
	mov r1, r8
	str r1, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	adds r1, r6, #0
	movs r2, #6
	movs r3, #4
	bl sub_800AACC
	cmp r5, sb
	bhs _0800B268
	ldr r0, [sp, #0x30]
	adds r0, #1
	lsls r0, r0, #0x18
	mov sl, r0
	adds r4, r7, #0
	adds r4, #8
	movs r7, #0xe
	mov r8, r7
_0800B222:
	ldr r0, [sp, #0xc]
	cmp r0, r5
	bls _0800B248
	mov r1, r8
	str r1, [sp]
	movs r7, #0
	str r7, [sp, #4]
	ldr r0, _0800B244 @ =gUnknown_083DC580
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #6
	mov r7, sl
	lsrs r3, r7, #0x18
	bl sub_800AACC
	b _0800B260
	.align 2, 0
_0800B244: .4byte gUnknown_083DC580
_0800B248:
	mov r0, r8
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	ldr r0, _0800B278 @ =gUnknown_083DC580
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #6
	movs r3, #3
	bl sub_800AACC
_0800B260:
	adds r4, #8
	adds r5, #1
	cmp r5, sb
	blo _0800B222
_0800B268:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B278: .4byte gUnknown_083DC580

	thumb_func_start sub_800B27C
sub_800B27C: @ 0x0800B27C
	push {r4, r5, lr}
	sub sp, #0x30
	adds r5, r2, #0
	movs r2, #0
	str r2, [sp, #0x2c]
	ldr r4, _0800B2FC @ =0x040000D4
	add r2, sp, #0x2c
	str r2, [r4]
	mov r2, sp
	str r2, [r4, #4]
	ldr r2, _0800B300 @ =0x8500000B
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	mov r2, sp
	strh r0, [r2, #0x22]
	mov r0, sp
	strh r1, [r0, #0x24]
	mov r1, sp
	movs r0, #0xe
	strh r0, [r1, #0x20]
	movs r0, #2
	strh r0, [r1, #2]
	subs r3, #1
	lsls r0, r3, #3
	adds r0, r0, r3
	ldrh r1, [r1, #0x22]
	adds r0, r0, r1
	strh r0, [r2, #0x22]
	cmp r5, #9
	bls _0800B2E6
	mov r4, sp
_0800B2BA:
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	mov r0, sp
	ldr r1, _0800B304 @ =gUnknown_02010B20
	ldr r2, _0800B308 @ =gUnknown_083DC580
	bl sub_801A43C
	ldrh r0, [r4, #0x22]
	subs r0, #9
	strh r0, [r4, #0x22]
	cmp r5, #9
	bhi _0800B2BA
_0800B2E6:
	mov r0, sp
	strh r5, [r0, #4]
	ldr r1, _0800B304 @ =gUnknown_02010B20
	ldr r2, _0800B308 @ =gUnknown_083DC580
	bl sub_801A43C
	add sp, #0x30
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B2FC: .4byte 0x040000D4
_0800B300: .4byte 0x8500000B
_0800B304: .4byte gUnknown_02010B20
_0800B308: .4byte gUnknown_083DC580

	thumb_func_start sub_800B30C
sub_800B30C: @ 0x0800B30C
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r6, r2, #0
	movs r5, #0
	str r5, [sp, #0x2c]
	ldr r4, _0800B394 @ =0x040000D4
	add r2, sp, #0x2c
	str r2, [r4]
	mov r2, sp
	str r2, [r4, #4]
	ldr r2, _0800B398 @ =0x8500000B
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	mov r2, sp
	strh r0, [r2, #0x22]
	mov r0, sp
	strh r1, [r0, #0x24]
	mov r1, sp
	movs r0, #0xf
	strh r0, [r1, #0x20]
	mov r0, sp
	strh r5, [r0, #2]
	subs r3, #1
	lsls r0, r3, #3
	adds r0, r0, r3
	ldrh r1, [r1, #0x22]
	adds r0, r0, r1
	strh r0, [r2, #0x22]
	cmp r6, #9
	bls _0800B378
	mov r4, sp
_0800B34A:
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #0x1a
	strh r0, [r4, #4]
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r6, r0, #0
	mov r0, sp
	ldr r1, _0800B39C @ =gUnknown_02010B20
	ldr r2, _0800B3A0 @ =gUnknown_083D65F4
	bl sub_801A43C
	ldrh r0, [r4, #0x22]
	subs r0, #9
	strh r0, [r4, #0x22]
	cmp r6, #9
	bhi _0800B34A
_0800B378:
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x1a
	strh r0, [r1, #4]
	ldr r1, _0800B39C @ =gUnknown_02010B20
	ldr r2, _0800B3A0 @ =gUnknown_083D65F4
	mov r0, sp
	bl sub_801A43C
	add sp, #0x30
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B394: .4byte 0x040000D4
_0800B398: .4byte 0x8500000B
_0800B39C: .4byte gUnknown_02010B20
_0800B3A0: .4byte gUnknown_083D65F4

	thumb_func_start sub_800B3A4
sub_800B3A4: @ 0x0800B3A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r3, r1, #0
	cmp r7, #0
	bge _0800B3B6
	movs r7, #0
_0800B3B6:
	cmp r3, #9
	bls _0800B3BC
	movs r3, #9
_0800B3BC:
	movs r2, #0
	str r2, [sp, #0x38]
	ldr r1, _0800B434 @ =0x040000D4
	add r0, sp, #0x38
	str r0, [r1]
	add r0, sp, #0xc
	str r0, [r1, #4]
	ldr r0, _0800B438 @ =0x8500000B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #0xc
	strh r2, [r0, #0x22]
	adds r1, r0, #0
	movs r0, #3
	strh r0, [r1, #0x24]
	adds r0, r1, #0
	strh r2, [r0, #4]
	movs r0, #0xe
	strh r0, [r1, #0x20]
	movs r0, #0x10
	movs r1, #0x19
	adds r2, r3, #0
	movs r3, #1
	bl sub_800B27C
	adds r6, r7, #0
	cmp r7, #4
	bgt _0800B420
	add r4, sp, #0xc
	movs r0, #0
	mov r8, r0
	lsls r0, r7, #3
	adds r5, r0, #0
	adds r5, #0x18
_0800B400:
	strh r5, [r4, #0x22]
	movs r0, #0x11
	strh r0, [r4, #0x24]
	mov r0, r8
	strh r0, [r4, #4]
	movs r0, #1
	strh r0, [r4, #2]
	add r0, sp, #0xc
	ldr r1, _0800B43C @ =gUnknown_02010B20
	ldr r2, _0800B440 @ =gUnknown_083DC580
	bl sub_801A43C
	adds r5, #8
	adds r6, #1
	cmp r6, #4
	ble _0800B400
_0800B420:
	add r0, sp, #0xc
	movs r1, #0
	strh r1, [r0, #0x22]
	strh r1, [r0, #0x24]
	strh r1, [r0, #4]
	cmp r7, #4
	ble _0800B444
	strh r1, [r0, #2]
	b _0800B454
	.align 2, 0
_0800B434: .4byte 0x040000D4
_0800B438: .4byte 0x8500000B
_0800B43C: .4byte gUnknown_02010B20
_0800B440: .4byte gUnknown_083DC580
_0800B444:
	cmp r7, #1
	ble _0800B44E
	add r1, sp, #0xc
	movs r0, #3
	b _0800B452
_0800B44E:
	add r1, sp, #0xc
	movs r0, #4
_0800B452:
	strh r0, [r1, #2]
_0800B454:
	add r2, sp, #0xc
	ldr r0, _0800B4A4 @ =gUnknown_020119F0
	ldr r0, [r0]
	lsrs r0, r0, #4
	movs r1, #3
	ands r0, r1
	movs r4, #0
	strh r0, [r2, #4]
	ldr r1, _0800B4A8 @ =gUnknown_02010B20
	ldr r2, _0800B4AC @ =gUnknown_083DC580
	add r0, sp, #0xc
	bl sub_801A43C
	add r1, sp, #0xc
	movs r0, #0xd8
	strh r0, [r1, #0x22]
	adds r0, r1, #0
	strh r4, [r0, #0x24]
	movs r0, #5
	strh r0, [r1, #2]
	ldr r0, _0800B4B0 @ =gUnknown_02000AD0
	ldr r1, [r0]
	cmp r1, #2
	bls _0800B490
	adds r0, r1, #0
	subs r0, #8
	cmp r0, #2
	bls _0800B490
	cmp r1, #0xc
	bne _0800B50C
_0800B490:
	ldr r0, _0800B4B4 @ =gUnknown_02000394
	ldr r0, [r0]
	adds r0, #1
	cmp r0, #5
	bhi _0800B54E
	lsls r0, r0, #2
	ldr r1, _0800B4B8 @ =_0800B4BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B4A4: .4byte gUnknown_020119F0
_0800B4A8: .4byte gUnknown_02010B20
_0800B4AC: .4byte gUnknown_083DC580
_0800B4B0: .4byte gUnknown_02000AD0
_0800B4B4: .4byte gUnknown_02000394
_0800B4B8: .4byte _0800B4BC
_0800B4BC: @ jump table
	.4byte _0800B4D4 @ case 0
	.4byte _0800B4DA @ case 1
	.4byte _0800B4E0 @ case 2
	.4byte _0800B4E6 @ case 3
	.4byte _0800B4EC @ case 4
	.4byte _0800B4F2 @ case 5
_0800B4D4:
	add r1, sp, #0xc
	movs r0, #0
	b _0800B4F6
_0800B4DA:
	add r1, sp, #0xc
	movs r0, #5
	b _0800B4F6
_0800B4E0:
	add r1, sp, #0xc
	movs r0, #2
	b _0800B4F6
_0800B4E6:
	add r1, sp, #0xc
	movs r0, #8
	b _0800B4F6
_0800B4EC:
	add r1, sp, #0xc
	movs r0, #0xb
	b _0800B4F6
_0800B4F2:
	add r1, sp, #0xc
	movs r0, #0xe
_0800B4F6:
	strh r0, [r1, #4]
	ldr r1, _0800B504 @ =gUnknown_02010B20
	ldr r2, _0800B508 @ =gUnknown_083DC580
	add r0, sp, #0xc
	bl sub_801A43C
	b _0800B54E
	.align 2, 0
_0800B504: .4byte gUnknown_02010B20
_0800B508: .4byte gUnknown_083DC580
_0800B50C:
	cmp r1, #3
	beq _0800B518
	cmp r1, #7
	beq _0800B518
	cmp r1, #0xb
	bne _0800B54E
_0800B518:
	ldr r1, _0800B55C @ =gUnknown_02000810
	ldr r0, [r1, #0x58]
	cmp r0, #9
	bls _0800B524
	movs r0, #9
	str r0, [r1, #0x58]
_0800B524:
	ldr r3, [r1, #0x58]
	adds r3, #0x1a
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0xf
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	ldr r0, _0800B560 @ =gUnknown_083D65F4
	str r0, [sp, #8]
	movs r0, #0xe0
	movs r1, #4
	movs r2, #0
	bl sub_800AACC
	add r0, sp, #0xc
	strh r4, [r0, #4]
	ldr r1, _0800B564 @ =gUnknown_02010B20
	ldr r2, _0800B568 @ =gUnknown_083DC580
	bl sub_801A43C
_0800B54E:
	add sp, #0x3c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B55C: .4byte gUnknown_02000810
_0800B560: .4byte gUnknown_083D65F4
_0800B564: .4byte gUnknown_02010B20
_0800B568: .4byte gUnknown_083DC580

	thumb_func_start sub_800B56C
sub_800B56C: @ 0x0800B56C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r6, r0, #0
	adds r7, r1, #0
	cmp r6, #0
	bge _0800B57A
	movs r6, #0
_0800B57A:
	movs r0, #0
	str r0, [sp, #0x2c]
	ldr r1, _0800B61C @ =0x040000D4
	add r0, sp, #0x2c
	str r0, [r1]
	mov r0, sp
	str r0, [r1, #4]
	ldr r0, _0800B620 @ =0x8500000B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r1, sp
	movs r0, #0xe
	strh r0, [r1, #0x20]
	movs r0, #0x96
	strh r0, [r1, #0x24]
	movs r0, #0x10
	strh r0, [r1, #0x22]
	movs r0, #3
	strh r0, [r1, #4]
	ldr r1, _0800B624 @ =gUnknown_02010B20
	ldr r2, _0800B628 @ =gUnknown_083DC580
	mov r0, sp
	bl sub_801A43C
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0x22]
	adds r0, #8
	strh r0, [r1, #0x22]
	movs r0, #5
	strh r0, [r1, #4]
	movs r4, #0
	cmp r4, r6
	bge _0800B5DE
	cmp r4, r7
	bge _0800B5DE
	mov r5, sp
_0800B5C4:
	mov r0, sp
	ldr r1, _0800B624 @ =gUnknown_02010B20
	ldr r2, _0800B628 @ =gUnknown_083DC580
	bl sub_801A43C
	ldrh r0, [r5, #0x22]
	adds r0, #8
	strh r0, [r5, #0x22]
	adds r4, #1
	cmp r4, r6
	bge _0800B5DE
	cmp r4, r7
	blt _0800B5C4
_0800B5DE:
	mov r1, sp
	movs r0, #8
	strh r0, [r1, #4]
	adds r4, r6, #0
	cmp r4, r7
	bge _0800B604
	mov r5, sp
	subs r4, r7, r4
_0800B5EE:
	mov r0, sp
	ldr r1, _0800B624 @ =gUnknown_02010B20
	ldr r2, _0800B628 @ =gUnknown_083DC580
	bl sub_801A43C
	ldrh r0, [r5, #0x22]
	adds r0, #8
	strh r0, [r5, #0x22]
	subs r4, #1
	cmp r4, #0
	bne _0800B5EE
_0800B604:
	mov r1, sp
	movs r0, #4
	strh r0, [r1, #4]
	ldr r1, _0800B624 @ =gUnknown_02010B20
	ldr r2, _0800B628 @ =gUnknown_083DC580
	mov r0, sp
	bl sub_801A43C
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B61C: .4byte 0x040000D4
_0800B620: .4byte 0x8500000B
_0800B624: .4byte gUnknown_02010B20
_0800B628: .4byte gUnknown_083DC580

	thumb_func_start sub_800B62C
sub_800B62C: @ 0x0800B62C
	push {lr}
	ldr r1, _0800B63C @ =gUnknown_083DC580
	movs r0, #0xe
	bl sub_801A42C
	pop {r0}
	bx r0
	.align 2, 0
_0800B63C: .4byte gUnknown_083DC580

	thumb_func_start sub_800B640
sub_800B640: @ 0x0800B640
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r5, #0
	ldr r0, _0800B698 @ =gUnknown_02015574
	str r5, [r0]
	ldr r0, _0800B69C @ =gUnknown_02015520
	str r5, [r0]
	ldr r4, _0800B6A0 @ =gUnknown_02015570
	str r5, [r4]
	ldr r3, _0800B6A4 @ =gUnknown_020155B4
	str r5, [r3]
	ldr r2, _0800B6A8 @ =gUnknown_02015504
	str r5, [r2]
	ldr r0, _0800B6AC @ =gUnknown_02015568
	str r5, [r0]
	ldr r0, _0800B6B0 @ =gUnknown_02015538
	str r5, [r0]
	ldr r0, _0800B6B4 @ =gUnknown_02015578
	str r5, [r0]
	ldr r0, _0800B6B8 @ =gUnknown_02015510
	str r5, [r0]
	ldr r0, _0800B6BC @ =gUnknown_02015548
	str r5, [r0]
	ldr r0, _0800B6C0 @ =gUnknown_087F7E88
	mov ip, r0
	movs r0, #0x68
	muls r0, r6, r0
	mov r1, ip
	adds r1, #0x48
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r7, r3, #0
	mov r8, r2
	cmp r1, r0
	bne _0800B6C8
	ldr r0, _0800B6C4 @ =gUnknown_0201557C
	str r5, [r0]
	b _0800B6CC
	.align 2, 0
_0800B698: .4byte gUnknown_02015574
_0800B69C: .4byte gUnknown_02015520
_0800B6A0: .4byte gUnknown_02015570
_0800B6A4: .4byte gUnknown_020155B4
_0800B6A8: .4byte gUnknown_02015504
_0800B6AC: .4byte gUnknown_02015568
_0800B6B0: .4byte gUnknown_02015538
_0800B6B4: .4byte gUnknown_02015578
_0800B6B8: .4byte gUnknown_02015510
_0800B6BC: .4byte gUnknown_02015548
_0800B6C0: .4byte gUnknown_087F7E88
_0800B6C4: .4byte gUnknown_0201557C
_0800B6C8:
	ldr r0, _0800B6E8 @ =gUnknown_0201557C
	str r1, [r0]
_0800B6CC:
	movs r0, #0x68
	muls r0, r6, r0
	mov r1, ip
	adds r1, #0x4c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	bne _0800B6F0
	ldr r1, _0800B6EC @ =gUnknown_02015508
	movs r0, #0
	str r0, [r1]
	b _0800B6F4
	.align 2, 0
_0800B6E8: .4byte gUnknown_0201557C
_0800B6EC: .4byte gUnknown_02015508
_0800B6F0:
	ldr r0, _0800B70C @ =gUnknown_02015508
	str r1, [r0]
_0800B6F4:
	movs r0, #0x68
	adds r2, r6, #0
	muls r2, r0, r2
	mov r0, ip
	adds r0, #0x50
	adds r0, r2, r0
	ldr r1, [r0]
	cmp r1, #0
	beq _0800B714
	ldr r0, _0800B710 @ =gUnknown_0201551C
	b _0800B71E
	.align 2, 0
_0800B70C: .4byte gUnknown_02015508
_0800B710: .4byte gUnknown_0201551C
_0800B714:
	ldr r0, _0800B738 @ =gUnknown_0201551C
	mov r1, ip
	adds r1, #4
	adds r1, r2, r1
	ldr r1, [r1]
_0800B71E:
	str r1, [r0]
	movs r0, #0x68
	adds r2, r6, #0
	muls r2, r0, r2
	mov r0, ip
	adds r0, #0x54
	adds r0, r2, r0
	ldr r1, [r0]
	cmp r1, #0
	beq _0800B740
	ldr r0, _0800B73C @ =gUnknown_0201553C
	b _0800B74A
	.align 2, 0
_0800B738: .4byte gUnknown_0201551C
_0800B73C: .4byte gUnknown_0201553C
_0800B740:
	ldr r0, _0800B7EC @ =gUnknown_0201553C
	mov r1, ip
	adds r1, #8
	adds r1, r2, r1
	ldr r1, [r1]
_0800B74A:
	str r1, [r0]
	ldr r1, _0800B7F0 @ =gUnknown_020154FC
	movs r0, #0x68
	adds r2, r6, #0
	muls r2, r0, r2
	mov r0, ip
	adds r0, #0x58
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _0800B7F4 @ =gUnknown_02015518
	mov r0, ip
	adds r0, #0x5c
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _0800B7F8 @ =gUnknown_02015590
	movs r0, #0x6e
	str r0, [r1]
	movs r0, #0xe
	str r0, [r1, #4]
	movs r3, #0x82
	str r3, [r1, #8]
	movs r0, #0xe2
	str r0, [r1, #0xc]
	movs r0, #0x63
	str r0, [r1, #0x10]
	movs r0, #0x65
	str r0, [r1, #0x18]
	subs r0, r6, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0800B794
	str r3, [r1, #0x10]
	movs r0, #0x8c
	str r0, [r1, #0x18]
_0800B794:
	movs r0, #0
	str r0, [sp]
	ldr r1, _0800B7FC @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0800B800 @ =0x85004000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0800B804 @ =gUnknown_02015500
	mov r0, ip
	adds r0, #0x60
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _0800B808 @ =gUnknown_02015530
	mov r0, ip
	adds r0, #0x64
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r1]
	mov r0, ip
	adds r1, r2, r0
	adds r0, r1, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800B85A
	adds r5, #1
	ldr r2, _0800B80C @ =0x04000008
	movs r0, #4
	strh r0, [r2]
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800B81A
	cmp r0, #1
	bgt _0800B810
	cmp r0, #0
	beq _0800B816
	b _0800B828
	.align 2, 0
_0800B7EC: .4byte gUnknown_0201553C
_0800B7F0: .4byte gUnknown_020154FC
_0800B7F4: .4byte gUnknown_02015518
_0800B7F8: .4byte gUnknown_02015590
_0800B7FC: .4byte 0x040000D4
_0800B800: .4byte 0x85004000
_0800B804: .4byte gUnknown_02015500
_0800B808: .4byte gUnknown_02015530
_0800B80C: .4byte 0x04000008
_0800B810:
	cmp r0, #2
	beq _0800B820
	b _0800B828
_0800B816:
	ldrh r0, [r2]
	b _0800B826
_0800B81A:
	ldrh r0, [r2]
	movs r1, #1
	b _0800B824
_0800B820:
	ldrh r0, [r2]
	movs r1, #2
_0800B824:
	orrs r0, r1
_0800B826:
	strh r0, [r2]
_0800B828:
	ldr r2, _0800B88C @ =gTileSet
	movs r0, #0x68
	adds r1, r6, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0x14
	adds r0, r1, r0
	ldr r3, [r0]
	str r3, [r2]
	ldr r2, _0800B890 @ =gUnknown_020154F0
	mov r0, ip
	adds r0, #0x18
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0800B894 @ =gUnknown_020155B0
	str r3, [r0]
	mov r0, ip
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4]
	ldr r1, _0800B898 @ =gUnknown_020154F4
	movs r0, #1
	strb r0, [r1]
_0800B85A:
	movs r0, #0x68
	muls r0, r6, r0
	mov r2, ip
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800B8FC
	adds r5, #1
	ldr r2, _0800B89C @ =0x0400000A
	movs r3, #0x82
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r2]
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800B8AA
	cmp r0, #1
	bgt _0800B8A0
	cmp r0, #0
	beq _0800B8A6
	b _0800B8B8
	.align 2, 0
_0800B88C: .4byte gTileSet
_0800B890: .4byte gUnknown_020154F0
_0800B894: .4byte gUnknown_020155B0
_0800B898: .4byte gUnknown_020154F4
_0800B89C: .4byte 0x0400000A
_0800B8A0:
	cmp r0, #2
	beq _0800B8B0
	b _0800B8B8
_0800B8A6:
	ldrh r0, [r2]
	b _0800B8B6
_0800B8AA:
	ldrh r0, [r2]
	movs r1, #1
	b _0800B8B4
_0800B8B0:
	ldrh r0, [r2]
	movs r1, #2
_0800B8B4:
	orrs r0, r1
_0800B8B6:
	strh r0, [r2]
_0800B8B8:
	ldr r2, _0800B8EC @ =gUnknown_02015528
	movs r0, #0x68
	adds r1, r6, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0x24
	adds r0, r1, r0
	ldr r3, [r0]
	str r3, [r2]
	ldr r2, _0800B8F0 @ =gUnknown_0201556C
	mov r0, ip
	adds r0, #0x28
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0800B8F4 @ =gUnknown_0201552C
	str r3, [r0]
	mov r0, ip
	adds r0, #0x1c
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r7]
	ldr r1, _0800B8F8 @ =gUnknown_02015514
	movs r0, #2
	strb r0, [r1]
	b _0800B970
	.align 2, 0
_0800B8EC: .4byte gUnknown_02015528
_0800B8F0: .4byte gUnknown_0201556C
_0800B8F4: .4byte gUnknown_0201552C
_0800B8F8: .4byte gUnknown_02015514
_0800B8FC:
	cmp r0, #3
	bne _0800B970
	ldr r2, _0800B920 @ =0x0400000A
	movs r3, #0x83
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r2]
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800B92E
	cmp r0, #1
	bgt _0800B924
	cmp r0, #0
	beq _0800B92A
	b _0800B93C
	.align 2, 0
_0800B920: .4byte 0x0400000A
_0800B924:
	cmp r0, #2
	beq _0800B934
	b _0800B93C
_0800B92A:
	ldrh r0, [r2]
	b _0800B93A
_0800B92E:
	ldrh r0, [r2]
	movs r1, #1
	b _0800B938
_0800B934:
	ldrh r0, [r2]
	movs r1, #2
_0800B938:
	orrs r0, r1
_0800B93A:
	strh r0, [r2]
_0800B93C:
	ldr r2, _0800B9A8 @ =gUnknown_0201552C
	movs r0, #0x68
	adds r1, r6, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0x24
	adds r0, r1, r0
	ldr r3, [r0]
	str r3, [r2]
	mov r0, ip
	adds r0, #0x1c
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r7]
	ldr r2, _0800B9AC @ =gUnknown_02015514
	add r1, ip
	adds r1, #0x3f
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r1, _0800B9B0 @ =0x040000D4
	str r3, [r1]
	ldr r0, _0800B9B4 @ =0x0600F000
	str r0, [r1, #4]
	ldr r0, _0800B9B8 @ =0x84000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800B970:
	movs r0, #0x68
	muls r0, r6, r0
	mov r2, ip
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800BA20
	adds r5, #1
	cmp r5, #2
	ble _0800B98A
	b _0800BA9A
_0800B98A:
	ldr r2, _0800B9BC @ =0x0400000C
	movs r3, #0x81
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r2]
	adds r0, r1, #0
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800B9CA
	cmp r0, #1
	bgt _0800B9C0
	cmp r0, #0
	beq _0800B9C6
	b _0800B9D8
	.align 2, 0
_0800B9A8: .4byte gUnknown_0201552C
_0800B9AC: .4byte gUnknown_02015514
_0800B9B0: .4byte 0x040000D4
_0800B9B4: .4byte 0x0600F000
_0800B9B8: .4byte 0x84000400
_0800B9BC: .4byte 0x0400000C
_0800B9C0:
	cmp r0, #2
	beq _0800B9D0
	b _0800B9D8
_0800B9C6:
	ldrh r0, [r2]
	b _0800B9D6
_0800B9CA:
	ldrh r0, [r2]
	movs r1, #1
	b _0800B9D4
_0800B9D0:
	ldrh r0, [r2]
	movs r1, #2
_0800B9D4:
	orrs r0, r1
_0800B9D6:
	strh r0, [r2]
_0800B9D8:
	ldr r2, _0800BA10 @ =gUnknown_02015528
	movs r0, #0x68
	adds r1, r6, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0x34
	adds r0, r1, r0
	ldr r3, [r0]
	str r3, [r2]
	ldr r2, _0800BA14 @ =gUnknown_0201556C
	mov r0, ip
	adds r0, #0x38
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0800BA18 @ =gUnknown_020154F8
	str r3, [r0]
	mov r0, ip
	adds r0, #0x2c
	adds r1, r1, r0
	ldr r0, [r1]
	mov r1, r8
	str r0, [r1]
	ldr r1, _0800BA1C @ =gUnknown_02015540
	movs r0, #2
	strb r0, [r1]
	b _0800BA9A
	.align 2, 0
_0800BA10: .4byte gUnknown_02015528
_0800BA14: .4byte gUnknown_0201556C
_0800BA18: .4byte gUnknown_020154F8
_0800BA1C: .4byte gUnknown_02015540
_0800BA20:
	cmp r0, #3
	bne _0800BA9A
	cmp r5, #1
	ble _0800BA9A
	ldr r2, _0800BA44 @ =0x0400000C
	ldr r3, _0800BA48 @ =0x0000040C
	adds r0, r3, #0
	strh r0, [r2]
	adds r0, r1, #0
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800BA56
	cmp r0, #1
	bgt _0800BA4C
	cmp r0, #0
	beq _0800BA52
	b _0800BA64
	.align 2, 0
_0800BA44: .4byte 0x0400000C
_0800BA48: .4byte 0x0000040C
_0800BA4C:
	cmp r0, #2
	beq _0800BA5C
	b _0800BA64
_0800BA52:
	ldrh r0, [r2]
	b _0800BA62
_0800BA56:
	ldrh r0, [r2]
	movs r1, #1
	b _0800BA60
_0800BA5C:
	ldrh r0, [r2]
	movs r1, #2
_0800BA60:
	orrs r0, r1
_0800BA62:
	strh r0, [r2]
_0800BA64:
	ldr r2, _0800BAF4 @ =gUnknown_020154F8
	movs r0, #0x68
	adds r1, r6, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0x34
	adds r0, r1, r0
	ldr r3, [r0]
	str r3, [r2]
	mov r0, ip
	adds r0, #0x2c
	adds r0, r1, r0
	ldr r0, [r0]
	mov r2, r8
	str r0, [r2]
	ldr r2, _0800BAF8 @ =gUnknown_02015540
	add r1, ip
	adds r1, #0x41
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r1, _0800BAFC @ =0x040000D4
	str r3, [r1]
	ldr r0, _0800BB00 @ =0x0600F000
	str r0, [r1, #4]
	ldr r0, _0800BB04 @ =0x84000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800BA9A:
	ldr r1, _0800BAFC @ =0x040000D4
	movs r0, #0x68
	adds r2, r6, #0
	muls r2, r0, r2
	mov r0, ip
	adds r0, #0x10
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0800BB08 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0800BB0C @ =gUnknown_0201550C
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _0800BB10 @ =gUnknown_02015544
	mov r0, ip
	adds r0, #8
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _0800BB14 @ =gUnknown_02015550
	ldr r0, _0800BB18 @ =sub_800CE34
	str r0, [r1]
	ldr r0, _0800BB1C @ =sub_800CA00
	str r0, [r1, #4]
	ldr r0, _0800BB20 @ =sub_800CC14
	str r0, [r1, #8]
	ldr r0, _0800BB24 @ =sub_800C7F4
	str r0, [r1, #0xc]
	ldr r0, _0800BB28 @ =sub_800C5E0
	str r0, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BAF4: .4byte gUnknown_020154F8
_0800BAF8: .4byte gUnknown_02015540
_0800BAFC: .4byte 0x040000D4
_0800BB00: .4byte 0x0600F000
_0800BB04: .4byte 0x84000400
_0800BB08: .4byte 0x84000080
_0800BB0C: .4byte gUnknown_0201550C
_0800BB10: .4byte gUnknown_02015544
_0800BB14: .4byte gUnknown_02015550
_0800BB18: .4byte sub_800CE34
_0800BB1C: .4byte sub_800CA00
_0800BB20: .4byte sub_800CC14
_0800BB24: .4byte sub_800C7F4
_0800BB28: .4byte sub_800C5E0

	thumb_func_start sub_800BB2C
sub_800BB2C: @ 0x0800BB2C
	push {lr}
	ldr r0, _0800BB40 @ =gUnknown_02015550
	ldr r1, [r0]
	cmp r1, #0
	beq _0800BB3C
	movs r0, #0
	bl _call_via_r1
_0800BB3C:
	pop {r0}
	bx r0
	.align 2, 0
_0800BB40: .4byte gUnknown_02015550

	thumb_func_start sub_800BB44
sub_800BB44: @ 0x0800BB44
	asrs r0, r0, #0x10
	ldr r1, _0800BB50 @ =gUnknown_02015500
	ldr r1, [r1]
	subs r0, r0, r1
	bx lr
	.align 2, 0
_0800BB50: .4byte gUnknown_02015500

	thumb_func_start sub_800BB54
sub_800BB54: @ 0x0800BB54
	asrs r0, r0, #0x10
	ldr r1, _0800BB60 @ =gUnknown_02015530
	ldr r1, [r1]
	subs r0, r0, r1
	bx lr
	.align 2, 0
_0800BB60: .4byte gUnknown_02015530

	thumb_func_start sub_800BB64
sub_800BB64: @ 0x0800BB64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _0800BB88 @ =gUnknown_02000AD0
	ldr r0, [r0]
	subs r0, #4
	cmp r0, #2
	bhi _0800BB90
	ldr r1, [r7, #4]
	ldr r0, _0800BB8C @ =0x0019FFFF
	cmp r1, r0
	bgt _0800BB9A
	adds r0, #1
	b _0800BB98
	.align 2, 0
_0800BB88: .4byte gUnknown_02000AD0
_0800BB8C: .4byte 0x0019FFFF
_0800BB90:
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0800BB9A
	movs r0, #0
_0800BB98:
	str r0, [r7, #4]
_0800BB9A:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0800BBB0
	ldr r0, _0800BBAC @ =gUnknown_02015590
	movs r1, #0x60
	str r1, [r0, #8]
	movs r1, #0x40
	str r1, [r0]
	b _0800BBBA
	.align 2, 0
_0800BBAC: .4byte gUnknown_02015590
_0800BBB0:
	ldr r0, _0800BC1C @ =gUnknown_02015590
	movs r1, #0x8f
	str r1, [r0]
	movs r1, #0xaf
	str r1, [r0, #8]
_0800BBBA:
	ldr r0, [r7]
	bl sub_800BB44
	adds r4, r0, #0
	ldr r0, [r7, #4]
	bl sub_800BB54
	mov sb, r0
	movs r2, #2
	adds r1, r5, #0
	ands r1, r2
	cmp r1, #0
	beq _0800BBD6
	eors r5, r2
_0800BBD6:
	ldr r1, _0800BC1C @ =gUnknown_02015590
	ldr r6, [r1]
	mov r8, r1
	cmp r4, r6
	bge _0800BC68
	ldr r1, _0800BC20 @ =gUnknown_02015500
	mov sl, r1
	ldr r3, [r1]
	cmp r3, #0
	ble _0800BC68
	ldr r1, _0800BC24 @ =gUnknown_02015538
	ldr r1, [r1]
	cmp r1, #0
	bne _0800BC68
	ands r5, r2
	cmp r5, #0
	beq _0800BBFA
	b _0800BD42
_0800BBFA:
	ldr r1, _0800BC28 @ =gUnknown_02015510
	ldr r2, [r1]
	cmp r2, #0
	beq _0800BC54
	subs r5, r6, r4
	subs r1, r3, r5
	cmp r1, r2
	blt _0800BC30
	ldr r1, _0800BC2C @ =gUnknown_02015550
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _0800BC14
	b _0800BD42
_0800BC14:
	adds r0, r5, #0
	bl _call_via_r1
	b _0800BD42
	.align 2, 0
_0800BC1C: .4byte gUnknown_02015590
_0800BC20: .4byte gUnknown_02015500
_0800BC24: .4byte gUnknown_02015538
_0800BC28: .4byte gUnknown_02015510
_0800BC2C: .4byte gUnknown_02015550
_0800BC30:
	ldr r1, _0800BC50 @ =gUnknown_02015550
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _0800BC3E
	subs r0, r3, r2
	bl _call_via_r1
_0800BC3E:
	mov r3, r8
	ldr r2, [r3, #4]
	cmp r4, r2
	blt _0800BC48
	b _0800BD42
_0800BC48:
	mov r3, sl
	ldr r1, [r3]
	b _0800BD3C
	.align 2, 0
_0800BC50: .4byte gUnknown_02015550
_0800BC54:
	ldr r1, _0800BC64 @ =gUnknown_02015550
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _0800BD42
	subs r0, r6, r4
	bl _call_via_r1
	b _0800BD42
	.align 2, 0
_0800BC64: .4byte gUnknown_02015550
_0800BC68:
	mov r1, r8
	ldr r2, [r1, #4]
	cmp r4, r2
	bge _0800BC86
	movs r1, #2
	ands r1, r5
	cmp r1, #0
	bne _0800BD42
	movs r3, #0x98
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r1, [r1]
	cmp r1, #0
	bgt _0800BD42
	b _0800BD38
_0800BC86:
	ldr r3, [r1, #8]
	cmp r4, r3
	ble _0800BD1C
	ldr r1, _0800BCD0 @ =gUnknown_02015500
	mov sl, r1
	ldr r6, [r1]
	adds r1, r6, #0
	adds r1, #0xf0
	ldr r2, _0800BCD4 @ =gUnknown_0201550C
	ldr r2, [r2]
	cmp r1, r2
	bge _0800BD1C
	ldr r1, _0800BCD8 @ =gUnknown_02015538
	ldr r1, [r1]
	cmp r1, #0
	bne _0800BD1C
	movs r1, #2
	ands r1, r5
	cmp r1, #0
	bne _0800BD42
	ldr r1, _0800BCDC @ =gUnknown_02015548
	ldr r2, [r1]
	cmp r2, #0
	beq _0800BD08
	subs r3, r4, r3
	adds r1, r6, r3
	adds r1, #0xef
	cmp r1, r2
	bgt _0800BCE4
	ldr r1, _0800BCE0 @ =gUnknown_02015550
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0800BD42
	adds r0, r3, #0
	bl _call_via_r1
	b _0800BD42
	.align 2, 0
_0800BCD0: .4byte gUnknown_02015500
_0800BCD4: .4byte gUnknown_0201550C
_0800BCD8: .4byte gUnknown_02015538
_0800BCDC: .4byte gUnknown_02015548
_0800BCE0: .4byte gUnknown_02015550
_0800BCE4:
	ldr r1, _0800BD04 @ =gUnknown_02015550
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0800BCF6
	adds r0, r2, #0
	subs r0, #0xef
	subs r0, r0, r6
	bl _call_via_r1
_0800BCF6:
	mov r3, r8
	ldr r2, [r3, #0xc]
	cmp r4, r2
	ble _0800BD42
	mov r3, sl
	ldr r1, [r3]
	b _0800BD3C
	.align 2, 0
_0800BD04: .4byte gUnknown_02015550
_0800BD08:
	ldr r1, _0800BD18 @ =gUnknown_02015550
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0800BD42
	subs r0, r4, r3
	bl _call_via_r1
	b _0800BD42
	.align 2, 0
_0800BD18: .4byte gUnknown_02015550
_0800BD1C:
	ldr r1, _0800BD64 @ =gUnknown_02015590
	ldr r2, [r1, #0xc]
	cmp r4, r2
	ble _0800BD42
	movs r1, #2
	ands r1, r5
	cmp r1, #0
	bne _0800BD42
	movs r3, #0x98
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r1, [r1]
	cmp r1, #0
	blt _0800BD42
_0800BD38:
	ldr r1, _0800BD68 @ =gUnknown_02015500
	ldr r1, [r1]
_0800BD3C:
	adds r1, r1, r2
	lsls r1, r1, #0x10
	str r1, [r7]
_0800BD42:
	ldr r1, _0800BD64 @ =gUnknown_02015590
	ldr r3, [r1, #0x10]
	cmp sb, r3
	bge _0800BD74
	ldr r1, _0800BD6C @ =gUnknown_02015550
	ldr r2, [r1, #0xc]
	cmp r2, #0
	beq _0800BDA0
	ldr r1, _0800BD70 @ =gUnknown_02015578
	ldr r1, [r1]
	cmp r1, #0
	bne _0800BDA0
	mov r1, sb
	subs r0, r3, r1
	bl _call_via_r2
	b _0800BDA0
	.align 2, 0
_0800BD64: .4byte gUnknown_02015590
_0800BD68: .4byte gUnknown_02015500
_0800BD6C: .4byte gUnknown_02015550
_0800BD70: .4byte gUnknown_02015578
_0800BD74:
	ldr r3, [r1, #0x18]
	cmp sb, r3
	ble _0800BDA0
	ldr r1, _0800BDB0 @ =gUnknown_02015530
	ldr r1, [r1]
	adds r1, #0x9f
	ldr r2, _0800BDB4 @ =gUnknown_02015544
	ldr r2, [r2]
	cmp r1, r2
	bge _0800BDA0
	ldr r1, _0800BDB8 @ =gUnknown_02015550
	ldr r2, [r1, #0x10]
	cmp r2, #0
	beq _0800BDA0
	ldr r1, _0800BDBC @ =gUnknown_02015578
	ldr r1, [r1]
	cmp r1, #0
	bne _0800BDA0
	mov r1, sb
	subs r0, r1, r3
	bl _call_via_r2
_0800BDA0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BDB0: .4byte gUnknown_02015530
_0800BDB4: .4byte gUnknown_02015544
_0800BDB8: .4byte gUnknown_02015550
_0800BDBC: .4byte gUnknown_02015578

	thumb_func_start sub_800BDC0
sub_800BDC0: @ 0x0800BDC0
	ldr r1, _0800BDC8 @ =gUnknown_02015538
	str r0, [r1]
	bx lr
	.align 2, 0
_0800BDC8: .4byte gUnknown_02015538

	thumb_func_start sub_800BDCC
sub_800BDCC: @ 0x0800BDCC
	ldr r1, _0800BDD4 @ =gUnknown_02015578
	str r0, [r1]
	bx lr
	.align 2, 0
_0800BDD4: .4byte gUnknown_02015578

	thumb_func_start sub_800BDD8
sub_800BDD8: @ 0x0800BDD8
	ldr r2, _0800BDE4 @ =gUnknown_02015500
	str r0, [r2]
	ldr r0, _0800BDE8 @ =gUnknown_02015530
	str r1, [r0]
	bx lr
	.align 2, 0
_0800BDE4: .4byte gUnknown_02015500
_0800BDE8: .4byte gUnknown_02015530

	thumb_func_start sub_800BDEC
sub_800BDEC: @ 0x0800BDEC
	ldr r2, _0800BDF8 @ =gUnknown_0201550C
	str r0, [r2]
	ldr r0, _0800BDFC @ =gUnknown_02015544
	str r1, [r0]
	bx lr
	.align 2, 0
_0800BDF8: .4byte gUnknown_0201550C
_0800BDFC: .4byte gUnknown_02015544

	thumb_func_start sub_800BE00
sub_800BE00: @ 0x0800BE00
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r1, _0800BE2C @ =gUnknown_0201551C
	ldr r0, [r1]
	asrs r2, r0, #3
	ldr r0, _0800BE30 @ =gUnknown_0201553C
	ldr r0, [r0]
	asrs r3, r0, #3
	ldr r0, _0800BE34 @ =gUnknown_020154FC
	ldr r0, [r0]
	mov ip, r1
	cmp r0, #0
	bne _0800BE38
	cmp r5, #0
	blt _0800BE76
	cmp r5, r2
	blt _0800BE4A
	b _0800BE76
	.align 2, 0
_0800BE2C: .4byte gUnknown_0201551C
_0800BE30: .4byte gUnknown_0201553C
_0800BE34: .4byte gUnknown_020154FC
_0800BE38:
	cmp r5, #0
	bge _0800BE46
_0800BE3C:
	adds r5, r5, r2
	cmp r5, #0
	blt _0800BE3C
	b _0800BE4A
_0800BE44:
	subs r5, r5, r2
_0800BE46:
	cmp r5, r2
	bge _0800BE44
_0800BE4A:
	ldr r0, _0800BE5C @ =gUnknown_02015518
	ldr r0, [r0]
	cmp r0, #0
	bne _0800BE60
	cmp r4, #0
	blt _0800BE76
	cmp r4, r3
	blt _0800BE72
	b _0800BE76
	.align 2, 0
_0800BE5C: .4byte gUnknown_02015518
_0800BE60:
	cmp r4, #0
	bge _0800BE6E
_0800BE64:
	adds r4, r4, r3
	cmp r4, #0
	blt _0800BE64
	b _0800BE72
_0800BE6C:
	subs r4, r4, r3
_0800BE6E:
	cmp r4, r3
	bge _0800BE6C
_0800BE72:
	cmp r6, #0
	bne _0800BE7A
_0800BE76:
	movs r0, #0
	b _0800BEA8
_0800BE7A:
	movs r1, #1
	adds r2, r5, #0
	ands r2, r1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800BE8A
	adds r2, #2
_0800BE8A:
	asrs r5, r5, #1
	asrs r4, r4, #1
	mov r1, ip
	ldr r0, [r1]
	asrs r0, r0, #4
	muls r0, r4, r0
	adds r0, r5, r0
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
_0800BEA8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800BEB0
sub_800BEB0: @ 0x0800BEB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov sl, r1
	mov sb, r2
	str r3, [sp]
	ldr r0, [sp, #0x2c]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0x1f
	mov r3, sl
	ands r3, r0
	mov sl, r3
	ldr r0, _0800BEF8 @ =gUnknown_020154FC
	ldr r0, [r0]
	cmp r0, #0
	bne _0800BEEE
	mov r4, r8
	cmp r4, #0
	bge _0800BEE2
	b _0800C03E
_0800BEE2:
	ldr r0, _0800BEFC @ =gUnknown_0201551C
	ldr r0, [r0]
	asrs r0, r0, #3
	cmp r8, r0
	blt _0800BEEE
	b _0800C03E
_0800BEEE:
	cmp r1, #2
	beq _0800BF00
	cmp r1, #3
	beq _0800BF90
	b _0800C03E
	.align 2, 0
_0800BEF8: .4byte gUnknown_020154FC
_0800BEFC: .4byte gUnknown_0201551C
_0800BF00:
	movs r6, #1
	rsbs r6, r6, #0
	mov r7, sl
	lsls r0, r7, #1
	ldr r1, [sp]
	adds r0, r1, r0
	str r0, [sp, #4]
_0800BF0E:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _0800BF1C
	mov r2, sb
	cmp r2, #0
	beq _0800BF76
_0800BF1C:
	mov r3, sb
	adds r4, r6, r3
	adds r0, r4, #0
	movs r1, #0x16
	bl __modsi3
	adds r5, r0, #0
	cmp r5, #0
	bge _0800BF30
	adds r5, #0x16
_0800BF30:
	movs r0, #0x1f
	ands r0, r4
	lsls r0, r0, #6
	ldr r1, [sp, #4]
	adds r7, r1, r0
	ldr r0, _0800BF80 @ =gUnknown_0201556C
	ldr r3, [r0]
	mov r0, r8
	adds r1, r4, #0
	ldr r2, [sp, #0x28]
	bl sub_800BE00
	ldr r3, _0800BF84 @ =0x03FFFFFF
	ands r3, r0
	movs r2, #0xfc
	lsls r2, r2, #0x18
	ands r2, r0
	lsls r1, r5, #5
	add r1, sl
	adds r0, r1, #0
	adds r0, #0xc0
	lsls r0, r0, #0x10
	orrs r0, r2
	lsrs r0, r0, #0x10
	strh r0, [r7]
	ldr r0, _0800BF88 @ =gUnknown_02015528
	lsls r3, r3, #5
	ldr r0, [r0]
	adds r0, r0, r3
	lsls r1, r1, #5
	ldr r2, _0800BF8C @ =0x06009800
	adds r1, r1, r2
	movs r2, #0x10
	bl CpuSet
_0800BF76:
	adds r6, #1
	cmp r6, #0x14
	ble _0800BF0E
	b _0800C03E
	.align 2, 0
_0800BF80: .4byte gUnknown_0201556C
_0800BF84: .4byte 0x03FFFFFF
_0800BF88: .4byte gUnknown_02015528
_0800BF8C: .4byte 0x06009800
_0800BF90:
	mov r3, r8
	cmp r3, #0
	bge _0800BFAC
	ldr r4, _0800BFA8 @ =gUnknown_0201551C
	ldr r0, [r4]
	asrs r0, r0, #3
_0800BF9C:
	add r8, r0
	mov r7, r8
	cmp r7, #0
	blt _0800BF9C
	b _0800BFC4
	.align 2, 0
_0800BFA8: .4byte gUnknown_0201551C
_0800BFAC:
	ldr r1, _0800C050 @ =gUnknown_0201551C
	ldr r0, [r1]
	asrs r0, r0, #3
	cmp r8, r0
	blt _0800BFC4
	ldr r0, [r1]
	asrs r0, r0, #3
_0800BFBA:
	mov r3, r8
	subs r3, r3, r0
	mov r8, r3
	cmp r8, r0
	bge _0800BFBA
_0800BFC4:
	movs r6, #1
	rsbs r6, r6, #0
	ldr r4, _0800C054 @ =gUnknown_0201553C
	mov ip, r4
_0800BFCC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _0800BFDC
	movs r3, #0
	mov r7, sb
	cmp r7, #0
	beq _0800C038
_0800BFDC:
	adds r0, r2, r6
	mov r1, sb
	adds r4, r6, r1
	mov r3, sl
	lsls r5, r3, #1
	adds r3, r6, #1
	cmp r0, #0
	bge _0800BFFA
	mov r7, ip
	ldr r0, [r7]
	asrs r1, r0, #3
_0800BFF2:
	adds r2, r2, r1
	adds r0, r2, r6
	cmp r0, #0
	blt _0800BFF2
_0800BFFA:
	adds r1, r2, r6
	mov r7, ip
	ldr r0, [r7]
	asrs r0, r0, #3
	cmp r1, r0
	blt _0800C010
	adds r1, r0, #0
_0800C008:
	subs r2, r2, r1
	adds r0, r2, r6
	cmp r0, r1
	bge _0800C008
_0800C010:
	ldr r0, [sp]
	adds r1, r0, r5
	movs r0, #0x1f
	ands r4, r0
	lsls r0, r4, #6
	adds r7, r1, r0
	adds r1, r2, r6
	ldr r4, _0800C050 @ =gUnknown_0201551C
	ldr r0, [r4]
	asrs r0, r0, #3
	muls r0, r1, r0
	add r0, r8
	lsls r0, r0, #1
	ldr r1, [sp, #0x28]
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r0, r4
	strh r0, [r7]
_0800C038:
	adds r6, r3, #0
	cmp r6, #0x14
	ble _0800BFCC
_0800C03E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C050: .4byte gUnknown_0201551C
_0800C054: .4byte gUnknown_0201553C

	thumb_func_start sub_800C058
sub_800C058: @ 0x0800C058
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	str r1, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0x38]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r5, [sp]
	cmp r2, #0
	bge _0800C078
	b _0800C21E
_0800C078:
	ldr r0, _0800C09C @ =gUnknown_02015518
	ldr r0, [r0]
	cmp r0, #0
	bne _0800C092
	cmp r7, #0
	bge _0800C086
	b _0800C21E
_0800C086:
	ldr r0, _0800C0A0 @ =gUnknown_0201553C
	ldr r0, [r0]
	asrs r0, r0, #3
	cmp r7, r0
	blt _0800C092
	b _0800C21E
_0800C092:
	cmp r1, #2
	beq _0800C0A4
	cmp r1, #3
	beq _0800C188
	b _0800C21E
	.align 2, 0
_0800C09C: .4byte gUnknown_02015518
_0800C0A0: .4byte gUnknown_0201553C
_0800C0A4:
	ldr r1, _0800C170 @ =gUnknown_0201553C
	cmp r7, #0
	bge _0800C0B4
	ldr r0, [r1]
	asrs r0, r0, #3
_0800C0AE:
	adds r7, r7, r0
	cmp r7, #0
	blt _0800C0AE
_0800C0B4:
	ldr r0, [r1]
	asrs r0, r0, #3
	cmp r7, r0
	blt _0800C0C2
_0800C0BC:
	subs r7, r7, r0
	cmp r7, r0
	bge _0800C0BC
_0800C0C2:
	movs r6, #1
	rsbs r6, r6, #0
	movs r0, #0x1f
	mov sl, r0
	adds r0, r2, #0
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #6
	str r0, [sp, #8]
	adds r0, r2, #0
	movs r1, #0x16
	bl __modsi3
	lsls r0, r0, #5
	str r0, [sp, #0xc]
_0800C0E0:
	adds r0, r5, r6
	ldr r2, [sp]
	adds r3, r6, r2
	adds r1, r6, #1
	mov sb, r1
	cmp r0, #0
	bge _0800C0FC
	ldr r0, _0800C174 @ =gUnknown_0201551C
	ldr r0, [r0]
	asrs r1, r0, #3
_0800C0F4:
	adds r5, r5, r1
	adds r0, r5, r6
	cmp r0, #0
	blt _0800C0F4
_0800C0FC:
	adds r1, r5, r6
	ldr r2, _0800C174 @ =gUnknown_0201551C
	ldr r0, [r2]
	asrs r0, r0, #3
	cmp r1, r0
	blt _0800C116
	adds r0, r2, #0
	ldr r0, [r0]
	asrs r1, r0, #3
_0800C10E:
	subs r5, r5, r1
	adds r0, r5, r6
	cmp r0, r1
	bge _0800C10E
_0800C116:
	mov r4, sl
	ands r4, r3
	lsls r0, r4, #1
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldr r2, [sp, #8]
	adds r0, r0, r2
	mov r8, r0
	adds r0, r5, r6
	ldr r1, _0800C178 @ =gUnknown_0201556C
	ldr r3, [r1]
	adds r1, r7, #0
	ldr r2, [sp, #0x34]
	bl sub_800BE00
	ldr r2, _0800C17C @ =0x03FFFFFF
	ands r2, r0
	movs r1, #0xfc
	lsls r1, r1, #0x18
	ands r1, r0
	ldr r0, [sp, #0xc]
	adds r4, r0, r4
	adds r0, r4, #0
	adds r0, #0xc0
	lsls r0, r0, #0x10
	orrs r0, r1
	lsrs r0, r0, #0x10
	mov r1, r8
	strh r0, [r1]
	ldr r0, _0800C180 @ =gUnknown_02015528
	lsls r2, r2, #5
	ldr r0, [r0]
	adds r0, r0, r2
	lsls r4, r4, #5
	ldr r2, _0800C184 @ =0x06009800
	adds r4, r4, r2
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	mov r6, sb
	cmp r6, #0x1e
	ble _0800C0E0
	b _0800C21E
	.align 2, 0
_0800C170: .4byte gUnknown_0201553C
_0800C174: .4byte gUnknown_0201551C
_0800C178: .4byte gUnknown_0201556C
_0800C17C: .4byte 0x03FFFFFF
_0800C180: .4byte gUnknown_02015528
_0800C184: .4byte 0x06009800
_0800C188:
	ldr r1, _0800C230 @ =gUnknown_0201553C
	cmp r7, #0
	bge _0800C198
	ldr r0, [r1]
	asrs r0, r0, #3
_0800C192:
	adds r7, r7, r0
	cmp r7, #0
	blt _0800C192
_0800C198:
	ldr r0, [r1]
	asrs r0, r0, #3
	cmp r7, r0
	blt _0800C1A6
_0800C1A0:
	subs r7, r7, r0
	cmp r7, r0
	bge _0800C1A0
_0800C1A6:
	ldr r1, _0800C234 @ =gUnknown_0201551C
	ldr r0, [r1]
	asrs r0, r0, #3
	muls r7, r0, r7
	movs r6, #1
	rsbs r6, r6, #0
	mov sl, r1
	movs r0, #0x1f
	mov ip, r0
	ands r2, r0
	lsls r2, r2, #6
	str r2, [sp, #0x10]
	mov r4, sl
_0800C1C0:
	adds r0, r5, r6
	ldr r1, [sp]
	adds r3, r6, r1
	adds r2, r6, #1
	mov sb, r2
	cmp r0, #0
	bge _0800C1DA
	ldr r0, [r4]
	asrs r1, r0, #3
_0800C1D2:
	adds r5, r5, r1
	adds r0, r5, r6
	cmp r0, #0
	blt _0800C1D2
_0800C1DA:
	adds r1, r5, r6
	mov r2, sl
	ldr r0, [r2]
	asrs r0, r0, #3
	cmp r1, r0
	blt _0800C1F2
	ldr r0, [r4]
	asrs r1, r0, #3
_0800C1EA:
	subs r5, r5, r1
	adds r0, r5, r6
	cmp r0, r1
	bge _0800C1EA
_0800C1F2:
	mov r0, ip
	ands r3, r0
	lsls r0, r3, #1
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldr r2, [sp, #0x10]
	adds r0, r0, r2
	mov r8, r0
	adds r0, r5, r6
	adds r0, r0, r7
	lsls r0, r0, #1
	ldr r1, [sp, #0x34]
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r1, r8
	strh r0, [r1]
	mov r6, sb
	cmp r6, #0x1e
	ble _0800C1C0
_0800C21E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C230: .4byte gUnknown_0201553C
_0800C234: .4byte gUnknown_0201551C

	thumb_func_start sub_800C238
sub_800C238: @ 0x0800C238
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	cmp r5, #0
	blt _0800C262
	ldr r0, _0800C268 @ =gUnknown_0201550C
	ldr r3, [r0]
	asrs r0, r3, #3
	cmp r5, r0
	bge _0800C262
	cmp r4, #0
	blt _0800C262
	ldr r0, _0800C26C @ =gUnknown_02015544
	ldr r0, [r0]
	asrs r0, r0, #3
	cmp r4, r0
	bge _0800C262
	cmp r6, #0
	bne _0800C270
_0800C262:
	movs r0, #0
	b _0800C29A
	.align 2, 0
_0800C268: .4byte gUnknown_0201550C
_0800C26C: .4byte gUnknown_02015544
_0800C270:
	movs r1, #1
	adds r2, r5, #0
	ands r2, r1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800C280
	adds r2, #2
_0800C280:
	asrs r5, r5, #1
	asrs r4, r4, #1
	asrs r0, r3, #4
	muls r0, r4, r0
	adds r0, r5, r0
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
_0800C29A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800C2A0
sub_800C2A0: @ 0x0800C2A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	str r2, [sp]
	adds r2, r3, #0
	ldr r0, [sp, #0x30]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r3, r1, #0
	movs r0, #0x1f
	mov r4, sb
	ands r4, r0
	mov sb, r4
	mov r0, sl
	cmp r0, #0
	bge _0800C2CC
	b _0800C434
_0800C2CC:
	ldr r4, _0800C2E8 @ =gUnknown_0201550C
	ldr r0, [r4]
	asrs r0, r0, #3
	cmp sl, r0
	blt _0800C2D8
	b _0800C434
_0800C2D8:
	cmp r1, #2
	beq _0800C370
	cmp r1, #2
	bgt _0800C2EC
	cmp r1, #1
	beq _0800C2F4
	b _0800C434
	.align 2, 0
_0800C2E8: .4byte gUnknown_0201550C
_0800C2EC:
	cmp r3, #3
	bne _0800C2F2
	b _0800C3F8
_0800C2F2:
	b _0800C434
_0800C2F4:
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	mov r4, sb
	lsls r3, r4, #1
	adds r2, r2, r3
	str r2, [sp, #4]
_0800C302:
	ldr r4, [sp]
	add r4, r8
	movs r0, #0x1f
	ands r0, r4
	lsls r0, r0, #6
	ldr r1, [sp, #4]
	adds r7, r1, r0
	ldr r0, _0800C360 @ =gUnknown_020154F0
	ldr r3, [r0]
	mov r0, sl
	adds r1, r4, #0
	ldr r2, [sp, #0x2c]
	bl sub_800C238
	adds r5, r0, #0
	ldr r6, _0800C364 @ =0x03FFFFFF
	ands r6, r5
	movs r0, #0xfc
	lsls r0, r0, #0x18
	ands r5, r0
	lsrs r5, r5, #0x10
	adds r0, r4, #0
	movs r1, #0x16
	bl __modsi3
	adds r1, r0, #0
	lsls r1, r1, #5
	add r1, sb
	orrs r5, r1
	strh r5, [r7]
	ldr r0, _0800C368 @ =gTileSet
	lsls r2, r6, #5
	ldr r0, [r0]
	adds r0, r0, r2
	lsls r1, r1, #5
	ldr r2, _0800C36C @ =0x06004000
	adds r1, r1, r2
	movs r2, #0x10
	bl CpuSet
	movs r4, #1
	add r8, r4
	mov r0, r8
	cmp r0, #0x14
	ble _0800C302
	b _0800C434
	.align 2, 0
_0800C360: .4byte gUnknown_020154F0
_0800C364: .4byte 0x03FFFFFF
_0800C368: .4byte gTileSet
_0800C36C: .4byte 0x06004000
_0800C370:
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	mov r4, sb
	lsls r3, r4, #1
	adds r2, r2, r3
	str r2, [sp, #8]
_0800C37E:
	ldr r4, [sp]
	add r4, r8
	adds r0, r4, #0
	movs r1, #0x16
	bl __modsi3
	adds r6, r0, #0
	cmp r6, #0
	bge _0800C392
	adds r6, #0x16
_0800C392:
	movs r0, #0x1f
	ands r0, r4
	lsls r0, r0, #6
	ldr r1, [sp, #8]
	adds r7, r1, r0
	ldr r0, _0800C3E8 @ =gUnknown_0201556C
	ldr r3, [r0]
	mov r0, sl
	adds r1, r4, #0
	ldr r2, [sp, #0x2c]
	bl sub_800C238
	adds r5, r0, #0
	ldr r3, _0800C3EC @ =0x03FFFFFF
	ands r3, r5
	movs r2, #0xfc
	lsls r2, r2, #0x18
	ands r2, r5
	lsls r1, r6, #5
	add r1, sb
	adds r0, r1, #0
	adds r0, #0xc0
	lsls r0, r0, #0x10
	orrs r0, r2
	lsrs r0, r0, #0x10
	strh r0, [r7]
	ldr r0, _0800C3F0 @ =gUnknown_02015528
	lsls r3, r3, #5
	ldr r0, [r0]
	adds r0, r0, r3
	lsls r1, r1, #5
	ldr r2, _0800C3F4 @ =0x06009800
	adds r1, r1, r2
	movs r2, #0x10
	bl CpuSet
	movs r4, #1
	add r8, r4
	mov r0, r8
	cmp r0, #0x14
	ble _0800C37E
	b _0800C434
	.align 2, 0
_0800C3E8: .4byte gUnknown_0201556C
_0800C3EC: .4byte 0x03FFFFFF
_0800C3F0: .4byte gUnknown_02015528
_0800C3F4: .4byte 0x06009800
_0800C3F8:
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	mov r0, sb
	lsls r3, r0, #1
	adds r3, r2, r3
	movs r6, #0x1f
	movs r2, #0xc0
	lsls r2, r2, #1
_0800C40A:
	ldr r1, [sp]
	add r1, r8
	adds r0, r1, #0
	ands r0, r6
	lsls r0, r0, #6
	adds r7, r3, r0
	ldr r0, [r4]
	asrs r0, r0, #3
	muls r0, r1, r0
	add r0, sl
	lsls r0, r0, #1
	ldr r1, [sp, #0x2c]
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r5, r0, r2
	strh r5, [r7]
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0x14
	ble _0800C40A
_0800C434:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800C444
sub_800C444: @ 0x0800C444
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	mov r8, r1
	mov sb, r3
	ldr r0, [sp, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r3, r1, #0
	cmp r7, #0
	bge _0800C464
	b _0800C5CC
_0800C464:
	ldr r0, _0800C480 @ =gUnknown_02015544
	ldr r0, [r0]
	asrs r0, r0, #3
	cmp r7, r0
	blt _0800C470
	b _0800C5CC
_0800C470:
	cmp r1, #2
	beq _0800C50C
	cmp r1, #2
	bgt _0800C484
	cmp r1, #1
	beq _0800C48C
	b _0800C5CC
	.align 2, 0
_0800C480: .4byte gUnknown_02015544
_0800C484:
	cmp r3, #3
	bne _0800C48A
	b _0800C590
_0800C48A:
	b _0800C5CC
_0800C48C:
	movs r6, #1
	rsbs r6, r6, #0
	movs r0, #0x1f
	mov sl, r0
	adds r0, r2, #0
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #6
	str r0, [sp]
	adds r0, r2, #0
	movs r1, #0x16
	bl __modsi3
	lsls r0, r0, #5
	str r0, [sp, #4]
_0800C4AA:
	mov r2, r8
	adds r0, r6, r2
	adds r4, r0, #0
	mov r5, sl
	ands r4, r5
	lsls r1, r4, #1
	add r1, sb
	ldr r2, [sp]
	adds r5, r1, r2
	ldr r1, _0800C4FC @ =gUnknown_020154F0
	ldr r3, [r1]
	adds r1, r7, #0
	ldr r2, [sp, #0x30]
	bl sub_800C238
	ldr r2, _0800C500 @ =0x03FFFFFF
	ands r2, r0
	movs r1, #0xfc
	lsls r1, r1, #0x18
	ands r1, r0
	ldr r0, [sp, #4]
	adds r4, r0, r4
	lsls r0, r4, #0x10
	orrs r0, r1
	lsrs r0, r0, #0x10
	strh r0, [r5]
	ldr r0, _0800C504 @ =gTileSet
	lsls r2, r2, #5
	ldr r0, [r0]
	adds r0, r0, r2
	lsls r4, r4, #5
	ldr r1, _0800C508 @ =0x06004000
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	adds r6, #1
	cmp r6, #0x1e
	ble _0800C4AA
	b _0800C5CC
	.align 2, 0
_0800C4FC: .4byte gUnknown_020154F0
_0800C500: .4byte 0x03FFFFFF
_0800C504: .4byte gTileSet
_0800C508: .4byte 0x06004000
_0800C50C:
	movs r6, #1
	rsbs r6, r6, #0
	movs r5, #0x1f
	mov sl, r5
	adds r0, r2, #0
	ands r0, r5
	lsls r0, r0, #6
	str r0, [sp, #8]
	adds r0, r2, #0
	movs r1, #0x16
	bl __modsi3
	lsls r0, r0, #5
	str r0, [sp, #0xc]
_0800C528:
	mov r1, r8
	adds r0, r6, r1
	adds r4, r0, #0
	mov r2, sl
	ands r4, r2
	lsls r1, r4, #1
	add r1, sb
	ldr r2, [sp, #8]
	adds r5, r1, r2
	ldr r1, _0800C580 @ =gUnknown_0201556C
	ldr r3, [r1]
	adds r1, r7, #0
	ldr r2, [sp, #0x30]
	bl sub_800C238
	ldr r2, _0800C584 @ =0x03FFFFFF
	ands r2, r0
	movs r1, #0xfc
	lsls r1, r1, #0x18
	ands r1, r0
	ldr r0, [sp, #0xc]
	adds r4, r0, r4
	adds r0, r4, #0
	adds r0, #0xc0
	lsls r0, r0, #0x10
	orrs r0, r1
	lsrs r0, r0, #0x10
	strh r0, [r5]
	ldr r0, _0800C588 @ =gUnknown_02015528
	lsls r2, r2, #5
	ldr r0, [r0]
	adds r0, r0, r2
	lsls r4, r4, #5
	ldr r1, _0800C58C @ =0x06009800
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	adds r6, #1
	cmp r6, #0x1e
	ble _0800C528
	b _0800C5CC
	.align 2, 0
_0800C580: .4byte gUnknown_0201556C
_0800C584: .4byte 0x03FFFFFF
_0800C588: .4byte gUnknown_02015528
_0800C58C: .4byte 0x06009800
_0800C590:
	ldr r0, _0800C5DC @ =gUnknown_0201550C
	ldr r0, [r0]
	asrs r0, r0, #3
	muls r7, r0, r7
	movs r6, #1
	rsbs r6, r6, #0
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #6
	mov r5, r8
	adds r0, r5, r7
	subs r0, #1
	movs r4, #0xc0
	lsls r4, r4, #1
	lsls r0, r0, #1
	ldr r5, [sp, #0x30]
	adds r1, r0, r5
_0800C5B2:
	mov r5, r8
	adds r0, r6, r5
	ands r0, r3
	lsls r0, r0, #1
	add r0, sb
	adds r5, r0, r2
	ldrh r0, [r1]
	adds r0, r0, r4
	strh r0, [r5]
	adds r1, #2
	adds r6, #1
	cmp r6, #0x1e
	ble _0800C5B2
_0800C5CC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C5DC: .4byte gUnknown_0201550C

	thumb_func_start sub_800C5E0
sub_800C5E0: @ 0x0800C5E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r1, _0800C774 @ =gUnknown_020119FC
	movs r0, #0
	str r0, [r1]
	cmp r5, #7
	ble _0800C5FA
	movs r5, #7
_0800C5FA:
	ldr r0, _0800C778 @ =gUnknown_02015530
	ldr r2, [r0]
	adds r1, r2, r5
	adds r1, #0x9f
	ldr r0, _0800C77C @ =gUnknown_02015544
	ldr r3, [r0]
	subs r0, r3, #1
	cmp r1, r0
	blt _0800C612
	adds r0, r2, #0
	adds r0, #0xa0
	subs r5, r3, r0
_0800C612:
	adds r7, r2, r5
	asrs r0, r2, #3
	asrs r2, r7, #3
	cmp r0, r2
	beq _0800C6D4
	adds r4, r2, #0
	adds r4, #0x14
	ldr r6, _0800C780 @ =gUnknown_02015500
	ldr r1, [r6]
	asrs r1, r1, #3
	movs r3, #0xc0
	lsls r3, r3, #0x13
	ldr r0, _0800C784 @ =gUnknown_02015570
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _0800C788 @ =gUnknown_020154F4
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r4, #0
	bl sub_800C444
	ldr r0, _0800C78C @ =gUnknown_020155B4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C65C
	ldr r1, [r6]
	asrs r1, r1, #3
	ldr r3, _0800C790 @ =0x06001000
	str r0, [sp]
	ldr r0, _0800C794 @ =gUnknown_02015514
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r4, #0
	bl sub_800C444
_0800C65C:
	ldr r0, _0800C798 @ =gUnknown_02015568
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C67A
	ldr r1, [r6]
	asrs r1, r1, #3
	ldr r3, _0800C79C @ =0x06003000
	str r0, [sp]
	ldr r0, _0800C7A0 @ =gUnknown_02015534
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r4, #0
	bl sub_800C444
_0800C67A:
	ldr r0, _0800C7A4 @ =gUnknown_02015508
	ldr r0, [r0]
	cmp r0, #0
	bne _0800C6DC
	ldr r0, _0800C7A8 @ =gUnknown_02015504
	mov sb, r0
	ldr r2, [r0]
	cmp r2, #0
	beq _0800C6D4
	ldr r1, _0800C7AC @ =gUnknown_0201557C
	mov r8, r1
	ldr r0, [r1]
	cmp r0, #0
	bne _0800C6AC
	ldr r1, [r6]
	asrs r1, r1, #3
	ldr r3, _0800C7B0 @ =0x06002000
	str r2, [sp]
	ldr r0, _0800C7B4 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r4, #0
	bl sub_800C444
_0800C6AC:
	mov r0, sb
	ldr r2, [r0]
	cmp r2, #0
	beq _0800C6D4
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq _0800C6D4
	ldr r0, _0800C7B8 @ =gUnknown_02015574
	ldr r1, [r0]
	lsrs r1, r1, #0x13
	ldr r3, _0800C7B0 @ =0x06002000
	str r2, [sp]
	ldr r0, _0800C7B4 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r4, #0
	bl sub_800C444
_0800C6D4:
	ldr r0, _0800C7A4 @ =gUnknown_02015508
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C74C
_0800C6DC:
	ldr r0, _0800C7A4 @ =gUnknown_02015508
	ldr r0, [r0]
	adds r2, r5, #0
	muls r2, r0, r2
	mov sl, r2
	ldr r0, _0800C7BC @ =gUnknown_02015520
	mov r8, r0
	ldr r0, [r0]
	adds r1, r0, r2
	lsrs r1, r1, #0x13
	lsrs r0, r0, #0x13
	cmp r1, r0
	bls _0800C74C
	ldr r6, _0800C7A8 @ =gUnknown_02015504
	ldr r4, [r6]
	cmp r4, #0
	beq _0800C74C
	ldr r5, _0800C7AC @ =gUnknown_0201557C
	ldr r0, [r5]
	cmp r0, #0
	bne _0800C720
	adds r2, r1, #0
	adds r2, #0x14
	ldr r0, _0800C780 @ =gUnknown_02015500
	ldr r1, [r0]
	asrs r1, r1, #3
	ldr r3, _0800C7B0 @ =0x06002000
	str r4, [sp]
	ldr r0, _0800C7B4 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r2, #0
	bl sub_800C058
_0800C720:
	ldr r4, [r6]
	cmp r4, #0
	beq _0800C74C
	ldr r0, [r5]
	cmp r0, #0
	beq _0800C74C
	mov r1, r8
	ldr r2, [r1]
	add r2, sl
	lsrs r2, r2, #0x13
	adds r2, #0x14
	ldr r0, _0800C7B8 @ =gUnknown_02015574
	ldr r1, [r0]
	lsrs r1, r1, #0x13
	ldr r3, _0800C7B0 @ =0x06002000
	str r4, [sp]
	ldr r0, _0800C7B4 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r2, #0
	bl sub_800C058
_0800C74C:
	ldr r0, _0800C778 @ =gUnknown_02015530
	str r7, [r0]
	ldr r0, _0800C7C0 @ =gUnknown_020119A0
	strh r7, [r0]
	ldr r0, _0800C7C4 @ =gUnknown_02011998
	strh r7, [r0]
	ldr r0, _0800C7C8 @ =gUnknown_02011978
	strh r7, [r0]
	ldr r0, _0800C7A4 @ =gUnknown_02015508
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C7D0
	ldr r0, _0800C7BC @ =gUnknown_02015520
	ldr r1, [r0]
	add r1, sl
	str r1, [r0]
	ldr r0, _0800C7CC @ =gUnknown_020119F8
	lsrs r1, r1, #0x10
	strh r1, [r0]
	b _0800C7D4
	.align 2, 0
_0800C774: .4byte gUnknown_020119FC
_0800C778: .4byte gUnknown_02015530
_0800C77C: .4byte gUnknown_02015544
_0800C780: .4byte gUnknown_02015500
_0800C784: .4byte gUnknown_02015570
_0800C788: .4byte gUnknown_020154F4
_0800C78C: .4byte gUnknown_020155B4
_0800C790: .4byte 0x06001000
_0800C794: .4byte gUnknown_02015514
_0800C798: .4byte gUnknown_02015568
_0800C79C: .4byte 0x06003000
_0800C7A0: .4byte gUnknown_02015534
_0800C7A4: .4byte gUnknown_02015508
_0800C7A8: .4byte gUnknown_02015504
_0800C7AC: .4byte gUnknown_0201557C
_0800C7B0: .4byte 0x06002000
_0800C7B4: .4byte gUnknown_02015540
_0800C7B8: .4byte gUnknown_02015574
_0800C7BC: .4byte gUnknown_02015520
_0800C7C0: .4byte gUnknown_020119A0
_0800C7C4: .4byte gUnknown_02011998
_0800C7C8: .4byte gUnknown_02011978
_0800C7CC: .4byte gUnknown_020119F8
_0800C7D0:
	ldr r0, _0800C7EC @ =gUnknown_020119F8
	strh r7, [r0]
_0800C7D4:
	ldr r1, _0800C7F0 @ =gUnknown_020119FC
	movs r0, #1
	str r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C7EC: .4byte gUnknown_020119F8
_0800C7F0: .4byte gUnknown_020119FC

	thumb_func_start sub_800C7F4
sub_800C7F4: @ 0x0800C7F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0800C984 @ =gUnknown_020119FC
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800C988 @ =gUnknown_02015530
	ldr r0, [r0]
	cmp r5, r0
	ble _0800C812
	adds r5, r0, #0
_0800C812:
	cmp r5, #7
	ble _0800C818
	movs r5, #7
_0800C818:
	subs r7, r0, r5
	asrs r2, r7, #3
	asrs r0, r0, #3
	cmp r2, r0
	beq _0800C8D8
	subs r4, r2, #1
	ldr r6, _0800C98C @ =gUnknown_02015500
	ldr r1, [r6]
	asrs r1, r1, #3
	movs r3, #0xc0
	lsls r3, r3, #0x13
	ldr r0, _0800C990 @ =gUnknown_02015570
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _0800C994 @ =gUnknown_020154F4
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r4, #0
	bl sub_800C444
	ldr r0, _0800C998 @ =gUnknown_020155B4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C860
	ldr r1, [r6]
	asrs r1, r1, #3
	ldr r3, _0800C99C @ =0x06001000
	str r0, [sp]
	ldr r0, _0800C9A0 @ =gUnknown_02015514
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r4, #0
	bl sub_800C444
_0800C860:
	ldr r0, _0800C9A4 @ =gUnknown_02015568
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C87E
	ldr r1, [r6]
	asrs r1, r1, #3
	ldr r3, _0800C9A8 @ =0x06003000
	str r0, [sp]
	ldr r0, _0800C9AC @ =gUnknown_02015534
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r4, #0
	bl sub_800C444
_0800C87E:
	ldr r0, _0800C9B0 @ =gUnknown_02015508
	ldr r0, [r0]
	cmp r0, #0
	bne _0800C8E0
	ldr r0, _0800C9B4 @ =gUnknown_02015504
	mov sb, r0
	ldr r2, [r0]
	cmp r2, #0
	beq _0800C8D8
	ldr r1, _0800C9B8 @ =gUnknown_0201557C
	mov r8, r1
	ldr r0, [r1]
	cmp r0, #0
	bne _0800C8B0
	ldr r1, [r6]
	asrs r1, r1, #3
	ldr r3, _0800C9BC @ =0x06002000
	str r2, [sp]
	ldr r0, _0800C9C0 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r4, #0
	bl sub_800C444
_0800C8B0:
	mov r0, sb
	ldr r2, [r0]
	cmp r2, #0
	beq _0800C8D8
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq _0800C8D8
	ldr r0, _0800C9C4 @ =gUnknown_02015574
	ldr r1, [r0]
	lsrs r1, r1, #0x13
	ldr r3, _0800C9BC @ =0x06002000
	str r2, [sp]
	ldr r0, _0800C9C0 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r4, #0
	bl sub_800C444
_0800C8D8:
	ldr r0, _0800C9B0 @ =gUnknown_02015508
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C958
_0800C8E0:
	ldr r0, _0800C9B0 @ =gUnknown_02015508
	ldr r0, [r0]
	adds r2, r5, #0
	muls r2, r0, r2
	mov sl, r2
	ldr r0, _0800C9C8 @ =gUnknown_02015520
	mov r8, r0
	ldr r1, [r0]
	cmp sl, r1
	bls _0800C8F6
	mov sl, r1
_0800C8F6:
	mov r2, sl
	subs r0, r1, r2
	lsrs r2, r0, #0x13
	lsrs r0, r1, #0x13
	cmp r2, r0
	bhs _0800C958
	ldr r6, _0800C9B4 @ =gUnknown_02015504
	ldr r4, [r6]
	cmp r4, #0
	beq _0800C958
	ldr r5, _0800C9B8 @ =gUnknown_0201557C
	ldr r0, [r5]
	cmp r0, #0
	bne _0800C92A
	subs r2, #1
	ldr r0, _0800C98C @ =gUnknown_02015500
	ldr r1, [r0]
	asrs r1, r1, #3
	ldr r3, _0800C9BC @ =0x06002000
	str r4, [sp]
	ldr r0, _0800C9C0 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r2, #0
	bl sub_800C058
_0800C92A:
	ldr r4, [r6]
	cmp r4, #0
	beq _0800C958
	ldr r0, [r5]
	cmp r0, #0
	beq _0800C958
	mov r0, r8
	ldr r2, [r0]
	mov r1, sl
	subs r2, r2, r1
	lsrs r2, r2, #0x13
	subs r2, #1
	ldr r0, _0800C9C4 @ =gUnknown_02015574
	ldr r1, [r0]
	lsrs r1, r1, #0x13
	ldr r3, _0800C9BC @ =0x06002000
	str r4, [sp]
	ldr r0, _0800C9C0 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r2, #0
	bl sub_800C058
_0800C958:
	ldr r0, _0800C988 @ =gUnknown_02015530
	str r7, [r0]
	ldr r0, _0800C9CC @ =gUnknown_020119A0
	strh r7, [r0]
	ldr r0, _0800C9D0 @ =gUnknown_02011998
	strh r7, [r0]
	ldr r0, _0800C9D4 @ =gUnknown_02011978
	strh r7, [r0]
	ldr r0, _0800C9B0 @ =gUnknown_02015508
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C9DC
	ldr r0, _0800C9C8 @ =gUnknown_02015520
	ldr r1, [r0]
	mov r2, sl
	subs r1, r1, r2
	str r1, [r0]
	ldr r0, _0800C9D8 @ =gUnknown_020119F8
	lsrs r1, r1, #0x10
	strh r1, [r0]
	b _0800C9E0
	.align 2, 0
_0800C984: .4byte gUnknown_020119FC
_0800C988: .4byte gUnknown_02015530
_0800C98C: .4byte gUnknown_02015500
_0800C990: .4byte gUnknown_02015570
_0800C994: .4byte gUnknown_020154F4
_0800C998: .4byte gUnknown_020155B4
_0800C99C: .4byte 0x06001000
_0800C9A0: .4byte gUnknown_02015514
_0800C9A4: .4byte gUnknown_02015568
_0800C9A8: .4byte 0x06003000
_0800C9AC: .4byte gUnknown_02015534
_0800C9B0: .4byte gUnknown_02015508
_0800C9B4: .4byte gUnknown_02015504
_0800C9B8: .4byte gUnknown_0201557C
_0800C9BC: .4byte 0x06002000
_0800C9C0: .4byte gUnknown_02015540
_0800C9C4: .4byte gUnknown_02015574
_0800C9C8: .4byte gUnknown_02015520
_0800C9CC: .4byte gUnknown_020119A0
_0800C9D0: .4byte gUnknown_02011998
_0800C9D4: .4byte gUnknown_02011978
_0800C9D8: .4byte gUnknown_020119F8
_0800C9DC:
	ldr r0, _0800C9F8 @ =gUnknown_020119F8
	strh r7, [r0]
_0800C9E0:
	ldr r1, _0800C9FC @ =gUnknown_020119FC
	movs r0, #1
	str r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C9F8: .4byte gUnknown_020119F8
_0800C9FC: .4byte gUnknown_020119FC

	thumb_func_start sub_800CA00
sub_800CA00: @ 0x0800CA00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, _0800CB98 @ =gUnknown_020119FC
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800CB9C @ =gUnknown_02015500
	ldr r0, [r0]
	cmp r6, r0
	ble _0800CA1E
	adds r6, r0, #0
_0800CA1E:
	cmp r6, #7
	ble _0800CA24
	movs r6, #7
_0800CA24:
	subs r1, r0, r6
	mov r8, r1
	asrs r4, r1, #3
	asrs r0, r0, #3
	cmp r4, r0
	bge _0800CAE8
	movs r5, #0x1f
	ands r5, r4
	ldr r7, _0800CBA0 @ =gUnknown_02015530
	ldr r2, [r7]
	asrs r2, r2, #3
	movs r3, #0xc0
	lsls r3, r3, #0x13
	ldr r0, _0800CBA4 @ =gUnknown_02015570
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _0800CBA8 @ =gUnknown_020154F4
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800C2A0
	ldr r0, _0800CBAC @ =gUnknown_020155B4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CA70
	ldr r2, [r7]
	asrs r2, r2, #3
	ldr r3, _0800CBB0 @ =0x06001000
	str r0, [sp]
	ldr r0, _0800CBB4 @ =gUnknown_02015514
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800C2A0
_0800CA70:
	ldr r0, _0800CBB8 @ =gUnknown_02015568
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CA8E
	ldr r2, [r7]
	asrs r2, r2, #3
	ldr r3, _0800CBBC @ =0x06003000
	str r0, [sp]
	ldr r0, _0800CBC0 @ =gUnknown_02015534
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800C2A0
_0800CA8E:
	ldr r0, _0800CBC4 @ =gUnknown_0201557C
	ldr r0, [r0]
	cmp r0, #0
	bne _0800CAF0
	ldr r2, _0800CBC8 @ =gUnknown_02015504
	mov sl, r2
	ldr r1, [r2]
	cmp r1, #0
	beq _0800CAE8
	ldr r0, _0800CBCC @ =gUnknown_02015508
	mov sb, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800CAC0
	ldr r2, [r7]
	asrs r2, r2, #3
	ldr r3, _0800CBD0 @ =0x06002000
	str r1, [sp]
	ldr r0, _0800CBD4 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800C2A0
_0800CAC0:
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #0
	beq _0800CAE8
	mov r2, sb
	ldr r0, [r2]
	cmp r0, #0
	beq _0800CAE8
	ldr r0, _0800CBD8 @ =gUnknown_02015520
	ldr r2, [r0]
	lsrs r2, r2, #0x13
	ldr r3, _0800CBD0 @ =0x06002000
	str r1, [sp]
	ldr r0, _0800CBD4 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800C2A0
_0800CAE8:
	ldr r0, _0800CBC4 @ =gUnknown_0201557C
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CB6A
_0800CAF0:
	ldr r0, _0800CBC4 @ =gUnknown_0201557C
	ldr r0, [r0]
	adds r1, r6, #0
	muls r1, r0, r1
	str r1, [sp, #8]
	ldr r2, _0800CBDC @ =gUnknown_02015574
	mov sb, r2
	ldr r2, [r2]
	cmp r1, r2
	bls _0800CB06
	str r2, [sp, #8]
_0800CB06:
	ldr r1, [sp, #8]
	subs r0, r2, r1
	lsrs r4, r0, #0x13
	lsrs r0, r2, #0x13
	cmp r4, r0
	bhs _0800CB6A
	ldr r7, _0800CBC8 @ =gUnknown_02015504
	ldr r5, [r7]
	cmp r5, #0
	beq _0800CB6A
	ldr r6, _0800CBCC @ =gUnknown_02015508
	ldr r0, [r6]
	cmp r0, #0
	bne _0800CB3C
	movs r1, #0x1f
	ands r1, r4
	ldr r0, _0800CBA0 @ =gUnknown_02015530
	ldr r2, [r0]
	asrs r2, r2, #3
	ldr r3, _0800CBD0 @ =0x06002000
	str r5, [sp]
	ldr r0, _0800CBD4 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_800BEB0
_0800CB3C:
	ldr r4, [r7]
	cmp r4, #0
	beq _0800CB6A
	ldr r0, [r6]
	cmp r0, #0
	beq _0800CB6A
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	lsrs r0, r0, #0x13
	movs r1, #0x1f
	ands r1, r0
	ldr r2, _0800CBD8 @ =gUnknown_02015520
	ldr r2, [r2]
	lsrs r2, r2, #0x13
	ldr r3, _0800CBD0 @ =0x06002000
	str r4, [sp]
	ldr r4, _0800CBD4 @ =gUnknown_02015540
	ldrb r4, [r4]
	str r4, [sp, #4]
	bl sub_800BEB0
_0800CB6A:
	ldr r0, _0800CB9C @ =gUnknown_02015500
	mov r2, r8
	str r2, [r0]
	ldr r0, _0800CBE0 @ =gUnknown_02011934
	strh r2, [r0]
	ldr r0, _0800CBE4 @ =gUnknown_02011980
	mov r1, r8
	strh r1, [r0]
	ldr r0, _0800CBE8 @ =gUnknown_02011A00
	strh r1, [r0]
	ldr r0, _0800CBC4 @ =gUnknown_0201557C
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CBF0
	ldr r0, _0800CBDC @ =gUnknown_02015574
	ldr r1, [r0]
	ldr r2, [sp, #8]
	subs r1, r1, r2
	str r1, [r0]
	ldr r0, _0800CBEC @ =gUnknown_020119F4
	lsrs r1, r1, #0x10
	b _0800CBF4
	.align 2, 0
_0800CB98: .4byte gUnknown_020119FC
_0800CB9C: .4byte gUnknown_02015500
_0800CBA0: .4byte gUnknown_02015530
_0800CBA4: .4byte gUnknown_02015570
_0800CBA8: .4byte gUnknown_020154F4
_0800CBAC: .4byte gUnknown_020155B4
_0800CBB0: .4byte 0x06001000
_0800CBB4: .4byte gUnknown_02015514
_0800CBB8: .4byte gUnknown_02015568
_0800CBBC: .4byte 0x06003000
_0800CBC0: .4byte gUnknown_02015534
_0800CBC4: .4byte gUnknown_0201557C
_0800CBC8: .4byte gUnknown_02015504
_0800CBCC: .4byte gUnknown_02015508
_0800CBD0: .4byte 0x06002000
_0800CBD4: .4byte gUnknown_02015540
_0800CBD8: .4byte gUnknown_02015520
_0800CBDC: .4byte gUnknown_02015574
_0800CBE0: .4byte gUnknown_02011934
_0800CBE4: .4byte gUnknown_02011980
_0800CBE8: .4byte gUnknown_02011A00
_0800CBEC: .4byte gUnknown_020119F4
_0800CBF0:
	ldr r0, _0800CC0C @ =gUnknown_020119F4
	mov r1, r8
_0800CBF4:
	strh r1, [r0]
	ldr r1, _0800CC10 @ =gUnknown_020119FC
	movs r0, #1
	str r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CC0C: .4byte gUnknown_020119F4
_0800CC10: .4byte gUnknown_020119FC

	thumb_func_start sub_800CC14
sub_800CC14: @ 0x0800CC14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r1, _0800CDB4 @ =gUnknown_020119FC
	movs r0, #0
	str r0, [r1]
	ldr r0, _0800CDB8 @ =gUnknown_02015500
	ldr r2, [r0]
	adds r1, r2, r6
	adds r1, #0xef
	ldr r0, _0800CDBC @ =gUnknown_0201550C
	ldr r3, [r0]
	subs r0, r3, #1
	cmp r1, r0
	blt _0800CC40
	adds r0, r2, #0
	adds r0, #0xf0
	subs r6, r3, r0
_0800CC40:
	cmp r6, #7
	ble _0800CC46
	movs r6, #7
_0800CC46:
	adds r0, r2, r6
	mov r8, r0
	asrs r1, r0, #3
	asrs r0, r2, #3
	cmp r1, r0
	ble _0800CD0E
	adds r4, r1, #0
	adds r4, #0x1e
	movs r5, #0x1f
	ands r5, r4
	ldr r7, _0800CDC0 @ =gUnknown_02015530
	ldr r2, [r7]
	asrs r2, r2, #3
	movs r3, #0xc0
	lsls r3, r3, #0x13
	ldr r0, _0800CDC4 @ =gUnknown_02015570
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _0800CDC8 @ =gUnknown_020154F4
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800C2A0
	ldr r0, _0800CDCC @ =gUnknown_020155B4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CC96
	ldr r2, [r7]
	asrs r2, r2, #3
	ldr r3, _0800CDD0 @ =0x06001000
	str r0, [sp]
	ldr r0, _0800CDD4 @ =gUnknown_02015514
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800C2A0
_0800CC96:
	ldr r0, _0800CDD8 @ =gUnknown_02015568
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CCB4
	ldr r2, [r7]
	asrs r2, r2, #3
	ldr r3, _0800CDDC @ =0x06003000
	str r0, [sp]
	ldr r0, _0800CDE0 @ =gUnknown_02015534
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800C2A0
_0800CCB4:
	ldr r0, _0800CDE4 @ =gUnknown_0201557C
	ldr r0, [r0]
	cmp r0, #0
	bne _0800CD16
	ldr r1, _0800CDE8 @ =gUnknown_02015504
	mov sl, r1
	ldr r1, [r1]
	cmp r1, #0
	beq _0800CD0E
	ldr r2, _0800CDEC @ =gUnknown_02015508
	mov sb, r2
	ldr r0, [r2]
	cmp r0, #0
	bne _0800CCE6
	ldr r2, [r7]
	asrs r2, r2, #3
	ldr r3, _0800CDF0 @ =0x06002000
	str r1, [sp]
	ldr r0, _0800CDF4 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800C2A0
_0800CCE6:
	mov r0, sl
	ldr r1, [r0]
	cmp r1, #0
	beq _0800CD0E
	mov r2, sb
	ldr r0, [r2]
	cmp r0, #0
	beq _0800CD0E
	ldr r0, _0800CDF8 @ =gUnknown_02015520
	ldr r2, [r0]
	lsrs r2, r2, #0x13
	ldr r3, _0800CDF0 @ =0x06002000
	str r1, [sp]
	ldr r0, _0800CDF4 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800C2A0
_0800CD0E:
	ldr r0, _0800CDE4 @ =gUnknown_0201557C
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CD88
_0800CD16:
	ldr r0, _0800CDE4 @ =gUnknown_0201557C
	ldr r0, [r0]
	adds r1, r6, #0
	muls r1, r0, r1
	str r1, [sp, #8]
	ldr r7, _0800CDFC @ =gUnknown_02015574
	ldr r0, [r7]
	adds r1, r0, r1
	lsrs r1, r1, #0x13
	lsrs r0, r0, #0x13
	cmp r1, r0
	bls _0800CD88
	ldr r6, _0800CDE8 @ =gUnknown_02015504
	ldr r4, [r6]
	cmp r4, #0
	beq _0800CD88
	ldr r5, _0800CDEC @ =gUnknown_02015508
	ldr r0, [r5]
	cmp r0, #0
	bne _0800CD5A
	adds r0, r1, #0
	adds r0, #0x1e
	movs r1, #0x1f
	ands r1, r0
	ldr r2, _0800CDC0 @ =gUnknown_02015530
	ldr r2, [r2]
	asrs r2, r2, #3
	ldr r3, _0800CDF0 @ =0x06002000
	str r4, [sp]
	ldr r4, _0800CDF4 @ =gUnknown_02015540
	ldrb r4, [r4]
	str r4, [sp, #4]
	bl sub_800BEB0
_0800CD5A:
	ldr r4, [r6]
	cmp r4, #0
	beq _0800CD88
	ldr r0, [r5]
	cmp r0, #0
	beq _0800CD88
	ldr r0, [r7]
	ldr r2, [sp, #8]
	adds r0, r0, r2
	lsrs r0, r0, #0x13
	adds r0, #0x1e
	movs r1, #0x1f
	ands r1, r0
	ldr r2, _0800CDF8 @ =gUnknown_02015520
	ldr r2, [r2]
	lsrs r2, r2, #0x13
	ldr r3, _0800CDF0 @ =0x06002000
	str r4, [sp]
	ldr r4, _0800CDF4 @ =gUnknown_02015540
	ldrb r4, [r4]
	str r4, [sp, #4]
	bl sub_800BEB0
_0800CD88:
	ldr r0, _0800CDB8 @ =gUnknown_02015500
	mov r1, r8
	str r1, [r0]
	ldr r0, _0800CE00 @ =gUnknown_02011934
	strh r1, [r0]
	ldr r0, _0800CE04 @ =gUnknown_02011980
	mov r2, r8
	strh r2, [r0]
	ldr r0, _0800CE08 @ =gUnknown_02011A00
	strh r2, [r0]
	ldr r0, _0800CDE4 @ =gUnknown_0201557C
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CE10
	ldr r0, _0800CDFC @ =gUnknown_02015574
	ldr r1, [r0]
	ldr r2, [sp, #8]
	adds r1, r1, r2
	str r1, [r0]
	ldr r0, _0800CE0C @ =gUnknown_020119F4
	lsrs r1, r1, #0x10
	b _0800CE14
	.align 2, 0
_0800CDB4: .4byte gUnknown_020119FC
_0800CDB8: .4byte gUnknown_02015500
_0800CDBC: .4byte gUnknown_0201550C
_0800CDC0: .4byte gUnknown_02015530
_0800CDC4: .4byte gUnknown_02015570
_0800CDC8: .4byte gUnknown_020154F4
_0800CDCC: .4byte gUnknown_020155B4
_0800CDD0: .4byte 0x06001000
_0800CDD4: .4byte gUnknown_02015514
_0800CDD8: .4byte gUnknown_02015568
_0800CDDC: .4byte 0x06003000
_0800CDE0: .4byte gUnknown_02015534
_0800CDE4: .4byte gUnknown_0201557C
_0800CDE8: .4byte gUnknown_02015504
_0800CDEC: .4byte gUnknown_02015508
_0800CDF0: .4byte 0x06002000
_0800CDF4: .4byte gUnknown_02015540
_0800CDF8: .4byte gUnknown_02015520
_0800CDFC: .4byte gUnknown_02015574
_0800CE00: .4byte gUnknown_02011934
_0800CE04: .4byte gUnknown_02011980
_0800CE08: .4byte gUnknown_02011A00
_0800CE0C: .4byte gUnknown_020119F4
_0800CE10:
	ldr r0, _0800CE2C @ =gUnknown_020119F4
	mov r1, r8
_0800CE14:
	strh r1, [r0]
	ldr r1, _0800CE30 @ =gUnknown_020119FC
	movs r0, #1
	str r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CE2C: .4byte gUnknown_020119F4
_0800CE30: .4byte gUnknown_020119FC

	thumb_func_start sub_800CE34
sub_800CE34: @ 0x0800CE34
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r2, #0x80
	lsls r2, r2, #0x13
	movs r1, #0x8a
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r2]
	ldr r0, _0800CF50 @ =gUnknown_020155B4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CE58
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0800CE58:
	ldr r0, _0800CF54 @ =gUnknown_02015504
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CE6C
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0800CE6C:
	ldr r0, _0800CF58 @ =gUnknown_02015568
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CE80
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0800CE80:
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800CF5C @ =gUnknown_02011934
	ldr r6, _0800CF60 @ =gUnknown_02015500
	ldr r3, [r6]
	strh r3, [r0]
	ldr r0, _0800CF64 @ =gUnknown_02011980
	strh r3, [r0]
	ldr r4, _0800CF68 @ =gUnknown_020119F4
	strh r3, [r4]
	ldr r0, _0800CF6C @ =gUnknown_02011A00
	strh r3, [r0]
	ldr r0, _0800CF70 @ =gUnknown_020119A0
	ldr r2, _0800CF74 @ =gUnknown_02015530
	ldr r1, [r2]
	strh r1, [r0]
	ldr r0, _0800CF78 @ =gUnknown_02011998
	strh r1, [r0]
	ldr r5, _0800CF7C @ =gUnknown_020119F8
	strh r1, [r5]
	ldr r0, _0800CF80 @ =gUnknown_02011978
	strh r1, [r0]
	ldr r0, _0800CF84 @ =gUnknown_0201557C
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CEC2
	ldr r1, _0800CF88 @ =gUnknown_02015574
	muls r0, r3, r0
	str r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r4]
_0800CEC2:
	ldr r0, _0800CF8C @ =gUnknown_02015508
	ldr r3, [r0]
	cmp r3, #0
	beq _0800CED6
	ldr r1, _0800CF90 @ =gUnknown_02015520
	ldr r0, [r2]
	muls r0, r3, r0
	str r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r5]
_0800CED6:
	ldr r1, _0800CF94 @ =gUnknown_020119FC
	movs r0, #1
	str r0, [r1]
	movs r4, #0
	adds r5, r2, #0
_0800CEE0:
	ldr r1, [r6]
	asrs r1, r1, #3
	adds r1, r1, r4
	ldr r2, [r5]
	asrs r2, r2, #3
	ldr r0, _0800CF98 @ =gUnknown_02015570
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _0800CF9C @ =gUnknown_020154F4
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r1, #0
	movs r3, #0xc0
	lsls r3, r3, #0x13
	bl sub_800C2A0
	ldr r0, _0800CF50 @ =gUnknown_020155B4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CF22
	ldr r1, [r6]
	asrs r1, r1, #3
	adds r1, r1, r4
	ldr r2, [r5]
	asrs r2, r2, #3
	str r0, [sp]
	ldr r0, _0800CFA0 @ =gUnknown_02015514
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r1, #0
	ldr r3, _0800CFA4 @ =0x06001000
	bl sub_800C2A0
_0800CF22:
	ldr r0, _0800CF54 @ =gUnknown_02015504
	ldr r3, [r0]
	cmp r3, #0
	beq _0800CFCE
	ldr r0, _0800CF84 @ =gUnknown_0201557C
	ldr r0, [r0]
	cmp r0, #0
	bne _0800CFB0
	ldr r1, [r6]
	asrs r1, r1, #3
	adds r1, r1, r4
	ldr r2, [r5]
	asrs r2, r2, #3
	str r3, [sp]
	ldr r0, _0800CFA8 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r1, #0
	ldr r3, _0800CFAC @ =0x06002000
	bl sub_800C2A0
	b _0800CFCE
	.align 2, 0
_0800CF50: .4byte gUnknown_020155B4
_0800CF54: .4byte gUnknown_02015504
_0800CF58: .4byte gUnknown_02015568
_0800CF5C: .4byte gUnknown_02011934
_0800CF60: .4byte gUnknown_02015500
_0800CF64: .4byte gUnknown_02011980
_0800CF68: .4byte gUnknown_020119F4
_0800CF6C: .4byte gUnknown_02011A00
_0800CF70: .4byte gUnknown_020119A0
_0800CF74: .4byte gUnknown_02015530
_0800CF78: .4byte gUnknown_02011998
_0800CF7C: .4byte gUnknown_020119F8
_0800CF80: .4byte gUnknown_02011978
_0800CF84: .4byte gUnknown_0201557C
_0800CF88: .4byte gUnknown_02015574
_0800CF8C: .4byte gUnknown_02015508
_0800CF90: .4byte gUnknown_02015520
_0800CF94: .4byte gUnknown_020119FC
_0800CF98: .4byte gUnknown_02015570
_0800CF9C: .4byte gUnknown_020154F4
_0800CFA0: .4byte gUnknown_02015514
_0800CFA4: .4byte 0x06001000
_0800CFA8: .4byte gUnknown_02015540
_0800CFAC: .4byte 0x06002000
_0800CFB0:
	ldr r0, _0800D000 @ =gUnknown_02015574
	ldr r1, [r0]
	lsrs r1, r1, #0x13
	adds r1, r1, r4
	ldr r0, _0800D004 @ =gUnknown_02015520
	ldr r2, [r0]
	lsrs r2, r2, #0x13
	str r3, [sp]
	ldr r0, _0800D008 @ =gUnknown_02015540
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r1, #0
	ldr r3, _0800D00C @ =0x06002000
	bl sub_800BEB0
_0800CFCE:
	ldr r0, _0800D010 @ =gUnknown_02015568
	ldr r0, [r0]
	cmp r0, #0
	beq _0800CFF0
	ldr r1, [r6]
	asrs r1, r1, #3
	adds r1, r1, r4
	ldr r2, [r5]
	asrs r2, r2, #3
	str r0, [sp]
	ldr r0, _0800D014 @ =gUnknown_02015534
	ldrb r0, [r0]
	str r0, [sp, #4]
	adds r0, r1, #0
	ldr r3, _0800D018 @ =0x06003000
	bl sub_800C2A0
_0800CFF0:
	adds r4, #1
	cmp r4, #0x1e
	bgt _0800CFF8
	b _0800CEE0
_0800CFF8:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D000: .4byte gUnknown_02015574
_0800D004: .4byte gUnknown_02015520
_0800D008: .4byte gUnknown_02015540
_0800D00C: .4byte 0x06002000
_0800D010: .4byte gUnknown_02015568
_0800D014: .4byte gUnknown_02015534
_0800D018: .4byte 0x06003000

	thumb_func_start sub_800D01C
sub_800D01C: @ 0x0800D01C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	mov sb, r1
	mov sl, r3
	ldr r0, [sp, #0x28]
	mov r8, r0
	movs r7, #0
	ldr r4, _0800D0BC @ =gUnknown_020155D0
_0800D036:
	movs r0, #0x94
	adds r3, r7, #0
	muls r3, r0, r3
	adds r5, r3, r4
	ldrh r6, [r5, #0x18]
	cmp r6, #0
	beq _0800D046
	b _0800D440
_0800D046:
	str r6, [sp, #4]
	ldr r1, _0800D0C0 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0800D0C4 @ =0x85000025
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	strh r0, [r5, #0x18]
	mov r1, ip
	lsls r0, r1, #0x10
	str r0, [r5]
	adds r0, r4, #4
	adds r0, r3, r0
	mov r1, sb
	lsls r1, r1, #0x10
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r3, r0
	str r2, [r0]
	adds r0, r4, #0
	adds r0, #8
	adds r0, r3, r0
	str r2, [r0]
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r3, r0
	str r6, [r0]
	mov r0, sl
	strh r0, [r5, #0x1a]
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r3, r0
	mov r1, r8
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r3, r0
	ldr r1, [sp, #0x2c]
	str r1, [r0]
	adds r1, r4, #0
	adds r1, #0x54
	adds r1, r3, r1
	ldr r0, _0800D0C8 @ =gUnknown_02013114
	ldr r0, [r0]
	str r0, [r1]
	mov r0, r8
	subs r0, #1
	cmp r0, #0x11
	bls _0800D0B0
	b _0800D3DC
_0800D0B0:
	lsls r0, r0, #2
	ldr r1, _0800D0CC @ =_0800D0D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D0BC: .4byte gUnknown_020155D0
_0800D0C0: .4byte 0x040000D4
_0800D0C4: .4byte 0x85000025
_0800D0C8: .4byte gUnknown_02013114
_0800D0CC: .4byte _0800D0D0
_0800D0D0: @ jump table
	.4byte _0800D1FC @ case 0
	.4byte _0800D3DC @ case 1
	.4byte _0800D3DC @ case 2
	.4byte _0800D274 @ case 3
	.4byte _0800D2D8 @ case 4
	.4byte _0800D336 @ case 5
	.4byte _0800D374 @ case 6
	.4byte _0800D3DC @ case 7
	.4byte _0800D1B8 @ case 8
	.4byte _0800D3C4 @ case 9
	.4byte _0800D3C4 @ case 10
	.4byte _0800D388 @ case 11
	.4byte _0800D3E8 @ case 12
	.4byte _0800D3E8 @ case 13
	.4byte _0800D3DC @ case 14
	.4byte _0800D150 @ case 15
	.4byte _0800D184 @ case 16
	.4byte _0800D118 @ case 17
_0800D118:
	ldr r4, _0800D148 @ =gUnknown_020155D0
	movs r0, #0x94
	muls r0, r7, r0
	adds r3, r0, r4
	movs r5, #0
	movs r1, #0x10
	strh r1, [r3, #0x1c]
	strh r1, [r3, #0x1e]
	adds r1, r4, #0
	adds r1, #0x64
	adds r1, r0, r1
	ldr r2, _0800D14C @ =gUnknown_083F6E64
	str r2, [r1]
	adds r3, #0x58
	strh r5, [r3]
	adds r4, #0x24
	adds r0, r0, r4
	str r5, [sp]
	movs r1, #0x11
	movs r2, #0xff
	movs r3, #5
	bl sub_800B0F4
	b _0800D3E8
	.align 2, 0
_0800D148: .4byte gUnknown_020155D0
_0800D14C: .4byte gUnknown_083F6E64
_0800D150:
	ldr r4, _0800D17C @ =gUnknown_020155D0
	movs r0, #0x94
	muls r0, r7, r0
	adds r3, r0, r4
	movs r5, #0
	movs r1, #0x40
	strh r1, [r3, #0x1c]
	movs r1, #0x50
	strh r1, [r3, #0x1e]
	adds r1, r4, #0
	adds r1, #0x64
	adds r1, r0, r1
	ldr r2, _0800D180 @ =gUnknown_083F6E64
	str r2, [r1]
	adds r3, #0x58
	strh r5, [r3]
	adds r4, #0x24
	adds r0, r0, r4
	str r5, [sp]
	movs r1, #0xf
	movs r2, #0
	b _0800D3B4
	.align 2, 0
_0800D17C: .4byte gUnknown_020155D0
_0800D180: .4byte gUnknown_083F6E64
_0800D184:
	ldr r4, _0800D1B0 @ =gUnknown_020155D0
	movs r0, #0x94
	muls r0, r7, r0
	adds r3, r0, r4
	movs r5, #0
	movs r1, #0x40
	strh r1, [r3, #0x1c]
	movs r1, #0x50
	strh r1, [r3, #0x1e]
	adds r1, r4, #0
	adds r1, #0x64
	adds r1, r0, r1
	ldr r2, _0800D1B4 @ =gUnknown_083F6E64
	str r2, [r1]
	adds r3, #0x58
	strh r5, [r3]
	adds r4, #0x24
	adds r0, r0, r4
	str r5, [sp]
	movs r1, #0x10
	movs r2, #0
	b _0800D3B4
	.align 2, 0
_0800D1B0: .4byte gUnknown_020155D0
_0800D1B4: .4byte gUnknown_083F6E64
_0800D1B8:
	ldr r4, _0800D1F4 @ =gUnknown_020155D0
	movs r0, #0x94
	adds r5, r7, #0
	muls r5, r0, r5
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r5, r0
	movs r6, #0
	str r6, [r0]
	adds r0, r4, #0
	adds r0, #0x64
	adds r0, r5, r0
	ldr r2, _0800D1F8 @ =gUnknown_083F6E64
	str r2, [r0]
	movs r0, #2
	movs r1, #0xe
	bl sub_801A434
	adds r0, r5, r4
	adds r0, #0x58
	movs r1, #2
	strh r1, [r0]
	adds r4, #0x24
	adds r5, r5, r4
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0xe
	movs r2, #0xff
	b _0800D3B4
	.align 2, 0
_0800D1F4: .4byte gUnknown_020155D0
_0800D1F8: .4byte gUnknown_083F6E64
_0800D1FC:
	ldr r4, _0800D234 @ =gUnknown_020155D0
	movs r0, #0x94
	adds r3, r7, #0
	muls r3, r0, r3
	adds r2, r3, r4
	movs r5, #0
	movs r0, #0x20
	strh r0, [r2, #0x1c]
	strh r0, [r2, #0x1e]
	adds r0, r4, #0
	adds r0, #0x64
	adds r0, r3, r0
	ldr r1, _0800D238 @ =gUnknown_083F6E64
	str r1, [r0]
	ldr r0, _0800D23C @ =gUnknown_02000AD0
	ldr r0, [r0]
	cmp r0, #2
	bhi _0800D240
	adds r0, r2, #0
	adds r0, #0x58
	movs r1, #2
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r3, r0
	str r5, [sp]
	movs r1, #4
	b _0800D26A
	.align 2, 0
_0800D234: .4byte gUnknown_020155D0
_0800D238: .4byte gUnknown_083F6E64
_0800D23C: .4byte gUnknown_02000AD0
_0800D240:
	cmp r0, #6
	bhi _0800D258
	adds r0, r2, #0
	adds r0, #0x58
	movs r1, #2
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r3, r0
	str r5, [sp]
	movs r1, #0xb
	b _0800D26A
_0800D258:
	adds r0, r2, #0
	adds r0, #0x58
	movs r1, #2
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r3, r0
	str r5, [sp]
	movs r1, #8
_0800D26A:
	movs r2, #0
	movs r3, #0
	bl sub_800B0F4
	b _0800D3E8
_0800D274:
	ldr r4, _0800D2B0 @ =gUnknown_020155D0
	movs r0, #0x94
	adds r3, r7, #0
	muls r3, r0, r3
	adds r2, r3, r4
	movs r5, #0
	movs r0, #0x30
	strh r0, [r2, #0x1c]
	movs r0, #0x10
	strh r0, [r2, #0x1e]
	adds r0, r4, #0
	adds r0, #0x64
	adds r0, r3, r0
	ldr r1, _0800D2B4 @ =gUnknown_083F6E64
	str r1, [r0]
	ldr r0, _0800D2B8 @ =gUnknown_02000AD0
	ldr r0, [r0]
	cmp r0, #2
	bhi _0800D2BC
	adds r0, r2, #0
	adds r0, #0x58
	movs r1, #3
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r3, r0
	str r5, [sp]
	movs r1, #0
	movs r2, #2
	b _0800D2D0
	.align 2, 0
_0800D2B0: .4byte gUnknown_020155D0
_0800D2B4: .4byte gUnknown_083F6E64
_0800D2B8: .4byte gUnknown_02000AD0
_0800D2BC:
	adds r0, r2, #0
	adds r0, #0x58
	movs r1, #4
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r3, r0
	str r5, [sp]
	movs r1, #0xa
	movs r2, #0
_0800D2D0:
	movs r3, #6
	bl sub_800B0F4
	b _0800D3E8
_0800D2D8:
	ldr r4, _0800D314 @ =gUnknown_020155D0
	movs r0, #0x94
	adds r3, r7, #0
	muls r3, r0, r3
	adds r2, r3, r4
	movs r5, #0
	movs r0, #0x30
	strh r0, [r2, #0x1c]
	movs r0, #0x10
	strh r0, [r2, #0x1e]
	adds r0, r4, #0
	adds r0, #0x64
	adds r0, r3, r0
	ldr r1, _0800D318 @ =gUnknown_083F6E64
	str r1, [r0]
	ldr r0, _0800D31C @ =gUnknown_02000AD0
	ldr r0, [r0]
	cmp r0, #2
	bhi _0800D320
	adds r0, r2, #0
	adds r0, #0x58
	movs r1, #3
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r3, r0
	str r5, [sp]
	movs r1, #1
	movs r2, #0
	b _0800D362
	.align 2, 0
_0800D314: .4byte gUnknown_020155D0
_0800D318: .4byte gUnknown_083F6E64
_0800D31C: .4byte gUnknown_02000AD0
_0800D320:
	adds r0, r2, #0
	adds r0, #0x58
	movs r1, #4
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r3, r0
	str r5, [sp]
	movs r1, #0xa
	movs r2, #0
	b _0800D362
_0800D336:
	ldr r4, _0800D36C @ =gUnknown_020155D0
	movs r0, #0x94
	muls r0, r7, r0
	adds r3, r0, r4
	movs r1, #0x38
	strh r1, [r3, #0x1c]
	movs r1, #0x28
	strh r1, [r3, #0x1e]
	adds r1, r4, #0
	adds r1, #0x64
	adds r1, r0, r1
	ldr r2, _0800D370 @ =gUnknown_083F6E64
	str r2, [r1]
	adds r3, #0x58
	movs r1, #2
	strh r1, [r3]
	adds r4, #0x24
	adds r0, r0, r4
	movs r1, #0x10
	str r1, [sp]
	movs r1, #3
	movs r2, #0x10
_0800D362:
	movs r3, #3
	bl sub_800B0F4
	b _0800D3E8
	.align 2, 0
_0800D36C: .4byte gUnknown_020155D0
_0800D370: .4byte gUnknown_083F6E64
_0800D374:
	ldr r1, _0800D384 @ =gUnknown_020155D0
	movs r0, #0x94
	muls r0, r7, r0
	adds r0, r0, r1
	movs r1, #0x10
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	b _0800D3E8
	.align 2, 0
_0800D384: .4byte gUnknown_020155D0
_0800D388:
	ldr r4, _0800D3BC @ =gUnknown_020155D0
	movs r0, #0x94
	muls r0, r7, r0
	adds r3, r0, r4
	movs r5, #0
	movs r1, #0x10
	strh r1, [r3, #0x1c]
	movs r1, #0x30
	strh r1, [r3, #0x1e]
	adds r1, r4, #0
	adds r1, #0x64
	adds r1, r0, r1
	ldr r2, _0800D3C0 @ =gUnknown_083F6E64
	str r2, [r1]
	adds r3, #0x58
	movs r1, #4
	strh r1, [r3]
	adds r4, #0x24
	adds r0, r0, r4
	str r5, [sp]
	movs r1, #5
	movs r2, #0x12
_0800D3B4:
	movs r3, #4
	bl sub_800B0F4
	b _0800D3E8
	.align 2, 0
_0800D3BC: .4byte gUnknown_020155D0
_0800D3C0: .4byte gUnknown_083F6E64
_0800D3C4:
	ldr r2, _0800D3D8 @ =gUnknown_020155D0
	movs r0, #0x94
	adds r1, r7, #0
	muls r1, r0, r1
	adds r1, r1, r2
	movs r0, #0x80
	strh r0, [r1, #0x1c]
	movs r0, #0x60
	strh r0, [r1, #0x1e]
	b _0800D3E8
	.align 2, 0
_0800D3D8: .4byte gUnknown_020155D0
_0800D3DC:
	movs r0, #0x94
	muls r0, r7, r0
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0, #0x18]
	b _0800D448
_0800D3E8:
	movs r3, #0x40
	mov r0, sl
	ands r3, r0
	cmp r3, #0
	beq _0800D418
	ldr r3, _0800D414 @ =gUnknown_020155D0
	movs r0, #0x94
	adds r2, r7, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r2, r0
	movs r1, #1
	str r1, [r0]
	adds r2, r2, r3
	ldrh r1, [r2, #0x1c]
	lsls r1, r1, #0x10
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r4, r3, #0
	b _0800D428
	.align 2, 0
_0800D414: .4byte gUnknown_020155D0
_0800D418:
	ldr r2, _0800D43C @ =gUnknown_020155D0
	movs r0, #0x94
	muls r0, r7, r0
	adds r1, r2, #0
	adds r1, #0x2c
	adds r0, r0, r1
	str r3, [r0]
	adds r4, r2, #0
_0800D428:
	movs r0, #0x94
	muls r0, r7, r0
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x58
	ldrh r1, [r1]
	adds r0, #0x68
	strb r1, [r0]
	adds r0, r7, #0
	b _0800D44C
	.align 2, 0
_0800D43C: .4byte gUnknown_020155D0
_0800D440:
	adds r7, #1
	cmp r7, #0x4f
	bgt _0800D448
	b _0800D036
_0800D448:
	movs r0, #1
	rsbs r0, r0, #0
_0800D44C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800D45C
sub_800D45C: @ 0x0800D45C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	asrs r6, r6, #0x10
	asrs r5, r5, #0x10
	movs r7, #0
	ldr r0, _0800D4B0 @ =gUnknown_020155D0
	mov ip, r0
	movs r0, #4
	add r0, ip
	mov r8, r0
_0800D476:
	movs r0, #0x94
	adds r1, r7, #0
	muls r1, r0, r1
	mov r0, ip
	adds r2, r1, r0
	ldrh r0, [r2, #0x18]
	cmp r0, #0
	beq _0800D4D4
	ldrh r4, [r2, #0x1a]
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0800D4D4
	movs r0, #2
	ldrsh r3, [r2, r0]
	add r1, r8
	movs r0, #2
	ldrsh r1, [r1, r0]
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	bne _0800D4B4
	cmp r6, r3
	blt _0800D4D4
	ldrh r0, [r2, #0x1c]
	adds r0, r3, r0
	cmp r6, r0
	bgt _0800D4D4
	b _0800D4C0
	.align 2, 0
_0800D4B0: .4byte gUnknown_020155D0
_0800D4B4:
	ldrh r0, [r2, #0x1c]
	subs r0, r3, r0
	cmp r6, r0
	blt _0800D4D4
	cmp r6, r3
	bgt _0800D4D4
_0800D4C0:
	ldrh r0, [r2, #0x1e]
	subs r0, r1, r0
	cmp r5, r0
	blt _0800D4D4
	adds r0, r1, #0
	adds r0, #8
	cmp r5, r0
	bgt _0800D4D4
	adds r0, r7, #0
	b _0800D4DE
_0800D4D4:
	adds r7, #1
	cmp r7, #0x4f
	ble _0800D476
	movs r0, #1
	rsbs r0, r0, #0
_0800D4DE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800D4E8
sub_800D4E8: @ 0x0800D4E8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0800D514
	asrs r0, r2, #0x10
	ldr r3, _0800D510 @ =gUnknown_020155D0
	movs r1, #0x94
	muls r1, r4, r1
	adds r2, r3, r1
	movs r4, #6
	ldrsh r2, [r2, r4]
	adds r1, r1, r3
	subs r0, r0, r2
	ldrh r1, [r1, #0x1e]
	adds r0, r0, r1
	adds r0, #0xf
	b _0800D516
	.align 2, 0
_0800D510: .4byte gUnknown_020155D0
_0800D514:
	movs r0, #0
_0800D516:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800D51C
sub_800D51C: @ 0x0800D51C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r0, #0
	mov sb, r0
_0800D52A:
	ldr r3, _0800D550 @ =gUnknown_020155D0
	movs r0, #0x94
	mov r2, sb
	muls r2, r0, r2
	adds r1, r2, r3
	ldrh r0, [r1, #0x18]
	cmp r0, #0
	bne _0800D53C
	b _0800DA36
_0800D53C:
	adds r0, r3, #0
	adds r0, #0x14
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #4
	bne _0800D554
	adds r0, r1, #0
	bl sub_800DC7C
	b _0800D56A
	.align 2, 0
_0800D550: .4byte gUnknown_020155D0
_0800D554:
	cmp r0, #7
	bne _0800D560
	adds r0, r1, #0
	bl sub_800E020
	b _0800D56A
_0800D560:
	cmp r0, #5
	bne _0800D56A
	adds r0, r1, #0
	bl sub_800DEC8
_0800D56A:
	ldr r7, _0800D5BC @ =gUnknown_020155D0
	movs r0, #0x94
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, r7
	ldr r0, [r0]
	bl sub_800BB44
	adds r5, r0, #0
	adds r0, r7, #4
	adds r0, r4, r0
	ldr r0, [r0]
	bl sub_800BB54
	adds r6, r0, #0
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r1, r0
	bls _0800D596
	b _0800DA36
_0800D596:
	adds r1, r6, #0
	adds r1, #0x78
	subs r0, #0x50
	cmp r1, r0
	bls _0800D5A2
	b _0800DA36
_0800D5A2:
	adds r0, r7, #0
	adds r0, #0x14
	adds r0, r4, r0
	ldr r0, [r0]
	subs r0, #1
	cmp r0, #0x11
	bls _0800D5B2
	b _0800D9A2
_0800D5B2:
	lsls r0, r0, #2
	ldr r1, _0800D5C0 @ =_0800D5C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D5BC: .4byte gUnknown_020155D0
_0800D5C0: .4byte _0800D5C4
_0800D5C4: @ jump table
	.4byte _0800D65C @ case 0
	.4byte _0800D9A2 @ case 1
	.4byte _0800D9A2 @ case 2
	.4byte _0800D9A2 @ case 3
	.4byte _0800D9A2 @ case 4
	.4byte _0800D60C @ case 5
	.4byte _0800D9A2 @ case 6
	.4byte _0800D9A2 @ case 7
	.4byte _0800D9A2 @ case 8
	.4byte _0800D73C @ case 9
	.4byte _0800D788 @ case 10
	.4byte _0800D7DC @ case 11
	.4byte _0800D840 @ case 12
	.4byte _0800D87C @ case 13
	.4byte _0800D9A2 @ case 14
	.4byte _0800D9A2 @ case 15
	.4byte _0800D9A2 @ case 16
	.4byte _0800D8BC @ case 17
_0800D60C:
	ldr r1, _0800D634 @ =gUnknown_020155D0
	movs r0, #0x94
	mov r3, sb
	muls r3, r0, r3
	adds r4, r3, r1
	ldrh r2, [r4, #0x3c]
	subs r0, r2, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _0800D638
	ldr r0, [r4]
	adds r1, #4
	adds r1, r3, r1
	ldrh r3, [r4, #0x1e]
	lsls r3, r3, #0x10
	ldr r1, [r1]
	subs r1, r1, r3
	ldrh r2, [r4, #0x1c]
	b _0800D82C
	.align 2, 0
_0800D634: .4byte gUnknown_020155D0
_0800D638:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0800D642
	b _0800D9A2
_0800D642:
	adds r0, r1, #0
	adds r0, #0x10
	adds r1, r3, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x3c
	bhi _0800D654
	b _0800D9A2
_0800D654:
	movs r0, #0
	strh r0, [r4, #0x3c]
	str r0, [r1]
	b _0800D9A2
_0800D65C:
	ldr r4, _0800D6A0 @ =gUnknown_020155D0
	movs r0, #0x94
	mov r3, sb
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x10
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800D674
	subs r0, #1
	str r0, [r1]
_0800D674:
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #1
	bgt _0800D6E2
	ldr r0, _0800D6A4 @ =gUnknown_02000AD0
	ldr r0, [r0]
	cmp r0, #2
	bhi _0800D6A8
	adds r1, r3, r4
	adds r1, #0x58
	movs r2, #0
	movs r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r3, r0
	str r2, [sp]
	movs r1, #0xd
	b _0800D6C0
	.align 2, 0
_0800D6A0: .4byte gUnknown_020155D0
_0800D6A4: .4byte gUnknown_02000AD0
_0800D6A8:
	cmp r0, #6
	bhi _0800D6C8
	adds r1, r3, r4
	adds r1, #0x58
	movs r2, #0
	movs r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r3, r0
	str r2, [sp]
	movs r1, #0xc
_0800D6C0:
	movs r3, #0
	bl sub_800B0F4
	b _0800D6E2
_0800D6C8:
	adds r1, r3, r4
	adds r1, #0x58
	movs r2, #0
	movs r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x24
	adds r0, r3, r0
	str r2, [sp]
	movs r1, #9
	movs r3, #0
	bl sub_800B0F4
_0800D6E2:
	ldr r7, _0800D734 @ =gUnknown_020155D0
	movs r0, #0x94
	mov r6, sb
	muls r6, r0, r6
	adds r0, r7, #0
	adds r0, #0xc
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0
	ble _0800D6F8
	b _0800D9A2
_0800D6F8:
	adds r5, r6, r7
	ldr r0, [r5]
	movs r1, #0xa0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	adds r4, r7, #4
	adds r4, r6, r4
	ldr r1, [r4]
	ldr r2, _0800D738 @ =0xFFF60000
	adds r1, r1, r2
	movs r2, #1
	movs r3, #0
	bl sub_8008930
	movs r3, #2
	ldrsh r0, [r5, r3]
	adds r0, #4
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r2, r7, #0
	adds r2, #0x20
	adds r2, r6, r2
	ldr r2, [r2]
	movs r3, #0
	bl sub_80091B4
	movs r0, #0
	strh r0, [r5, #0x18]
	b _0800D9A2
	.align 2, 0
_0800D734: .4byte gUnknown_020155D0
_0800D738: .4byte 0xFFF60000
_0800D73C:
	ldr r3, _0800D77C @ =gUnknown_020155D0
	movs r0, #0x94
	mov r1, sb
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x10
	adds r2, r1, r0
	ldr r0, [r2]
	cmp r0, #0
	beq _0800D754
	subs r0, #1
	str r0, [r2]
_0800D754:
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, #0
	ble _0800D762
	b _0800D9A2
_0800D762:
	ldr r0, _0800D780 @ =gUnknown_020146E0
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _0800D76C
	b _0800D9A2
_0800D76C:
	adds r1, r1, r3
	movs r2, #0
	movs r0, #0x70
	strh r0, [r1, #0x1c]
	movs r0, #0x30
	strh r0, [r1, #0x1e]
	ldr r0, _0800D784 @ =gUnknown_0201A7CC
	b _0800D7C6
	.align 2, 0
_0800D77C: .4byte gUnknown_020155D0
_0800D780: .4byte gUnknown_020146E0
_0800D784: .4byte gUnknown_0201A7CC
_0800D788:
	ldr r3, _0800D7D0 @ =gUnknown_020155D0
	movs r0, #0x94
	mov r1, sb
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x10
	adds r2, r1, r0
	ldr r0, [r2]
	cmp r0, #0
	beq _0800D7A0
	subs r0, #1
	str r0, [r2]
_0800D7A0:
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, #0
	ble _0800D7AE
	b _0800D9A2
_0800D7AE:
	ldr r0, _0800D7D4 @ =gUnknown_020146E0
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _0800D7B8
	b _0800D9A2
_0800D7B8:
	adds r1, r1, r3
	movs r2, #0
	movs r0, #0x70
	strh r0, [r1, #0x1c]
	movs r0, #0x30
	strh r0, [r1, #0x1e]
	ldr r0, _0800D7D8 @ =gUnknown_0201A770
_0800D7C6:
	str r2, [r0]
	movs r0, #8
	strh r0, [r1, #0x1a]
	b _0800D9A2
	.align 2, 0
_0800D7D0: .4byte gUnknown_020155D0
_0800D7D4: .4byte gUnknown_020146E0
_0800D7D8: .4byte gUnknown_0201A770
_0800D7DC:
	ldr r1, _0800D838 @ =gUnknown_020155D0
	movs r0, #0x94
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r0, r1
	ldrh r0, [r1, #0x3c]
	cmp r0, #3
	bne _0800D804
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0800D804
	ldr r0, _0800D83C @ =gUnknown_087F75F0
	movs r1, #1
	bl sub_8003A9C
_0800D804:
	ldr r1, _0800D838 @ =gUnknown_020155D0
	movs r0, #0x94
	mov r3, sb
	muls r3, r0, r3
	adds r2, r3, r1
	ldrh r0, [r2, #0x3c]
	subs r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0800D81C
	b _0800D9A2
_0800D81C:
	ldr r0, [r2]
	adds r1, #4
	adds r1, r3, r1
	ldrh r3, [r2, #0x1e]
	lsls r3, r3, #0x10
	ldr r1, [r1]
	subs r1, r1, r3
	ldrh r2, [r2, #0x1c]
_0800D82C:
	lsls r2, r2, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800E18C
	b _0800D9A2
	.align 2, 0
_0800D838: .4byte gUnknown_020155D0
_0800D83C: .4byte gUnknown_087F75F0
_0800D840:
	ldr r1, _0800D878 @ =gUnknown_020155D0
	movs r0, #0x94
	mov r3, sb
	muls r3, r0, r3
	adds r0, r1, #0
	adds r0, #0x10
	adds r2, r3, r0
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	cmp r6, #0x10
	bgt _0800D85A
	b _0800D9A2
_0800D85A:
	cmp r0, #0xb4
	bhi _0800D860
	b _0800D9A2
_0800D860:
	movs r0, #0
	str r0, [r2]
	adds r0, r3, r1
	ldr r0, [r0]
	adds r1, #4
	adds r1, r3, r1
	ldr r1, [r1]
	movs r2, #0xf0
	lsls r2, r2, #0xb
	str r2, [sp]
	movs r2, #4
	b _0800D8AE
	.align 2, 0
_0800D878: .4byte gUnknown_020155D0
_0800D87C:
	ldr r1, _0800D8B8 @ =gUnknown_020155D0
	movs r0, #0x94
	mov r4, sb
	muls r4, r0, r4
	adds r0, r1, #0
	adds r0, #0x10
	adds r3, r4, r0
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	cmp r6, #0x8f
	ble _0800D896
	b _0800D9A2
_0800D896:
	cmp r0, #0xf0
	bhi _0800D89C
	b _0800D9A2
_0800D89C:
	movs r2, #0
	str r2, [r3]
	adds r0, r4, r1
	ldr r0, [r0]
	adds r1, #4
	adds r1, r4, r1
	ldr r1, [r1]
	str r2, [sp]
	movs r2, #5
_0800D8AE:
	movs r3, #0
	bl sub_80082DC
	b _0800D9A2
	.align 2, 0
_0800D8B8: .4byte gUnknown_020155D0
_0800D8BC:
	ldr r2, _0800D918 @ =gUnknown_020155D0
	movs r0, #0x94
	mov r3, sb
	muls r3, r0, r3
	adds r0, r2, #0
	adds r0, #0x10
	adds r6, r3, r0
	ldr r1, [r6]
	cmp r1, #0
	bne _0800D924
	subs r0, #4
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	ble _0800D934
	adds r0, r2, #0
	adds r0, #0x2c
	adds r0, r3, r0
	str r1, [r0]
	adds r5, r3, r2
	movs r0, #0x30
	strh r0, [r5, #0x1a]
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r0, #4
	adds r1, r2, #4
	adds r4, r3, r1
	movs r2, #2
	ldrsh r1, [r4, r2]
	bl sub_8003B78
	cmp r0, #0
	bne _0800D912
	movs r3, #2
	ldrsh r0, [r5, r3]
	adds r0, #4
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r1, #1
	bl sub_8003B78
	cmp r0, #0
	bne _0800D91C
_0800D912:
	movs r0, #1
	str r0, [r6]
	b _0800D9A2
	.align 2, 0
_0800D918: .4byte gUnknown_020155D0
_0800D91C:
	ldr r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #9
	b _0800D980
_0800D924:
	cmp r1, #1
	bne _0800D98C
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	bgt _0800D93A
_0800D934:
	movs r0, #2
	str r0, [r6]
	b _0800D9A2
_0800D93A:
	adds r0, r2, #0
	adds r0, #0x2c
	adds r0, r3, r0
	str r1, [r0]
	adds r5, r3, r2
	movs r7, #0
	movs r0, #0x70
	strh r0, [r5, #0x1a]
	movs r1, #2
	ldrsh r0, [r5, r1]
	subs r0, #4
	adds r1, r2, #4
	adds r4, r3, r1
	movs r2, #2
	ldrsh r1, [r4, r2]
	bl sub_8003B78
	cmp r0, #0
	beq _0800D964
	str r7, [r6]
	b _0800D9A2
_0800D964:
	movs r3, #2
	ldrsh r0, [r5, r3]
	subs r0, #4
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r1, #1
	bl sub_8003B78
	cmp r0, #0
	bne _0800D97C
	str r0, [r6]
	b _0800D9A2
_0800D97C:
	ldr r0, [r5]
	ldr r3, _0800D988 @ =0xFFFF0000
_0800D980:
	adds r0, r0, r3
	str r0, [r5]
	b _0800D9A2
	.align 2, 0
_0800D988: .4byte 0xFFFF0000
_0800D98C:
	adds r4, r3, r2
	ldr r0, [r4]
	adds r1, r2, #4
	adds r1, r3, r1
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl sub_8008930
	movs r0, #0
	strh r0, [r4, #0x18]
_0800D9A2:
	ldr r1, _0800D9D0 @ =gUnknown_020155D0
	movs r0, #0x94
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	adds r4, r0, r1
	ldr r0, [r4]
	bl sub_800BB44
	adds r5, r0, #0
	ldrh r1, [r4, #0x1a]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800D9D4
	ldrh r0, [r4, #0x1c]
	adds r0, #0xf0
	cmp r5, r0
	bgt _0800DA36
	cmp r5, #0
	blt _0800DA36
	b _0800D9DE
	.align 2, 0
_0800D9D0: .4byte gUnknown_020155D0
_0800D9D4:
	cmp r5, #0xf0
	bgt _0800DA36
	ldrh r0, [r4, #0x1c]
	cmn r5, r0
	blt _0800DA36
_0800D9DE:
	ldr r7, _0800DA50 @ =gUnknown_020155D0
	movs r0, #0x94
	mov r5, sb
	muls r5, r0, r5
	adds r0, r7, #4
	adds r0, r0, r5
	mov r8, r0
	ldr r0, [r0]
	bl sub_800BB54
	adds r6, r0, #0
	adds r4, r5, r7
	ldrh r0, [r4, #0x1e]
	adds r0, #0xb0
	cmp r6, r0
	bgt _0800DA36
	cmp r6, #0
	blt _0800DA36
	ldrh r1, [r4, #0x1a]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800DA12
	adds r0, r4, #0
	bl sub_800DA54
_0800DA12:
	ldrh r1, [r4, #0x1a]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800DA36
	adds r0, r7, #0
	adds r0, #0x24
	adds r0, r5, r0
	ldr r1, [r4]
	str r1, [r0]
	adds r1, r7, #0
	adds r1, #0x28
	adds r1, r5, r1
	mov r3, r8
	ldr r2, [r3]
	str r2, [r1]
	bl sub_800B054
_0800DA36:
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #0x4f
	bgt _0800DA42
	b _0800D52A
_0800DA42:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DA50: .4byte gUnknown_020155D0

	thumb_func_start sub_800DA54
sub_800DA54: @ 0x0800DA54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r5, _0800DB30 @ =gUnknown_02013730
_0800DA68:
	movs r0, #0x8c
	ldr r1, [sp]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r3
	mov sl, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800DA80
	b _0800DBDC
_0800DA80:
	ldr r1, _0800DB34 @ =gUnknown_020155D0
	movs r0, #0x94
	ldr r2, [sp]
	muls r0, r2, r0
	adds r0, r0, r1
	ldrh r1, [r0, #0x1a]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0800DB46
	adds r7, r3, r5
	ldr r2, [r7]
	ldr r1, [r4]
	cmp r2, r1
	bge _0800DAA6
	b _0800DBDC
_0800DAA6:
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r1, r0
	cmp r2, r0
	ble _0800DAB2
	b _0800DBDC
_0800DAB2:
	adds r0, r5, #4
	adds r6, r3, r0
	ldrh r0, [r4, #0x1e]
	lsls r0, r0, #0x10
	ldr r2, [r4, #4]
	subs r0, r2, r0
	ldr r1, [r6]
	cmp r1, r0
	bge _0800DAC6
	b _0800DBDC
_0800DAC6:
	cmp r1, r2
	ble _0800DACC
	b _0800DBDC
_0800DACC:
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, [r4, #0xc]
	ldr r0, [r0]
	subs r1, r1, r0
	str r1, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0x18
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, #1
	mov sb, r1
	ands r0, r1
	cmp r0, #0
	beq _0800DAFE
	ldr r0, [r7]
	ldr r1, [r6]
	adds r2, r5, #0
	adds r2, #0x10
	adds r2, r3, r2
	ldrb r2, [r2]
	movs r3, #0
	bl sub_8008930
_0800DAFE:
	mov r2, r8
	mov r0, sl
	str r2, [r0]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bgt _0800DB38
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r2, #6
	ldrsh r1, [r4, r2]
	ldr r2, [r4, #0x20]
	movs r3, #0
	bl sub_80091B4
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #1
	movs r3, #0
	bl sub_8008930
	mov r0, r8
	strh r0, [r4, #0x18]
	movs r0, #1
	b _0800DBEA
	.align 2, 0
_0800DB30: .4byte gUnknown_02013730
_0800DB34: .4byte gUnknown_020155D0
_0800DB38:
	adds r1, r4, #0
	adds r1, #0x69
	movs r0, #3
	strb r0, [r1]
	mov r1, sb
	str r1, [r4, #0x10]
	b _0800DBDC
_0800DB46:
	adds r7, r3, r5
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	ldr r2, [r4]
	subs r0, r2, r0
	ldr r1, [r7]
	cmp r1, r0
	blt _0800DBDC
	cmp r1, r2
	bgt _0800DBDC
	adds r0, r5, #4
	adds r6, r3, r0
	ldrh r0, [r4, #0x1e]
	lsls r0, r0, #0x10
	ldr r2, [r4, #4]
	subs r0, r2, r0
	ldr r1, [r6]
	cmp r1, r0
	blt _0800DBDC
	cmp r1, r2
	bgt _0800DBDC
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, [r4, #0xc]
	ldr r0, [r0]
	subs r1, r1, r0
	str r1, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0x18
	adds r0, r3, r0
	ldr r0, [r0]
	movs r2, #1
	mov r8, r2
	ands r0, r2
	cmp r0, #0
	beq _0800DBA2
	ldr r0, [r7]
	ldr r1, [r6]
	adds r2, r5, #0
	adds r2, #0x10
	adds r2, r3, r2
	ldrb r2, [r2]
	movs r3, #0
	bl sub_8008930
_0800DBA2:
	movs r6, #0
	mov r0, sl
	str r6, [r0]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bgt _0800DBD0
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r2, #6
	ldrsh r1, [r4, r2]
	ldr r2, [r4, #0x20]
	movs r3, #0
	bl sub_80091B4
	ldr r0, [r4]
	ldr r1, [r4, #4]
	movs r2, #1
	movs r3, #0
	bl sub_8008930
	strh r6, [r4, #0x18]
	movs r0, #1
	b _0800DBEA
_0800DBD0:
	adds r1, r4, #0
	adds r1, #0x69
	movs r0, #3
	strb r0, [r1]
	mov r0, r8
	str r0, [r4, #0x10]
_0800DBDC:
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp]
	cmp r1, #9
	bgt _0800DBE8
	b _0800DA68
_0800DBE8:
	movs r0, #0
_0800DBEA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800DBFC
sub_800DBFC: @ 0x0800DBFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r7, _0800DC68 @ =gUnknown_083F6E64
	movs r5, #0
	ldr r3, _0800DC6C @ =0x040000D4
	ldr r0, _0800DC70 @ =gUnknown_020155F4
	ldr r1, _0800DC74 @ =0x8500000B
	mov ip, r1
	adds r2, r0, #0
	adds r2, #0x34
	adds r1, r0, #0
	subs r1, #0x24
	adds r4, r0, #0
	adds r4, #0x14
	ldr r6, _0800DC78 @ =0x00002D88
	adds r6, r6, r0
	mov r8, r6
_0800DC22:
	str r5, [sp]
	mov r0, sp
	str r0, [r3]
	str r4, [r3, #4]
	mov r6, ip
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	strh r5, [r2]
	strh r5, [r1, #0x18]
	adds r2, #0x94
	adds r1, #0x94
	adds r4, #0x94
	cmp r1, r8
	ble _0800DC22
	movs r0, #2
	movs r1, #4
	adds r2, r7, #0
	bl sub_801A434
	movs r0, #3
	movs r1, #0
	adds r2, r7, #0
	bl sub_801A434
	movs r0, #4
	movs r1, #7
	adds r2, r7, #0
	bl sub_801A434
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DC68: .4byte gUnknown_083F6E64
_0800DC6C: .4byte 0x040000D4
_0800DC70: .4byte gUnknown_020155F4
_0800DC74: .4byte 0x8500000B
_0800DC78: .4byte 0x00002D88

	thumb_func_start sub_800DC7C
sub_800DC7C: @ 0x0800DC7C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	bne _0800DC88
	b _0800DEB8
_0800DC88:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0800DD18
	ldr r0, _0800DD0C @ =gUnknown_02000810
	ldr r1, [r4]
	ldr r3, _0800DD10 @ =0xFFF00000
	adds r2, r1, r3
	ldr r5, [r0]
	mov ip, r0
	adds r7, r1, #0
	ldr r3, [r4, #4]
	cmp r5, r2
	blt _0800DCF4
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	cmp r5, r0
	bgt _0800DCF4
	mov r0, ip
	movs r1, #6
	ldrsh r2, [r0, r1]
	asrs r1, r3, #0x10
	ldrh r0, [r4, #0x1e]
	subs r6, r1, r0
	adds r5, r0, #0
	cmp r2, r6
	blt _0800DCF4
	adds r0, r1, #0
	adds r0, #0xf
	cmp r2, r0
	bgt _0800DCDE
	movs r0, #0x9d
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	cmp r0, #0
	bne _0800DCDE
	lsls r0, r6, #0x10
	mov r2, ip
	str r0, [r2, #4]
_0800DCDE:
	mov r0, ip
	ldr r2, [r0, #4]
	asrs r1, r2, #0x10
	asrs r0, r3, #0x10
	subs r0, r0, r5
	cmp r1, r0
	bne _0800DCF4
	ldr r1, _0800DD14 @ =0xFFFF0000
	adds r0, r2, r1
	mov r2, ip
	str r0, [r2, #4]
_0800DCF4:
	ldr r0, _0800DD14 @ =0xFFFF0000
	adds r1, r3, r0
	str r1, [r4, #4]
	asrs r0, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_8003CAC
	cmp r0, #0x32
	bne _0800DD9E
	movs r0, #1
	b _0800DD9C
	.align 2, 0
_0800DD0C: .4byte gUnknown_02000810
_0800DD10: .4byte 0xFFF00000
_0800DD14: .4byte 0xFFFF0000
_0800DD18:
	cmp r0, #1
	bne _0800DD9E
	ldr r0, _0800DE24 @ =gUnknown_02000810
	ldr r1, [r4]
	ldr r3, _0800DE28 @ =0xFFF00000
	adds r2, r1, r3
	ldr r5, [r0]
	mov ip, r0
	adds r7, r1, #0
	ldr r3, [r4, #4]
	cmp r5, r2
	blt _0800DD84
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	cmp r5, r0
	bgt _0800DD84
	mov r0, ip
	movs r1, #6
	ldrsh r2, [r0, r1]
	asrs r1, r3, #0x10
	ldrh r0, [r4, #0x1e]
	subs r6, r1, r0
	adds r5, r0, #0
	cmp r2, r6
	blt _0800DD84
	adds r0, r1, #0
	adds r0, #0xf
	cmp r2, r0
	bgt _0800DD6C
	movs r0, #0x9d
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	cmp r0, #0
	bne _0800DD6C
	lsls r0, r6, #0x10
	mov r2, ip
	str r0, [r2, #4]
_0800DD6C:
	mov r0, ip
	ldr r2, [r0, #4]
	asrs r1, r2, #0x10
	asrs r0, r3, #0x10
	subs r0, r0, r5
	cmp r1, r0
	bne _0800DD84
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	mov r2, ip
	str r0, [r2, #4]
_0800DD84:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r3, r0
	str r1, [r4, #4]
	asrs r0, r7, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x10
	bl sub_8003CAC
	cmp r0, #0x32
	bne _0800DD9E
	movs r0, #0
_0800DD9C:
	str r0, [r4, #0x10]
_0800DD9E:
	ldr r0, [r4, #0x10]
	cmp r0, #2
	bne _0800DE30
	ldr r0, _0800DE24 @ =gUnknown_02000810
	ldr r1, [r4]
	ldr r3, _0800DE28 @ =0xFFF00000
	adds r2, r1, r3
	ldr r5, [r0]
	mov ip, r0
	adds r7, r1, #0
	ldr r3, [r4, #4]
	cmp r5, r2
	blt _0800DE0C
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	cmp r5, r0
	bgt _0800DE0C
	mov r0, ip
	movs r1, #6
	ldrsh r2, [r0, r1]
	asrs r1, r3, #0x10
	ldrh r0, [r4, #0x1e]
	subs r6, r1, r0
	adds r5, r0, #0
	cmp r2, r6
	blt _0800DE0C
	adds r0, r1, #0
	adds r0, #0xf
	cmp r2, r0
	bgt _0800DDF4
	movs r0, #0x9d
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	cmp r0, #0
	bne _0800DDF4
	lsls r0, r6, #0x10
	mov r2, ip
	str r0, [r2, #4]
_0800DDF4:
	mov r0, ip
	movs r2, #6
	ldrsh r1, [r0, r2]
	asrs r0, r3, #0x10
	subs r0, r0, r5
	cmp r1, r0
	bne _0800DE0C
	mov r1, ip
	ldr r0, [r1]
	ldr r2, _0800DE2C @ =0xFFFF0000
	adds r0, r0, r2
	str r0, [r1]
_0800DE0C:
	ldr r1, _0800DE2C @ =0xFFFF0000
	adds r0, r7, r1
	str r0, [r4]
	asrs r0, r0, #0x10
	asrs r1, r3, #0x10
	bl sub_8003CAC
	cmp r0, #0x32
	bne _0800DEB8
	movs r0, #3
	b _0800DEB6
	.align 2, 0
_0800DE24: .4byte gUnknown_02000810
_0800DE28: .4byte 0xFFF00000
_0800DE2C: .4byte 0xFFFF0000
_0800DE30:
	cmp r0, #3
	bne _0800DEB8
	ldr r0, _0800DEC0 @ =gUnknown_02000810
	ldr r1, [r4]
	ldr r3, _0800DEC4 @ =0xFFF00000
	adds r2, r1, r3
	ldr r5, [r0]
	mov ip, r0
	adds r7, r1, #0
	ldr r3, [r4, #4]
	cmp r5, r2
	blt _0800DE9E
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	cmp r5, r0
	bgt _0800DE9E
	mov r0, ip
	movs r1, #6
	ldrsh r2, [r0, r1]
	asrs r1, r3, #0x10
	ldrh r0, [r4, #0x1e]
	subs r6, r1, r0
	adds r5, r0, #0
	cmp r2, r6
	blt _0800DE9E
	adds r0, r1, #0
	adds r0, #0xf
	cmp r2, r0
	bgt _0800DE84
	movs r0, #0x9d
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	cmp r0, #0
	bne _0800DE84
	lsls r0, r6, #0x10
	mov r2, ip
	str r0, [r2, #4]
_0800DE84:
	mov r0, ip
	movs r2, #6
	ldrsh r1, [r0, r2]
	asrs r0, r3, #0x10
	subs r0, r0, r5
	cmp r1, r0
	bne _0800DE9E
	mov r1, ip
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r1]
_0800DE9E:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	str r0, [r4]
	asrs r0, r0, #0x10
	adds r0, #0x30
	asrs r1, r3, #0x10
	bl sub_8003CAC
	cmp r0, #0x32
	bne _0800DEB8
	movs r0, #2
_0800DEB6:
	str r0, [r4, #0x10]
_0800DEB8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DEC0: .4byte gUnknown_02000810
_0800DEC4: .4byte 0xFFF00000

	thumb_func_start sub_800DEC8
sub_800DEC8: @ 0x0800DEC8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	bne _0800DED6
	b _0800E016
_0800DED6:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0800DF48
	ldr r0, _0800DF40 @ =gUnknown_02000810
	ldr r2, [r4]
	ldr r3, _0800DF44 @ =0xFFF00000
	adds r1, r2, r3
	ldr r3, [r0]
	adds r6, r0, #0
	cmp r3, r1
	bge _0800DEEE
	b _0800E016
_0800DEEE:
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	cmp r3, r0
	ble _0800DF00
	b _0800E016
_0800DF00:
	movs r2, #6
	ldrsh r3, [r6, r2]
	ldr r1, [r4, #4]
	asrs r2, r1, #0x10
	ldrh r0, [r4, #0x1e]
	subs r5, r2, r0
	mov ip, r1
	adds r7, r0, #0
	cmp r3, r5
	bge _0800DF16
	b _0800E016
_0800DF16:
	adds r0, r2, #0
	adds r0, #0xf
	cmp r3, r0
	bgt _0800DF2E
	movs r3, #0x9d
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _0800DF2E
	lsls r0, r5, #0x10
	str r0, [r6, #4]
_0800DF2E:
	movs r0, #6
	ldrsh r1, [r6, r0]
	mov r2, ip
	asrs r0, r2, #0x10
	subs r0, r0, r7
	cmp r1, r0
	bne _0800E016
	movs r0, #3
	b _0800E014
	.align 2, 0
_0800DF40: .4byte gUnknown_02000810
_0800DF44: .4byte 0xFFF00000
_0800DF48:
	cmp r0, #1
	bne _0800DF9C
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800DF70
	ldr r0, _0800DF94 @ =gUnknown_02000AD0
	ldr r0, [r0]
	cmp r0, #2
	bhi _0800DF70
	adds r0, r4, #0
	adds r0, #0x24
	movs r1, #6
	str r1, [sp]
	movs r1, #1
	movs r2, #6
	movs r3, #3
	bl sub_800B0F4
_0800DF70:
	ldrh r0, [r4, #0x3c]
	cmp r0, #6
	bne _0800DF7A
	movs r0, #0x20
	strh r0, [r4, #0x1a]
_0800DF7A:
	ldr r0, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r0, r3
	str r0, [r4, #4]
	asrs r0, r0, #0x10
	ldr r1, _0800DF98 @ =gUnknown_02015544
	ldr r1, [r1]
	cmp r0, r1
	ble _0800E016
	movs r0, #2
	b _0800E014
	.align 2, 0
_0800DF94: .4byte gUnknown_02000AD0
_0800DF98: .4byte gUnknown_02015544
_0800DF9C:
	cmp r0, #2
	bne _0800E002
	movs r0, #0
	strh r0, [r4, #0x1a]
	ldr r0, [r4]
	bl sub_800BB44
	adds r5, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_800BB54
	adds r1, r0, #0
	ldrh r0, [r4, #0x1c]
	cmn r5, r0
	blt _0800DFCC
	cmp r5, #0xf0
	bgt _0800DFCC
	cmp r1, #0
	blt _0800DFCC
	ldrh r0, [r4, #0x1e]
	lsls r0, r0, #1
	adds r0, #0xa0
	cmp r1, r0
	ble _0800E016
_0800DFCC:
	ldr r0, [r4, #0x20]
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0x28
	strh r0, [r4, #0x1a]
	str r1, [r4, #0x10]
	ldr r0, _0800DFEC @ =gUnknown_02000AD0
	ldr r0, [r0]
	cmp r0, #2
	bhi _0800DFF0
	adds r0, r4, #0
	adds r0, #0x24
	str r1, [sp]
	movs r1, #1
	b _0800DFF8
	.align 2, 0
_0800DFEC: .4byte gUnknown_02000AD0
_0800DFF0:
	adds r0, r4, #0
	adds r0, #0x24
	str r1, [sp]
	movs r1, #0xa
_0800DFF8:
	movs r2, #0
	movs r3, #3
	bl sub_800B0F4
	b _0800E016
_0800E002:
	cmp r0, #2
	bls _0800E016
	adds r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0x3e
	bls _0800E016
	ldr r0, [r4, #4]
	str r0, [r4, #0x20]
	movs r0, #1
_0800E014:
	str r0, [r4, #0x10]
_0800E016:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800E020
sub_800E020: @ 0x0800E020
	push {r4, r5, lr}
	sub sp, #0x30
	adds r4, r0, #0
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	beq _0800E0C6
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0800E04C
	ldr r0, _0800E048 @ =gUnknown_02012634
	ldr r0, [r0]
	cmp r0, #0
	beq _0800E0C6
	ldrh r0, [r4, #0x1a]
	movs r1, #8
	orrs r1, r0
	strh r1, [r4, #0x1a]
	movs r0, #1
	str r0, [r4, #0x10]
	b _0800E0C6
	.align 2, 0
_0800E048: .4byte gUnknown_02012634
_0800E04C:
	ldr r0, [r4, #0xc]
	adds r0, #1
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [sp, #0x2c]
	ldr r1, _0800E090 @ =0x040000D4
	add r0, sp, #0x2c
	str r0, [r1]
	mov r0, sp
	str r0, [r1, #4]
	ldr r0, _0800E094 @ =0x8500000B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r4, #4]
	bl sub_800BB54
	mov r3, sp
	ldr r1, [r4, #0xc]
	asrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	strh r1, [r3, #4]
	mov r2, sp
	movs r1, #2
	strh r1, [r2, #2]
	strh r1, [r2, #0x20]
	str r1, [sp, #0x1c]
	mov r1, sp
	strh r0, [r1, #0x24]
	adds r0, #0x1f
	cmp r0, #0xde
	bhi _0800E0C6
	movs r5, #0
	b _0800E0BE
	.align 2, 0
_0800E090: .4byte 0x040000D4
_0800E094: .4byte 0x8500000B
_0800E098:
	lsls r1, r5, #0x14
	ldr r0, [r4]
	adds r0, r0, r1
	bl sub_800BB44
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x1f
	movs r0, #0x97
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800E0BC
	mov r0, sp
	strh r2, [r0, #0x22]
	ldr r1, _0800E0D0 @ =gUnknown_02010B20
	ldr r2, _0800E0D4 @ =gUnknown_083F6E64
	bl sub_801A43C
_0800E0BC:
	adds r5, #1
_0800E0BE:
	ldrh r0, [r4, #0x1c]
	lsrs r0, r0, #4
	cmp r5, r0
	blo _0800E098
_0800E0C6:
	add sp, #0x30
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E0D0: .4byte gUnknown_02010B20
_0800E0D4: .4byte gUnknown_083F6E64

	thumb_func_start sub_800E0D8
sub_800E0D8: @ 0x0800E0D8
	push {r4, lr}
	sub sp, #8
	adds r4, r2, #0
	movs r2, #4
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #0x28
	bl sub_800D01C
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800E104
	ldr r0, _0800E110 @ =gUnknown_020155D0
	movs r1, #0x94
	muls r1, r2, r1
	adds r0, #0x10
	adds r1, r1, r0
	str r4, [r1]
_0800E104:
	adds r0, r2, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E110: .4byte gUnknown_020155D0

	thumb_func_start sub_800E114
sub_800E114: @ 0x0800E114
	push {r4, lr}
	sub sp, #8
	movs r2, #5
	str r2, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r2, #1
	movs r3, #0x28
	bl sub_800D01C
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800E13E
	ldr r0, _0800E148 @ =gUnknown_020155D0
	movs r1, #0x94
	muls r1, r2, r1
	adds r0, #0x10
	adds r1, r1, r0
	str r4, [r1]
_0800E13E:
	adds r0, r2, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E148: .4byte gUnknown_020155D0

	thumb_func_start sub_800E14C
sub_800E14C: @ 0x0800E14C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r2, #0
	movs r0, #7
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_800D01C
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800E17C
	ldr r1, _0800E188 @ =gUnknown_020155D0
	movs r0, #0x94
	muls r0, r2, r0
	adds r0, r0, r1
	subs r1, r5, r4
	strh r1, [r0, #0x1c]
_0800E17C:
	adds r0, r2, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800E188: .4byte gUnknown_020155D0

	thumb_func_start sub_800E18C
sub_800E18C: @ 0x0800E18C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0800E1D8 @ =gUnknown_020146D4
	ldr r0, [r0]
	mov ip, r0
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _0800E1D2
	mov r1, ip
	ldr r0, [r1, #0x14]
	cmp r0, #0x3f
	beq _0800E1D2
	cmp r0, #0x3d
	beq _0800E1D2
	adds r2, r4, r2
	asrs r1, r2, #0x10
	ldr r0, _0800E1DC @ =gUnknown_02015500
	ldr r0, [r0]
	cmp r1, r0
	blt _0800E1D2
	asrs r1, r4, #0x10
	adds r0, #0xef
	cmp r1, r0
	bgt _0800E1D2
	adds r3, r5, r3
	asrs r1, r3, #0x10
	ldr r0, _0800E1E0 @ =gUnknown_02015530
	ldr r0, [r0]
	cmp r1, r0
	blt _0800E1D2
	asrs r1, r5, #0x10
	adds r0, #0x9f
	cmp r1, r0
	ble _0800E1E4
_0800E1D2:
	movs r0, #0
	b _0800E256
	.align 2, 0
_0800E1D8: .4byte gUnknown_020146D4
_0800E1DC: .4byte gUnknown_02015500
_0800E1E0: .4byte gUnknown_02015530
_0800E1E4:
	movs r6, #0
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	mov r7, ip
	ldr r1, [r7]
	adds r0, r1, r0
	cmp r4, r0
	bgt _0800E254
	movs r0, #0x9f
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _0800E254
	movs r0, #0xa1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, [r7, #4]
	adds r0, r1, r0
	cmp r5, r0
	bgt _0800E254
	movs r0, #0xa0
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	subs r0, r1, r0
	cmp r3, r0
	blt _0800E254
	ldr r0, [r7, #0x10]
	ldr r1, [sp, #0x14]
	subs r0, r0, r1
	str r0, [r7, #0x10]
	ldr r1, _0800E248 @ =gUnknown_02013118
	str r6, [r1]
	movs r6, #1
	cmp r0, #0
	bgt _0800E24C
	movs r0, #0x3f
	mov r1, ip
	bl sub_8006F10
	b _0800E254
	.align 2, 0
_0800E248: .4byte gUnknown_02013118
_0800E24C:
	movs r0, #0x3d
	mov r1, ip
	bl sub_8006F10
_0800E254:
	adds r0, r6, #0
_0800E256:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800E25C
sub_800E25C: @ 0x0800E25C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r7, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #0
	mov sl, r0
	movs r6, #0
	ldr r4, _0800E338 @ =gUnknown_020155D0
	mov r8, r4
_0800E27A:
	movs r0, #0x94
	adds r4, r6, #0
	muls r4, r0, r4
	mov r0, r8
	adds r3, r4, r0
	ldrh r0, [r3, #0x18]
	cmp r0, #0
	beq _0800E320
	ldrh r1, [r3, #0x1a]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800E320
	ldrh r0, [r3, #0x1c]
	lsls r0, r0, #0x10
	ldr r1, [r3]
	adds r0, r1, r0
	cmp sb, r0
	bgt _0800E320
	ldr r5, [sp]
	add r5, sb
	cmp r5, r1
	blt _0800E320
	mov r0, r8
	adds r0, #4
	adds r0, r4, r0
	ldr r2, [r0]
	cmp r7, r2
	bgt _0800E320
	ldr r0, [sp, #4]
	adds r1, r7, r0
	ldrh r0, [r3, #0x1e]
	lsls r0, r0, #0x10
	subs r0, r2, r0
	cmp r1, r0
	blt _0800E320
	movs r0, #1
	mov sl, r0
	mov r0, r8
	adds r0, #0x14
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r1, #0
	subs r0, #0xa
	cmp r0, #1
	bls _0800E2DA
	cmp r1, #1
	bne _0800E2E8
_0800E2DA:
	ldr r0, _0800E33C @ =gUnknown_020155E0
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0800E320
	movs r0, #0x18
	str r0, [r1]
_0800E2E8:
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #4
	bl sub_8008930
	ldr r0, _0800E340 @ =gUnknown_087F77E8
	movs r1, #1
	bl sub_8003A9C
	ldr r3, _0800E338 @ =gUnknown_020155D0
	movs r0, #0x94
	adds r2, r6, #0
	muls r2, r0, r2
	adds r1, r3, #0
	adds r1, #0xc
	adds r1, r2, r1
	ldr r0, [r1]
	ldr r4, [sp, #0x28]
	subs r0, r0, r4
	str r0, [r1]
	cmp r0, #0
	bgt _0800E320
	adds r0, r2, r3
	ldrh r1, [r0, #0x1a]
	movs r2, #0x10
	eors r1, r2
	strh r1, [r0, #0x1a]
_0800E320:
	adds r6, #1
	cmp r6, #0x4f
	bls _0800E27A
	mov r0, sl
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800E338: .4byte gUnknown_020155D0
_0800E33C: .4byte gUnknown_020155E0
_0800E340: .4byte gUnknown_087F77E8

	thumb_func_start sub_800E344
sub_800E344: @ 0x0800E344
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r2, #0
	cmp r1, #0
	ble _0800E3D2
	ldr r1, _0800E3E0 @ =gUnknown_02018410
	mov sb, r1
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r0, #0xf8
	lsls r0, r0, #2
	mov r8, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov ip, r1
_0800E36E:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	lsls r0, r5, #1
	mov r1, sb
	adds r4, r0, r1
	ldrh r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	muls r0, r6, r0
	lsls r0, r0, #6
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _0800E38E
	movs r3, #0x1f
_0800E38E:
	mov r0, r8
	ands r0, r1
	muls r0, r6, r0
	lsls r0, r0, #6
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _0800E3A0
	movs r2, #0x1f
_0800E3A0:
	mov r0, ip
	ands r0, r1
	lsrs r0, r0, #5
	muls r0, r6, r0
	lsls r0, r0, #6
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _0800E3B4
	movs r1, #0x1f
_0800E3B4:
	lsls r1, r1, #0x10
	asrs r1, r1, #6
	lsls r0, r2, #0x10
	asrs r0, r0, #0xb
	orrs r1, r0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r4]
	adds r1, r5, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r0, r7, #0x10
	cmp r1, r0
	blt _0800E36E
_0800E3D2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E3E0: .4byte gUnknown_02018410

	thumb_func_start sub_800E3E4
sub_800E3E4: @ 0x0800E3E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0800E4A0 @ =0xFFFFFE00
	add sp, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800E3F8
	movs r2, #0
_0800E3F8:
	ldr r1, _0800E4A4 @ =0x040000D4
	ldr r0, _0800E4A8 @ =gUnknown_0805DE54
	str r0, [r1]
	mov r0, sp
	str r0, [r1, #4]
	ldr r0, _0800E4AC @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0x10
	lsls r0, r2, #0x10
	add r7, sp, #0x20
	asrs r6, r0, #0x10
	movs r0, #0xf8
	lsls r0, r0, #2
	mov r8, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	mov ip, r0
_0800E41C:
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	lsls r0, r5, #1
	mov r1, sp
	adds r4, r1, r0
	ldrh r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	muls r0, r6, r0
	lsls r0, r0, #6
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _0800E43C
	movs r3, #0x1f
_0800E43C:
	mov r0, r8
	ands r0, r1
	muls r0, r6, r0
	lsls r0, r0, #6
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _0800E44E
	movs r2, #0x1f
_0800E44E:
	mov r0, ip
	ands r0, r1
	lsrs r0, r0, #5
	muls r0, r6, r0
	lsls r0, r0, #6
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _0800E462
	movs r1, #0x1f
_0800E462:
	lsls r1, r1, #0x10
	asrs r1, r1, #6
	lsls r0, r2, #0x10
	asrs r0, r0, #0xb
	orrs r1, r0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0800E41C
	ldr r1, _0800E4A4 @ =0x040000D4
	str r7, [r1]
	ldr r0, _0800E4B0 @ =0x05000020
	str r0, [r1, #4]
	ldr r0, _0800E4B4 @ =0x84000078
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #2
	add sp, r3
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E4A0: .4byte 0xFFFFFE00
_0800E4A4: .4byte 0x040000D4
_0800E4A8: .4byte gUnknown_0805DE54
_0800E4AC: .4byte 0x84000080
_0800E4B0: .4byte 0x05000020
_0800E4B4: .4byte 0x84000078

	thumb_func_start sub_800E4B8
sub_800E4B8: @ 0x0800E4B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc4
	movs r0, #0xfa
	lsls r0, r0, #1
	str r0, [sp, #0x88]
	movs r1, #0xc0
	lsls r1, r1, #5
	str r1, [sp, #0x8c]
	ldr r2, _0800E888 @ =0x000018FF
	str r2, [sp, #0x90]
	movs r3, #0x90
	lsls r3, r3, #7
	str r3, [sp, #0x94]
	movs r4, #0x8c
	str r4, [sp, #0x98]
	movs r0, #0x90
	lsls r0, r0, #3
	str r0, [sp, #0x9c]
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [sp, #0xa0]
	movs r2, #0x80
	lsls r2, r2, #2
	str r2, [sp, #0xa4]
	movs r3, #0x80
	lsls r3, r3, #8
	str r3, [sp, #0xa8]
	ldr r3, _0800E88C @ =0xFFFF4688
	ldr r2, _0800E890 @ =0xFFFFEC46
	ldr r4, [sp, #0xa8]
	str r4, [sp, #0xac]
	ldr r1, _0800E894 @ =0x04000008
	movs r4, #0x81
	lsls r4, r4, #7
	adds r0, r4, #0
	strh r0, [r1]
	adds r1, #2
	ldr r4, _0800E898 @ =0x00004185
	adds r0, r4, #0
	strh r0, [r1]
	adds r1, #2
	ldr r4, _0800E89C @ =0x0000428C
	adds r0, r4, #0
	strh r0, [r1]
	ldr r0, _0800E8A0 @ =0x04000028
	str r3, [r0]
	adds r0, #4
	str r2, [r0]
	subs r0, #0xc
	movs r1, #0x80
	strh r1, [r0]
	adds r0, #2
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _0800E8A4 @ =0x04000010
	ldr r3, _0800E8A8 @ =0x0000FFFF
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0800E8AC @ =0x04000014
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	adds r1, #6
	movs r0, #0x18
	strh r0, [r1]
	adds r1, #0x3a
	ldr r4, _0800E8B0 @ =0x00000251
	adds r0, r4, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800E8B4 @ =0x0000100E
	adds r0, r2, #0
	strh r0, [r1]
	add r2, sp, #0x80
	movs r0, #0
	str r0, [r2]
	ldr r0, _0800E8B8 @ =0x040000D4
	str r2, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _0800E8BC @ =0x85000100
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800E8C0 @ =gUnknown_08057B74
	str r1, [r0]
	ldr r1, _0800E8C4 @ =0x06001800
	str r1, [r0, #4]
	ldr r1, _0800E8C8 @ =0x84000670
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r6, #0
	ldr r7, _0800E8CC @ =gUnknown_0805DA54
	ldr r3, _0800E8D0 @ =gUnknown_08059A54
	mov r8, r3
	ldr r4, _0800E8D4 @ =gUnknown_08066614
	mov sb, r4
	ldr r0, _0800E8D8 @ =gUnknown_0805E054
	mov sl, r0
	mov r1, sp
	adds r1, #0x40
	str r1, [sp, #0xc0]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	ldr r4, _0800E8DC @ =gUnknown_08059534
	ldr r3, _0800E8E0 @ =0x0000027F
_0800E59C:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r0, r5
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r0, #0x60
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, r3
	ble _0800E59C
	ldr r4, _0800E8B8 @ =0x040000D4
	str r7, [r4]
	ldr r0, _0800E8E4 @ =0x06001000
	str r0, [r4, #4]
	ldr r0, _0800E8E8 @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r2, r8
	str r2, [r4]
	ldr r0, _0800E8EC @ =0x0600C000
	str r0, [r4, #4]
	ldr r1, _0800E8F0 @ =0x84001000
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	mov r3, sb
	str r3, [r4]
	ldr r0, _0800E8F4 @ =0x06010000
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, sl
	str r0, [r4]
	ldr r0, _0800E8F8 @ =0x06004000
	str r0, [r4, #4]
	ldr r0, _0800E8FC @ =0x84002000
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x8c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x18
	bl sub_800E3E4
	ldr r0, _0800E900 @ =gUnknown_08066054
	str r0, [r4]
	ldr r0, _0800E904 @ =0x06000800
	str r0, [r4, #4]
	ldr r0, _0800E908 @ =0x84000170
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0
	str r0, [sp, #0x80]
	add r2, sp, #0x80
	str r2, [r4]
	ldr r0, _0800E90C @ =gUnknown_02018410
	str r0, [r4, #4]
	ldr r0, _0800E910 @ =0x85000080
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r6, #1
	movs r5, #0x10
	ldr r4, [sp, #0xc0]
_0800E61E:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r2, r5, r0
	lsls r2, r2, #2
	mov r1, sp
	adds r3, r1, r2
	lsls r1, r0, #5
	str r1, [r3]
	adds r2, r4, r2
	adds r1, r0, #0
	adds r1, #0x26
	str r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _0800E61E
	movs r2, #0
	str r2, [sp, #0x84]
_0800E646:
	movs r3, #0x10
	mov ip, r3
	movs r6, #1
	ldr r4, [sp, #0x9c]
	lsls r4, r4, #0x10
	mov sb, r4
	ldr r0, [sp, #0xa4]
	lsls r0, r0, #0x10
	mov sl, r0
	ldr r1, [sp, #0x94]
	lsls r1, r1, #0x10
	str r1, [sp, #0xb4]
	ldr r2, [sp, #0x90]
	lsls r2, r2, #0x10
	str r2, [sp, #0xb0]
	ldr r3, [sp, #0x98]
	lsls r3, r3, #0x10
	str r3, [sp, #0xb8]
	ldr r4, [sp, #0xa0]
	lsls r4, r4, #0x10
	str r4, [sp, #0xbc]
	mov r0, sb
	asrs r0, r0, #0x10
	mov r8, r0
_0800E676:
	lsls r0, r6, #0x10
	asrs r0, r0, #0xe
	add r0, sp
	ldr r0, [r0]
	asrs r5, r0, #4
	movs r1, #0xff
	lsls r1, r1, #4
	adds r0, r1, #0
	subs r1, #0xf0
	movs r4, #0xf
	mov r7, ip
	adds r7, #0x10
	ands r5, r0
_0800E690:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	lsls r3, r4, #0x10
	movs r4, #1
	rsbs r4, r4, #0
	cmp r2, r4
	ble _0800E6B6
	asrs r0, r3, #0x10
	add r0, ip
	lsls r0, r0, #1
	ldr r4, _0800E90C @ =gUnknown_02018410
	adds r0, r0, r4
	asrs r1, r1, #0x18
	adds r1, r5, r1
	lsls r1, r1, #1
	ldr r4, _0800E914 @ =gUnknown_08056B54
	adds r1, r1, r4
	ldrh r1, [r1]
	strh r1, [r0]
_0800E6B6:
	mov r1, r8
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r2, _0800E918 @ =0xFFFF0000
	adds r0, r3, r2
	lsrs r4, r0, #0x10
	cmp r0, #0
	bgt _0800E690
	mov ip, r7
	lsls r0, r6, #0x10
	asrs r3, r0, #0x10
	lsls r0, r3, #2
	mov r4, sp
	adds r2, r4, r0
	ldr r1, [sp, #0xc0]
	adds r0, r1, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _0800E91C @ =0x00007FFF
	cmp r1, r0
	ble _0800E6EC
	ldr r4, _0800E920 @ =0xFFFFC000
	adds r0, r1, r4
	str r0, [r2]
_0800E6EC:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _0800E676
	ldr r0, _0800E924 @ =0xFFF90000
	add r0, sb
	lsrs r1, r0, #0x10
	str r1, [sp, #0x9c]
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bgt _0800E70C
	movs r2, #0x80
	lsls r2, r2, #1
	str r2, [sp, #0x9c]
_0800E70C:
	ldr r3, [sp, #0xa8]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	mov r4, sl
	asrs r0, r4, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	movs r6, #0
	ldr r0, _0800E928 @ =gUnknown_02018610
	mov sl, r0
	movs r7, #2
	ldr r2, _0800E92C @ =0xFFFFFC00
	mov ip, r2
	ldr r3, _0800E930 @ =0xFFFFFE00
	mov sb, r3
	lsrs r4, r1, #0x10
	str r4, [sp, #0xa8]
	asrs r1, r1, #0x19
	mov r8, r1
_0800E73A:
	lsls r3, r6, #0x10
	asrs r3, r3, #0x10
	lsls r4, r3, #3
	add r4, sl
	ldr r2, _0800E934 @ =gUnknown_0806A614
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r4]
	str r1, [r4, #4]
	movs r1, #1
	ands r1, r3
	lsls r5, r1, #4
	adds r0, r3, #0
	ands r0, r7
	lsls r0, r0, #7
	orrs r5, r0
	ldrh r2, [r4, #4]
	mov r0, ip
	ands r0, r2
	orrs r0, r5
	strh r0, [r4, #4]
	lsls r1, r1, #6
	adds r1, #0x43
	ldrh r2, [r4, #2]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ands r6, r7
	lsls r0, r6, #5
	adds r0, #5
	mov r1, r8
	subs r0, r0, r1
	strb r0, [r4]
	ldrb r0, [r4, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #5]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #3
	ble _0800E73A
	bl VBlankIntrWait
	ldr r3, [sp, #0xb4]
	asrs r1, r3, #0x18
	ldr r4, [sp, #0xb0]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ldr r2, _0800E938 @ =0xFF9C0000
	adds r1, r3, r2
	lsrs r1, r1, #0x10
	str r1, [sp, #0x94]
	ldr r1, _0800E93C @ =0x04000016
	lsrs r3, r0, #0x10
	str r3, [sp, #0x90]
	asrs r0, r0, #0x18
	strh r0, [r1]
	subs r1, #0x16
	ldr r4, _0800E940 @ =0x00001601
	adds r0, r4, #0
	strh r0, [r1]
	bl sub_8000A28
	ldr r4, _0800E8B8 @ =0x040000D4
	ldr r0, _0800E928 @ =gUnknown_02018610
	str r0, [r4]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0800E8E8 @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800E944 @ =gUnknown_08059A34
	str r0, [r4]
	ldr r6, _0800E90C @ =gUnknown_02018410
	str r6, [r4, #4]
	ldr r7, _0800E948 @ =0x84000008
	str r7, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [sp, #0xb8]
	asrs r5, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0x10
	bl sub_800E344
	cmp r5, #0
	ble _0800E800
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x98]
_0800E800:
	ldr r1, [sp, #0x88]
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0x1e
	bgt _0800E826
	adds r0, r5, #0
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_800E344
	ldr r2, [sp, #0x8c]
	lsls r0, r2, #0x10
	ldr r3, _0800E94C @ =0xFF800000
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	str r1, [sp, #0x8c]
	asrs r0, r0, #0x18
	bl sub_800E3E4
_0800E826:
	str r6, [r4]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	str r7, [r4, #8]
	ldr r0, [r4, #8]
	str r6, [r4]
	ldr r0, _0800E950 @ =0x05000200
	str r0, [r4, #4]
	ldr r0, _0800E954 @ =0x84000080
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, [sp, #0xbc]
	asrs r0, r2, #0x10
	ldr r3, [sp, #0xac]
	adds r3, r3, r0
	str r3, [sp, #0xac]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	ldr r0, _0800E958 @ =0x00029E00
	cmp r3, r0
	ble _0800E85C
	str r0, [sp, #0xac]
	movs r4, #1
	str r4, [sp, #0x84]
_0800E85C:
	ldr r0, [sp, #0xac]
	asrs r1, r0, #1
	asrs r0, r0, #5
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	subs r3, r0, r1
	ldr r0, _0800E95C @ =0x04000020
	ldr r2, [sp, #0xac]
	asrs r1, r2, #8
	strh r1, [r0]
	adds r0, #6
	strh r1, [r0]
	adds r0, #2
	str r3, [r0]
	cmp r5, #0
	ble _0800E962
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	b _0800E960
	.align 2, 0
_0800E888: .4byte 0x000018FF
_0800E88C: .4byte 0xFFFF4688
_0800E890: .4byte 0xFFFFEC46
_0800E894: .4byte 0x04000008
_0800E898: .4byte 0x00004185
_0800E89C: .4byte 0x0000428C
_0800E8A0: .4byte 0x04000028
_0800E8A4: .4byte 0x04000010
_0800E8A8: .4byte 0x0000FFFF
_0800E8AC: .4byte 0x04000014
_0800E8B0: .4byte 0x00000251
_0800E8B4: .4byte 0x0000100E
_0800E8B8: .4byte 0x040000D4
_0800E8BC: .4byte 0x85000100
_0800E8C0: .4byte gUnknown_08057B74
_0800E8C4: .4byte 0x06001800
_0800E8C8: .4byte 0x84000670
_0800E8CC: .4byte gUnknown_0805DA54
_0800E8D0: .4byte gUnknown_08059A54
_0800E8D4: .4byte gUnknown_08066614
_0800E8D8: .4byte gUnknown_0805E054
_0800E8DC: .4byte gUnknown_08059534
_0800E8E0: .4byte 0x0000027F
_0800E8E4: .4byte 0x06001000
_0800E8E8: .4byte 0x84000100
_0800E8EC: .4byte 0x0600C000
_0800E8F0: .4byte 0x84001000
_0800E8F4: .4byte 0x06010000
_0800E8F8: .4byte 0x06004000
_0800E8FC: .4byte 0x84002000
_0800E900: .4byte gUnknown_08066054
_0800E904: .4byte 0x06000800
_0800E908: .4byte 0x84000170
_0800E90C: .4byte gUnknown_02018410
_0800E910: .4byte 0x85000080
_0800E914: .4byte gUnknown_08056B54
_0800E918: .4byte 0xFFFF0000
_0800E91C: .4byte 0x00007FFF
_0800E920: .4byte 0xFFFFC000
_0800E924: .4byte 0xFFF90000
_0800E928: .4byte gUnknown_02018610
_0800E92C: .4byte 0xFFFFFC00
_0800E930: .4byte 0xFFFFFE00
_0800E934: .4byte gUnknown_0806A614
_0800E938: .4byte 0xFF9C0000
_0800E93C: .4byte 0x04000016
_0800E940: .4byte 0x00001601
_0800E944: .4byte gUnknown_08059A34
_0800E948: .4byte 0x84000008
_0800E94C: .4byte 0xFF800000
_0800E950: .4byte 0x05000200
_0800E954: .4byte 0x84000080
_0800E958: .4byte 0x00029E00
_0800E95C: .4byte 0x04000020
_0800E960:
	b _0800E966
_0800E962:
	movs r3, #2
	str r3, [sp, #0x84]
_0800E966:
	movs r2, #0
	ldr r4, [sp, #0x88]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _0800E974
	movs r2, #1
_0800E974:
	ldr r0, _0800EB50 @ =gUnknown_020003E8
	ldrh r0, [r0]
	movs r1, #0xf
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ands r2, r0
	cmp r2, #0
	beq _0800E98C
	movs r0, #0x1f
	str r0, [sp, #0x88]
_0800E98C:
	ldr r1, [sp, #0x88]
	lsls r4, r1, #0x10
	ldr r2, [sp, #0x84]
	cmp r2, #0
	bne _0800E998
	b _0800E646
_0800E998:
	movs r6, #1
	ldr r3, [sp, #0xc0]
	movs r5, #0x10
_0800E99E:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r5, r0
	lsls r1, r1, #2
	adds r1, r3, r1
	adds r2, r0, #0
	adds r2, #0x40
	str r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _0800E99E
	ldr r1, _0800EB54 @ =0x04000052
	ldr r3, _0800EB58 @ =0x00001010
	adds r0, r3, #0
	strh r0, [r1]
	cmp r4, #0
	bne _0800E9C8
	b _0800EB02
_0800E9C8:
	ldr r4, _0800EB5C @ =0x040000D4
	mov r8, r4
	ldr r0, _0800EB60 @ =gUnknown_02018410
	mov sb, r0
	ldr r1, _0800EB64 @ =gUnknown_08056B54
	mov sl, r1
_0800E9D4:
	bl VBlankIntrWait
	ldr r1, _0800EB68 @ =0x04000016
	ldr r2, [sp, #0x90]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1]
	subs r1, #0x16
	ldr r3, _0800EB6C @ =0x00001301
	adds r0, r3, #0
	strh r0, [r1]
	bl sub_8000A28
	ldr r0, _0800EB70 @ =gUnknown_02018610
	mov r4, r8
	str r0, [r4]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0800EB74 @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800EB78 @ =gUnknown_08057B54
	str r0, [r4]
	mov r0, sb
	str r0, [r4, #4]
	ldr r0, _0800EB7C @ =0x84000008
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x10
	mov ip, r1
	movs r6, #1
_0800EA14:
	lsls r1, r6, #0x10
	asrs r0, r1, #0xe
	add r0, sp
	ldr r0, [r0]
	asrs r5, r0, #4
	movs r2, #0xff
	lsls r2, r2, #4
	adds r0, r2, #0
	movs r4, #0
	adds r3, r1, #0
	mov r7, ip
	adds r7, #0x10
	ands r5, r0
_0800EA2E:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r4, ip
	adds r2, r4, r1
	lsls r2, r2, #1
	add r2, sb
	adds r0, r5, r1
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xf
	ble _0800EA2E
	mov ip, r7
	asrs r3, r3, #0x10
	lsls r0, r3, #2
	mov r1, sp
	adds r2, r1, r0
	ldr r4, [sp, #0xc0]
	adds r0, r4, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _0800EB80 @ =0x00007FFF
	cmp r1, r0
	ble _0800EA72
	ldr r4, _0800EB84 @ =0xFFFFC000
	adds r0, r1, r4
	str r0, [r2]
_0800EA72:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _0800EA14
	ldr r1, [sp, #0x88]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x1e
	bgt _0800EA9E
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_800E344
	ldr r2, [sp, #0x8c]
	lsls r0, r2, #0x10
	ldr r3, _0800EB88 @ =0xFFD00000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
_0800EA9E:
	ldr r1, [sp, #0x8c]
	lsls r0, r1, #0x10
	ldr r2, _0800EB8C @ =0xFFB00000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x8c]
	asrs r0, r0, #0x18
	bl sub_800E3E4
	mov r0, sb
	mov r1, r8
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0800EB7C @ =0x84000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sb
	str r2, [r1]
	ldr r0, _0800EB90 @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _0800EB94 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r2, r4, #1
	lsls r2, r2, #0x10
	ldr r0, _0800EB50 @ =gUnknown_020003E8
	ldrh r0, [r0]
	movs r1, #0xf
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	movs r1, #0
	lsrs r3, r2, #0x10
	str r3, [sp, #0x88]
	asrs r2, r2, #0x10
	cmp r2, #0x1e
	ble _0800EAF0
	movs r1, #1
_0800EAF0:
	ands r0, r1
	cmp r0, #0
	beq _0800EAFA
	movs r4, #0x1e
	str r4, [sp, #0x88]
_0800EAFA:
	ldr r0, [sp, #0x88]
	cmp r0, #0
	beq _0800EB02
	b _0800E9D4
_0800EB02:
	movs r2, #0
	str r2, [sp, #0x80]
	ldr r0, _0800EB5C @ =0x040000D4
	add r1, sp, #0x80
	str r1, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r3, _0800EB98 @ =0x85000100
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp, #0x80]
	add r4, sp, #0x80
	str r4, [r0]
	ldr r1, _0800EB90 @ =0x05000200
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp, #0x80]
	str r4, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _0800EB9C @ =0x85006000
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x41
	strh r0, [r1]
	add sp, #0xc4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB50: .4byte gUnknown_020003E8
_0800EB54: .4byte 0x04000052
_0800EB58: .4byte 0x00001010
_0800EB5C: .4byte 0x040000D4
_0800EB60: .4byte gUnknown_02018410
_0800EB64: .4byte gUnknown_08056B54
_0800EB68: .4byte 0x04000016
_0800EB6C: .4byte 0x00001301
_0800EB70: .4byte gUnknown_02018610
_0800EB74: .4byte 0x84000100
_0800EB78: .4byte gUnknown_08057B54
_0800EB7C: .4byte 0x84000008
_0800EB80: .4byte 0x00007FFF
_0800EB84: .4byte 0xFFFFC000
_0800EB88: .4byte 0xFFD00000
_0800EB8C: .4byte 0xFFB00000
_0800EB90: .4byte 0x05000200
_0800EB94: .4byte 0x84000080
_0800EB98: .4byte 0x85000100
_0800EB9C: .4byte 0x85006000

	thumb_func_start sub_800EBA0
sub_800EBA0: @ 0x0800EBA0
	push {r4, r5, lr}
	ldr r0, _0800EC84 @ =gUnknown_020119FC
	movs r5, #0
	str r5, [r0]
	ldr r0, _0800EC88 @ =0x04000010
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #5
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800EC8C @ =0x00000209
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0800EC90 @ =0x040000D4
	ldr r1, _0800EC94 @ =gUnknown_0806AD18
	str r1, [r0]
	ldr r1, _0800EC98 @ =0x06004000
	str r1, [r0, #4]
	ldr r1, _0800EC9C @ =0x84001000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800ECA0 @ =gUnknown_0806A61C
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r3, _0800ECA4 @ =0x84000400
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800ECA8 @ =gUnknown_0806AB18
	str r1, [r0]
	movs r2, #0xa0
	lsls r2, r2, #0x13
	str r2, [r0, #4]
	ldr r1, _0800ECAC @ =0x84000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800ECB0 @ =gUnknown_08020E9C
	str r1, [r0]
	ldr r1, _0800ECB4 @ =0x06008000
	str r1, [r0, #4]
	ldr r1, _0800ECB8 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800ECBC @ =gUnknown_0802049C
	str r1, [r0]
	ldr r1, _0800ECC0 @ =0x06001000
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	strh r5, [r2]
	ldr r4, _0800ECC4 @ =gUnknown_083FDC08
	movs r0, #0
	adds r1, r4, #0
	bl sub_801A42C
	movs r0, #1
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r4, _0800ECC8 @ =gUnknown_083D65F4
	movs r0, #0xe
	movs r1, #0
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #0xf
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r0, _0800ECCC @ =gUnknown_02013130
	str r5, [r0]
	ldr r1, _0800ECD0 @ =gUnknown_02011A10
	ldr r0, [r1, #4]
	cmp r0, #0xc
	bls _0800EC4E
	str r5, [r1, #4]
_0800EC4E:
	ldr r0, [r1, #0x44]
	cmp r0, #0xc
	bls _0800EC56
	str r5, [r1, #0x44]
_0800EC56:
	adds r2, r1, #0
	adds r2, #0x84
	ldr r0, [r2]
	cmp r0, #0xc
	bls _0800EC62
	str r5, [r2]
_0800EC62:
	adds r1, #0xc4
	ldr r0, [r1]
	cmp r0, #0xc
	bls _0800EC6C
	str r5, [r1]
_0800EC6C:
	ldr r0, _0800ECD4 @ =gUnknown_0201197C
	str r5, [r0]
	ldr r1, _0800ECD8 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	ldr r1, _0800ECDC @ =gUnknown_02018A10
	movs r0, #3
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC84: .4byte gUnknown_020119FC
_0800EC88: .4byte 0x04000010
_0800EC8C: .4byte 0x00000209
_0800EC90: .4byte 0x040000D4
_0800EC94: .4byte gUnknown_0806AD18
_0800EC98: .4byte 0x06004000
_0800EC9C: .4byte 0x84001000
_0800ECA0: .4byte gUnknown_0806A61C
_0800ECA4: .4byte 0x84000400
_0800ECA8: .4byte gUnknown_0806AB18
_0800ECAC: .4byte 0x84000080
_0800ECB0: .4byte gUnknown_08020E9C
_0800ECB4: .4byte 0x06008000
_0800ECB8: .4byte 0x84002000
_0800ECBC: .4byte gUnknown_0802049C
_0800ECC0: .4byte 0x06001000
_0800ECC4: .4byte gUnknown_083FDC08
_0800ECC8: .4byte gUnknown_083D65F4
_0800ECCC: .4byte gUnknown_02013130
_0800ECD0: .4byte gUnknown_02011A10
_0800ECD4: .4byte gUnknown_0201197C
_0800ECD8: .4byte gUnknown_02011994
_0800ECDC: .4byte gUnknown_02018A10

	thumb_func_start sub_800ECE0
sub_800ECE0: @ 0x0800ECE0
	push {r4, lr}
	ldr r0, _0800ED98 @ =0x04000010
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r3, #0x9a
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #5
	strh r0, [r1]
	adds r1, #2
	ldr r3, _0800ED9C @ =0x00000209
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0800EDA0 @ =0x040000D4
	ldr r1, _0800EDA4 @ =gUnknown_0806DE54
	str r1, [r0]
	ldr r1, _0800EDA8 @ =0x06004000
	str r1, [r0, #4]
	ldr r1, _0800EDAC @ =0x84001000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800EDB0 @ =gUnknown_0806D758
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r4, _0800EDB4 @ =0x84000400
	str r4, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800EDB8 @ =gUnknown_0806DC54
	str r1, [r0]
	movs r3, #0xa0
	lsls r3, r3, #0x13
	str r3, [r0, #4]
	ldr r1, _0800EDBC @ =0x84000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800EDC0 @ =gUnknown_08020E9C
	str r1, [r0]
	ldr r1, _0800EDC4 @ =0x06008000
	str r1, [r0, #4]
	ldr r1, _0800EDC8 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800EDCC @ =gUnknown_0802049C
	str r1, [r0]
	ldr r1, _0800EDD0 @ =0x06001000
	str r1, [r0, #4]
	str r4, [r0, #8]
	ldr r0, [r0, #8]
	strh r2, [r3]
	ldr r4, _0800EDD4 @ =gUnknown_083FDC08
	movs r0, #0
	adds r1, r4, #0
	bl sub_801A42C
	movs r0, #1
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r4, _0800EDD8 @ =gUnknown_083D65F4
	movs r0, #0xe
	movs r1, #0
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #0xf
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r1, _0800EDDC @ =gUnknown_0201197C
	movs r0, #0
	str r0, [r1]
	ldr r1, _0800EDE0 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED98: .4byte 0x04000010
_0800ED9C: .4byte 0x00000209
_0800EDA0: .4byte 0x040000D4
_0800EDA4: .4byte gUnknown_0806DE54
_0800EDA8: .4byte 0x06004000
_0800EDAC: .4byte 0x84001000
_0800EDB0: .4byte gUnknown_0806D758
_0800EDB4: .4byte 0x84000400
_0800EDB8: .4byte gUnknown_0806DC54
_0800EDBC: .4byte 0x84000080
_0800EDC0: .4byte gUnknown_08020E9C
_0800EDC4: .4byte 0x06008000
_0800EDC8: .4byte 0x84002000
_0800EDCC: .4byte gUnknown_0802049C
_0800EDD0: .4byte 0x06001000
_0800EDD4: .4byte gUnknown_083FDC08
_0800EDD8: .4byte gUnknown_083D65F4
_0800EDDC: .4byte gUnknown_0201197C
_0800EDE0: .4byte gUnknown_02011994

	thumb_func_start sub_800EDE4
sub_800EDE4: @ 0x0800EDE4
	push {r4, lr}
	ldr r0, _0800EE9C @ =0x04000010
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r3, #0x9a
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #5
	strh r0, [r1]
	adds r1, #2
	ldr r3, _0800EEA0 @ =0x00000209
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0800EEA4 @ =0x040000D4
	ldr r1, _0800EEA8 @ =gUnknown_080730CC
	str r1, [r0]
	ldr r1, _0800EEAC @ =0x06004000
	str r1, [r0, #4]
	ldr r1, _0800EEB0 @ =0x84001000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800EEB4 @ =gUnknown_080729D0
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r4, _0800EEB8 @ =0x84000400
	str r4, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800EEBC @ =gUnknown_08072ECC
	str r1, [r0]
	movs r3, #0xa0
	lsls r3, r3, #0x13
	str r3, [r0, #4]
	ldr r1, _0800EEC0 @ =0x84000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800EEC4 @ =gUnknown_08020E9C
	str r1, [r0]
	ldr r1, _0800EEC8 @ =0x06008000
	str r1, [r0, #4]
	ldr r1, _0800EECC @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800EED0 @ =gUnknown_0802049C
	str r1, [r0]
	ldr r1, _0800EED4 @ =0x06001000
	str r1, [r0, #4]
	str r4, [r0, #8]
	ldr r0, [r0, #8]
	strh r2, [r3]
	ldr r4, _0800EED8 @ =gUnknown_083FDC08
	movs r0, #0
	adds r1, r4, #0
	bl sub_801A42C
	movs r0, #1
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r4, _0800EEDC @ =gUnknown_083D65F4
	movs r0, #0xe
	movs r1, #0
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #0xf
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r1, _0800EEE0 @ =gUnknown_0201197C
	movs r0, #0
	str r0, [r1]
	ldr r1, _0800EEE4 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EE9C: .4byte 0x04000010
_0800EEA0: .4byte 0x00000209
_0800EEA4: .4byte 0x040000D4
_0800EEA8: .4byte gUnknown_080730CC
_0800EEAC: .4byte 0x06004000
_0800EEB0: .4byte 0x84001000
_0800EEB4: .4byte gUnknown_080729D0
_0800EEB8: .4byte 0x84000400
_0800EEBC: .4byte gUnknown_08072ECC
_0800EEC0: .4byte 0x84000080
_0800EEC4: .4byte gUnknown_08020E9C
_0800EEC8: .4byte 0x06008000
_0800EECC: .4byte 0x84002000
_0800EED0: .4byte gUnknown_0802049C
_0800EED4: .4byte 0x06001000
_0800EED8: .4byte gUnknown_083FDC08
_0800EEDC: .4byte gUnknown_083D65F4
_0800EEE0: .4byte gUnknown_0201197C
_0800EEE4: .4byte gUnknown_02011994

	thumb_func_start sub_800EEE8
sub_800EEE8: @ 0x0800EEE8
	push {r4, lr}
	ldr r0, _0800EFA0 @ =0x04000010
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r3, #0x9a
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #5
	strh r0, [r1]
	adds r1, #2
	ldr r3, _0800EFA4 @ =0x00000209
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0800EFA8 @ =0x040000D4
	ldr r1, _0800EFAC @ =gUnknown_08070A10
	str r1, [r0]
	ldr r1, _0800EFB0 @ =0x06004000
	str r1, [r0, #4]
	ldr r1, _0800EFB4 @ =0x84001000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800EFB8 @ =gUnknown_08070314
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r4, _0800EFBC @ =0x84000400
	str r4, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800EFC0 @ =gUnknown_08070810
	str r1, [r0]
	movs r3, #0xa0
	lsls r3, r3, #0x13
	str r3, [r0, #4]
	ldr r1, _0800EFC4 @ =0x84000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800EFC8 @ =gUnknown_08020E9C
	str r1, [r0]
	ldr r1, _0800EFCC @ =0x06008000
	str r1, [r0, #4]
	ldr r1, _0800EFD0 @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800EFD4 @ =gUnknown_0802049C
	str r1, [r0]
	ldr r1, _0800EFD8 @ =0x06001000
	str r1, [r0, #4]
	str r4, [r0, #8]
	ldr r0, [r0, #8]
	strh r2, [r3]
	ldr r4, _0800EFDC @ =gUnknown_083FDC08
	movs r0, #0
	adds r1, r4, #0
	bl sub_801A42C
	movs r0, #1
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r4, _0800EFE0 @ =gUnknown_083D65F4
	movs r0, #0xe
	movs r1, #0
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #0xf
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r1, _0800EFE4 @ =gUnknown_0201197C
	movs r0, #0
	str r0, [r1]
	ldr r1, _0800EFE8 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EFA0: .4byte 0x04000010
_0800EFA4: .4byte 0x00000209
_0800EFA8: .4byte 0x040000D4
_0800EFAC: .4byte gUnknown_08070A10
_0800EFB0: .4byte 0x06004000
_0800EFB4: .4byte 0x84001000
_0800EFB8: .4byte gUnknown_08070314
_0800EFBC: .4byte 0x84000400
_0800EFC0: .4byte gUnknown_08070810
_0800EFC4: .4byte 0x84000080
_0800EFC8: .4byte gUnknown_08020E9C
_0800EFCC: .4byte 0x06008000
_0800EFD0: .4byte 0x84002000
_0800EFD4: .4byte gUnknown_0802049C
_0800EFD8: .4byte 0x06001000
_0800EFDC: .4byte gUnknown_083FDC08
_0800EFE0: .4byte gUnknown_083D65F4
_0800EFE4: .4byte gUnknown_0201197C
_0800EFE8: .4byte gUnknown_02011994

	thumb_func_start EnterLetterOfPassword
EnterLetterOfPassword: @ 0x0800EFEC
	push {lr}
	lsls r2, r1, #3
	subs r2, r2, r1
	adds r0, r2, r0
	cmp r0, #0x19
	bls _0800EFFA
	adds r0, #1
_0800EFFA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start VerifyPassword
VerifyPassword: @ 0x0800F000
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0xa
	bne _0800F020
	ldr r0, [r1, #4]
	cmp r0, #0x19
	bne _0800F020
	ldr r0, [r1, #8]
	cmp r0, #0x1b
	bne _0800F020
	ldr r0, [r1, #0xc]
	cmp r0, #0x1f
	bne _0800F020
	movs r0, #9
	b _0800F0A8
_0800F020:
	ldr r2, [r1]
	cmp r2, #0xe
	bne _0800F03C
	ldr r0, [r1, #4]
	cmp r0, #0x19
	bne _0800F03C
	ldr r0, [r1, #8]
	cmp r0, #0x1c
	bne _0800F03C
	ldr r0, [r1, #0xc]
	cmp r0, #0x1d
	bne _0800F03C
	movs r0, #0xa
	b _0800F0A8
_0800F03C:
	cmp r2, #9
	bne _0800F056
	ldr r0, [r1, #4]
	cmp r0, #0x17
	bne _0800F056
	ldr r0, [r1, #8]
	cmp r0, #0x1c
	bne _0800F056
	ldr r0, [r1, #0xc]
	cmp r0, #0x1b
	bne _0800F056
	movs r0, #0xb
	b _0800F0A8
_0800F056:
	cmp r2, #0x19
	bne _0800F070
	ldr r0, [r1, #4]
	cmp r0, #0x11
	bne _0800F070
	ldr r0, [r1, #8]
	cmp r0, #0x1b
	bne _0800F070
	ldr r0, [r1, #0xc]
	cmp r0, #0x23
	bne _0800F070
	movs r0, #0xc
	b _0800F0A8
_0800F070:
	cmp r2, #0x17
	bne _0800F08A
	ldr r0, [r1, #4]
	cmp r0, #0xa
	bne _0800F08A
	ldr r0, [r1, #8]
	cmp r0, #0x1b
	bne _0800F08A
	ldr r0, [r1, #0xc]
	cmp r0, #0x1c
	bne _0800F08A
	movs r0, #0xd
	b _0800F0A8
_0800F08A:
	cmp r2, #0x15
	bne _0800F0A4
	ldr r0, [r1, #4]
	cmp r0, #0x17
	bne _0800F0A4
	ldr r0, [r1, #8]
	cmp r0, #0x1b
	bne _0800F0A4
	ldr r0, [r1, #0xc]
	cmp r0, #0x1e
	bne _0800F0A4
	movs r0, #0xe
	b _0800F0A8
_0800F0A4:
	movs r0, #1
	rsbs r0, r0, #0
_0800F0A8:
	pop {r1}
	bx r1

	thumb_func_start PasswordEntryLoop
PasswordEntryLoop: @ 0x0800F0AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	movs r0, #0
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x20]
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r7, #0
	mov sl, r0
	bl sub_800EEE8
	bl sub_8000B6C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
_0800F0DC:
	bl sub_8000A28
	ldr r0, _0800F104 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800F110
	ldr r0, _0800F108 @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	mov r1, sl
	cmp r1, #0
	beq _0800F10C
	movs r2, #1
	rsbs r2, r2, #0
	add sl, r2
	b _0800F134
	.align 2, 0
_0800F104: .4byte gUnknown_020003E8
_0800F108: .4byte gUnknown_087F7920
_0800F10C:
	movs r0, #4
	b _0800F132
_0800F110:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800F134
	ldr r0, _0800F12C @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	mov r1, sl
	cmp r1, #3
	bhi _0800F130
	movs r2, #1
	add sl, r2
	b _0800F134
	.align 2, 0
_0800F12C: .4byte gUnknown_087F7920
_0800F130:
	movs r0, #0
_0800F132:
	mov sl, r0
_0800F134:
	ldr r0, _0800F150 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800F15C
	ldr r0, _0800F154 @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	cmp r7, #0
	beq _0800F158
	subs r7, #1
	b _0800F17A
	.align 2, 0
_0800F150: .4byte gUnknown_020003E8
_0800F154: .4byte gUnknown_087F7920
_0800F158:
	movs r7, #6
	b _0800F17A
_0800F15C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800F17A
	ldr r0, _0800F174 @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	cmp r7, #5
	bhi _0800F178
	adds r7, #1
	b _0800F17A
	.align 2, 0
_0800F174: .4byte gUnknown_087F7920
_0800F178:
	movs r7, #0
_0800F17A:
	ldr r0, _0800F1A8 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0800F200
	movs r1, #0
	str r1, [sp, #0x1c]
	adds r0, r7, #0
	mov r1, sl
	bl EnterLetterOfPassword
	mov r2, r8
	lsls r1, r2, #2
	add r1, sp
	adds r1, #0xc
	str r0, [r1]
	cmp r2, #2
	bhi _0800F1AC
	add r8, r6
	b _0800F200
	.align 2, 0
_0800F1A8: .4byte gUnknown_020003E8
_0800F1AC:
	add r0, sp, #0xc
	bl VerifyPassword
	adds r4, r0, #0
	movs r5, #1
	rsbs r5, r5, #0
	cmp r4, r5
	beq _0800F1E8
	ldr r2, _0800F1E4 @ =gUnknown_02000AD4
	adds r1, r6, #0
	lsls r1, r4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	adds r0, r4, #0
	bl sub_8006D90
	bl sub_800EEE8
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	movs r0, #0
	mov r8, r0
	bl sub_8000B30
	b _0800F200
	.align 2, 0
_0800F1E4: .4byte gUnknown_02000AD4
_0800F1E8:
	ldr r0, _0800F218 @ =gUnknown_087F793C
	movs r1, #2
	bl sub_8003A9C
	movs r1, #1
	str r1, [sp, #0x1c]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	movs r2, #0
	mov r8, r2
_0800F200:
	ldr r0, _0800F21C @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F236
	mov r0, r8
	cmp r0, #0
	bne _0800F220
	bl sub_8000AF8
	b _0800F3C8
	.align 2, 0
_0800F218: .4byte gUnknown_087F793C
_0800F21C: .4byte gUnknown_020003E8
_0800F220:
	movs r1, #1
	rsbs r1, r1, #0
	add r8, r1
	mov r2, r8
	lsls r0, r2, #2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0xc
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_0800F236:
	movs r6, #0
	movs r5, #0
	movs r2, #0
	lsls r0, r7, #4
	str r0, [sp, #0x28]
	mov r1, sl
	lsls r1, r1, #4
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	adds r0, #1
	str r0, [sp, #0x24]
	movs r1, #1
	add sb, r1
_0800F250:
	cmp r6, #0xd1
	bls _0800F258
	movs r6, #0
	adds r5, #0x10
_0800F258:
	adds r0, r6, #0
	adds r0, #0x28
	adds r1, r5, #0
	adds r1, #0x30
	adds r3, r2, #0
	adds r4, r2, #1
	cmp r2, #0x19
	bls _0800F26A
	adds r3, r4, #0
_0800F26A:
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r2, #0xf
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, _0800F29C @ =gUnknown_083D65F4
	str r2, [sp, #8]
	movs r2, #0
	bl sub_800AACC
	adds r6, #0x1e
	adds r2, r4, #0
	cmp r2, #0x22
	bls _0800F250
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0800F2A4
	movs r0, #0xf
	movs r1, #0x58
	movs r2, #0x10
	ldr r3, _0800F2A0 @ =gUnknown_0807B11C
	bl DrawString
	b _0800F2B0
	.align 2, 0
_0800F29C: .4byte gUnknown_083D65F4
_0800F2A0: .4byte gUnknown_0807B11C
_0800F2A4:
	movs r0, #0xf
	movs r1, #0x58
	movs r2, #0x10
	ldr r3, _0800F3A0 @ =gUnknown_0807B128
	bl DrawString
_0800F2B0:
	ldr r3, [sp, #0xc]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r3, r4
	beq _0800F2D2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0xf
	str r1, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r0, _0800F3A4 @ =gUnknown_083D65F4
	str r0, [sp, #8]
	movs r0, #0xb0
	movs r1, #0x10
	bl sub_800AACC
_0800F2D2:
	ldr r3, [sp, #0x10]
	cmp r3, r4
	beq _0800F2F0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0xf
	str r1, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r0, _0800F3A4 @ =gUnknown_083D65F4
	str r0, [sp, #8]
	movs r0, #0xc0
	movs r1, #0x10
	bl sub_800AACC
_0800F2F0:
	ldr r3, [sp, #0x14]
	cmp r3, r4
	beq _0800F30E
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0xf
	str r1, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r0, _0800F3A4 @ =gUnknown_083D65F4
	str r0, [sp, #8]
	movs r0, #0xd0
	movs r1, #0x10
	bl sub_800AACC
_0800F30E:
	ldr r3, [sp, #0x18]
	cmp r3, r4
	beq _0800F32C
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0xf
	str r1, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r0, _0800F3A4 @ =gUnknown_083D65F4
	str r0, [sp, #8]
	movs r0, #0xe0
	movs r1, #0x10
	bl sub_800AACC
_0800F32C:
	ldr r1, [sp, #0x28]
	subs r0, r1, r7
	lsls r0, r0, #1
	adds r0, #0x18
	ldr r1, [sp, #0x2c]
	adds r1, #0x30
	movs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, _0800F3A8 @ =gUnknown_083FDC08
	str r2, [sp, #8]
	movs r2, #1
	movs r3, #0
	bl sub_800AACC
	bl VBlankIntrWait
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x20]
	cmp r0, #0xc
	bls _0800F37A
	movs r1, #0
	str r1, [sp, #0x20]
	ldr r2, _0800F3AC @ =0x040000D4
	ldr r4, _0800F3B0 @ =0x05000094
	str r4, [r2]
	ldr r1, _0800F3B4 @ =gUnknown_020126A2
	str r1, [r2, #4]
	ldr r3, _0800F3B8 @ =0x80000004
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	subs r1, #2
	ldrh r0, [r1, #8]
	strh r0, [r1]
	str r1, [r2]
	str r4, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
_0800F37A:
	ldr r1, _0800F3BC @ =gUnknown_02000388
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0800F3C0 @ =0x04000014
	lsrs r1, r0, #1
	strh r1, [r2]
	ldr r1, _0800F3C4 @ =0x04000016
	lsrs r0, r0, #2
	strh r0, [r1]
	mov r2, sb
	lsrs r0, r2, #4
	cmp r0, #2
	bhi _0800F398
	b _0800F0DC
_0800F398:
	movs r0, #0
	mov sb, r0
	b _0800F0DC
	.align 2, 0
_0800F3A0: .4byte gUnknown_0807B128
_0800F3A4: .4byte gUnknown_083D65F4
_0800F3A8: .4byte gUnknown_083FDC08
_0800F3AC: .4byte 0x040000D4
_0800F3B0: .4byte 0x05000094
_0800F3B4: .4byte gUnknown_020126A2
_0800F3B8: .4byte 0x80000004
_0800F3BC: .4byte gUnknown_02000388
_0800F3C0: .4byte 0x04000014
_0800F3C4: .4byte 0x04000016
_0800F3C8:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800F3D8
sub_800F3D8: @ 0x0800F3D8
	push {r4, lr}
	sub sp, #0xc
	movs r4, #0
_0800F3DE:
	bl sub_8000A28
	ldr r0, _0800F3F8 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800F3FC
	cmp r4, #0
	beq _0800F40A
	subs r4, #1
	b _0800F40A
	.align 2, 0
_0800F3F8: .4byte gUnknown_020003E8
_0800F3FC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800F40A
	cmp r4, #0
	bne _0800F40A
	movs r4, #1
_0800F40A:
	ldr r0, _0800F41C @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800F420
	adds r0, r4, #0
	b _0800F4AE
	.align 2, 0
_0800F41C: .4byte gUnknown_020003E8
_0800F420:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0800F4AC
	lsls r1, r4, #4
	adds r1, #0x51
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, _0800F48C @ =gUnknown_083FDC08
	str r0, [sp, #8]
	movs r0, #0x5c
	movs r2, #1
	movs r3, #0
	bl sub_800AACC
	movs r0, #0xf
	movs r1, #0x18
	movs r2, #0x28
	ldr r3, _0800F490 @ =gUnknown_0807B134
	bl DrawString
	movs r0, #0xf
	movs r1, #0x50
	movs r2, #0x40
	ldr r3, _0800F494 @ =gUnknown_0807B154
	bl DrawString
	movs r0, #0xf
	movs r1, #0x78
	movs r2, #0x50
	ldr r3, _0800F498 @ =gUnknown_0807B164
	bl DrawString
	movs r0, #0xf
	movs r1, #0x78
	movs r2, #0x60
	ldr r3, _0800F49C @ =gUnknown_0807B168
	bl DrawString
	bl VBlankIntrWait
	ldr r1, _0800F4A0 @ =gUnknown_02000388
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0800F4A4 @ =0x04000014
	lsrs r1, r0, #1
	strh r1, [r2]
	ldr r1, _0800F4A8 @ =0x04000016
	lsrs r0, r0, #2
	strh r0, [r1]
	b _0800F3DE
	.align 2, 0
_0800F48C: .4byte gUnknown_083FDC08
_0800F490: .4byte gUnknown_0807B134
_0800F494: .4byte gUnknown_0807B154
_0800F498: .4byte gUnknown_0807B164
_0800F49C: .4byte gUnknown_0807B168
_0800F4A0: .4byte gUnknown_02000388
_0800F4A4: .4byte 0x04000014
_0800F4A8: .4byte 0x04000016
_0800F4AC:
	movs r0, #0
_0800F4AE:
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800F4B8
sub_800F4B8: @ 0x0800F4B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0
	mov sl, r0
	bl sub_800EDE4
	bl sub_8000B6C
	cmp r6, #0
	beq _0800F50C
	ldr r1, _0800F500 @ =gUnknown_02011A10
	adds r0, r1, #0
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F4E4
	movs r5, #3
_0800F4E4:
	adds r0, r1, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F4F0
	movs r5, #2
_0800F4F0:
	ldr r0, [r1, #0x44]
	cmp r0, #0
	beq _0800F4F8
	movs r5, #1
_0800F4F8:
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0800F50E
	b _0800F50C
	.align 2, 0
_0800F500: .4byte gUnknown_02011A10
_0800F504:
	bl sub_8000AF8
	adds r0, r5, #0
	b _0800F79C
_0800F50C:
	movs r5, #0
_0800F50E:
	ldr r7, _0800F558 @ =gUnknown_02011A10
	ldr r1, _0800F55C @ =LevelNames
	mov r8, r1
_0800F514:
	bl sub_8000A28
	ldr r0, _0800F560 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800F574
	ldr r0, _0800F564 @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	cmp r6, #0
	beq _0800F568
	subs r1, r5, #1
	movs r3, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #6
	adds r2, r7, #4
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0800F5BC
	subs r1, r5, #2
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #6
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0800F5BC
	subs r1, r5, #3
	b _0800F5AE
	.align 2, 0
_0800F558: .4byte gUnknown_02011A10
_0800F55C: .4byte LevelNames
_0800F560: .4byte gUnknown_020003E8
_0800F564: .4byte gUnknown_087F7920
_0800F568:
	cmp r5, #0
	beq _0800F570
	subs r5, #1
	b _0800F5D2
_0800F570:
	movs r5, #3
	b _0800F5D2
_0800F574:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800F5D2
	ldr r0, _0800F5C4 @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	cmp r6, #0
	beq _0800F5C8
	adds r1, r5, #1
	movs r3, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #6
	adds r2, r7, #4
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0800F5BC
	adds r1, r5, #2
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #6
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0800F5BC
	adds r1, r5, #3
_0800F5AE:
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #6
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F5BE
_0800F5BC:
	adds r5, r1, #0
_0800F5BE:
	movs r0, #3
	ands r5, r0
	b _0800F5D2
	.align 2, 0
_0800F5C4: .4byte gUnknown_087F7920
_0800F5C8:
	cmp r5, #2
	bhi _0800F5D0
	adds r5, #1
	b _0800F5D2
_0800F5D0:
	movs r5, #0
_0800F5D2:
	ldr r4, _0800F61C @ =gUnknown_020003E8
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800F5F6
	cmp r6, #0
	bne _0800F504
	lsls r0, r5, #6
	ldr r1, _0800F620 @ =gUnknown_02011A14
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F504
	bl sub_800F3D8
	cmp r0, #0
	bne _0800F504
_0800F5F6:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F602
	b _0800F794
_0800F602:
	cmp r6, #0
	beq _0800F624
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _0800F624
	mov r0, r8
	ldr r3, [r0]
	movs r0, #0xe
	movs r1, #0x78
	movs r2, #0x10
	bl DrawString
	b _0800F636
	.align 2, 0
_0800F61C: .4byte gUnknown_020003E8
_0800F620: .4byte gUnknown_02011A14
_0800F624:
	ldr r0, [r7, #4]
	lsls r0, r0, #2
	add r0, r8
	ldr r3, [r0]
	movs r0, #0xf
	movs r1, #0x78
	movs r2, #0x10
	bl DrawString
_0800F636:
	cmp r6, #0
	beq _0800F650
	ldr r0, [r7, #0x44]
	cmp r0, #0
	bne _0800F650
	mov r1, r8
	ldr r3, [r1]
	movs r0, #0xe
	movs r1, #0x78
	movs r2, #0x28
	bl DrawString
	b _0800F662
_0800F650:
	ldr r0, [r7, #0x44]
	lsls r0, r0, #2
	add r0, r8
	ldr r3, [r0]
	movs r0, #0xf
	movs r1, #0x78
	movs r2, #0x28
	bl DrawString
_0800F662:
	cmp r6, #0
	beq _0800F684
	ldr r1, _0800F680 @ =gUnknown_02011A94
	ldr r0, [r1]
	cmp r0, #0
	bne _0800F684
	mov r0, r8
	ldr r3, [r0]
	movs r0, #0xe
	movs r1, #0x78
	movs r2, #0x40
	bl DrawString
	b _0800F698
	.align 2, 0
_0800F680: .4byte gUnknown_02011A94
_0800F684:
	ldr r1, _0800F6B4 @ =gUnknown_02011A94
	ldr r0, [r1]
	lsls r0, r0, #2
	add r0, r8
	ldr r3, [r0]
	movs r0, #0xf
	movs r1, #0x78
	movs r2, #0x40
	bl DrawString
_0800F698:
	cmp r6, #0
	beq _0800F6BC
	ldr r1, _0800F6B8 @ =gUnknown_02011AD4
	ldr r0, [r1]
	cmp r0, #0
	bne _0800F6BC
	mov r0, r8
	ldr r3, [r0]
	movs r0, #0xe
	movs r1, #0x78
	movs r2, #0x58
	bl DrawString
	b _0800F6D0
	.align 2, 0
_0800F6B4: .4byte gUnknown_02011A94
_0800F6B8: .4byte gUnknown_02011AD4
_0800F6BC:
	ldr r1, _0800F6E4 @ =gUnknown_02011AD4
	ldr r0, [r1]
	lsls r0, r0, #2
	add r0, r8
	ldr r3, [r0]
	movs r0, #0xf
	movs r1, #0x78
	movs r2, #0x58
	bl DrawString
_0800F6D0:
	cmp r6, #0
	bne _0800F6EC
	movs r0, #0xf
	movs r1, #0x40
	movs r2, #0x70
	ldr r3, _0800F6E8 @ =gUnknown_0807B16C
	bl DrawString
	b _0800F6F8
	.align 2, 0
_0800F6E4: .4byte gUnknown_02011AD4
_0800F6E8: .4byte gUnknown_0807B16C
_0800F6EC:
	movs r0, #0xf
	movs r1, #0x40
	movs r2, #0x70
	ldr r3, _0800F770 @ =gUnknown_0807B188
	bl DrawString
_0800F6F8:
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, #0x10
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0800F774 @ =gUnknown_083FDC08
	str r0, [sp, #8]
	movs r0, #0x60
	movs r2, #1
	movs r3, #0
	bl sub_800AACC
	bl VBlankIntrWait
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #0xc
	bls _0800F746
	movs r0, #0
	mov sl, r0
	ldr r2, _0800F778 @ =0x040000D4
	ldr r4, _0800F77C @ =0x05000094
	str r4, [r2]
	ldr r1, _0800F780 @ =gUnknown_020126A2
	str r1, [r2, #4]
	ldr r3, _0800F784 @ =0x80000004
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	subs r1, #2
	ldrh r0, [r1, #8]
	strh r0, [r1]
	str r1, [r2]
	str r4, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
_0800F746:
	ldr r1, _0800F788 @ =gUnknown_02000388
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0800F78C @ =0x04000014
	lsrs r1, r0, #1
	strh r1, [r2]
	ldr r1, _0800F790 @ =0x04000016
	lsrs r0, r0, #2
	strh r0, [r1]
	movs r1, #1
	add sb, r1
	mov r1, sb
	lsrs r0, r1, #4
	cmp r0, #2
	bhi _0800F768
	b _0800F514
_0800F768:
	movs r0, #0
	mov sb, r0
	b _0800F514
	.align 2, 0
_0800F770: .4byte gUnknown_0807B188
_0800F774: .4byte gUnknown_083FDC08
_0800F778: .4byte 0x040000D4
_0800F77C: .4byte 0x05000094
_0800F780: .4byte gUnknown_020126A2
_0800F784: .4byte 0x80000004
_0800F788: .4byte gUnknown_02000388
_0800F78C: .4byte 0x04000014
_0800F790: .4byte 0x04000016
_0800F794:
	bl sub_8000AF8
	movs r0, #1
	rsbs r0, r0, #0
_0800F79C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800F7AC
sub_800F7AC: @ 0x0800F7AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r6, #0
	mov r8, r6
	add r0, sp, #0xc
	mov r1, r8
	strb r1, [r0, #1]
	bl sub_800ECE0
	bl sub_8000B6C
	ldr r4, _0800F7F8 @ =gUnknown_020126A2
	mov sl, r4
	movs r0, #2
	rsbs r0, r0, #0
	add r0, sl
	mov sb, r0
_0800F7D6:
	bl sub_8000A28
	ldr r0, _0800F7FC @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800F808
	ldr r0, _0800F800 @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	cmp r6, #0
	beq _0800F804
	subs r6, #1
	b _0800F826
	.align 2, 0
_0800F7F8: .4byte gUnknown_020126A2
_0800F7FC: .4byte gUnknown_020003E8
_0800F800: .4byte gUnknown_087F7920
_0800F804:
	movs r6, #2
	b _0800F826
_0800F808:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800F826
	ldr r0, _0800F820 @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	cmp r6, #1
	bhi _0800F824
	adds r6, #1
	b _0800F826
	.align 2, 0
_0800F820: .4byte gUnknown_087F7920
_0800F824:
	movs r6, #0
_0800F826:
	ldr r0, _0800F850 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800F894
	ldr r0, _0800F854 @ =gUnknown_087F7920
	movs r1, #0
	bl sub_8003A9C
	cmp r6, #0
	bne _0800F862
	ldr r1, _0800F858 @ =gUnknown_02000384
	ldrb r0, [r1]
	cmp r0, #2
	bhi _0800F85C
	movs r0, #1
	strb r0, [r1]
	b _0800F8E6
	.align 2, 0
_0800F850: .4byte gUnknown_020003E8
_0800F854: .4byte gUnknown_087F7920
_0800F858: .4byte gUnknown_02000384
_0800F85C:
	subs r0, #2
	strb r0, [r1]
	b _0800F8E6
_0800F862:
	cmp r6, #1
	bne _0800F870
	ldr r0, _0800F86C @ =g_SoundEnabled
	strb r6, [r0]
	b _0800F8E6
	.align 2, 0
_0800F86C: .4byte g_SoundEnabled
_0800F870:
	cmp r6, #2
	bne _0800F8E6
	ldr r1, _0800F88C @ =g_MusicEnabled
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800F8E6
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0800F890 @ =gUnknown_087F530C
	movs r1, #0
	bl sub_8003A5C
	b _0800F8E6
	.align 2, 0
_0800F88C: .4byte g_MusicEnabled
_0800F890: .4byte gUnknown_087F530C
_0800F894:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800F8E6
	ldr r0, _0800F8B8 @ =gUnknown_087F7920
	movs r1, #0
	bl sub_8003A9C
	cmp r6, #0
	bne _0800F8C6
	ldr r1, _0800F8BC @ =gUnknown_02000384
	ldrb r0, [r1]
	cmp r0, #5
	bls _0800F8C0
	movs r0, #7
	strb r0, [r1]
	b _0800F8E6
	.align 2, 0
_0800F8B8: .4byte gUnknown_087F7920
_0800F8BC: .4byte gUnknown_02000384
_0800F8C0:
	adds r0, #2
	strb r0, [r1]
	b _0800F8E6
_0800F8C6:
	cmp r6, #1
	bne _0800F8D4
	ldr r0, _0800F8D0 @ =g_SoundEnabled
	strb r4, [r0]
	b _0800F8E6
	.align 2, 0
_0800F8D0: .4byte g_SoundEnabled
_0800F8D4:
	cmp r6, #2
	bne _0800F8E6
	ldr r5, _0800F8F8 @ =g_MusicEnabled
	ldrb r0, [r5]
	cmp r0, #0
	beq _0800F8E4
	bl sub_8003A8C
_0800F8E4:
	strb r4, [r5]
_0800F8E6:
	ldr r0, _0800F8FC @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800F900
	bl sub_8000AF8
	b _0800FA40
	.align 2, 0
_0800F8F8: .4byte g_MusicEnabled
_0800F8FC: .4byte gUnknown_020003E8
_0800F900:
	movs r0, #0xf
	movs r1, #0x88
	movs r2, #0x10
	ldr r3, _0800F95C @ =gUnknown_0807B1A8
	bl DrawString
	movs r0, #0xf
	movs r1, #0x58
	movs r2, #0x38
	ldr r3, _0800F960 @ =gUnknown_0807B1B0
	bl DrawString
	movs r0, #0xf
	movs r1, #0x58
	movs r2, #0x58
	ldr r3, _0800F964 @ =gUnknown_0807B1BC
	bl DrawString
	movs r0, #0xf
	movs r1, #0x58
	movs r2, #0x78
	ldr r3, _0800F968 @ =gUnknown_0807B1C4
	bl DrawString
	add r1, sp, #0xc
	ldr r0, _0800F96C @ =gUnknown_02000384
	ldrb r0, [r0]
	adds r0, #0x30
	strb r0, [r1]
	movs r0, #0xf
	movs r1, #0xb0
	movs r2, #0x38
	add r3, sp, #0xc
	bl DrawString
	ldr r0, _0800F970 @ =g_SoundEnabled
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F978
	movs r0, #0xf
	movs r1, #0xb0
	movs r2, #0x58
	ldr r3, _0800F974 @ =gUnknown_0807B1CC
	bl DrawString
	b _0800F984
	.align 2, 0
_0800F95C: .4byte gUnknown_0807B1A8
_0800F960: .4byte gUnknown_0807B1B0
_0800F964: .4byte gUnknown_0807B1BC
_0800F968: .4byte gUnknown_0807B1C4
_0800F96C: .4byte gUnknown_02000384
_0800F970: .4byte g_SoundEnabled
_0800F974: .4byte gUnknown_0807B1CC
_0800F978:
	movs r0, #0xf
	movs r1, #0xb0
	movs r2, #0x58
	ldr r3, _0800F99C @ =gUnknown_0807B1D0
	bl DrawString
_0800F984:
	ldr r0, _0800F9A0 @ =g_MusicEnabled
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F9A8
	movs r0, #0xf
	movs r1, #0xb0
	movs r2, #0x78
	ldr r3, _0800F9A4 @ =gUnknown_0807B1CC
	bl DrawString
	b _0800F9B4
	.align 2, 0
_0800F99C: .4byte gUnknown_0807B1D0
_0800F9A0: .4byte g_MusicEnabled
_0800F9A4: .4byte gUnknown_0807B1CC
_0800F9A8:
	movs r0, #0xf
	movs r1, #0xb0
	movs r2, #0x78
	ldr r3, _0800FA20 @ =gUnknown_0807B1D0
	bl DrawString
_0800F9B4:
	lsls r1, r6, #5
	adds r1, #0x38
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0800FA24 @ =gUnknown_083FDC08
	str r0, [sp, #8]
	movs r0, #0x40
	movs r2, #1
	movs r3, #0
	bl sub_800AACC
	bl VBlankIntrWait
	movs r1, #1
	add r8, r1
	mov r4, r8
	cmp r4, #0xc
	bls _0800F9FE
	movs r0, #0
	mov r8, r0
	ldr r1, _0800FA28 @ =0x040000D4
	ldr r3, _0800FA2C @ =0x05000094
	str r3, [r1]
	mov r4, sl
	str r4, [r1, #4]
	ldr r2, _0800FA30 @ =0x80000004
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	mov r4, sb
	ldrh r0, [r4, #8]
	strh r0, [r4]
	str r4, [r1]
	str r3, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
_0800F9FE:
	ldr r1, _0800FA34 @ =gUnknown_02000388
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0800FA38 @ =0x04000014
	lsrs r1, r0, #1
	strh r1, [r2]
	ldr r1, _0800FA3C @ =0x04000016
	lsrs r0, r0, #2
	strh r0, [r1]
	adds r7, #1
	lsrs r0, r7, #4
	cmp r0, #2
	bhi _0800FA1C
	b _0800F7D6
_0800FA1C:
	movs r7, #0
	b _0800F7D6
	.align 2, 0
_0800FA20: .4byte gUnknown_0807B1D0
_0800FA24: .4byte gUnknown_083FDC08
_0800FA28: .4byte 0x040000D4
_0800FA2C: .4byte 0x05000094
_0800FA30: .4byte 0x80000004
_0800FA34: .4byte gUnknown_02000388
_0800FA38: .4byte 0x04000014
_0800FA3C: .4byte 0x04000016
_0800FA40:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800FA50
sub_800FA50: @ 0x0800FA50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r5, #0
	movs r7, #0
	bl sub_800EBA0
	movs r0, #0
	mov r8, r0
	ldr r1, _0800FAC0 @ =gUnknown_02011A10
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0800FA8E
	ldr r0, [r1, #0x44]
	cmp r0, #0
	bne _0800FA8E
	adds r0, r1, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _0800FA8E
	adds r0, r1, #0
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	bne _0800FA8E
	movs r4, #1
	mov r8, r4
_0800FA8E:
	bl sub_8000B30
	ldr r0, _0800FAC4 @ =gUnknown_020126A2
	mov sl, r0
	movs r4, #2
	rsbs r4, r4, #0
	add r4, sl
	mov sb, r4
_0800FA9E:
	bl sub_8000A28
	ldr r0, _0800FAC8 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800FAE8
	ldr r0, _0800FACC @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	cmp r5, #0
	beq _0800FAD0
	subs r5, #1
	b _0800FAD4
	.align 2, 0
_0800FAC0: .4byte gUnknown_02011A10
_0800FAC4: .4byte gUnknown_020126A2
_0800FAC8: .4byte gUnknown_020003E8
_0800FACC: .4byte gUnknown_087F7920
_0800FAD0:
	ldr r0, _0800FAE4 @ =gUnknown_02018A10
	ldrb r5, [r0]
_0800FAD4:
	cmp r5, #1
	bne _0800FB1A
	mov r0, r8
	cmp r0, #0
	beq _0800FB1A
	movs r5, #0
	b _0800FB1A
	.align 2, 0
_0800FAE4: .4byte gUnknown_02018A10
_0800FAE8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800FB1A
	ldr r0, _0800FB04 @ =gUnknown_087F7920
	movs r1, #2
	bl sub_8003A9C
	ldr r0, _0800FB08 @ =gUnknown_02018A10
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0800FB0C
	adds r5, #1
	b _0800FB0E
	.align 2, 0
_0800FB04: .4byte gUnknown_087F7920
_0800FB08: .4byte gUnknown_02018A10
_0800FB0C:
	movs r5, #0
_0800FB0E:
	cmp r5, #1
	bne _0800FB1A
	mov r4, r8
	cmp r4, #0
	beq _0800FB1A
	movs r5, #2
_0800FB1A:
	ldr r0, _0800FB40 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800FBD4
	ldr r0, _0800FB44 @ =gUnknown_087F793C
	movs r1, #2
	bl sub_8003A9C
	cmp r5, #1
	beq _0800FB74
	cmp r5, #1
	blo _0800FB48
	cmp r5, #2
	beq _0800FBA4
	cmp r5, #3
	beq _0800FBC4
	b _0800FBD4
	.align 2, 0
_0800FB40: .4byte gUnknown_020003E8
_0800FB44: .4byte gUnknown_087F793C
_0800FB48:
	bl sub_8000AF8
	ldr r4, _0800FB70 @ =gUnknown_02000AD8
	movs r0, #0
	bl sub_800F4B8
	str r0, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0800FBB6
	bl sub_8000B6C
	bl sub_8000AC0
	bl sub_8000D70
	movs r0, #1
	b _0800FCD4
	.align 2, 0
_0800FB70: .4byte gUnknown_02000AD8
_0800FB74:
	bl sub_8000AF8
	ldr r4, _0800FBA0 @ =gUnknown_02000AD8
	movs r0, #1
	bl sub_800F4B8
	str r0, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0800FBB6
	bl sub_8000B6C
	bl sub_8000AC0
	bl sub_8000D70
	ldr r0, [r4]
	bl sub_8002B0C
	movs r0, #1
	b _0800FCD4
	.align 2, 0
_0800FBA0: .4byte gUnknown_02000AD8
_0800FBA4:
	bl VBlankIntrWait
	ldr r1, _0800FBC0 @ =gUnknown_02011994
	movs r0, #0
	str r0, [r1]
	bl sub_8000AF8
	bl sub_800F7AC
_0800FBB6:
	bl sub_800EBA0
	bl sub_8000B6C
	b _0800FBD4
	.align 2, 0
_0800FBC0: .4byte gUnknown_02011994
_0800FBC4:
	bl sub_8000AF8
	bl PasswordEntryLoop
	bl sub_800EBA0
	bl sub_8000B6C
_0800FBD4:
	movs r0, #0xf
	movs r1, #0x88
	movs r2, #0x10
	ldr r3, _0800FC00 @ =gUnknown_0807B1D4
	bl DrawString
	movs r0, #0xf
	movs r1, #0x48
	movs r2, #0x30
	ldr r3, _0800FC04 @ =gUnknown_0807B110
	bl DrawString
	mov r0, r8
	cmp r0, #0
	beq _0800FC0C
	movs r0, #0xe
	movs r1, #0x48
	movs r2, #0x48
	ldr r3, _0800FC08 @ =gUnknown_0807B1E0
	bl DrawString
	b _0800FC18
	.align 2, 0
_0800FC00: .4byte gUnknown_0807B1D4
_0800FC04: .4byte gUnknown_0807B110
_0800FC08: .4byte gUnknown_0807B1E0
_0800FC0C:
	movs r0, #0xf
	movs r1, #0x48
	movs r2, #0x48
	ldr r3, _0800FCA8 @ =gUnknown_0807B1E0
	bl DrawString
_0800FC18:
	movs r0, #0xf
	movs r1, #0x48
	movs r2, #0x60
	ldr r3, _0800FCAC @ =gUnknown_0807B1A8
	bl DrawString
	movs r0, #0xf
	movs r1, #0x48
	movs r2, #0x78
	ldr r3, _0800FCB0 @ =gUnknown_0807B1EC
	bl DrawString
	movs r0, #0xf
	movs r1, #0x78
	movs r2, #0x78
	ldr r3, _0800FCB4 @ =gUnknown_0807B1F4
	bl DrawString
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, #0x30
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0800FCB8 @ =gUnknown_083FDC08
	str r0, [sp, #8]
	movs r0, #0x30
	movs r2, #1
	movs r3, #0
	bl sub_800AACC
	bl VBlankIntrWait
	adds r7, #1
	cmp r7, #0xc
	bls _0800FC84
	movs r7, #0
	ldr r1, _0800FCBC @ =0x040000D4
	ldr r3, _0800FCC0 @ =0x05000094
	str r3, [r1]
	mov r4, sl
	str r4, [r1, #4]
	ldr r2, _0800FCC4 @ =0x80000004
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	mov r4, sb
	ldrh r0, [r4, #8]
	strh r0, [r4]
	str r4, [r1]
	str r3, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
_0800FC84:
	ldr r1, _0800FCC8 @ =gUnknown_02000388
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0800FCCC @ =0x04000014
	lsrs r1, r0, #1
	strh r1, [r2]
	ldr r1, _0800FCD0 @ =0x04000016
	lsrs r0, r0, #2
	strh r0, [r1]
	adds r6, #1
	lsrs r0, r6, #4
	cmp r0, #2
	bhi _0800FCA2
	b _0800FA9E
_0800FCA2:
	movs r6, #0
	b _0800FA9E
	.align 2, 0
_0800FCA8: .4byte gUnknown_0807B1E0
_0800FCAC: .4byte gUnknown_0807B1A8
_0800FCB0: .4byte gUnknown_0807B1EC
_0800FCB4: .4byte gUnknown_0807B1F4
_0800FCB8: .4byte gUnknown_083FDC08
_0800FCBC: .4byte 0x040000D4
_0800FCC0: .4byte 0x05000094
_0800FCC4: .4byte 0x80000004
_0800FCC8: .4byte gUnknown_02000388
_0800FCCC: .4byte 0x04000014
_0800FCD0: .4byte 0x04000016
_0800FCD4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800FCE4
sub_800FCE4: @ 0x0800FCE4
	push {r4, lr}
	ldr r0, _0800FD98 @ =gUnknown_020119FC
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800FD9C @ =0x04000010
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #5
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800FDA0 @ =0x00000209
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0800FDA4 @ =0x040000D4
	ldr r1, _0800FDA8 @ =gUnknown_08078DA4
	str r1, [r0]
	ldr r1, _0800FDAC @ =0x06004000
	str r1, [r0, #4]
	ldr r1, _0800FDB0 @ =0x84001000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800FDB4 @ =gUnknown_080786A8
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _0800FDB8 @ =0x84000400
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800FDBC @ =gUnknown_08078BA4
	str r1, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _0800FDC0 @ =0x84000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800FDC4 @ =gUnknown_080759E8
	str r1, [r0]
	ldr r1, _0800FDC8 @ =0x06008000
	str r1, [r0, #4]
	ldr r1, _0800FDCC @ =0x84002000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800FDD0 @ =gUnknown_080752EC
	str r1, [r0]
	ldr r1, _0800FDD4 @ =0x06001000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r4, _0800FDD8 @ =gUnknown_083D65F4
	movs r0, #0xd
	movs r1, #3
	adds r2, r4, #0
	bl sub_801A434
	movs r0, #0xf
	movs r1, #1
	adds r2, r4, #0
	bl sub_801A434
	ldr r0, _0800FDDC @ =gUnknown_0201197C
	movs r1, #1
	str r1, [r0]
	ldr r0, _0800FDE0 @ =gUnknown_02011994
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FD98: .4byte gUnknown_020119FC
_0800FD9C: .4byte 0x04000010
_0800FDA0: .4byte 0x00000209
_0800FDA4: .4byte 0x040000D4
_0800FDA8: .4byte gUnknown_08078DA4
_0800FDAC: .4byte 0x06004000
_0800FDB0: .4byte 0x84001000
_0800FDB4: .4byte gUnknown_080786A8
_0800FDB8: .4byte 0x84000400
_0800FDBC: .4byte gUnknown_08078BA4
_0800FDC0: .4byte 0x84000080
_0800FDC4: .4byte gUnknown_080759E8
_0800FDC8: .4byte 0x06008000
_0800FDCC: .4byte 0x84002000
_0800FDD0: .4byte gUnknown_080752EC
_0800FDD4: .4byte 0x06001000
_0800FDD8: .4byte gUnknown_083D65F4
_0800FDDC: .4byte gUnknown_0201197C
_0800FDE0: .4byte gUnknown_02011994

	thumb_func_start sub_800FDE4
sub_800FDE4: @ 0x0800FDE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	bl sub_800FCE4
	bl sub_8000B30
	movs r0, #8
	mov sl, r0
	ldr r4, _0800FE0C @ =0x040000D4
	ldr r1, _0800FE10 @ =0x05000002
	mov sb, r1
	ldr r7, _0800FE14 @ =gUnknown_020126A2
	subs r7, #2
	ldr r0, _0800FE18 @ =0x8000000E
	mov r8, r0
	b _0800FE6E
	.align 2, 0
_0800FE0C: .4byte 0x040000D4
_0800FE10: .4byte 0x05000002
_0800FE14: .4byte gUnknown_020126A2
_0800FE18: .4byte 0x8000000E
_0800FE1C:
	ldr r5, _0800FE90 @ =gUnknown_02000388
	ldr r0, [r5]
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0800FE34
	movs r0, #0xd
	movs r1, #0x4e
	movs r2, #0x90
	ldr r3, _0800FE94 @ =gUnknown_0807B200
	bl DrawString
_0800FE34:
	ldr r1, _0800FE98 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	bl VBlankIntrWait
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0800FE68
	movs r6, #0
	mov r0, sb
	str r0, [r4]
	ldr r1, _0800FE9C @ =gUnknown_020126A2
	str r1, [r4, #4]
	mov r0, r8
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r7, #0x1c]
	strh r0, [r7]
	str r7, [r4]
	mov r1, sb
	str r1, [r4, #4]
	mov r0, r8
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0800FE68:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
_0800FE6E:
	bl sub_8000A28
	ldr r0, _0800FEA0 @ =gUnknown_020003E8
	ldrh r1, [r0]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0800FE1C
	bl sub_8000AC0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FE90: .4byte gUnknown_02000388
_0800FE94: .4byte gUnknown_0807B200
_0800FE98: .4byte gUnknown_02011994
_0800FE9C: .4byte gUnknown_020126A2
_0800FEA0: .4byte gUnknown_020003E8

	thumb_func_start sub_800FEA4
sub_800FEA4: @ 0x0800FEA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r1, #0
	mov r8, r1
	movs r6, #0
	cmp r0, #7
	bhi _0800FF74
	lsls r0, r0, #2
	ldr r1, _0800FEC4 @ =_0800FEC8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800FEC4: .4byte _0800FEC8
_0800FEC8: @ jump table
	.4byte _0800FEE8 @ case 0
	.4byte _0800FF04 @ case 1
	.4byte _0800FF20 @ case 2
	.4byte _0800FF74 @ case 3
	.4byte _0800FF74 @ case 4
	.4byte _0800FF74 @ case 5
	.4byte _0800FF3C @ case 6
	.4byte _0800FF58 @ case 7
_0800FEE8:
	ldr r1, _0800FEFC @ =gUnknown_020003A0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800FEF2
	b _080100BA
_0800FEF2:
	movs r0, #1
	str r0, [r1]
	ldr r7, _0800FF00 @ =gUnknown_0807DAA8
	movs r6, #3
	b _0800FF76
	.align 2, 0
_0800FEFC: .4byte gUnknown_020003A0
_0800FF00: .4byte gUnknown_0807DAA8
_0800FF04:
	ldr r1, _0800FF18 @ =gUnknown_020003A0
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0800FF0E
	b _080100BA
_0800FF0E:
	movs r0, #1
	str r0, [r1, #8]
	ldr r7, _0800FF1C @ =gUnknown_0807DAB4
	movs r6, #9
	b _0800FF76
	.align 2, 0
_0800FF18: .4byte gUnknown_020003A0
_0800FF1C: .4byte gUnknown_0807DAB4
_0800FF20:
	ldr r1, _0800FF34 @ =gUnknown_020003A0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0800FF2A
	b _080100BA
_0800FF2A:
	movs r0, #1
	str r0, [r1, #4]
	ldr r7, _0800FF38 @ =gUnknown_0807DAC0
	movs r6, #6
	b _0800FF76
	.align 2, 0
_0800FF34: .4byte gUnknown_020003A0
_0800FF38: .4byte gUnknown_0807DAC0
_0800FF3C:
	ldr r1, _0800FF50 @ =gUnknown_020003A0
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _0800FF46
	b _080100BA
_0800FF46:
	movs r0, #1
	str r0, [r1, #0x10]
	ldr r7, _0800FF54 @ =gUnknown_0807DAD0
	movs r6, #0xf
	b _0800FF76
	.align 2, 0
_0800FF50: .4byte gUnknown_020003A0
_0800FF54: .4byte gUnknown_0807DAD0
_0800FF58:
	ldr r1, _0800FF6C @ =gUnknown_020003A0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0800FF62
	b _080100BA
_0800FF62:
	movs r0, #1
	str r0, [r1, #0xc]
	ldr r7, _0800FF70 @ =gUnknown_0807DADC
	movs r6, #0xc
	b _0800FF76
	.align 2, 0
_0800FF6C: .4byte gUnknown_020003A0
_0800FF70: .4byte gUnknown_0807DADC
_0800FF74:
	movs r7, #0
_0800FF76:
	movs r5, #0
	cmp r7, #0
	bne _0800FF7E
	b _080100BA
_0800FF7E:
	bl sub_8000AC0
	ldr r4, _0801005C @ =0x040000D4
	ldr r0, _08010060 @ =gUnknown_0802B62C
	str r0, [r4]
	ldr r0, _08010064 @ =0x06004000
	str r0, [r4, #4]
	ldr r0, _08010068 @ =0x84001000
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801006C @ =gUnknown_0802AF30
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _08010070 @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08010074 @ =gUnknown_0802B42C
	str r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _08010078 @ =0x84000080
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_8000B30
	lsls r6, r6, #0x18
	str r6, [sp, #0xc]
	ldr r6, _0801007C @ =0x05000094
	mov sl, r6
	ldr r0, _08010080 @ =0x80000004
	mov sb, r0
_0800FFC2:
	bl sub_8000A28
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _08010084 @ =gUnknown_083FDC08
	str r0, [sp, #8]
	movs r0, #0x7c
	movs r1, #0x66
	movs r2, #0
	ldr r6, [sp, #0xc]
	lsrs r3, r6, #0x18
	bl sub_800AACC
	movs r0, #0xf
	movs r1, #0x88
	movs r2, #0x10
	ldr r3, _08010088 @ =gUnknown_0807DAEC
	bl DrawString
	movs r0, #0xf
	movs r1, #0x26
	movs r2, #0x34
	ldr r3, _0801008C @ =gUnknown_0807DAF8
	bl DrawString
	movs r0, #0xf
	movs r1, #0x5c
	movs r2, #0x4a
	adds r3, r7, #0
	bl DrawString
	bl VBlankIntrWait
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0xc
	bls _08010034
	movs r6, #0
	mov r8, r6
	mov r0, sl
	str r0, [r4]
	ldr r1, _08010090 @ =gUnknown_020126A2
	str r1, [r4, #4]
	mov r6, sb
	str r6, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _08010094 @ =gUnknown_020126A0
	ldrh r0, [r1, #8]
	strh r0, [r1]
	str r1, [r4]
	mov r6, sl
	str r6, [r4, #4]
	mov r0, sb
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08010034:
	ldr r1, _08010098 @ =gUnknown_02000388
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0801009C @ =0x04000014
	lsrs r1, r0, #1
	strh r1, [r2]
	ldr r1, _080100A0 @ =0x04000016
	lsrs r0, r0, #2
	strh r0, [r1]
	adds r5, #1
	cmp r5, #0xf0
	bls _080100A8
	ldr r0, _080100A4 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	bne _080100BA
	b _080100B6
	.align 2, 0
_0801005C: .4byte 0x040000D4
_08010060: .4byte gUnknown_0802B62C
_08010064: .4byte 0x06004000
_08010068: .4byte 0x84001000
_0801006C: .4byte gUnknown_0802AF30
_08010070: .4byte 0x84000400
_08010074: .4byte gUnknown_0802B42C
_08010078: .4byte 0x84000080
_0801007C: .4byte 0x05000094
_08010080: .4byte 0x80000004
_08010084: .4byte gUnknown_083FDC08
_08010088: .4byte gUnknown_0807DAEC
_0801008C: .4byte gUnknown_0807DAF8
_08010090: .4byte gUnknown_020126A2
_08010094: .4byte gUnknown_020126A0
_08010098: .4byte gUnknown_02000388
_0801009C: .4byte 0x04000014
_080100A0: .4byte 0x04000016
_080100A4: .4byte gUnknown_020003E8
_080100A8:
	ldr r0, _080100CC @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080100B6
	adds r5, #0x3c
_080100B6:
	cmp r7, #0
	bne _0800FFC2
_080100BA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080100CC: .4byte gUnknown_020003E8

	thumb_func_start sub_80100D0
sub_80100D0: @ 0x080100D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r1, #0
	movs r5, #0
	cmp r5, r2
	bhs _080100EC
	movs r1, #0x20
_080100E2:
	adds r0, r7, r5
	strb r1, [r0]
	adds r5, #1
	cmp r5, r2
	blo _080100E2
_080100EC:
	subs r5, r2, #1
	adds r2, r2, r7
	mov r8, r2
	b _0801010E
_080100F4:
	adds r4, r7, r5
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r6, r0, #0
	subs r5, #1
_0801010E:
	cmp r6, #9
	bls _08010116
	cmp r5, #0
	bgt _080100F4
_08010116:
	adds r0, r7, r5
	adds r1, r6, #0
	adds r1, #0x30
	strb r1, [r0]
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8010130
sub_8010130: @ 0x08010130
	push {r4, r5, lr}
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r1, _080101FC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	str r5, [r1, #4]
	ldr r0, _08010200 @ =0x85004000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08010204 @ =gUnknown_020119FC
	str r3, [r0]
	ldr r0, _08010208 @ =0x04000010
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x13
	movs r4, #0x9a
	lsls r4, r4, #5
	adds r0, r4, #0
	strh r0, [r2]
	adds r2, #8
	movs r0, #5
	strh r0, [r2]
	adds r2, #2
	ldr r4, _0801020C @ =0x0000020D
	adds r0, r4, #0
	strh r0, [r2]
	ldr r0, _08010210 @ =gUnknown_0807B908
	str r0, [r1]
	ldr r0, _08010214 @ =0x06004000
	str r0, [r1, #4]
	ldr r4, _08010218 @ =0x84001000
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801021C @ =gUnknown_0807B20C
	str r0, [r1]
	str r5, [r1, #4]
	ldr r5, _08010220 @ =0x84000400
	str r5, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08010224 @ =gUnknown_0807B708
	str r0, [r1]
	movs r2, #0xa0
	lsls r2, r2, #0x13
	str r2, [r1, #4]
	ldr r0, _08010228 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801022C @ =gUnknown_08020E9C
	str r0, [r1]
	ldr r0, _08010230 @ =0x0600C000
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08010234 @ =gUnknown_0802049C
	str r0, [r1]
	ldr r0, _08010238 @ =0x06001000
	str r0, [r1, #4]
	str r5, [r1, #8]
	ldr r0, [r1, #8]
	strh r3, [r2]
	ldr r4, _0801023C @ =gUnknown_02010B20
	adds r0, r4, #0
	bl sub_801A41C
	adds r0, r4, #0
	bl sub_801A424
	movs r0, #1
	bl sub_8001CD0
	ldr r2, _08010240 @ =gUnknown_083FDC08
	movs r0, #0
	movs r1, #0
	bl sub_801A434
	ldr r2, _08010244 @ =gUnknown_083D65F4
	movs r0, #0xf
	movs r1, #1
	bl sub_801A434
	ldr r0, _08010248 @ =gUnknown_087F6E90
	movs r1, #0
	bl sub_8003A5C
	ldr r1, _0801024C @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080101FC: .4byte 0x040000D4
_08010200: .4byte 0x85004000
_08010204: .4byte gUnknown_020119FC
_08010208: .4byte 0x04000010
_0801020C: .4byte 0x0000020D
_08010210: .4byte gUnknown_0807B908
_08010214: .4byte 0x06004000
_08010218: .4byte 0x84001000
_0801021C: .4byte gUnknown_0807B20C
_08010220: .4byte 0x84000400
_08010224: .4byte gUnknown_0807B708
_08010228: .4byte 0x84000080
_0801022C: .4byte gUnknown_08020E9C
_08010230: .4byte 0x0600C000
_08010234: .4byte gUnknown_0802049C
_08010238: .4byte 0x06001000
_0801023C: .4byte gUnknown_02010B20
_08010240: .4byte gUnknown_083FDC08
_08010244: .4byte gUnknown_083D65F4
_08010248: .4byte gUnknown_087F6E90
_0801024C: .4byte gUnknown_02011994

	thumb_func_start sub_8010250
sub_8010250: @ 0x08010250
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	movs r0, #0
	mov sb, r0
	bl sub_8002984
	movs r6, #0
	mov r0, sp
	strb r6, [r0]
	strb r6, [r0, #1]
	mov r0, r8
	bl sub_8010130
	ldr r1, _0801038C @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	bl sub_8000B30
	movs r7, #0
	add r5, sp, #4
	mov r2, r8
	lsls r2, r2, #2
	mov sl, r2
_08010288:
	bl sub_8000A28
	movs r0, #0xf
	movs r1, #0x28
	movs r2, #0x60
	ldr r3, _08010390 @ =gUnknown_0807DB18
	bl DrawString
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #5
	bl sub_80100D0
	movs r0, #0xf
	movs r1, #0xc0
	movs r2, #0x60
	adds r3, r5, #0
	bl DrawString
	movs r0, #0xf
	movs r1, #0x28
	movs r2, #0x78
	ldr r3, _08010394 @ =gUnknown_0807DB20
	bl DrawString
	ldr r0, _08010398 @ =gUnknown_020119B0
	add r0, sl
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #5
	bl sub_80100D0
	movs r0, #0xf
	movs r1, #0xc0
	movs r2, #0x78
	adds r3, r5, #0
	bl DrawString
	cmp r6, #0x3b
	ble _08010334
	cmp r6, #0x3c
	bne _080102EE
	ldr r0, _0801039C @ =gUnknown_02012638
	ldr r1, [r0]
	movs r0, #0x64
	muls r0, r1, r0
	adds r7, r7, r0
	ldr r0, _080103A0 @ =gUnknown_087F7BA4
	movs r1, #1
	bl sub_8003A9C
_080102EE:
	movs r0, #0xf
	movs r1, #0x28
	movs r2, #0x18
	ldr r3, _080103A4 @ =gUnknown_0807DB34
	bl DrawString
	ldr r0, _0801039C @ =gUnknown_02012638
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #2
	bl sub_80100D0
	movs r0, #0xf
	movs r1, #0xb0
	movs r2, #0x18
	adds r3, r5, #0
	bl DrawString
	movs r0, #0xf
	movs r1, #0xc8
	movs r2, #0x18
	ldr r3, _080103A8 @ =gUnknown_0807DB3C
	bl DrawString
	adds r0, r5, #0
	movs r1, #0x64
	movs r2, #3
	bl sub_80100D0
	movs r0, #0xf
	movs r1, #0xd4
	movs r2, #0x18
	adds r3, r5, #0
	bl DrawString
_08010334:
	cmp r6, #0x77
	ble _08010410
	mov r0, r8
	subs r0, #9
	cmp r0, #2
	bhi _080103B4
	cmp r6, #0x78
	bne _0801035C
	ldr r0, _080103AC @ =gUnknown_02013110
	ldr r1, [r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r7, r7, r0
	ldr r0, _080103A0 @ =gUnknown_087F7BA4
	movs r1, #1
	bl sub_8003A9C
_0801035C:
	movs r0, #0xf
	movs r1, #0x28
	movs r2, #0x30
	ldr r3, _080103B0 @ =gUnknown_0807DB40
	bl DrawString
	ldr r0, _080103AC @ =gUnknown_02013110
	ldr r0, [r0]
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r0, r5, #0
	movs r2, #5
	bl sub_80100D0
	movs r0, #0xf
	movs r1, #0xc0
	movs r2, #0x30
	adds r3, r5, #0
	bl DrawString
	b _08010410
	.align 2, 0
_0801038C: .4byte gUnknown_02011994
_08010390: .4byte gUnknown_0807DB18
_08010394: .4byte gUnknown_0807DB20
_08010398: .4byte gUnknown_020119B0
_0801039C: .4byte gUnknown_02012638
_080103A0: .4byte gUnknown_087F7BA4
_080103A4: .4byte gUnknown_0807DB34
_080103A8: .4byte gUnknown_0807DB3C
_080103AC: .4byte gUnknown_02013110
_080103B0: .4byte gUnknown_0807DB40
_080103B4:
	cmp r6, #0x78
	bne _080103CA
	ldr r0, _08010454 @ =gUnknown_02012688
	ldr r1, [r0]
	movs r0, #0x32
	muls r0, r1, r0
	adds r7, r7, r0
	ldr r0, _08010458 @ =gUnknown_087F7BA4
	movs r1, #1
	bl sub_8003A9C
_080103CA:
	movs r0, #0xf
	movs r1, #0x28
	movs r2, #0x30
	ldr r3, _0801045C @ =gUnknown_0807DB50
	bl DrawString
	ldr r0, _08010454 @ =gUnknown_02012688
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #2
	bl sub_80100D0
	movs r0, #0xf
	movs r1, #0xb0
	movs r2, #0x30
	adds r3, r5, #0
	bl DrawString
	movs r0, #0xf
	movs r1, #0xc8
	movs r2, #0x30
	ldr r3, _08010460 @ =gUnknown_0807DB3C
	bl DrawString
	adds r0, r5, #0
	movs r1, #0x32
	movs r2, #2
	bl sub_80100D0
	movs r0, #0xf
	movs r1, #0xd8
	movs r2, #0x30
	adds r3, r5, #0
	bl DrawString
_08010410:
	cmp r6, #0xb3
	ble _080104A2
	mov r0, r8
	subs r0, #9
	cmp r0, #2
	bhi _0801046C
	cmp r6, #0xb4
	bne _0801042E
	ldr r0, _08010464 @ =gUnknown_020126FC
	ldr r0, [r0]
	adds r7, r7, r0
	ldr r0, _08010458 @ =gUnknown_087F7BA4
	movs r1, #1
	bl sub_8003A9C
_0801042E:
	movs r0, #0xf
	movs r1, #0x28
	movs r2, #0x48
	ldr r3, _08010468 @ =gUnknown_0807DB64
	bl DrawString
	ldr r0, _08010464 @ =gUnknown_020126FC
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #5
	bl sub_80100D0
	movs r0, #0xf
	movs r1, #0xc0
	movs r2, #0x48
	adds r3, r5, #0
	bl DrawString
	b _080104A2
	.align 2, 0
_08010454: .4byte gUnknown_02012688
_08010458: .4byte gUnknown_087F7BA4
_0801045C: .4byte gUnknown_0807DB50
_08010460: .4byte gUnknown_0807DB3C
_08010464: .4byte gUnknown_020126FC
_08010468: .4byte gUnknown_0807DB64
_0801046C:
	cmp r6, #0xb4
	bne _0801047E
	ldr r0, _08010508 @ =gUnknown_02012694
	ldr r0, [r0]
	adds r7, r7, r0
	ldr r0, _0801050C @ =gUnknown_087F7BA4
	movs r1, #1
	bl sub_8003A9C
_0801047E:
	movs r0, #0xf
	movs r1, #0x28
	movs r2, #0x48
	ldr r3, _08010510 @ =gUnknown_0807DB70
	bl DrawString
	ldr r0, _08010508 @ =gUnknown_02012694
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #5
	bl sub_80100D0
	movs r0, #0xf
	movs r1, #0xc0
	movs r2, #0x48
	adds r3, r5, #0
	bl DrawString
_080104A2:
	ldr r0, _08010514 @ =gUnknown_020119B0
	mov r2, sl
	adds r1, r2, r0
	ldr r0, [r1]
	cmp r7, r0
	bls _080104B0
	str r7, [r1]
_080104B0:
	bl VBlankIntrWait
	movs r0, #1
	add sb, r0
	mov r2, sb
	cmp r2, #0xc
	bls _080104E0
	movs r0, #0
	mov sb, r0
	ldr r2, _08010518 @ =0x040000D4
	ldr r4, _0801051C @ =0x05000094
	str r4, [r2]
	ldr r1, _08010520 @ =gUnknown_020126A2
	str r1, [r2, #4]
	ldr r3, _08010524 @ =0x80000004
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	subs r1, #2
	ldrh r0, [r1, #8]
	strh r0, [r1]
	str r1, [r2]
	str r4, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
_080104E0:
	ldr r1, _08010528 @ =gUnknown_02000388
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0801052C @ =0x04000014
	lsrs r1, r0, #1
	strh r1, [r2]
	ldr r1, _08010530 @ =0x04000016
	lsrs r0, r0, #2
	strh r0, [r1]
	adds r6, #1
	cmp r6, #0xf0
	ble _08010538
	ldr r0, _08010534 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	bne _08010568
	b _08010288
	.align 2, 0
_08010508: .4byte gUnknown_02012694
_0801050C: .4byte gUnknown_087F7BA4
_08010510: .4byte gUnknown_0807DB70
_08010514: .4byte gUnknown_020119B0
_08010518: .4byte 0x040000D4
_0801051C: .4byte 0x05000094
_08010520: .4byte gUnknown_020126A2
_08010524: .4byte 0x80000004
_08010528: .4byte gUnknown_02000388
_0801052C: .4byte 0x04000014
_08010530: .4byte 0x04000016
_08010534: .4byte gUnknown_020003E8
_08010538:
	cmp r6, #0xb3
	ble _08010540
	movs r6, #0xf0
	b _08010552
_08010540:
	cmp r6, #0x77
	ble _08010548
	movs r6, #0xb4
	b _08010552
_08010548:
	cmp r6, #0x3b
	ble _08010550
	movs r6, #0x78
	b _08010552
_08010550:
	movs r6, #0x3c
_08010552:
	ldr r0, _08010564 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08010560
	b _08010288
_08010560:
	adds r6, #0x3c
	b _08010288
	.align 2, 0
_08010564: .4byte gUnknown_020003E8
_08010568:
	mov r0, r8
	bl sub_800FEA4
	ldr r0, _0801059C @ =gUnknown_02012688
	movs r1, #0
	str r1, [r0]
	ldr r0, _080105A0 @ =gUnknown_020126FC
	str r1, [r0]
	ldr r0, _080105A4 @ =gUnknown_02012694
	str r1, [r0]
	ldr r0, _080105A8 @ =gUnknown_02000AD8
	ldr r0, [r0]
	bl sub_8002C88
	bl sub_8003A8C
	bl sub_8000AC0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801059C: .4byte gUnknown_02012688
_080105A0: .4byte gUnknown_020126FC
_080105A4: .4byte gUnknown_02012694
_080105A8: .4byte gUnknown_02000AD8

	thumb_func_start DrawCredits
DrawCredits: @ 0x080105AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x64
	bl sub_8002984
	movs r0, #0
	add r1, sp, #0x30
	mov sb, r1
	add r4, sp, #0x60
	movs r1, #0xa8
	mov r3, sb
	mov r2, sp
_080105C8:
	stm r2!, {r0}
	stm r3!, {r1}
	adds r1, #0x10
	adds r0, #1
	cmp r0, #0xb
	ble _080105C8
	movs r7, #0xc
	movs r2, #0
	str r2, [sp, #0x60]
	ldr r1, _08010654 @ =0x040000D4
	str r4, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08010658 @ =0x85004000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r2, [r0]
	subs r1, #0xd4
	movs r2, #0xc1
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0801065C @ =gUnknown_083D65F4
	movs r0, #0xf
	movs r1, #1
	bl sub_801A434
	ldr r1, _08010660 @ =0x04000040
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08010664 @ =0x000098A0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0x3f
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08010668 @ =gUnknown_02011994
	movs r0, #1
	str r0, [r1]
	bl sub_8000B30
	ldr r0, _0801066C @ =CreditStrings
	mov r8, r0
_08010632:
	movs r6, #0
	mov r5, sb
	mov r4, sp
_08010638:
	ldr r2, [r5]
	adds r0, r2, #7
	cmp r0, #0x9e
	bhi _08010670
	ldr r0, [r4]
	lsls r0, r0, #2
	add r0, r8
	ldr r3, [r0]
	movs r0, #0xf
	movs r1, #0x18
	bl DrawString
	b _08010680
	.align 2, 0
_08010654: .4byte 0x040000D4
_08010658: .4byte 0x85004000
_0801065C: .4byte gUnknown_083D65F4
_08010660: .4byte 0x04000040
_08010664: .4byte 0x000098A0
_08010668: .4byte gUnknown_02011994
_0801066C: .4byte CreditStrings
_08010670:
	movs r0, #8
	rsbs r0, r0, #0
	cmp r2, r0
	bgt _08010680
	movs r0, #0xb8
	str r0, [r5]
	str r7, [r4]
	adds r7, #1
_08010680:
	ldr r0, [r5]
	subs r0, #1
	str r0, [r5]
	ldr r0, [r4]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0x3c
	bne _0801069A
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0801069A:
	adds r5, #4
	adds r4, #4
	add r0, sp, #0x2c
	cmp r4, r0
	ble _08010638
	cmp r6, #0xb
	bhi _080106B0
	movs r0, #1
	bl sub_8001CD0
	b _08010632
_080106B0:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8000AC0
	bl sub_8003A8C
	add sp, #0x64
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80106D4
sub_80106D4: @ 0x080106D4
	movs r0, #1
	bx lr

	thumb_func_start sub_80106D8
sub_80106D8: @ 0x080106D8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _08010700
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #6
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_08010700:
	adds r0, r4, #0
	bl sub_800709C
	ldr r1, _08010714 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010718
	movs r0, #0
	b _0801071A
	.align 2, 0
_08010714: .4byte 0x000002B7
_08010718:
	movs r0, #0x3c
_0801071A:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8010724
sub_8010724: @ 0x08010724
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _080107A8
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08010748
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	rsbs r0, r0, #0
	str r0, [r1]
	b _08010756
_08010748:
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r4, #0
	adds r1, #0x9c
	ldr r1, [r1]
	str r1, [r0]
_08010756:
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r1, [r0]
	cmp r1, #0
	bge _0801076C
	adds r2, #0x10
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #0
	bgt _0801077C
_0801076C:
	cmp r1, #0
	ble _08010786
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bge _08010786
_0801077C:
	movs r2, #0x94
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r0, #0
	str r0, [r1]
_08010786:
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r4, r0
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_080107A8:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080107CA
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #2
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r1, [r1]
	adds r0, r0, r1
	movs r2, #6
	ldrsh r1, [r4, r2]
	adds r1, #1
	bl sub_8003B78
	b _080107E4
_080107CA:
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #2
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r1, [r1]
	subs r0, r0, r1
	movs r2, #6
	ldrsh r1, [r4, r2]
	adds r1, #1
	bl sub_8003B78
_080107E4:
	cmp r0, #0
	beq _08010840
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0801080A
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #2
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r1, [r1]
	adds r0, r0, r1
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #0xa
	bl sub_8003B78
	b _08010824
_0801080A:
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #2
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r1, [r1]
	subs r0, r0, r1
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #0xa
	bl sub_8003B78
_08010824:
	cmp r0, #0
	bne _08010840
	adds r0, r4, #0
	bl sub_800709C
	ldr r1, _0801083C @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010840
	movs r0, #0
	b _08010842
	.align 2, 0
_0801083C: .4byte 0x000002B7
_08010840:
	movs r0, #0x3c
_08010842:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_801084C
sub_801084C: @ 0x0801084C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r6, #0
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _08010884
	ldr r0, [r5, #0x78]
	cmp r0, #2
	bne _08010868
	ldr r0, _08010908 @ =gUnknown_087F7AFC
	movs r1, #1
	bl sub_8003A9C
_08010868:
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_8006FFC
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
_08010884:
	adds r0, r5, #0
	bl sub_800709C
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrh r1, [r0]
	cmp r1, #0
	beq _0801093A
	movs r3, #0xad
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0801093A
	ldr r0, [r5, #0x78]
	cmp r0, #4
	bne _080108B8
	cmp r1, #0x10
	bne _080108B8
	ldr r0, _0801090C @ =gUnknown_087F7AE0
	movs r1, #1
	bl sub_8003A9C
_080108B8:
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, _08010910 @ =0x0000028A
	adds r1, r5, r2
	ldrh r1, [r1]
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r5, r3
	ldrh r2, [r2]
	bl sub_801A44C
	adds r6, r0, #0
	cmp r6, #0
	beq _0801093A
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08010914
	ldr r3, [r6, #4]
	lsls r1, r3, #0x10
	ldr r0, [r5]
	adds r0, r0, r1
	ldr r4, [r6, #8]
	lsls r2, r4, #0x10
	ldr r1, [r5, #4]
	adds r1, r1, r2
	ldr r2, [r6, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r6, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r5, [sp, #4]
	bl sub_800A770
	b _0801093A
	.align 2, 0
_08010908: .4byte gUnknown_087F7AFC
_0801090C: .4byte gUnknown_087F7AE0
_08010910: .4byte 0x0000028A
_08010914:
	ldr r2, [r6, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r5]
	subs r0, r0, r1
	ldr r4, [r6, #8]
	lsls r3, r4, #0x10
	ldr r1, [r5, #4]
	adds r1, r1, r3
	ldr r3, [r6, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r6, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r5, [sp, #4]
	bl sub_800A770
_0801093A:
	ldr r1, _08010948 @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801094C
	movs r0, #0
	b _0801094E
	.align 2, 0
_08010948: .4byte 0x000002B7
_0801094C:
	movs r0, #0x3c
_0801094E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8010958
sub_8010958: @ 0x08010958
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r4, #0
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _08010982
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_8006FFC
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
_08010982:
	adds r0, r5, #0
	bl sub_800709C
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrh r1, [r0]
	cmp r1, #0
	beq _08010A3A
	movs r3, #0xad
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08010A3A
	ldr r0, [r5, #0x78]
	cmp r0, #8
	bne _080109B6
	cmp r1, #0xa
	bne _080109B6
	ldr r0, _08010A08 @ =gUnknown_087F7BC0
	movs r1, #1
	bl sub_8003A9C
_080109B6:
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, _08010A0C @ =0x0000028A
	adds r1, r5, r2
	ldrh r1, [r1]
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r5, r3
	ldrh r2, [r2]
	bl sub_801A44C
	adds r4, r0, #0
	cmp r4, #0
	beq _08010A3A
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08010A10
	ldr r1, [r4, #4]
	lsls r1, r1, #0x10
	ldr r0, [r5]
	adds r0, r0, r1
	ldr r2, [r4, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r5, #4]
	adds r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x8c
	ldrb r2, [r2]
	adds r3, r5, #0
	adds r3, #0x90
	ldr r3, [r3]
	adds r4, r5, #0
	adds r4, #0x94
	ldr r4, [r4]
	str r4, [sp]
	bl sub_80082DC
	b _08010A3A
	.align 2, 0
_08010A08: .4byte gUnknown_087F7BC0
_08010A0C: .4byte 0x0000028A
_08010A10:
	ldr r1, [r4, #4]
	lsls r1, r1, #0x10
	ldr r0, [r5]
	subs r0, r0, r1
	ldr r2, [r4, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r5, #4]
	adds r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x8c
	ldrb r2, [r2]
	adds r3, r5, #0
	adds r3, #0x90
	ldr r3, [r3]
	rsbs r3, r3, #0
	adds r4, r5, #0
	adds r4, #0x94
	ldr r4, [r4]
	str r4, [sp]
	bl sub_80082DC
_08010A3A:
	ldr r1, _08010A48 @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010A4C
	movs r0, #0
	b _08010A4E
	.align 2, 0
_08010A48: .4byte 0x000002B7
_08010A4C:
	movs r0, #0x3c
_08010A4E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8010A58
sub_8010A58: @ 0x08010A58
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _08010ADA
	ldr r0, [r4, #0x78]
	subs r0, #1
	cmp r0, #7
	bhi _08010ABC
	lsls r0, r0, #2
	ldr r1, _08010A78 @ =_08010A7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010A78: .4byte _08010A7C
_08010A7C: @ jump table
	.4byte _08010A9C @ case 0
	.4byte _08010AB4 @ case 1
	.4byte _08010A9C @ case 2
	.4byte _08010AA4 @ case 3
	.4byte _08010AB4 @ case 4
	.4byte _08010AB4 @ case 5
	.4byte _08010AB4 @ case 6
	.4byte _08010AB4 @ case 7
_08010A9C:
	ldr r0, _08010AA0 @ =gUnknown_087F79C8
	b _08010AA6
	.align 2, 0
_08010AA0: .4byte gUnknown_087F79C8
_08010AA4:
	ldr r0, _08010AB0 @ =gUnknown_087F7B6C
_08010AA6:
	movs r1, #1
	bl sub_8003A9C
	b _08010ABC
	.align 2, 0
_08010AB0: .4byte gUnknown_087F7B6C
_08010AB4:
	ldr r0, _08010AF4 @ =gUnknown_087F7B50
	movs r1, #1
	bl sub_8003A9C
_08010ABC:
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_08010ADA:
	ldr r1, _08010AF8 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010B10
	subs r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #7
	bls _08010AFC
	movs r0, #0x3c
	b _08010B12
	.align 2, 0
_08010AF4: .4byte gUnknown_087F7B50
_08010AF8: .4byte 0x000002B7
_08010AFC:
	ldr r1, _08010B0C @ =0x000002B9
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #5
	bls _08010B10
	movs r0, #1
	rsbs r0, r0, #0
	b _08010B12
	.align 2, 0
_08010B0C: .4byte 0x000002B9
_08010B10:
	movs r0, #0
_08010B12:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8010B1C
sub_8010B1C: @ 0x08010B1C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _08010BAC
	adds r0, r4, #0
	bl sub_8006580
	ldr r0, [r4, #0x78]
	subs r0, #1
	cmp r0, #8
	bhi _08010B98
	lsls r0, r0, #2
	ldr r1, _08010B40 @ =_08010B44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010B40: .4byte _08010B44
_08010B44: @ jump table
	.4byte _08010B68 @ case 0
	.4byte _08010B80 @ case 1
	.4byte _08010B68 @ case 2
	.4byte _08010B70 @ case 3
	.4byte _08010B70 @ case 4
	.4byte _08010B78 @ case 5
	.4byte _08010B78 @ case 6
	.4byte _08010B80 @ case 7
	.4byte _08010B90 @ case 8
_08010B68:
	ldr r0, _08010B6C @ =gUnknown_087F7A00
	b _08010B82
	.align 2, 0
_08010B6C: .4byte gUnknown_087F7A00
_08010B70:
	ldr r0, _08010B74 @ =gUnknown_087F7510
	b _08010B82
	.align 2, 0
_08010B74: .4byte gUnknown_087F7510
_08010B78:
	ldr r0, _08010B7C @ =gUnknown_087F74F4
	b _08010B82
	.align 2, 0
_08010B7C: .4byte gUnknown_087F74F4
_08010B80:
	ldr r0, _08010B8C @ =gUnknown_087F74D8
_08010B82:
	movs r1, #1
	bl sub_8003A9C
	b _08010B98
	.align 2, 0
_08010B8C: .4byte gUnknown_087F74D8
_08010B90:
	ldr r0, _08010BC4 @ =gUnknown_087F75B8
	movs r1, #1
	bl sub_8003A9C
_08010B98:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_08010BAC:
	ldr r1, _08010BC8 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010BBA
	movs r0, #0
	str r0, [r4, #0x20]
_08010BBA:
	movs r0, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08010BC4: .4byte gUnknown_087F75B8
_08010BC8: .4byte 0x000002B7

	thumb_func_start sub_8010BCC
sub_8010BCC: @ 0x08010BCC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _08010C1C
	ldr r0, _08010BF8 @ =gUnknown_020146D4
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	cmp r0, #0x17
	beq _08010BFC
	movs r0, #0x3d
	adds r1, r4, #0
	bl sub_8006F10
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_8010A58
	b _08010C2C
	.align 2, 0
_08010BF8: .4byte gUnknown_020146D4
_08010BFC:
	adds r0, r4, #0
	bl sub_8006580
	ldr r0, _08010C34 @ =gUnknown_087F7510
	movs r1, #1
	bl sub_8003A9C
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_08010C1C:
	ldr r1, _08010C38 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010C2A
	movs r0, #0
	str r0, [r4, #0x20]
_08010C2A:
	movs r0, #0
_08010C2C:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08010C34: .4byte gUnknown_087F7510
_08010C38: .4byte 0x000002B7

	thumb_func_start sub_8010C3C
sub_8010C3C: @ 0x08010C3C
	movs r0, #1
	bx lr

	thumb_func_start sub_8010C40
sub_8010C40: @ 0x08010C40
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x4c]
	adds r0, r2, #1
	movs r1, #3
	ands r0, r1
	str r0, [r4, #0x4c]
	cmp r2, #3
	bne _08010CF2
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x37
	bhi _08010CDE
	adds r0, r4, #0
	bl sub_800A700
	cmp r0, #0x1f
	bhi _08010CDE
	ldr r0, _08010C78 @ =gUnknown_020146D4
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	subs r0, #9
	cmp r0, #1
	bhi _08010C7C
	movs r0, #4
	b _08010CF4
	.align 2, 0
_08010C78: .4byte gUnknown_020146D4
_08010C7C:
	adds r0, r4, #0
	bl sub_800A65C
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08010CA6
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r2, r0, #0
	cmp r2, #0
	bne _08010CD2
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	b _08010CC2
_08010CA6:
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r2, r0, #0
	cmp r2, #0
	bne _08010CD2
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
_08010CC2:
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r2, r0, #0
	cmp r2, #0
	beq _08010CDA
_08010CD2:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08010CF2
_08010CDA:
	movs r0, #0xb
	b _08010CF4
_08010CDE:
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x10
	bls _08010CF2
	adds r0, r4, #0
	bl sub_800A65C
	movs r0, #4
	b _08010CF4
_08010CF2:
	movs r0, #1
_08010CF4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8010CFC
sub_8010CFC: @ 0x08010CFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x4c]
	adds r0, r2, #1
	movs r1, #3
	ands r0, r1
	str r0, [r4, #0x4c]
	cmp r2, #3
	bne _08010DA0
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x28
	bls _08010D7A
	adds r0, r4, #0
	bl sub_800A65C
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08010D42
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r2, r0, #0
	cmp r2, #0
	bne _08010D6E
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	b _08010D5E
_08010D42:
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r2, r0, #0
	cmp r2, #0
	bne _08010D6E
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
_08010D5E:
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r2, r0, #0
	cmp r2, #0
	beq _08010D76
_08010D6E:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08010DA0
_08010D76:
	movs r0, #0xb
	b _08010DA2
_08010D7A:
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x10
	bls _08010DA0
	adds r0, r4, #0
	bl sub_800A62C
	cmp r0, #0
	beq _08010D9C
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08010D98
	movs r0, #1
	b _08010D9A
_08010D98:
	movs r0, #0
_08010D9A:
	str r0, [r4, #8]
_08010D9C:
	movs r0, #4
	b _08010DA2
_08010DA0:
	movs r0, #1
_08010DA2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8010DA8
sub_8010DA8: @ 0x08010DA8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x4c]
	adds r0, r5, #1
	movs r6, #7
	ands r0, r6
	str r0, [r4, #0x4c]
	cmp r5, #3
	bhi _08010E50
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x2f
	bhi _08010E4C
	ldr r0, [r4, #0x18]
	cmp r0, #0xb
	beq _08010E4C
	adds r0, r4, #0
	bl sub_800A700
	cmp r0, #0x1f
	bhi _08010E4C
	ldr r0, _08010DE4 @ =gUnknown_020146D4
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	subs r0, #9
	cmp r0, #1
	bhi _08010DE8
	movs r0, #0
	b _08010EE6
	.align 2, 0
_08010DE4: .4byte gUnknown_020146D4
_08010DE8:
	adds r0, r4, #0
	bl sub_800A65C
	ands r5, r6
	str r5, [r4, #0x4c]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08010E16
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _08010E42
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	b _08010E32
_08010E16:
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _08010E42
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
_08010E32:
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	beq _08010EDC
_08010E42:
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	bne _08010EDC
	b _08010EE0
_08010E4C:
	movs r0, #0
	b _08010EE6
_08010E50:
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x2f
	bhi _08010EE4
	ldr r0, [r4, #0x18]
	cmp r0, #0xb
	beq _08010EE4
	adds r0, r4, #0
	bl sub_800A700
	cmp r0, #0x1f
	bhi _08010EE4
	ldr r0, _08010EA4 @ =gUnknown_020146D4
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	subs r0, #9
	cmp r0, #1
	bls _08010EE4
	adds r0, r4, #0
	bl sub_800A65C
	ands r5, r6
	str r5, [r4, #0x4c]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08010EA8
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _08010ED4
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	b _08010EC4
	.align 2, 0
_08010EA4: .4byte gUnknown_020146D4
_08010EA8:
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _08010ED4
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
_08010EC4:
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	beq _08010EDC
_08010ED4:
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _08010EE0
_08010EDC:
	movs r0, #0xb
	b _08010EEA
_08010EE0:
	movs r0, #1
	b _08010EEA
_08010EE4:
	movs r0, #1
_08010EE6:
	str r0, [r4, #8]
	movs r0, #4
_08010EEA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8010EF0
sub_8010EF0: @ 0x08010EF0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x4c]
	adds r0, r5, #1
	movs r1, #7
	ands r0, r1
	str r0, [r4, #0x4c]
	cmp r5, #3
	bhi _08010F5A
	cmp r5, #3
	bne _08010F0C
	ldr r0, [r4, #0x18]
	cmp r0, #0x13
	bne _08010F64
_08010F0C:
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x30
	bls _08010F56
	ldr r0, [r4, #0x18]
	cmp r0, #0x13
	beq _08010F56
	adds r0, r4, #0
	bl sub_800A700
	cmp r0, #0x1f
	bhi _08010F56
	adds r0, r4, #0
	bl sub_800A65C
	movs r0, #7
	ands r0, r5
	str r0, [r4, #0x4c]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08010FB8
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _08010FE4
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	b _08010FD4
_08010F56:
	movs r0, #0
	b _08010FF2
_08010F5A:
	cmp r5, #7
	bne _08010F6E
	ldr r0, [r4, #0x18]
	cmp r0, #0x13
	beq _08010F6E
_08010F64:
	adds r0, r4, #0
	bl sub_800A65C
_08010F6A:
	movs r0, #0x13
	b _08010FF6
_08010F6E:
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x30
	bls _08010FF0
	ldr r0, [r4, #0x18]
	cmp r0, #0x13
	beq _08010FF0
	adds r0, r4, #0
	bl sub_800A700
	cmp r0, #0x1f
	bhi _08010FF0
	adds r0, r4, #0
	bl sub_800A65C
	movs r0, #7
	ands r0, r5
	str r0, [r4, #0x4c]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08010FB8
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _08010FE4
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	b _08010FD4
_08010FB8:
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _08010FE4
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
_08010FD4:
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	beq _08010F6A
_08010FE4:
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	bne _08010F6A
	movs r0, #1
	b _08010FF6
_08010FF0:
	movs r0, #1
_08010FF2:
	str r0, [r4, #8]
	movs r0, #4
_08010FF6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8010FFC
sub_8010FFC: @ 0x08010FFC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800A65C
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x3f
	bhi _08011018
	ldr r0, [r4, #0x18]
	cmp r0, #0xb
	beq _08011018
	movs r0, #0xb
	b _0801101A
_08011018:
	movs r0, #4
_0801101A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8011020
sub_8011020: @ 0x08011020
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x4c]
	adds r1, #1
	movs r0, #7
	ands r0, r1
	str r0, [r2, #0x4c]
	cmp r1, #6
	ble _08011042
	ldr r0, [r2, #0x18]
	cmp r0, #0x13
	beq _08011042
	adds r0, r2, #0
	bl sub_800A65C
	movs r0, #0x13
	b _08011044
_08011042:
	movs r0, #1
_08011044:
	pop {r1}
	bx r1

	thumb_func_start sub_8011048
sub_8011048: @ 0x08011048
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _08011098
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_801A44C
	cmp r0, #0
	beq _08011086
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #4]
	rsbs r2, r2, #0
	ldr r3, [r0, #8]
	rsbs r3, r3, #0
	ldr r0, [r0, #0x10]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_80040F4
_08011086:
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #6
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_08011098:
	movs r0, #8
	str r0, [r4, #0x28]
	adds r0, r4, #0
	bl sub_800709C
	ldr r1, _080110B0 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080110B4
	movs r0, #0
	b _080110B6
	.align 2, 0
_080110B0: .4byte 0x000002B7
_080110B4:
	movs r0, #0x3c
_080110B6:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80110C0
sub_80110C0: @ 0x080110C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r6, [r5, #0x48]
	cmp r6, #0
	bne _08011112
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_8006FFC
	movs r3, #0x93
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	movs r1, #3
	movs r2, #0
	bl sub_801A44C
	adds r4, r0, #0
	cmp r4, #0
	beq _08011100
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #4]
	rsbs r2, r2, #0
	ldr r3, [r4, #8]
	rsbs r3, r3, #0
	ldr r0, [r4, #0x10]
	str r0, [sp]
	adds r0, r5, #0
	bl sub_80040F4
_08011100:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
_08011112:
	adds r0, r5, #0
	bl sub_800709C
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r2, r5, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _080111A8
	movs r1, #0xad
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080111A8
	movs r3, #0x93
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	adds r3, #0x3e
	adds r1, r5, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_801A44C
	adds r4, r0, #0
	cmp r4, #0
	beq _080111A8
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0801117E
	ldr r1, [r4, #4]
	lsls r1, r1, #0x10
	ldr r0, [r5]
	adds r0, r0, r1
	ldr r2, [r4, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r5, #4]
	adds r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x8c
	ldrb r2, [r2]
	adds r3, r5, #0
	adds r3, #0x90
	ldr r3, [r3]
	adds r4, r5, #0
	adds r4, #0x94
	ldr r4, [r4]
	str r4, [sp]
	bl sub_80082DC
	b _080111A8
_0801117E:
	ldr r1, [r4, #4]
	lsls r1, r1, #0x10
	ldr r0, [r5]
	subs r0, r0, r1
	ldr r2, [r4, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r5, #4]
	adds r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x8c
	ldrb r2, [r2]
	adds r3, r5, #0
	adds r3, #0x90
	ldr r3, [r3]
	rsbs r3, r3, #0
	adds r4, r5, #0
	adds r4, #0x94
	ldr r4, [r4]
	str r4, [sp]
	bl sub_80082DC
_080111A8:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0x19
	bne _080111EC
	movs r3, #0xad
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080111EC
	subs r1, #0x40
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_801A44C
	adds r4, r0, #0
	cmp r4, #0
	beq _080111EC
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #4]
	rsbs r2, r2, #0
	ldr r3, [r4, #8]
	rsbs r3, r3, #0
	ldr r0, [r4, #0x10]
	str r0, [sp]
	adds r0, r5, #0
	bl sub_80040F4
_080111EC:
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #0x18
	bls _080111FC
	movs r0, #8
	str r0, [r5, #0x28]
_080111FC:
	ldr r1, _0801120C @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011210
	movs r0, #0
	b _08011212
	.align 2, 0
_0801120C: .4byte 0x000002B7
_08011210:
	movs r0, #0x3c
_08011212:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_801121C
sub_801121C: @ 0x0801121C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r6, #0
	movs r0, #0xa
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _0801124A
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_8006FFC
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
_0801124A:
	adds r0, r5, #0
	bl sub_800709C
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r5, r3
	ldrh r0, [r2]
	cmp r0, #0
	beq _080112EE
	movs r1, #0xad
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080112EE
	subs r3, #0x40
	adds r0, r5, r3
	ldr r0, [r0]
	adds r3, #0x3e
	adds r1, r5, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_801A44C
	adds r6, r0, #0
	cmp r6, #0
	beq _080112EE
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _08011296
	ldr r0, _080112C4 @ =gUnknown_087F75B8
	movs r1, #1
	bl sub_8003A9C
	movs r0, #1
	str r0, [r5, #0x44]
_08011296:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _080112C8
	ldr r3, [r6, #4]
	lsls r1, r3, #0x10
	ldr r0, [r5]
	adds r0, r0, r1
	ldr r4, [r6, #8]
	lsls r2, r4, #0x10
	ldr r1, [r5, #4]
	adds r1, r1, r2
	ldr r2, [r6, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r6, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r5, [sp, #4]
	bl sub_800A770
	b _080112EE
	.align 2, 0
_080112C4: .4byte gUnknown_087F75B8
_080112C8:
	ldr r2, [r6, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r5]
	subs r0, r0, r1
	ldr r4, [r6, #8]
	lsls r3, r4, #0x10
	ldr r1, [r5, #4]
	adds r1, r1, r3
	ldr r3, [r6, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r6, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r5, [sp, #4]
	bl sub_800A770
_080112EE:
	ldr r1, _080112FC @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011300
	movs r0, #0
	b _0801130C
	.align 2, 0
_080112FC: .4byte 0x000002B7
_08011300:
	adds r0, r5, #0
	bl sub_8006580
	movs r0, #0
	str r0, [r5, #0x20]
	movs r0, #0x3c
_0801130C:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8011314
sub_8011314: @ 0x08011314
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, [r4, #0x48]
	cmp r2, #0
	bne _0801133A
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #2
	str r1, [r0]
	str r2, [sp]
	adds r0, r4, #0
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_0801133A:
	adds r0, r4, #0
	bl sub_800709C
	ldr r1, _08011350 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011354
	movs r0, #0
	b _08011356
	.align 2, 0
_08011350: .4byte 0x000002B7
_08011354:
	movs r0, #0x3c
_08011356:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8011360
sub_8011360: @ 0x08011360
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bne _080113BC
	movs r0, #0x94
	lsls r0, r0, #2
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_8006FFC
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _0801138A
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _08011392
_0801138A:
	movs r3, #0x98
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, _0801141C @ =0xFFFE0000
_08011392:
	str r0, [r1]
	str r0, [r4]
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r1, _0801141C @ =0xFFFE0000
	str r1, [r0]
	movs r2, #0x95
	lsls r2, r2, #2
	adds r0, r6, r2
	str r1, [r0]
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r6, #0x48]
_080113BC:
	ldr r4, _08011420 @ =gUnknown_020154A0
	ldr r5, [r4]
	movs r0, #0
	str r0, [r4]
	adds r0, r6, #0
	bl sub_800709C
	adds r7, r0, #0
	str r5, [r4]
	movs r3, #0x93
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r2, _08011424 @ =0x0000028A
	adds r1, r6, r2
	ldrh r1, [r1]
	adds r3, #0x40
	adds r2, r6, r3
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _0801144E
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08011428
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_800A770
	b _0801144E
	.align 2, 0
_0801141C: .4byte 0xFFFE0000
_08011420: .4byte gUnknown_020154A0
_08011424: .4byte 0x0000028A
_08011428:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_800A770
_0801144E:
	cmp r7, #0
	bne _08011456
	movs r0, #0
	b _08011458
_08011456:
	movs r0, #0x3c
_08011458:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8011460
sub_8011460: @ 0x08011460
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x4c]
	adds r2, #1
	cmp r2, #3
	bhi _08011504
	movs r0, #7
	ands r0, r2
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x4f
	bhi _080114E2
	ldr r0, [r4, #0x18]
	cmp r0, #0xb
	beq _080114E2
	adds r0, r4, #0
	bl sub_800A65C
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080114AC
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r2, r0, #0
	cmp r2, #0
	bne _080114D8
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	b _080114C8
_080114AC:
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r2, r0, #0
	cmp r2, #0
	bne _080114D8
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
_080114C8:
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r2, r0, #0
	cmp r2, #0
	beq _0801157C
_080114D8:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _0801157C
	b _080115EE
_080114E2:
	movs r1, #0
	str r1, [r4, #8]
	movs r2, #0x99
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
	subs r2, #0x10
	adds r0, r4, r2
	str r1, [r0]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	subs r2, #4
	b _080115E2
_08011504:
	cmp r2, #7
	bhi _080115AC
	movs r0, #7
	ands r0, r2
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x4f
	bhi _08011584
	ldr r0, [r4, #0x18]
	cmp r0, #0xb
	beq _08011584
	adds r0, r4, #0
	bl sub_800A65C
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08011548
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r2, r0, #0
	cmp r2, #0
	bne _08011574
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	b _08011564
_08011548:
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r2, r0, #0
	cmp r2, #0
	bne _08011574
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
_08011564:
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r2, r0, #0
	cmp r2, #0
	beq _0801157C
_08011574:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080115EE
_0801157C:
	movs r0, #8
	str r0, [r4, #0x4c]
	movs r0, #0xb
	b _080115F0
_08011584:
	movs r0, #1
	str r0, [r4, #8]
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	movs r2, #0x95
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _080115A8 @ =0xFFFF0000
	str r1, [r0]
	subs r2, #4
	b _080115E2
	.align 2, 0
_080115A8: .4byte 0xFFFF0000
_080115AC:
	cmp r2, #9
	bhi _080115B4
	str r2, [r4, #0x4c]
	b _080115EE
_080115B4:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r1, [r4, #4]
	ldr r0, [r0]
	cmp r1, r0
	blo _080115EA
	str r2, [r4, #0x4c]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	adds r2, #4
_080115E2:
	adds r0, r4, r2
	str r1, [r0]
	movs r0, #4
	b _080115F0
_080115EA:
	movs r0, #0
	str r0, [r4, #0x4c]
_080115EE:
	movs r0, #1
_080115F0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80115F8
sub_80115F8: @ 0x080115F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_8002984
	movs r0, #0x11
	bl sub_800B640
	ldr r0, _080116C8 @ =gUnknown_02012704
	movs r1, #0
	str r1, [r0]
	ldr r0, _080116CC @ =gUnknown_02012680
	str r1, [r0]
	ldr r1, _080116D0 @ =gUnknown_080D2D50
	movs r0, #0
	bl sub_801A42C
	movs r6, #0
	ldr r0, _080116D4 @ =gUnknown_02018A50
	mov r8, r0
	mov sb, r6
	movs r1, #0xaa
	lsls r1, r1, #2
	add r1, r8
	mov sl, r1
	mov r5, r8
_08011632:
	ldr r0, _080116D8 @ =gUnknown_02000AE0
	lsls r1, r6, #2
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _080116EC
	ldr r0, _080116DC @ =gUnknown_087F8B6C
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r0, r0, #0x10
	str r0, [r5]
	mov r0, r8
	adds r0, #4
	add r0, sb
	movs r1, #0xcf
	lsls r1, r1, #0x10
	str r1, [r0]
	movs r2, #0
	str r2, [r5, #8]
	movs r7, #9
	cmp r6, #0
	beq _0801166C
	movs r7, #0xa
	cmp r6, #3
	beq _0801166C
	adds r7, r6, #0
	cmp r6, #4
	bne _0801166C
	movs r7, #0xb
_0801166C:
	movs r0, #0x93
	lsls r0, r0, #2
	add r0, r8
	add r0, sb
	ldr r1, _080116E0 @ =gUnknown_0841E11C
	str r1, [r0]
	movs r2, #0
	str r2, [sp, #4]
	ldr r1, _080116E4 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #2
	add r0, r8
	add r0, sb
	str r0, [r1, #4]
	ldr r0, _080116E8 @ =0x8500000B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, r6, #1
	adds r0, r4, #0
	adds r1, r7, #0
	ldr r2, _080116E0 @ =gUnknown_0841E11C
	bl sub_801A434
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, r8
	add r0, sb
	movs r1, #1
	str r1, [r0]
	mov r2, sl
	strh r4, [r2]
	strb r4, [r2, #0x14]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0xff
	movs r3, #5
	bl sub_800ACF8
	movs r1, #1
	str r1, [r5, #0x20]
	b _080116EE
	.align 2, 0
_080116C8: .4byte gUnknown_02012704
_080116CC: .4byte gUnknown_02012680
_080116D0: .4byte gUnknown_080D2D50
_080116D4: .4byte gUnknown_02018A50
_080116D8: .4byte gUnknown_02000AE0
_080116DC: .4byte gUnknown_087F8B6C
_080116E0: .4byte gUnknown_0841E11C
_080116E4: .4byte 0x040000D4
_080116E8: .4byte 0x8500000B
_080116EC:
	str r0, [r5, #0x20]
_080116EE:
	movs r2, #0xb0
	lsls r2, r2, #2
	add sb, r2
	add sl, r2
	adds r5, r5, r2
	adds r6, #1
	cmp r6, #8
	ble _08011632
	ldr r0, _080117DC @ =gUnknown_087F61F8
	movs r1, #0
	bl sub_8003A5C
	ldr r5, _080117E0 @ =gUnknown_08742500
	adds r0, r5, #0
	bl sub_8003B2C
	ldr r4, _080117E4 @ =gUnknown_02000810
	movs r1, #1
	str r1, [r4, #0x20]
	ldr r0, _080117E8 @ =gUnknown_02013114
	str r1, [r0]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
	adds r0, r4, #0
	bl sub_800A2D4
	adds r0, r5, #0
	bl sub_8005C8C
	ldr r0, _080117EC @ =gUnknown_02015538
	movs r5, #0
	str r5, [r0]
	ldr r1, _080117F0 @ =gUnknown_020003EC
	ldr r0, [r4]
	str r0, [r1]
	ldr r1, _080117F4 @ =gUnknown_020003F4
	ldr r0, [r4, #4]
	str r0, [r1]
	bl sub_800BB2C
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #7
	bl sub_800ACF8
	bl sub_8000B30
	movs r0, #0
	mov sb, r0
	ldr r7, _080117F8 @ =gUnknown_02018A50
	mov r8, r4
	ldr r1, _080117FC @ =gUnknown_02011994
	mov sl, r1
_08011760:
	ldr r0, _08011800 @ =gUnknown_020154A0
	mov r2, sb
	str r2, [r0]
	mov r0, r8
	bl sub_8006F60
	movs r0, #0x94
	lsls r0, r0, #2
	add r0, r8
	bl sub_800700C
	mov r0, r8
	bl sub_800AB80
	adds r4, r7, #0
	movs r5, #0
	movs r6, #8
_08011782:
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08011794
	adds r0, r4, #0
	bl sub_800AB80
_08011794:
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r5, r5, r0
	subs r6, #1
	cmp r6, #0
	bge _08011782
	movs r0, #1
	mov r1, sl
	str r0, [r1]
	ldr r4, _08011804 @ =gUnknown_020119FC
	str r0, [r4]
	bl VBlankIntrWait
	mov r2, sb
	mov r0, sl
	str r2, [r0]
	str r2, [r4]
	bl sub_8000A28
	ldr r0, _08011808 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08011760
	bl sub_8000AC0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080117DC: .4byte gUnknown_087F61F8
_080117E0: .4byte gUnknown_08742500
_080117E4: .4byte gUnknown_02000810
_080117E8: .4byte gUnknown_02013114
_080117EC: .4byte gUnknown_02015538
_080117F0: .4byte gUnknown_020003EC
_080117F4: .4byte gUnknown_020003F4
_080117F8: .4byte gUnknown_02018A50
_080117FC: .4byte gUnknown_02011994
_08011800: .4byte gUnknown_020154A0
_08011804: .4byte gUnknown_020119FC
_08011808: .4byte gUnknown_020003E8

	thumb_func_start sub_801180C
sub_801180C: @ 0x0801180C
	push {r4, lr}
	ldr r1, _0801182C @ =gUnknown_02000394
	ldr r0, [r1]
	adds r2, r0, #1
	adds r4, r1, #0
	cmp r2, #4
	bhi _0801183C
	ldr r1, _08011830 @ =gUnknown_020003A0
	adds r3, r4, #0
	lsls r0, r2, #2
	adds r1, r0, r1
_08011822:
	ldr r0, [r1]
	cmp r0, #0
	beq _08011834
	str r2, [r3]
	b _08011842
	.align 2, 0
_0801182C: .4byte gUnknown_02000394
_08011830: .4byte gUnknown_020003A0
_08011834:
	adds r1, #4
	adds r2, #1
	cmp r2, #4
	bls _08011822
_0801183C:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4]
_08011842:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8011848
sub_8011848: @ 0x08011848
	movs r0, #0
	bx lr

	thumb_func_start sub_801184C
sub_801184C: @ 0x0801184C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _0801189C
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, r1
	str r5, [r0]
	movs r2, #0x99
	lsls r2, r2, #2
	adds r0, r4, r2
	str r5, [r0]
	subs r1, #0x10
	adds r0, r4, r1
	str r5, [r0]
	subs r2, #0x10
	adds r0, r4, r2
	str r5, [r0]
	adds r1, #8
	adds r0, r4, r1
	str r5, [r0]
	adds r2, #8
	adds r0, r4, r2
	str r5, [r0]
	str r5, [r4, #0x28]
	ldr r0, _080118C4 @ =gUnknown_087F7698
	movs r1, #0
	bl sub_8003A9C
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_0801189C:
	adds r0, r4, #0
	bl sub_800709C
	adds r1, r0, #0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _080118D6
	ldr r2, _080118C8 @ =0x000002B7
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080118CC
	movs r0, #0xff
	lsls r0, r0, #0x18
	str r0, [r4]
	str r0, [r4, #4]
	movs r0, #1
	str r0, [r4, #0x44]
	b _0801190A
	.align 2, 0
_080118C4: .4byte gUnknown_087F7698
_080118C8: .4byte 0x000002B7
_080118CC:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_800BB64
	b _0801190A
_080118D6:
	ldr r0, [r4, #0x40]
	cmp r0, #0x3b
	bhi _080118E2
	adds r0, #1
	str r0, [r4, #0x40]
	b _0801190A
_080118E2:
	ldr r0, _08011914 @ =gUnknown_02013118
	movs r1, #0
	str r1, [r0]
	ldr r0, _08011918 @ =gUnknown_02012630
	str r1, [r0]
	ldr r1, _0801191C @ =gUnknown_02000800
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl sub_8012F9C
	movs r0, #0x3c
	str r0, [r4, #0x28]
	ldr r0, _08011920 @ =gUnknown_020003EC
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _08011924 @ =gUnknown_020003F4
	ldr r0, [r0]
	str r0, [r4, #4]
_0801190A:
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08011914: .4byte gUnknown_02013118
_08011918: .4byte gUnknown_02012630
_0801191C: .4byte gUnknown_02000800
_08011920: .4byte gUnknown_020003EC
_08011924: .4byte gUnknown_020003F4

	thumb_func_start sub_8011928
sub_8011928: @ 0x08011928
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _0801196E
	ldr r0, _08011994 @ =gUnknown_087F7708
	movs r1, #0
	bl sub_8003A9C
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	ldr r0, [r4, #4]
	ldr r1, _08011998 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #4]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x38
	bl sub_80040F4
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #0xff
	movs r3, #2
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_0801196E:
	adds r0, r4, #0
	bl sub_800709C
	adds r1, r4, #0
	bl sub_800BB64
	ldr r0, [r4, #0x44]
	adds r0, #1
	str r0, [r4, #0x44]
	cmp r0, #0xe
	bls _0801199C
	ldr r0, [r4, #0x28]
	cmp r0, #0x13
	bhi _0801198E
	movs r0, #0x14
	str r0, [r4, #0x28]
_0801198E:
	movs r0, #1
	b _0801199E
	.align 2, 0
_08011994: .4byte gUnknown_087F7708
_08011998: .4byte 0xFFFF0000
_0801199C:
	movs r0, #0
_0801199E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80119A8
sub_80119A8: @ 0x080119A8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _08011A6A
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r4, r2
	str r5, [r0]
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r4, r1
	str r5, [r0]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x38
	bl sub_80040F4
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #7
	bl sub_800ACF8
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08011A26
	movs r2, #2
	ldrsh r0, [r4, r2]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	adds r1, #0x10
	bl sub_8003C5C
	cmp r0, #0
	beq _08011A5A
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r2, #6
	ldrsh r1, [r4, r2]
	adds r1, #0x10
	bl sub_8003C5C
	cmp r0, #0
	bne _08011A5A
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0xff
	movs r3, #4
	bl sub_800ACF8
	b _08011A5A
_08011A26:
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	adds r1, #0x10
	bl sub_8003C5C
	cmp r0, #0
	beq _08011A5A
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r2, #6
	ldrsh r1, [r4, r2]
	adds r1, #0x10
	bl sub_8003C5C
	cmp r0, #0
	bne _08011A5A
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0xff
	movs r3, #4
	bl sub_800ACF8
_08011A5A:
	movs r0, #1
	str r0, [r4, #0x48]
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08011A96
_08011A6A:
	adds r0, r4, #0
	bl sub_800709C
	adds r1, r4, #0
	bl sub_800BB64
	ldr r0, _08011A88 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011A8C
	movs r0, #0x18
	b _08011B50
	.align 2, 0
_08011A88: .4byte gUnknown_020003E8
_08011A8C:
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08011A9A
_08011A96:
	movs r0, #5
	b _08011B50
_08011A9A:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011AA6
	movs r0, #0xb
	b _08011B50
_08011AA6:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011AB4
	bl sub_801180C
_08011AB4:
	ldr r0, _08011AC8 @ =gUnknown_020003F8
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08011ACC
	movs r0, #2
	b _08011B50
	.align 2, 0
_08011AC8: .4byte gUnknown_020003F8
_08011ACC:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08011B00
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r4, r2
	str r3, [r0]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _08011AFC @ =0xFFFE2000
	str r0, [r1]
	adds r2, #8
	adds r1, r4, r2
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1]
	str r5, [r4, #8]
	movs r0, #4
	b _08011B50
	.align 2, 0
_08011AFC: .4byte 0xFFFE2000
_08011B00:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08011B2E
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	str r2, [r0]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0xf0
	lsls r0, r0, #9
	str r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1]
	str r2, [r4, #8]
	movs r0, #4
	b _08011B50
_08011B2E:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08011B44
	ldr r0, _08011B40 @ =gUnknown_02015590
	movs r1, #0x8c
	str r1, [r0, #0x10]
	movs r1, #0x96
	b _08011B4C
	.align 2, 0
_08011B40: .4byte gUnknown_02015590
_08011B44:
	ldr r0, _08011B58 @ =gUnknown_02015590
	movs r1, #0x63
	str r1, [r0, #0x10]
	movs r1, #0x65
_08011B4C:
	str r1, [r0, #0x18]
	movs r0, #0
_08011B50:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08011B58: .4byte gUnknown_02015590

	thumb_func_start sub_8011B5C
sub_8011B5C: @ 0x08011B5C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _08011BF8
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08011B7C
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _08011B78 @ =0xFFFE2000
	b _08011B86
	.align 2, 0
_08011B78: .4byte 0xFFFE2000
_08011B7C:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0xf0
	lsls r0, r0, #9
_08011B86:
	str r0, [r1]
	movs r4, #0x94
	lsls r4, r4, #2
	adds r1, r5, r4
	ldr r0, [r1]
	cmp r0, #0
	ble _08011BA4
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bge _08011BA4
	movs r0, #0
	str r0, [r1]
_08011BA4:
	movs r4, #0x94
	lsls r4, r4, #2
	adds r1, r5, r4
	ldr r0, [r1]
	cmp r0, #0
	bge _08011BC0
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	ble _08011BC0
	movs r0, #0
	str r0, [r1]
_08011BC0:
	movs r4, #0x96
	lsls r4, r4, #2
	adds r1, r5, r4
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1]
	movs r4, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x38
	bl sub_80040F4
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
	ldr r1, _08011C3C @ =gUnknown_02015590
	movs r0, #0x63
	str r0, [r1, #0x10]
	movs r0, #0x65
	str r0, [r1, #0x18]
_08011BF8:
	movs r1, #0xad
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08011C1C
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _08011C1C
	ldr r0, _08011C40 @ =gUnknown_087F760C
	movs r1, #0
	bl sub_8003A9C
_08011C1C:
	adds r0, r5, #0
	bl sub_800709C
	adds r1, r5, #0
	bl sub_800BB64
	ldr r4, _08011C44 @ =gUnknown_020003E8
	ldrh r1, [r4]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08011C48
	movs r0, #5
	b _08011D14
	.align 2, 0
_08011C3C: .4byte gUnknown_02015590
_08011C40: .4byte gUnknown_087F760C
_08011C44: .4byte gUnknown_020003E8
_08011C48:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011C54
	movs r0, #0xb
	b _08011D14
_08011C54:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011C62
	bl sub_801180C
_08011C62:
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011C72
	movs r0, #0x18
	b _08011D14
_08011C72:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08011C82
	movs r0, #2
	b _08011D14
_08011C82:
	ldr r0, _08011CBC @ =gUnknown_020003F8
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08011CC4
	movs r4, #0x98
	lsls r4, r4, #2
	adds r1, r5, r4
	ldr r0, [r1]
	ldr r2, _08011CC0 @ =0xFFFE2000
	cmp r0, r2
	beq _08011CB4
	subs r4, #0x10
	adds r0, r5, r4
	str r3, [r0]
	str r2, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1]
_08011CB4:
	str r6, [r5, #8]
	movs r0, #0
	b _08011D14
	.align 2, 0
_08011CBC: .4byte gUnknown_020003F8
_08011CC0: .4byte 0xFFFE2000
_08011CC4:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08011CFA
	movs r4, #0x98
	lsls r4, r4, #2
	adds r1, r5, r4
	ldr r0, [r1]
	movs r3, #0xf0
	lsls r3, r3, #9
	cmp r0, r3
	beq _08011CF4
	subs r4, #0x10
	adds r0, r5, r4
	str r2, [r0]
	str r3, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1]
_08011CF4:
	str r2, [r5, #8]
	movs r0, #0
	b _08011D14
_08011CFA:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r5, r2
	str r1, [r0]
	movs r4, #0x94
	lsls r4, r4, #2
	adds r0, r5, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08011D12
	movs r0, #0
	b _08011D14
_08011D12:
	movs r0, #1
_08011D14:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8011D1C
sub_8011D1C: @ 0x08011D1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x48]
	cmp r4, #0
	bne _08011E26
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r6, r5, r0
	ldr r0, [r6]
	cmp r0, #1
	beq _08011D72
	ldr r0, _08011DA8 @ =gUnknown_087F775C
	movs r1, #0
	bl sub_8003A9C
	movs r2, #0x95
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [r1]
	adds r2, #8
	adds r0, r5, r2
	str r4, [r0]
	ldr r0, _08011DAC @ =gUnknown_02000394
	ldr r0, [r0]
	cmp r0, #0
	bne _08011D64
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r1]
_08011D64:
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _08011DB0 @ =0xFFF90000
	str r1, [r0]
	movs r0, #1
	str r0, [r6]
_08011D72:
	ldr r0, _08011DB4 @ =gUnknown_020003F8
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08011DBC
	movs r2, #0x94
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0
	str r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1]
	adds r2, #0x10
	adds r1, r5, r2
	ldr r0, _08011DB8 @ =0xFFFE0000
	str r0, [r1]
	movs r0, #1
	str r0, [r5, #8]
	b _08011DFA
	.align 2, 0
_08011DA8: .4byte gUnknown_087F775C
_08011DAC: .4byte gUnknown_02000394
_08011DB0: .4byte 0xFFF90000
_08011DB4: .4byte gUnknown_020003F8
_08011DB8: .4byte 0xFFFE0000
_08011DBC:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08011DEC
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	str r2, [r0]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r1]
	str r2, [r5, #8]
	b _08011DFA
_08011DEC:
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r5, r2
	str r1, [r0]
	adds r2, #0x10
	adds r0, r5, r2
	str r1, [r0]
_08011DFA:
	movs r4, #1
	str r4, [r5, #0x48]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x38
	bl sub_80040F4
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	movs r3, #3
	bl sub_800ACF8
	ldr r1, _08011E54 @ =gUnknown_02015590
	movs r0, #0x63
	str r0, [r1, #0x10]
	movs r0, #0x65
	str r0, [r1, #0x18]
_08011E26:
	ldr r4, _08011E58 @ =gUnknown_020003E8
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011E38
	bl sub_801180C
_08011E38:
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011E60
	ldr r0, _08011E5C @ =gUnknown_02000394
	ldr r0, [r0]
	cmp r0, #2
	beq _08011E50
	cmp r0, #4
	bne _08011E60
_08011E50:
	movs r0, #0x18
	b _080120FE
	.align 2, 0
_08011E54: .4byte gUnknown_02015590
_08011E58: .4byte gUnknown_020003E8
_08011E5C: .4byte gUnknown_02000394
_08011E60:
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08011E6E
	b _08012084
_08011E6E:
	adds r0, r5, #0
	bl sub_800709C
	mov r8, r0
	adds r1, r5, #0
	bl sub_800BB64
	ldr r0, [r5, #0x18]
	cmp r0, #9
	bne _08011E84
	b _08011F88
_08011E84:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08011F04
	movs r2, #2
	ldrsh r0, [r5, r2]
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r1, #0x30
	bl sub_8003B78
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r0, #0x16
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r1, #0x30
	bl sub_8003B78
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r0, #0x16
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r1, #0x40
	bl sub_8003B78
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r0, #4
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r1, #0x30
	bl sub_8003B78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r7, #0
	bne _08011F88
	cmp r4, #0
	beq _08011F88
	cmp r6, #0
	bne _08011F88
	cmp r0, #0
	bne _08011F88
	movs r0, #0x18
	ands r4, r0
	cmp r4, #0
	bne _08011F88
	ldr r0, [r5]
	movs r1, #0xb0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	ldr r1, _08011F00 @ =0xFFF80000
	ands r0, r1
	b _08011F7A
	.align 2, 0
_08011F00: .4byte 0xFFF80000
_08011F04:
	movs r2, #2
	ldrsh r0, [r5, r2]
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r1, #0x30
	bl sub_8003B78
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r1, #2
	ldrsh r0, [r5, r1]
	subs r0, #0x16
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r1, #0x30
	bl sub_8003B78
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r1, #2
	ldrsh r0, [r5, r1]
	subs r0, #0x16
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r1, #0x40
	bl sub_8003B78
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r1, #2
	ldrsh r0, [r5, r1]
	subs r0, #4
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r1, #0x30
	bl sub_8003B78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r7, #0
	bne _08011F88
	cmp r4, #0
	beq _08011F88
	cmp r6, #0
	bne _08011F88
	cmp r0, #0
	bne _08011F88
	movs r0, #0x18
	ands r4, r0
	cmp r4, #0
	bne _08011F88
	ldr r0, [r5]
	ldr r1, _08011F80 @ =0xFFEA0000
	adds r0, r0, r1
	ldr r1, _08011F84 @ =0xFFF80000
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r0, r1
_08011F7A:
	str r0, [r5]
	movs r0, #9
	b _080120FE
	.align 2, 0
_08011F80: .4byte 0xFFEA0000
_08011F84: .4byte 0xFFF80000
_08011F88:
	movs r2, #0x95
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xa
	cmp r0, r1
	bhi _08011FC2
	adds r2, #0x61
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #5
	beq _08011FC2
	movs r0, #5
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #5
	movs r3, #4
	bl sub_800ACF8
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #1
	strh r0, [r1]
_08011FC2:
	movs r0, #4
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08011FDC
	movs r2, #0x95
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r0, [r1]
	cmp r0, #0
	ble _08011FDC
	movs r0, #0
	str r0, [r1]
_08011FDC:
	ldr r1, _0801201C @ =gUnknown_020003F8
	ldrh r3, [r1]
	movs r0, #0x20
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, r1, #0
	cmp r2, #0
	beq _08012024
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1]
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r0, _08012020 @ =0xFFFE0000
	str r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	ble _08012014
	movs r0, #0
	str r0, [r1]
_08012014:
	movs r0, #1
	str r0, [r5, #8]
	b _08012062
	.align 2, 0
_0801201C: .4byte gUnknown_020003F8
_08012020: .4byte 0xFFFE0000
_08012024:
	movs r0, #0x10
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0801205A
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	bge _08012056
	str r2, [r1]
_08012056:
	str r2, [r5, #8]
	b _08012062
_0801205A:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r5, r2
	str r1, [r0]
_08012062:
	ldr r0, _0801207C @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080120FC
	ldrh r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08012080
	movs r0, #0x17
	b _080120FE
	.align 2, 0
_0801207C: .4byte gUnknown_020003E8
_08012080:
	movs r0, #0xf
	b _080120FE
_08012084:
	ldr r1, _080120B4 @ =0x000002B5
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #5
	bhi _080120B8
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_8006FFC
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #5
	strh r0, [r1]
	b _080120FC
	.align 2, 0
_080120B4: .4byte 0x000002B5
_080120B8:
	ldr r0, _080120C8 @ =gUnknown_020003F8
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080120CC
	movs r0, #0
	b _080120D6
	.align 2, 0
_080120C8: .4byte gUnknown_020003F8
_080120CC:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080120DC
	movs r0, #1
_080120D6:
	str r0, [r5, #8]
	movs r0, #4
	b _080120FE
_080120DC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080120E8
	movs r0, #3
	b _080120FE
_080120E8:
	ldr r1, _080120F8 @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080120FC
	movs r0, #1
	b _080120FE
	.align 2, 0
_080120F8: .4byte 0x000002B7
_080120FC:
	movs r0, #0
_080120FE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_801210C
sub_801210C: @ 0x0801210C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x48]
	cmp r4, #0
	bne _0801215A
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_8006FFC
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r0, r5, r2
	str r4, [r0]
	ldr r0, [r5, #4]
	ldr r1, _080121A8 @ =0xFFF00000
	ands r0, r1
	ldr r1, _080121AC @ =0xFFD00000
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r0, #0x38
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0x20
	movs r3, #0
	bl sub_80040F4
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0xff
	movs r3, #6
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
_0801215A:
	ldr r2, _080121B0 @ =0x0000028A
	adds r0, r5, r2
	ldrh r0, [r0]
	cmp r0, #6
	bne _0801217E
	ldr r1, _080121B4 @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801217E
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xb
	movs r2, #0xff
	movs r3, #7
	bl sub_800ACF8
_0801217E:
	ldr r4, _080121B8 @ =gUnknown_020003E8
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012190
	bl sub_801180C
_08012190:
	ldrh r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080121A2
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080121BC
_080121A2:
	movs r0, #0xa
	b _08012232
	.align 2, 0
_080121A8: .4byte 0xFFF00000
_080121AC: .4byte 0xFFD00000
_080121B0: .4byte 0x0000028A
_080121B4: .4byte 0x000002B7
_080121B8: .4byte gUnknown_020003E8
_080121BC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08012230
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _080121D8
	ldr r0, [r5]
	ldr r2, _080121D4 @ =0xFFE90000
	adds r0, r0, r2
	b _080121E0
	.align 2, 0
_080121D4: .4byte 0xFFE90000
_080121D8:
	ldr r0, [r5]
	movs r1, #0xb8
	lsls r1, r1, #0xd
	adds r0, r0, r1
_080121E0:
	str r0, [r5]
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #1
	str r0, [r1]
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	str r1, [r0]
	subs r2, #0x18
	adds r0, r5, r2
	str r1, [r0]
	movs r0, #0x99
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _0801222C @ =0xFFF60000
	str r0, [r1]
	ldr r0, [r5, #4]
	movs r1, #0xc8
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r4, #2
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #6
	movs r2, #3
	movs r3, #3
	bl sub_800ACF8
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r5, r2
	strh r4, [r0]
	movs r0, #5
	b _08012232
	.align 2, 0
_0801222C: .4byte 0xFFF60000
_08012230:
	movs r0, #0
_08012232:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_801223C
sub_801223C: @ 0x0801223C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _0801226A
	movs r0, #0x38
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0
	bl sub_80040F4
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0xff
	movs r3, #2
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_0801226A:
	movs r1, #0xad
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _08012292
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, #6
	bne _08012292
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x38
	bl sub_80040F4
_08012292:
	ldr r1, _080122B8 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080122E4
	ldr r0, [r4, #4]
	ldr r1, _080122BC @ =0xFFF80000
	ands r0, r1
	ldr r2, _080122C0 @ =0xFFFF0000
	adds r0, r0, r2
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080122C4
	ldr r0, [r4]
	movs r1, #0xd0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	b _080122CA
	.align 2, 0
_080122B8: .4byte 0x000002B7
_080122BC: .4byte 0xFFF80000
_080122C0: .4byte 0xFFFF0000
_080122C4:
	ldr r0, [r4]
	ldr r2, _080122E0 @ =0xFFF30000
	adds r0, r0, r2
_080122CA:
	str r0, [r4]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800ACF8
	movs r0, #1
	b _080122E6
	.align 2, 0
_080122E0: .4byte 0xFFF30000
_080122E4:
	movs r0, #0
_080122E6:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80122F0
sub_80122F0: @ 0x080122F0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r7, [r6, #0x48]
	cmp r7, #0
	bne _0801234A
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_8006FFC
	movs r5, #1
	str r5, [r6, #0x48]
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x38
	bl sub_80040F4
	ldr r4, _08012338 @ =gUnknown_0201A5D0
	movs r0, #4
	bl RandomCapped
	str r0, [r4]
	ands r5, r0
	cmp r5, #0
	beq _0801233C
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0xff
	movs r3, #2
	bl sub_800ACF8
	b _0801234A
	.align 2, 0
_08012338: .4byte gUnknown_0201A5D0
_0801233C:
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x11
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
_0801234A:
	adds r0, r6, #0
	bl sub_800709C
	adds r1, r6, #0
	bl sub_800BB64
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrh r0, [r2]
	cmp r0, #0
	beq _080123F8
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	subs r3, #2
	adds r1, r6, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _080123F8
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _080123A8
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
	b _080123CC
_080123A8:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
_080123CC:
	cmp r0, #0
	beq _080123F8
	ldr r0, _080123E8 @ =gUnknown_0201A5D0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080123F0
	ldr r0, _080123EC @ =gUnknown_087F77E8
	movs r1, #0
	bl sub_8003A9C
	b _080123F8
	.align 2, 0
_080123E8: .4byte gUnknown_0201A5D0
_080123EC: .4byte gUnknown_087F77E8
_080123F0:
	ldr r0, _08012408 @ =gUnknown_087F7778
	movs r1, #0
	bl sub_8003A9C
_080123F8:
	ldr r1, _0801240C @ =0x000002B7
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012410
	movs r0, #0
	b _08012412
	.align 2, 0
_08012408: .4byte gUnknown_087F7778
_0801240C: .4byte 0x000002B7
_08012410:
	movs r0, #1
_08012412:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_801241C
sub_801241C: @ 0x0801241C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r4, [r6, #0x48]
	cmp r4, #0
	bne _0801245C
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_8006FFC
	ldr r0, [r6, #0x10]
	cmp r0, #1
	ble _080124F0
	subs r0, #1
	str r0, [r6, #0x10]
	movs r0, #1
	str r0, [r6, #0x48]
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x38
	bl sub_80040F4
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0xd
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
_0801245C:
	adds r0, r6, #0
	bl sub_800709C
	adds r1, r6, #0
	bl sub_800BB64
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrh r0, [r2]
	cmp r0, #0
	beq _080124DE
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	subs r3, #2
	adds r1, r6, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _080124DE
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _080124BA
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
	b _080124DE
_080124BA:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
_080124DE:
	ldr r1, _080124EC @ =0x000002B7
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080124F0
	movs r0, #0
	b _080124F2
	.align 2, 0
_080124EC: .4byte 0x000002B7
_080124F0:
	movs r0, #1
_080124F2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80124FC
sub_80124FC: @ 0x080124FC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r1, [r6, #0x48]
	cmp r1, #0
	beq _0801250A
	b _08012630
_0801250A:
	movs r0, #1
	str r0, [r6, #0x48]
	str r1, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x38
	bl sub_80040F4
	ldr r0, _08012530 @ =gUnknown_02000394
	ldr r0, [r0]
	cmp r0, #4
	bls _08012526
	b _0801291A
_08012526:
	lsls r0, r0, #2
	ldr r1, _08012534 @ =_08012538
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012530: .4byte gUnknown_02000394
_08012534: .4byte _08012538
_08012538: @ jump table
	.4byte _0801254C @ case 0
	.4byte _0801255E @ case 1
	.4byte _08012590 @ case 2
	.4byte _080125D0 @ case 3
	.4byte _08012600 @ case 4
_0801254C:
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0801255A
	b _08012770
_0801255A:
	movs r0, #5
	b _08012926
_0801255E:
	ldr r0, _0801258C @ =gUnknown_087F7724
	movs r1, #0
	bl sub_8003A9C
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r6, r3
	bl sub_8006FFC
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0801257E
	b _08012770
_0801257E:
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	movs r2, #0xff
	movs r3, #2
	b _0801262C
	.align 2, 0
_0801258C: .4byte gUnknown_087F7724
_08012590:
	ldr r0, _080125C0 @ =gUnknown_087F7740
	movs r1, #2
	bl sub_8003A9C
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x19
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r3, #0x9d
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #1
	bne _080125C4
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #3
	strh r0, [r1]
	b _08012630
	.align 2, 0
_080125C0: .4byte gUnknown_087F7740
_080125C4:
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_8006FFC
	b _08012630
_080125D0:
	movs r3, #0x9d
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #1
	bne _080125DE
	b _08012770
_080125DE:
	ldr r0, _080125FC @ =gUnknown_087F7AC4
	movs r1, #0
	bl sub_8003A9C
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_8006FFC
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x16
	b _08012628
	.align 2, 0
_080125FC: .4byte gUnknown_087F7AC4
_08012600:
	ldr r0, _08012650 @ =gUnknown_087F7740
	movs r1, #2
	bl sub_8003A9C
	movs r3, #0x95
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, _08012654 @ =0xFFFD0000
	str r0, [r1]
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08012620
	b _08012770
_08012620:
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x15
_08012628:
	movs r2, #0xff
	movs r3, #3
_0801262C:
	bl sub_800ACF8
_08012630:
	adds r0, r6, #0
	bl sub_800709C
	adds r4, r0, #0
	adds r1, r6, #0
	bl sub_800BB64
	ldr r0, _08012658 @ =gUnknown_02000394
	ldr r7, [r0]
	cmp r7, #2
	beq _080126E8
	cmp r7, #2
	bgt _0801265C
	cmp r7, #1
	beq _0801266A
	b _08012924
	.align 2, 0
_08012650: .4byte gUnknown_087F7740
_08012654: .4byte 0xFFFD0000
_08012658: .4byte gUnknown_02000394
_0801265C:
	cmp r7, #3
	bne _08012662
	b _08012788
_08012662:
	cmp r7, #4
	bne _08012668
	b _08012808
_08012668:
	b _08012924
_0801266A:
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrh r0, [r2]
	cmp r0, #0
	beq _080126DC
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	subs r3, #2
	adds r1, r6, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _080126DC
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _080126BA
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	str r7, [sp]
	bl sub_800A2EC
	b _080126DC
_080126BA:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	str r7, [sp]
	bl sub_800A2EC
_080126DC:
	ldr r1, _080126E4 @ =0x000002B7
	adds r0, r6, r1
	b _08012914
	.align 2, 0
_080126E4: .4byte 0x000002B7
_080126E8:
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrh r0, [r2]
	cmp r0, #0
	beq _08012758
	movs r1, #0xad
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	bne _08012758
	subs r3, #0x40
	adds r0, r6, r3
	ldr r0, [r0]
	adds r3, #0x3e
	adds r1, r6, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _08012758
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _0801273E
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xb
	str r4, [sp]
	movs r2, #7
	bl sub_80082DC
	b _08012758
_0801273E:
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r3, _08012778 @ =0xFFFC0000
	str r4, [sp]
	movs r2, #7
	bl sub_80082DC
_08012758:
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0801277C
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrh r0, [r0]
	cmp r0, #9
	bne _0801277C
_08012770:
	movs r0, #1
	rsbs r0, r0, #0
	b _08012926
	.align 2, 0
_08012778: .4byte 0xFFFC0000
_0801277C:
	ldr r1, _08012784 @ =0x000002B7
	adds r0, r6, r1
	b _08012914
	.align 2, 0
_08012784: .4byte 0x000002B7
_08012788:
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrh r0, [r2]
	cmp r0, #0
	beq _080127FE
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	subs r3, #2
	adds r1, r6, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _080127FE
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _080127C8
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	b _080127DA
_080127C8:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
_080127DA:
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
	cmp r0, #0
	beq _080127FE
	ldr r0, [r6, #0x10]
	adds r0, #1
	str r0, [r6, #0x10]
	ldr r1, [r6, #0xc]
	cmp r0, r1
	ble _080127FE
	str r1, [r6, #0x10]
_080127FE:
	ldr r1, _08012804 @ =0x000002B7
	adds r0, r6, r1
	b _08012914
	.align 2, 0
_08012804: .4byte 0x000002B7
_08012808:
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrh r0, [r2]
	cmp r0, #0
	beq _0801287E
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	subs r3, #2
	adds r1, r6, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _0801287E
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _0801285A
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #2
	str r4, [sp]
	bl sub_800A2EC
	b _0801287E
_0801285A:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #2
	str r4, [sp]
	bl sub_800A2EC
_0801287E:
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08012924
	ldr r3, _08012908 @ =0x0000028A
	adds r0, r6, r3
	ldrh r0, [r0]
	cmp r0, #0xe
	beq _08012910
	movs r4, #0
	ldr r2, _0801290C @ =gUnknown_020146E0
	adds r7, r2, #0
	movs r5, #0
_0801289C:
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _080128DE
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _080128DE
	adds r0, r7, #0
	adds r0, #0x14
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0x3f
	beq _080128DE
	cmp r0, #0x3d
	beq _080128DE
	adds r0, r7, #0
	adds r0, #0x28
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _080128DE
	movs r0, #0x3d
	adds r1, r2, #0
	str r2, [sp, #4]
	bl sub_8006F10
	ldr r2, [sp, #4]
_080128DE:
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r5, r5, r3
	adds r4, #1
	cmp r4, #4
	bls _0801289C
	movs r4, #0
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_8006FFC
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0xe
	movs r2, #0xff
	movs r3, #4
	bl sub_800ACF8
	b _08012924
	.align 2, 0
_08012908: .4byte 0x0000028A
_0801290C: .4byte gUnknown_020146E0
_08012910:
	ldr r3, _08012920 @ =0x000002B7
	adds r0, r6, r3
_08012914:
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012924
_0801291A:
	movs r0, #1
	b _08012926
	.align 2, 0
_08012920: .4byte 0x000002B7
_08012924:
	movs r0, #0
_08012926:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012930
sub_8012930: @ 0x08012930
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r4, [r6, #0x48]
	cmp r4, #0
	bne _08012966
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_8006FFC
	movs r0, #1
	str r0, [r6, #0x48]
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x24
	bl sub_80040F4
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x10
	movs r2, #0xff
	movs r3, #2
	bl sub_800ACF8
_08012966:
	adds r0, r6, #0
	bl sub_800709C
	adds r1, r6, #0
	bl sub_800BB64
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrh r0, [r2]
	cmp r0, #0
	beq _080129F4
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	subs r3, #2
	adds r1, r6, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _080129F4
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _080129C4
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
	b _080129E8
_080129C4:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
_080129E8:
	cmp r0, #0
	beq _080129F4
	ldr r0, _08012A04 @ =gUnknown_087F7778
	movs r1, #0
	bl sub_8003A9C
_080129F4:
	ldr r1, _08012A08 @ =0x000002B7
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012A0C
	movs r0, #0
	b _08012A0E
	.align 2, 0
_08012A04: .4byte gUnknown_087F7778
_08012A08: .4byte 0x000002B7
_08012A0C:
	movs r0, #3
_08012A0E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012A18
sub_8012A18: @ 0x08012A18
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, [r6, #0x48]
	cmp r1, #0
	bne _08012A46
	movs r0, #1
	str r0, [r6, #0x48]
	str r1, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x24
	bl sub_80040F4
	movs r0, #5
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xf
	movs r2, #0xff
	movs r3, #2
	bl sub_800ACF8
_08012A46:
	adds r0, r6, #0
	bl sub_800709C
	adds r1, r6, #0
	bl sub_800BB64
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _08012AD8
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r3, _08012AA4 @ =0x0000028A
	adds r1, r6, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _08012AD8
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08012AA8
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
	b _08012ACC
	.align 2, 0
_08012AA4: .4byte 0x0000028A
_08012AA8:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
_08012ACC:
	cmp r0, #0
	beq _08012AD8
	ldr r0, _08012AE8 @ =gUnknown_087F7778
	movs r1, #0
	bl sub_8003A9C
_08012AD8:
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08012AEC
	movs r0, #0
	b _08012AEE
	.align 2, 0
_08012AE8: .4byte gUnknown_087F7778
_08012AEC:
	movs r0, #1
_08012AEE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012AF8
sub_8012AF8: @ 0x08012AF8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r2, #0
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bne _08012B42
	ldr r0, _08012B14 @ =gUnknown_02000394
	ldr r0, [r0]
	cmp r0, #4
	bne _08012B18
	movs r0, #0x18
	b _08012C58
	.align 2, 0
_08012B14: .4byte gUnknown_02000394
_08012B18:
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r1, _08012B90 @ =0xFFFD0000
	str r1, [r0]
	movs r4, #1
	str r4, [r6, #0x48]
	str r2, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x38
	bl sub_80040F4
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #8
	movs r2, #0xff
	movs r3, #4
	bl sub_800ACF8
_08012B42:
	adds r0, r6, #0
	bl sub_800709C
	adds r1, r6, #0
	bl sub_800BB64
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrh r0, [r2]
	cmp r0, #0
	beq _08012C14
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	subs r3, #2
	adds r1, r6, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _08012C14
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08012B94
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	b _08012BA6
	.align 2, 0
_08012B90: .4byte 0xFFFD0000
_08012B94:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
_08012BA6:
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
	adds r2, r0, #0
	cmp r2, #0
	beq _08012C14
	ldr r0, _08012C08 @ =gUnknown_087F775C
	movs r1, #0
	bl sub_8003A9C
	movs r0, #0x95
	lsls r0, r0, #2
	adds r2, r6, r0
	movs r0, #0x8c
	lsls r0, r0, #0xb
	str r0, [r2]
	movs r3, #0x97
	lsls r3, r3, #2
	adds r1, r6, r3
	movs r0, #0
	str r0, [r1]
	ldr r0, _08012C0C @ =gUnknown_02000394
	ldr r0, [r0]
	cmp r0, #0
	bne _08012BEE
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r2]
_08012BEE:
	movs r3, #0x99
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, _08012C10 @ =0xFFF90000
	str r0, [r1]
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #1
	str r0, [r1]
	movs r0, #5
	b _08012C58
	.align 2, 0
_08012C08: .4byte gUnknown_087F775C
_08012C0C: .4byte gUnknown_02000394
_08012C10: .4byte 0xFFF90000
_08012C14:
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08012C56
	ldr r3, _08012C38 @ =0x0000028A
	adds r0, r6, r3
	ldrh r0, [r0]
	cmp r0, #8
	beq _08012C3C
	adds r1, #0x43
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012C56
	movs r0, #1
	b _08012C58
	.align 2, 0
_08012C38: .4byte 0x0000028A
_08012C3C:
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r6, r3
	bl sub_8006FFC
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xe
	movs r2, #0xff
	movs r3, #4
	bl sub_800ACF8
_08012C56:
	movs r0, #0
_08012C58:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8012C60
sub_8012C60: @ 0x08012C60
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x48]
	cmp r4, #0
	bne _08012CA0
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r5, r1
	str r4, [r0]
	subs r1, #8
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #0x10
	adds r0, r5, r1
	str r4, [r0]
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x24
	bl sub_80040F4
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #9
	movs r2, #0xff
	movs r3, #2
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
_08012CA0:
	adds r0, r5, #0
	bl sub_800709C
	adds r1, r5, #0
	bl sub_800BB64
	ldr r4, _08012CCC @ =gUnknown_020003E8
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012CBE
	bl sub_801180C
_08012CBE:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012CD0
	movs r0, #0x10
	b _08012CE6
	.align 2, 0
_08012CCC: .4byte gUnknown_020003E8
_08012CD0:
	ldr r1, _08012CE0 @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012CE4
	movs r0, #0
	b _08012CE6
	.align 2, 0
_08012CE0: .4byte 0x000002B7
_08012CE4:
	movs r0, #3
_08012CE6:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012CF0
sub_8012CF0: @ 0x08012CF0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x48]
	cmp r4, #0
	bne _08012D32
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r5, r1
	str r4, [r0]
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r5, r2
	str r4, [r0]
	adds r1, #8
	adds r0, r5, r1
	str r4, [r0]
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x24
	bl sub_80040F4
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0xff
	movs r3, #7
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
_08012D32:
	adds r0, r5, #0
	bl sub_800709C
	adds r1, r5, #0
	bl sub_800BB64
	ldr r4, _08012D60 @ =gUnknown_020003E8
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012D50
	bl sub_801180C
_08012D50:
	ldrh r1, [r4]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08012D64
	movs r0, #5
	b _08012E22
	.align 2, 0
_08012D60: .4byte gUnknown_020003E8
_08012D64:
	ldr r2, _08012D80 @ =0x0000028A
	adds r0, r5, r2
	ldrh r0, [r0]
	cmp r0, #5
	bne _08012DBC
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08012D84
	movs r0, #0x10
	b _08012E22
	.align 2, 0
_08012D80: .4byte 0x0000028A
_08012D84:
	ldr r6, _08012DAC @ =gUnknown_020003F8
	ldrh r1, [r6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08012D9E
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	movs r2, #0xff
	movs r3, #2
	bl sub_800ACF8
_08012D9E:
	ldrh r1, [r6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08012DB0
	str r4, [r5, #8]
	b _08012E04
	.align 2, 0
_08012DAC: .4byte gUnknown_020003F8
_08012DB0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08012E04
	str r7, [r5, #8]
	b _08012E04
_08012DBC:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08012DCC
	movs r0, #0xb
	b _08012E22
_08012DCC:
	ldr r0, _08012DE0 @ =gUnknown_020003F8
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08012DE4
	str r2, [r5, #8]
	movs r0, #4
	b _08012E22
	.align 2, 0
_08012DE0: .4byte gUnknown_020003F8
_08012DE4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08012DF2
	str r7, [r5, #8]
	movs r0, #4
	b _08012E22
_08012DF2:
	ldr r1, _08012E00 @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012E04
	movs r0, #1
	b _08012E22
	.align 2, 0
_08012E00: .4byte 0x000002B7
_08012E04:
	ldr r0, [r5, #0x40]
	cmp r0, #0x2d
	bls _08012E1C
	ldr r0, _08012E18 @ =gUnknown_02015590
	movs r1, #0x1e
	str r1, [r0, #0x10]
	movs r1, #0x28
	str r1, [r0, #0x18]
	b _08012E20
	.align 2, 0
_08012E18: .4byte gUnknown_02015590
_08012E1C:
	adds r0, #1
	str r0, [r5, #0x40]
_08012E20:
	movs r0, #0
_08012E22:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012E2C
sub_8012E2C: @ 0x08012E2C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x48]
	cmp r4, #0
	bne _08012E76
	ldr r0, [r5, #0x18]
	cmp r0, #0x34
	beq _08012E56
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_8006FFC
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
_08012E56:
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x38
	bl sub_80040F4
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0x18
	movs r2, #0xff
	movs r3, #7
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
_08012E76:
	adds r0, r5, #0
	bl sub_800709C
	adds r1, r5, #0
	bl sub_800BB64
	ldr r0, _08012E94 @ =gUnknown_020003E8
	ldrh r2, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _08012E98
	movs r0, #5
	b _08012EE4
	.align 2, 0
_08012E94: .4byte gUnknown_020003E8
_08012E98:
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	bne _08012EAE
	ldr r4, _08012EB4 @ =gUnknown_020003F8
	ldrh r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08012EB8
_08012EAE:
	movs r0, #0x34
	b _08012EE4
	.align 2, 0
_08012EB4: .4byte gUnknown_020003F8
_08012EB8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08012EC6
	bl sub_801180C
_08012EC6:
	ldrh r1, [r4]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08012ED8
	str r6, [r5, #8]
	b _08012EE2
_08012ED8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08012EE2
	str r2, [r5, #8]
_08012EE2:
	movs r0, #0
_08012EE4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8012EEC
sub_8012EEC: @ 0x08012EEC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x48]
	cmp r4, #0
	bne _08012F16
	str r4, [sp]
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x24
	bl sub_80040F4
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0xff
	movs r3, #7
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
_08012F16:
	adds r0, r5, #0
	bl sub_800709C
	adds r1, r5, #0
	bl sub_800BB64
	ldr r0, _08012F34 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012F38
	movs r0, #5
	b _08012F94
	.align 2, 0
_08012F34: .4byte gUnknown_020003E8
_08012F38:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012F46
	bl sub_801180C
_08012F46:
	ldr r0, _08012F80 @ =gUnknown_020003F8
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08012F92
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x38
	bl sub_80040F4
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r2, r5, r3
	movs r3, #1
	bl sub_8003EE8
	cmp r0, #0
	beq _08012F84
	movs r0, #0x32
	b _08012F94
	.align 2, 0
_08012F80: .4byte gUnknown_020003F8
_08012F84:
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x24
	bl sub_80040F4
_08012F92:
	movs r0, #0
_08012F94:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8012F9C
sub_8012F9C: @ 0x08012F9C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #5
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	movs r1, #0
	str r1, [r5]
	str r1, [r5, #4]
	str r1, [r5, #8]
	movs r0, #1
	str r0, [r5, #0x14]
	str r1, [r5, #0x18]
	str r1, [r5, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _080130F4 @ =sub_8011848
	str r0, [r1]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, _080130F8 @ =sub_80119A8
	str r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _080130FC @ =sub_8012C60
	str r0, [r1]
	adds r2, #8
	adds r1, r5, r2
	ldr r0, _08013100 @ =sub_8012CF0
	str r0, [r1]
	movs r0, #0xae
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _08013104 @ =sub_8011B5C
	str r0, [r1]
	adds r2, #8
	adds r1, r5, r2
	ldr r0, _08013108 @ =sub_8011D1C
	str r0, [r1]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _0801310C @ =sub_801210C
	str r0, [r1]
	adds r2, #0x14
	adds r1, r5, r2
	ldr r0, _08013110 @ =sub_801223C
	str r0, [r1]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _08013114 @ =sub_8012E2C
	str r0, [r1]
	adds r2, #0xa8
	adds r1, r5, r2
	ldr r0, _08013118 @ =sub_8012EEC
	str r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _0801311C @ =sub_80122F0
	str r0, [r1]
	subs r2, #0x74
	adds r1, r5, r2
	ldr r0, _08013120 @ =sub_8012AF8
	str r0, [r1]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _08013124 @ =sub_8012930
	str r0, [r1]
	subs r2, #0x20
	adds r1, r5, r2
	ldr r0, _08013128 @ =sub_8012A18
	str r0, [r1]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _0801312C @ =sub_801241C
	str r0, [r1]
	adds r2, #0x24
	adds r1, r5, r2
	ldr r0, _08013130 @ =sub_80124FC
	str r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _08013134 @ =sub_801184C
	str r0, [r1]
	adds r2, #0x94
	adds r1, r5, r2
	ldr r0, _08013138 @ =sub_8011928
	str r0, [r1]
	movs r0, #0
	ldr r6, _0801313C @ =gUnknown_080D2D50
	movs r2, #0
	adds r1, r5, #0
	adds r1, #0x2c
_08013066:
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #7
	bls _08013066
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r5, r1
	str r6, [r0]
	movs r4, #0
	str r4, [sp, #4]
	ldr r1, _08013140 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	movs r2, #0xa2
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1, #4]
	ldr r0, _08013144 @ =0x8500000B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0x80
	movs r2, #0
	movs r3, #0x58
	bl sub_8006FC8
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r0, r5, r2
	str r4, [r0]
	str r4, [r5, #0x24]
	movs r0, #0
	adds r1, r6, #0
	bl sub_801A42C
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _08013148 @ =gUnknown_02013114
	ldr r0, [r0]
	str r0, [r1]
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	strh r4, [r0]
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800ACF8
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0x14
	movs r2, #0x14
	movs r3, #0x38
	bl sub_80040F4
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080130F4: .4byte sub_8011848
_080130F8: .4byte sub_80119A8
_080130FC: .4byte sub_8012C60
_08013100: .4byte sub_8012CF0
_08013104: .4byte sub_8011B5C
_08013108: .4byte sub_8011D1C
_0801310C: .4byte sub_801210C
_08013110: .4byte sub_801223C
_08013114: .4byte sub_8012E2C
_08013118: .4byte sub_8012EEC
_0801311C: .4byte sub_80122F0
_08013120: .4byte sub_8012AF8
_08013124: .4byte sub_8012930
_08013128: .4byte sub_8012A18
_0801312C: .4byte sub_801241C
_08013130: .4byte sub_80124FC
_08013134: .4byte sub_801184C
_08013138: .4byte sub_8011928
_0801313C: .4byte gUnknown_080D2D50
_08013140: .4byte 0x040000D4
_08013144: .4byte 0x8500000B
_08013148: .4byte gUnknown_02013114

	thumb_func_start sub_801314C
sub_801314C: @ 0x0801314C
	push {lr}
	ldr r1, _08013164 @ =gUnknown_0201A638
	ldr r0, [r1]
	adds r2, r1, #0
	cmp r0, #4
	bhi _080131F4
	lsls r0, r0, #2
	ldr r1, _08013168 @ =_0801316C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08013164: .4byte gUnknown_0201A638
_08013168: .4byte _0801316C
_0801316C: @ jump table
	.4byte _08013180 @ case 0
	.4byte _080131A8 @ case 1
	.4byte _080131C6 @ case 2
	.4byte _080131E0 @ case 3
	.4byte _080131F0 @ case 4
_08013180:
	ldr r1, _08013190 @ =gUnknown_020003A0
	ldr r0, [r1, #0x20]
	cmp r0, #0
	beq _08013194
	movs r0, #1
_0801318A:
	str r0, [r2]
	b _080131F8
	.align 2, 0
_08013190: .4byte gUnknown_020003A0
_08013194:
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bne _080131B0
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bne _080131CE
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _080131F8
	b _080131E8
_080131A8:
	ldr r1, _080131B4 @ =gUnknown_020003A0
	ldr r0, [r1, #0x24]
	cmp r0, #0
	beq _080131B8
_080131B0:
	movs r0, #2
	b _0801318A
	.align 2, 0
_080131B4: .4byte gUnknown_020003A0
_080131B8:
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bne _080131CE
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	bne _080131E8
	b _0801318A
_080131C6:
	ldr r1, _080131D4 @ =gUnknown_020003A0
	ldr r0, [r1, #0x28]
	cmp r0, #0
	beq _080131D8
_080131CE:
	movs r0, #3
	b _0801318A
	.align 2, 0
_080131D4: .4byte gUnknown_020003A0
_080131D8:
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	bne _080131E8
	b _0801318A
_080131E0:
	ldr r0, _080131EC @ =gUnknown_020003A0
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _0801318A
_080131E8:
	movs r0, #4
	b _0801318A
	.align 2, 0
_080131EC: .4byte gUnknown_020003A0
_080131F0:
	movs r0, #0
	b _0801318A
_080131F4:
	movs r0, #0
	str r0, [r1]
_080131F8:
	pop {r0}
	bx r0

	thumb_func_start sub_80131FC
sub_80131FC: @ 0x080131FC
	movs r0, #0
	bx lr

	thumb_func_start sub_8013200
sub_8013200: @ 0x08013200
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	str r5, [r4, #0x5c]
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _08013254
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, r1
	str r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r5, [r0]
	subs r1, #0x14
	adds r0, r4, r1
	str r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r5, [r0]
	str r5, [r4, #0x28]
	ldr r0, _080132A0 @ =gUnknown_087F785C
	movs r1, #0
	bl sub_8003A9C
	movs r0, #0x41
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xff
	movs r3, #5
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_08013254:
	adds r0, r4, #0
	bl sub_800709C
	adds r1, r4, #0
	bl sub_800BB64
	ldr r1, _080132A4 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013294
	ldr r0, _080132A8 @ =gUnknown_02013118
	str r5, [r0]
	ldr r0, _080132AC @ =gUnknown_02012630
	str r5, [r0]
	ldr r1, _080132B0 @ =gUnknown_02000800
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt _08013294
	adds r0, r4, #0
	bl sub_8013E68
	movs r0, #0x5a
	str r0, [r4, #0x28]
	ldr r0, _080132B4 @ =gUnknown_020003EC
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _080132B8 @ =gUnknown_020003F4
	ldr r0, [r0]
	str r0, [r4, #4]
_08013294:
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080132A0: .4byte gUnknown_087F785C
_080132A4: .4byte 0x000002B7
_080132A8: .4byte gUnknown_02013118
_080132AC: .4byte gUnknown_02012630
_080132B0: .4byte gUnknown_02000800
_080132B4: .4byte gUnknown_020003EC
_080132B8: .4byte gUnknown_020003F4

	thumb_func_start sub_80132BC
sub_80132BC: @ 0x080132BC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4, #0x5c]
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _0801331A
	ldr r0, _0801338C @ =gUnknown_087F79E4
	movs r1, #0
	bl sub_8003A9C
	ldr r0, [r4, #4]
	ldr r1, _08013390 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #4]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x64
	bl sub_80040F4
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0xff
	movs r3, #4
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _08013306
	movs r0, #0x5a
	str r0, [r4, #0x28]
_08013306:
	ldr r0, _08013394 @ =gUnknown_0201A5F0
	ldr r1, _08013398 @ =gUnknown_0201A638
	ldr r1, [r1]
	lsls r1, r1, #3
	adds r1, #0xc
	str r5, [sp]
	movs r2, #0xff
	movs r3, #4
	bl sub_800B0F4
_0801331A:
	ldr r0, _08013394 @ =gUnknown_0201A5F0
	ldr r1, [r4]
	str r1, [r0]
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	bl sub_800B054
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl sub_801A444
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	bne _0801336C
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r4]
	subs r0, r0, r1
	ldr r1, [r4, #4]
	bl sub_801A444
	cmp r0, r5
	bne _0801336C
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r1, [r4, #4]
	bl sub_801A444
	cmp r0, r5
	beq _08013372
_0801336C:
	ldr r1, _0801339C @ =gUnknown_020154A0
	movs r0, #0
	str r0, [r1]
_08013372:
	adds r0, r4, #0
	bl sub_800709C
	adds r1, r4, #0
	bl sub_800BB64
	ldr r1, _080133A0 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080133A4
	movs r0, #0
	b _080133A6
	.align 2, 0
_0801338C: .4byte gUnknown_087F79E4
_08013390: .4byte 0xFFFF0000
_08013394: .4byte gUnknown_0201A5F0
_08013398: .4byte gUnknown_0201A638
_0801339C: .4byte gUnknown_020154A0
_080133A0: .4byte 0x000002B7
_080133A4:
	movs r0, #1
_080133A6:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80133B0
sub_80133B0: @ 0x080133B0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _0801341C
	str r5, [r4, #0x5c]
	ldr r1, _08013450 @ =gUnknown_0201A5E4
	movs r0, #0x50
	str r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, r1
	str r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r5, [r0]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x64
	bl sub_80040F4
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #8
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
	ldr r0, _08013454 @ =gUnknown_0201A5F0
	ldr r1, _08013458 @ =gUnknown_0201A638
	ldr r1, [r1]
	lsls r1, r1, #3
	adds r1, #8
	str r5, [sp]
	movs r2, #0xff
	movs r3, #8
	bl sub_800B0F4
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08013478
_0801341C:
	ldr r0, _08013454 @ =gUnknown_0201A5F0
	ldr r1, [r4]
	str r1, [r0]
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	bl sub_800B054
	adds r0, r4, #0
	bl sub_800709C
	adds r1, r4, #0
	bl sub_800BB64
	ldr r0, _0801345C @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08013460
	bl sub_801314C
	movs r0, #1
	b _080134F8
	.align 2, 0
_08013450: .4byte gUnknown_0201A5E4
_08013454: .4byte gUnknown_0201A5F0
_08013458: .4byte gUnknown_0201A638
_0801345C: .4byte gUnknown_020003E8
_08013460:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801346E
	movs r0, #0x18
	b _080134F8
_0801346E:
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0801347C
_08013478:
	movs r0, #5
	b _080134F8
_0801347C:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0801348C
	movs r0, #0xb
	b _080134F8
_0801348C:
	ldr r0, _080134C0 @ =gUnknown_020003F8
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080134C8
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	str r3, [r0]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _080134C4 @ =0xFFFE6000
	str r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1]
	str r5, [r4, #8]
	b _080134F6
	.align 2, 0
_080134C0: .4byte gUnknown_020003F8
_080134C4: .4byte 0xFFFE6000
_080134C8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080134D4
	movs r0, #0
	b _080134F8
_080134D4:
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	str r2, [r0]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0xd0
	lsls r0, r0, #9
	str r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1]
	str r2, [r4, #8]
_080134F6:
	movs r0, #4
_080134F8:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8013500
sub_8013500: @ 0x08013500
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bne _080135AA
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _08013524
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, _08013520 @ =0xFFFE6000
	b _0801352E
	.align 2, 0
_08013520: .4byte 0xFFFE6000
_08013524:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r0, #0xd0
	lsls r0, r0, #9
_0801352E:
	str r0, [r1]
	movs r3, #0x94
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, [r1]
	cmp r0, #0
	ble _0801354C
	movs r4, #0x98
	lsls r4, r4, #2
	adds r0, r6, r4
	ldr r0, [r0]
	cmp r0, #0
	bge _0801354C
	movs r0, #0
	str r0, [r1]
_0801354C:
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r0, #0
	bge _08013568
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0
	ble _08013568
	movs r0, #0
	str r0, [r1]
_08013568:
	movs r3, #0x96
	lsls r3, r3, #2
	adds r1, r6, r3
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1]
	movs r4, #0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x64
	bl sub_80040F4
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r6, #0x48]
	ldr r0, _08013628 @ =gUnknown_0201A5F0
	ldr r1, _0801362C @ =gUnknown_0201A638
	ldr r1, [r1]
	lsls r1, r1, #3
	adds r1, #0xa
	str r4, [sp]
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
_080135AA:
	movs r4, #0xad
	lsls r4, r4, #2
	adds r0, r6, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080135D2
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _080135CA
	cmp r0, #0xa
	bne _080135D2
_080135CA:
	ldr r0, _08013630 @ =gUnknown_087F7974
	movs r1, #0
	bl sub_8003A9C
_080135D2:
	ldr r7, _08013628 @ =gUnknown_0201A5F0
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r6, #4]
	str r0, [r7, #4]
	ldr r0, [r6, #8]
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_800B054
	ldr r0, _08013634 @ =gUnknown_0826260C
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r1, r6, r2
	ldrh r2, [r1]
	movs r1, #2
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _0801365C
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08013638
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r7]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r7, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800E25C
	b _0801365C
	.align 2, 0
_08013628: .4byte gUnknown_0201A5F0
_0801362C: .4byte gUnknown_0201A638
_08013630: .4byte gUnknown_087F7974
_08013634: .4byte gUnknown_0826260C
_08013638:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r7]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r7, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800E25C
_0801365C:
	adds r0, r6, #0
	bl sub_800709C
	adds r5, r0, #0
	adds r1, r6, #0
	bl sub_800BB64
	ldr r0, _08013680 @ =gUnknown_020003E8
	ldrh r1, [r0]
	movs r3, #1
	mov r8, r3
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08013684
	movs r0, #5
	b _0801376E
	.align 2, 0
_08013680: .4byte gUnknown_020003E8
_08013684:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08013690
	movs r0, #0xb
	b _0801376E
_08013690:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _080136A2
	movs r0, #0x18
	b _0801376E
_080136A2:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080136CE
	bl sub_801314C
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r6, r0
	ldrh r5, [r4]
	ldr r0, _0801370C @ =gUnknown_0201A5F0
	ldr r1, _08013710 @ =gUnknown_0201A638
	ldr r1, [r1]
	lsls r1, r1, #3
	adds r1, #0xa
	str r7, [sp]
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
	strh r5, [r4]
_080136CE:
	ldr r0, _08013714 @ =gUnknown_020003F8
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0801371C
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	ldr r2, _08013718 @ =0xFFFE6000
	cmp r0, r2
	beq _08013702
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r6, r3
	str r7, [r0]
	str r2, [r1]
	movs r4, #0x96
	lsls r4, r4, #2
	adds r1, r6, r4
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1]
_08013702:
	mov r0, r8
	str r0, [r6, #8]
	movs r0, #0
	b _0801376E
	.align 2, 0
_0801370C: .4byte gUnknown_0201A5F0
_08013710: .4byte gUnknown_0201A638
_08013714: .4byte gUnknown_020003F8
_08013718: .4byte 0xFFFE6000
_0801371C:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08013754
	movs r3, #0x98
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, [r1]
	movs r3, #0xd0
	lsls r3, r3, #9
	cmp r0, r3
	beq _0801374E
	movs r4, #0x94
	lsls r4, r4, #2
	adds r0, r6, r4
	str r2, [r0]
	str r3, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1]
_0801374E:
	str r2, [r6, #8]
	movs r0, #0
	b _0801376E
_08013754:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r6, r2
	str r1, [r0]
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _0801376C
	movs r0, #0
	b _0801376E
_0801376C:
	movs r0, #1
_0801376E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_801377C
sub_801377C: @ 0x0801377C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, [r5, #0x48]
	cmp r2, #0
	bne _080137C4
	ldr r1, _0801383C @ =gUnknown_0201A5E4
	movs r0, #0x50
	str r0, [r1]
	movs r0, #1
	str r0, [r5, #0x48]
	str r2, [sp]
	adds r0, r5, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x64
	bl sub_80040F4
	movs r4, #9
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0xff
	movs r3, #1
	bl sub_800ACF8
	ldr r0, _08013840 @ =gUnknown_0201A5F0
	ldr r1, _08013844 @ =gUnknown_0201A638
	ldr r1, [r1]
	lsls r1, r1, #3
	adds r1, #0xd
	str r4, [sp]
	movs r2, #0xff
	movs r3, #1
	bl sub_800B0F4
_080137C4:
	ldr r1, _08013848 @ =0x0000028A
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #5
	bne _080138C0
	ldr r2, _0801384C @ =0x000002B7
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080138A8
	movs r3, #0x9d
	lsls r3, r3, #2
	adds r2, r5, r3
	ldr r0, [r2]
	cmp r0, #1
	beq _08013806
	movs r4, #0x95
	lsls r4, r4, #2
	adds r1, r5, r4
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r1]
	movs r0, #0x97
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	subs r3, #0x10
	adds r1, r5, r3
	ldr r0, _08013850 @ =0xFFF90000
	str r0, [r1]
	movs r0, #1
	str r0, [r2]
_08013806:
	ldr r0, _08013854 @ =gUnknown_020003F8
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0801385C
	movs r4, #0x94
	lsls r4, r4, #2
	adds r1, r5, r4
	movs r0, #0
	str r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1]
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r0, _08013858 @ =0xFFFF0000
	str r0, [r1]
	movs r0, #1
	str r0, [r5, #8]
	b _08013896
	.align 2, 0
_0801383C: .4byte gUnknown_0201A5E4
_08013840: .4byte gUnknown_0201A5F0
_08013844: .4byte gUnknown_0201A638
_08013848: .4byte 0x0000028A
_0801384C: .4byte 0x000002B7
_08013850: .4byte 0xFFF90000
_08013854: .4byte gUnknown_020003F8
_08013858: .4byte 0xFFFF0000
_0801385C:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08013886
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r5, r3
	str r2, [r0]
	movs r4, #0x96
	lsls r4, r4, #2
	adds r0, r5, r4
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	adds r3, #0x10
	adds r0, r5, r3
	str r1, [r0]
	str r2, [r5, #8]
	b _08013896
_08013886:
	movs r4, #0x94
	lsls r4, r4, #2
	adds r0, r5, r4
	str r1, [r0]
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r5, r2
	str r1, [r0]
_08013896:
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	b _080138C0
_080138A8:
	ldr r0, _080138BC @ =gUnknown_0201A5F0
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5, #4]
	str r1, [r0, #4]
	ldr r1, [r5, #8]
	str r1, [r0, #8]
	bl sub_800B054
	b _080139E4
	.align 2, 0
_080138BC: .4byte gUnknown_0201A5F0
_080138C0:
	movs r3, #0xad
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080138E4
	movs r4, #0xa3
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrh r0, [r0]
	cmp r0, #0
	bne _080138E4
	ldr r0, _0801391C @ =gUnknown_087F7468
	movs r1, #0
	bl sub_8003A9C
_080138E4:
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #1
	bne _080139D4
	ldr r0, _08013920 @ =gUnknown_020003F8
	ldrh r0, [r0]
	adds r2, r0, #0
	ands r2, r1
	cmp r2, #0
	beq _0801393A
	ldr r0, _08013924 @ =gUnknown_0201A5E4
	ldr r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _08013948
	movs r2, #0x95
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r0, _08013928 @ =0x00077FFF
	cmp r2, r0
	bgt _0801392C
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r2, r4
	b _08013930
	.align 2, 0
_0801391C: .4byte gUnknown_087F7468
_08013920: .4byte gUnknown_020003F8
_08013924: .4byte gUnknown_0201A5E4
_08013928: .4byte 0x00077FFF
_0801392C:
	movs r0, #0xf8
	lsls r0, r0, #0xb
_08013930:
	str r0, [r1]
	ldr r0, [r3]
	subs r0, #1
	str r0, [r3]
	b _08013948
_0801393A:
	movs r0, #0x95
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	ble _08013948
	str r2, [r1]
_08013948:
	adds r0, r5, #0
	bl sub_800709C
	adds r1, r5, #0
	bl sub_800BB64
	ldr r0, _08013990 @ =gUnknown_020003F8
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08013998
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1]
	movs r3, #0x98
	lsls r3, r3, #2
	adds r1, r5, r3
	ldr r0, _08013994 @ =0xFFFF0000
	str r0, [r1]
	movs r4, #0x94
	lsls r4, r4, #2
	adds r1, r5, r4
	ldr r0, [r1]
	cmp r0, #0
	ble _0801398A
	movs r0, #0
	str r0, [r1]
_0801398A:
	movs r0, #1
	str r0, [r5, #8]
	b _080139E4
	.align 2, 0
_08013990: .4byte gUnknown_020003F8
_08013994: .4byte 0xFFFF0000
_08013998:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _080139CA
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	movs r3, #0x98
	lsls r3, r3, #2
	adds r0, r5, r3
	str r1, [r0]
	movs r4, #0x94
	lsls r4, r4, #2
	adds r1, r5, r4
	ldr r0, [r1]
	cmp r0, #0
	bge _080139C6
	str r2, [r1]
_080139C6:
	str r2, [r5, #8]
	b _080139E4
_080139CA:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r5, r2
	str r1, [r0]
	b _080139E4
_080139D4:
	ldr r0, _080139E0 @ =gUnknown_087F7878
	movs r1, #0
	bl sub_8003A9C
	movs r0, #1
	b _080139E6
	.align 2, 0
_080139E0: .4byte gUnknown_087F7878
_080139E4:
	movs r0, #0
_080139E6:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80139F0
sub_80139F0: @ 0x080139F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r7, #0
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bne _08013A6C
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_8006FFC
	movs r0, #1
	str r0, [r6, #0x48]
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x64
	bl sub_80040F4
	ldr r0, _08013A50 @ =gUnknown_0201A5E0
	str r7, [r0]
	ldr r4, _08013A54 @ =gUnknown_0201A638
	ldr r1, [r4]
	cmp r1, #0
	bne _08013A5C
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	ldr r0, _08013A58 @ =gUnknown_0201A5F0
	ldr r1, [r4]
	lsls r1, r1, #3
	adds r1, #0xb
	str r7, [sp]
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
	b _08013A6C
	.align 2, 0
_08013A50: .4byte gUnknown_0201A5E0
_08013A54: .4byte gUnknown_0201A638
_08013A58: .4byte gUnknown_0201A5F0
_08013A5C:
	lsls r1, r1, #3
	adds r1, #0xb
	str r7, [sp]
	adds r0, r6, #0
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
_08013A6C:
	adds r0, r6, #0
	bl sub_800709C
	adds r1, r6, #0
	bl sub_800BB64
	ldr r7, _08013ABC @ =gUnknown_0201A638
	ldr r0, [r7]
	cmp r0, #0
	bne _08013ADC
	ldr r7, _08013AC0 @ =gUnknown_0201A5F0
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r6, #4]
	str r0, [r7, #4]
	ldr r0, [r6, #8]
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_800B054
	ldr r0, _08013AC4 @ =gUnknown_0826260C
	ldrh r1, [r7, #0x16]
	ldrh r2, [r7, #0x18]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	bne _08013AA6
	b _08013D3C
_08013AA6:
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08013AC8
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r7]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r7, #4]
	b _08013CFC
	.align 2, 0
_08013ABC: .4byte gUnknown_0201A638
_08013AC0: .4byte gUnknown_0201A5F0
_08013AC4: .4byte gUnknown_0826260C
_08013AC8:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r7]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r7, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	b _08013D00
_08013ADC:
	cmp r0, #1
	beq _08013AE4
	cmp r0, #3
	bne _08013B94
_08013AE4:
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	beq _08013AF4
	b _08013D3C
_08013AF4:
	movs r3, #0x93
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	subs r2, #0x2a
	adds r1, r6, r2
	ldrh r1, [r1]
	adds r3, #0x40
	adds r2, r6, r3
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	bne _08013B14
	b _08013D3C
_08013B14:
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08013B4C
	ldr r0, [r7]
	cmp r0, #1
	bne _08013B36
	ldr r1, [r5, #0xc]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xa
	b _08013B64
_08013B36:
	ldr r1, [r5, #0xc]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xa
	b _08013B86
_08013B4C:
	ldr r0, [r7]
	cmp r0, #1
	bne _08013B74
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r3, _08013B70 @ =0xFFFE0000
_08013B64:
	str r4, [sp]
	movs r2, #9
	bl sub_80082DC
	b _08013D3C
	.align 2, 0
_08013B70: .4byte 0xFFFE0000
_08013B74:
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r3, _08013B90 @ =0xFFFE0000
_08013B86:
	str r4, [sp]
	movs r2, #8
	bl sub_80082DC
	b _08013D3C
	.align 2, 0
_08013B90: .4byte 0xFFFE0000
_08013B94:
	cmp r0, #4
	beq _08013B9A
	b _08013CC8
_08013B9A:
	movs r0, #1
	str r0, [r6, #0x5c]
	ldr r0, _08013C40 @ =gUnknown_020003F8
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08013BCE
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r3, r6, r0
	ldrh r0, [r3]
	cmp r0, #0xf
	bne _08013BCE
	movs r1, #0xad
	lsls r1, r1, #2
	adds r2, r6, r1
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _08013BCE
	movs r1, #0
	movs r0, #0xb
	strh r0, [r3]
	strb r1, [r2]
_08013BCE:
	movs r7, #0
	ldr r4, _08013C44 @ =gUnknown_02013730
	mov r8, r4
	adds r2, r4, #4
	mov ip, r2
_08013BD8:
	movs r0, #0x8c
	adds r3, r7, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08013CAE
	mov r0, r8
	adds r0, #0x10
	adds r5, r3, r0
	ldr r0, [r5]
	cmp r0, #0
	bne _08013CAE
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08013C50
	adds r0, r3, r4
	ldr r2, [r6]
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r1, r1, r2
	mov sl, r1
	ldr r1, [r0]
	cmp r1, sl
	blt _08013CAE
	movs r0, #0x80
	lsls r0, r0, #0xf
	adds r2, r2, r0
	cmp r1, r2
	bgt _08013CAE
	adds r1, r3, #0
	add r1, ip
	ldr r2, [r6, #4]
	ldr r0, _08013C48 @ =0xFFA80000
	adds r0, r0, r2
	mov sl, r0
	ldr r1, [r1]
	cmp r1, sl
	blt _08013CAE
	ldr r0, _08013C4C @ =0xFFF80000
	adds r2, r2, r0
	cmp r1, r2
	bgt _08013CAE
	adds r0, r4, #0
	adds r0, #0x30
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, #0
	bge _08013CAE
	b _08013C8E
	.align 2, 0
_08013C40: .4byte gUnknown_020003F8
_08013C44: .4byte gUnknown_02013730
_08013C48: .4byte 0xFFA80000
_08013C4C: .4byte 0xFFF80000
_08013C50:
	adds r1, r3, r4
	ldr r2, [r6]
	ldr r0, _08013CB8 @ =0xFFC00000
	adds r0, r0, r2
	mov sl, r0
	ldr r1, [r1]
	cmp r1, sl
	blt _08013CAE
	ldr r0, _08013CBC @ =0xFFE00000
	adds r2, r2, r0
	cmp r1, r2
	bgt _08013CAE
	adds r1, r3, #0
	add r1, ip
	ldr r2, [r6, #4]
	ldr r0, _08013CC0 @ =0xFFA80000
	adds r0, r0, r2
	mov sl, r0
	ldr r1, [r1]
	cmp r1, sl
	blt _08013CAE
	ldr r0, _08013CC4 @ =0xFFF80000
	adds r2, r2, r0
	cmp r1, r2
	bgt _08013CAE
	adds r0, r4, #0
	adds r0, #0x30
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, #0
	ble _08013CAE
_08013C8E:
	rsbs r0, r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0x40
	adds r1, r3, r1
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	movs r0, #1
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r3, r1
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08013CAE:
	adds r7, #1
	cmp r7, #9
	ble _08013BD8
	b _08013D3C
	.align 2, 0
_08013CB8: .4byte 0xFFC00000
_08013CBC: .4byte 0xFFE00000
_08013CC0: .4byte 0xFFA80000
_08013CC4: .4byte 0xFFF80000
_08013CC8:
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r2, _08013D14 @ =0x0000028A
	adds r1, r6, r2
	ldrh r1, [r1]
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _08013D3C
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08013D18
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
_08013CFC:
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
_08013D00:
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
	b _08013D3C
	.align 2, 0
_08013D14: .4byte 0x0000028A
_08013D18:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
_08013D3C:
	ldr r1, _08013D4C @ =0x000002B7
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013D50
	movs r0, #0
	b _08013D52
	.align 2, 0
_08013D4C: .4byte 0x000002B7
_08013D50:
	movs r0, #1
_08013D52:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8013D64
sub_8013D64: @ 0x08013D64
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r4, [r7, #0x48]
	cmp r4, #0
	bne _08013DAC
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_8006FFC
	movs r0, #1
	str r0, [r7, #0x48]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x64
	bl sub_80040F4
	ldr r0, _08013E08 @ =gUnknown_0201A5E0
	str r4, [r0]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	ldr r0, _08013E0C @ =gUnknown_0201A5F0
	str r4, [sp]
	movs r1, #0xb
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
_08013DAC:
	adds r0, r7, #0
	bl sub_800709C
	adds r1, r7, #0
	bl sub_800BB64
	ldr r6, _08013E0C @ =gUnknown_0201A5F0
	ldr r0, [r7]
	str r0, [r6]
	ldr r0, [r7, #4]
	str r0, [r6, #4]
	ldr r0, [r7, #8]
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_800B054
	ldr r0, _08013E10 @ =gUnknown_0826260C
	ldrh r1, [r6, #0x16]
	ldrh r2, [r6, #0x18]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _08013E44
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _08013E14
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
	b _08013E38
	.align 2, 0
_08013E08: .4byte gUnknown_0201A5E0
_08013E0C: .4byte gUnknown_0201A5F0
_08013E10: .4byte gUnknown_0826260C
_08013E14:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	bl sub_800A2EC
_08013E38:
	cmp r0, #0
	beq _08013E44
	ldr r0, _08013E54 @ =gUnknown_087F78CC
	movs r1, #0
	bl sub_8003A9C
_08013E44:
	ldr r1, _08013E58 @ =0x000002B7
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013E5C
	movs r0, #0
	b _08013E5E
	.align 2, 0
_08013E54: .4byte gUnknown_087F78CC
_08013E58: .4byte 0x000002B7
_08013E5C:
	movs r0, #1
_08013E5E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8013E68
sub_8013E68: @ 0x08013E68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r1, _08013F98 @ =gUnknown_0201A638
	movs r0, #0
	str r0, [r1]
	movs r1, #5
	str r1, [r7, #0xc]
	str r1, [r7, #0x10]
	str r0, [r7, #0x28]
	str r0, [r7]
	str r0, [r7, #4]
	str r0, [r7, #8]
	movs r1, #1
	str r1, [r7, #0x14]
	str r0, [r7, #0x18]
	str r0, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _08013F9C @ =sub_80131FC
	str r0, [r1]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _08013FA0 @ =sub_80133B0
	str r0, [r1]
	movs r0, #0xae
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _08013FA4 @ =sub_8013500
	str r0, [r1]
	adds r2, #0x10
	adds r1, r7, r2
	ldr r0, _08013FA8 @ =sub_801377C
	str r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _08013FAC @ =sub_8013D64
	str r0, [r1]
	adds r2, #0x4c
	adds r1, r7, r2
	ldr r0, _08013FB0 @ =sub_80139F0
	str r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, _08013FB4 @ =sub_8013200
	str r0, [r1]
	adds r2, #0x94
	adds r1, r7, r2
	ldr r0, _08013FB8 @ =sub_80132BC
	str r0, [r1]
	movs r0, #0
	ldr r1, _08013FBC @ =gUnknown_0826260C
	mov r8, r1
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x2c
_08013EE4:
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #7
	bls _08013EE4
	movs r2, #0x93
	lsls r2, r2, #2
	adds r0, r7, r2
	mov r1, r8
	str r1, [r0]
	movs r5, #0
	str r5, [sp, #4]
	ldr r4, _08013FC0 @ =0x040000D4
	add r2, sp, #4
	str r2, [r4]
	movs r1, #0xa2
	lsls r1, r1, #2
	adds r0, r7, r1
	str r0, [r4, #4]
	ldr r0, _08013FC4 @ =0x8500000B
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r1, #0x80
	movs r2, #0
	movs r3, #0x50
	bl sub_8006FC8
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r7, r1
	str r5, [r0]
	str r5, [r7, #0x24]
	movs r0, #0
	mov r1, r8
	bl sub_801A42C
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r6, #1
	str r6, [r0]
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0
	strh r5, [r0]
	adds r2, #0x18
	adds r0, r7, r2
	strb r1, [r0]
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800ACF8
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x64
	bl sub_80040F4
	str r5, [sp, #4]
	add r0, sp, #4
	str r0, [r4]
	ldr r0, _08013FC8 @ =gUnknown_0201A5F0
	str r0, [r4, #4]
	ldr r1, _08013FCC @ =0x85000012
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	mov r1, r8
	str r1, [r0, #0x40]
	str r6, [r0, #0x30]
	strh r5, [r0, #0x34]
	str r5, [sp]
	movs r1, #8
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013F98: .4byte gUnknown_0201A638
_08013F9C: .4byte sub_80131FC
_08013FA0: .4byte sub_80133B0
_08013FA4: .4byte sub_8013500
_08013FA8: .4byte sub_801377C
_08013FAC: .4byte sub_8013D64
_08013FB0: .4byte sub_80139F0
_08013FB4: .4byte sub_8013200
_08013FB8: .4byte sub_80132BC
_08013FBC: .4byte gUnknown_0826260C
_08013FC0: .4byte 0x040000D4
_08013FC4: .4byte 0x8500000B
_08013FC8: .4byte gUnknown_0201A5F0
_08013FCC: .4byte 0x85000012

	thumb_func_start sub_8013FD0
sub_8013FD0:
	movs r0, #0
	bx lr

	thumb_func_start sub_8013FD4
sub_8013FD4: @ 0x08013FD4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x48]
	cmp r1, #0
	bne _0801401A
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	subs r2, #0x14
	adds r0, r4, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	str r1, [r4, #0x28]
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_0801401A:
	adds r0, r4, #0
	bl sub_800709C
	adds r1, r4, #0
	bl sub_800BB64
	ldr r1, _0801404C @ =gUnknown_02000800
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl sub_801439C
	ldr r0, _08014050 @ =gUnknown_020003EC
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _08014054 @ =gUnknown_020003F4
	ldr r0, [r0]
	str r0, [r4, #4]
	movs r0, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801404C: .4byte gUnknown_02000800
_08014050: .4byte gUnknown_020003EC
_08014054: .4byte gUnknown_020003F4

	thumb_func_start sub_8014058
sub_8014058: @ 0x08014058
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _080140A2
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r4, r2
	str r5, [r0]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r0, r4, r3
	str r5, [r0]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0]
	subs r2, #4
	adds r0, r4, r2
	str r1, [r0]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #7
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_080140A2:
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r6, r4, r3
	ldr r5, [r6]
	adds r0, r4, #0
	bl sub_800709C
	adds r1, r4, #0
	bl sub_800BB64
	cmp r5, #0
	beq _080140EC
	ldr r2, [r6]
	cmp r2, #0
	bne _080140EC
	asrs r5, r5, #2
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080140D8
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r5, r0
	bgt _080140E4
	subs r0, r0, r5
	b _080140EA
_080140D8:
	movs r3, #0x94
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r0, [r1]
	cmn r5, r0
	ble _080140E8
_080140E4:
	str r2, [r1]
	b _080140EC
_080140E8:
	adds r0, r0, r5
_080140EA:
	str r0, [r1]
_080140EC:
	ldr r1, _08014110 @ =gUnknown_020003F8
	ldrh r3, [r1]
	movs r0, #0x20
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08014114
	ldr r2, [r4, #8]
	cmp r2, #0
	bne _0801410A
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r4, r3
	str r2, [r0]
_0801410A:
	movs r0, #1
	str r0, [r4, #8]
	b _0801412C
	.align 2, 0
_08014110: .4byte gUnknown_020003F8
_08014114:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0801412C
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0801412A
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r4, r3
	str r2, [r0]
_0801412A:
	str r2, [r4, #8]
_0801412C:
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r6, r4, r0
	ldr r0, [r6]
	cmp r0, #6
	bne _080141D8
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl sub_8003C5C
	adds r5, r0, #0
	cmp r5, #0x15
	bgt _08014152
	cmp r5, #0x10
	blt _08014152
	movs r0, #8
	str r0, [r6]
_08014152:
	movs r3, #2
	ldrsh r0, [r4, r3]
	movs r2, #6
	ldrsh r1, [r4, r2]
	adds r1, #1
	bl sub_8003C5C
	adds r5, r0, #0
	subs r0, r5, #2
	cmp r0, #5
	bhi _080141A8
	lsls r0, r0, #2
	ldr r1, _08014174 @ =_08014178
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014174: .4byte _08014178
_08014178: @ jump table
	.4byte _08014190 @ case 0
	.4byte _08014196 @ case 1
	.4byte _0801419C @ case 2
	.4byte _0801419C @ case 3
	.4byte _080141A2 @ case 4
	.4byte _080141A2 @ case 5
_08014190:
	movs r0, #0x80
	lsls r0, r0, #6
	b _080141AA
_08014196:
	movs r0, #0xe0
	lsls r0, r0, #8
	b _080141AA
_0801419C:
	movs r0, #0x80
	lsls r0, r0, #5
	b _080141AA
_080141A2:
	movs r0, #0xf0
	lsls r0, r0, #8
	b _080141AA
_080141A8:
	movs r0, #0
_080141AA:
	str r0, [r4, #0x4c]
	ldr r0, _080141CC @ =gUnknown_020003F8
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08014248
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080141D0
	movs r3, #0x98
	lsls r3, r3, #2
	adds r1, r4, r3
	b _08014234
	.align 2, 0
_080141CC: .4byte gUnknown_020003F8
_080141D0:
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	b _0801423C
_080141D8:
	cmp r0, #8
	bne _08014210
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08014200
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080141F8
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	b _08014234
_080141F8:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r4, r2
	b _0801423C
_08014200:
	movs r3, #0x98
	lsls r3, r3, #2
	adds r0, r4, r3
	str r1, [r0]
	movs r2, #0x99
	lsls r2, r2, #2
	adds r0, r4, r2
	b _08014256
_08014210:
	cmp r0, #7
	bne _08014258
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08014248
	movs r3, #0x98
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r0, [r1]
	cmp r0, #0
	bne _08014258
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0801423C
_08014234:
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r1]
	b _08014258
_0801423C:
	ldr r0, _08014244 @ =0xFFFC0000
	str r0, [r1]
	b _08014258
	.align 2, 0
_08014244: .4byte 0xFFFC0000
_08014248:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r0, r4, r3
_08014256:
	str r1, [r0]
_08014258:
	ldr r2, _08014290 @ =gUnknown_020003E8
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080142A2
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _080142A2
	ldr r0, _08014294 @ =gUnknown_087F7990
	movs r1, #0
	bl sub_8003A9C
	ldr r0, [r4, #0x58]
	subs r0, #1
	str r0, [r4, #0x58]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08014298
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	b _080142A0
	.align 2, 0
_08014290: .4byte gUnknown_020003E8
_08014294: .4byte gUnknown_087F7990
_08014298:
	movs r2, #0x94
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r0, _0801437C @ =0xFFF90000
_080142A0:
	str r0, [r1]
_080142A2:
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080142C8
	movs r3, #0x9d
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r0, [r1]
	cmp r0, #6
	bne _080142C8
	movs r0, #7
	str r0, [r1]
	movs r0, #0x95
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r1]
_080142C8:
	ldr r0, [r4]
	bl sub_800BB44
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_800BB54
	adds r3, r0, #0
	adds r1, r5, #0
	adds r1, #0x1f
	movs r0, #0x97
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08014370
	adds r0, r3, #0
	adds r0, #0x1f
	cmp r0, #0xfe
	bhi _08014370
	ldr r1, [r4, #8]
	ldr r2, _08014380 @ =0x0000028A
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _08014384 @ =gUnknown_020119F0
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	adds r2, #2
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	subs r0, #0x20
	ldr r1, _08014388 @ =0x000002AA
	adds r2, r4, r1
	strh r0, [r2]
	adds r0, r3, #0
	subs r0, #0x10
	adds r1, #2
	adds r3, r4, r1
	strh r0, [r3]
	ldr r1, _0801438C @ =gUnknown_087F8B90
	ldr r0, [r4, #0x4c]
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r1, _08014390 @ =gUnknown_087F8BB0
	ldr r0, [r4, #0x4c]
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldr r2, _08014394 @ =0x000002AE
	adds r0, r4, r2
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r0, r4, r3
	strh r1, [r0]
	movs r0, #0xa7
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #3
	str r0, [r1]
	ldr r1, [r4, #0x4c]
	adds r2, #4
	adds r0, r4, r2
	strh r1, [r0]
	subs r3, #0x28
	adds r0, r4, r3
	ldr r1, _08014398 @ =gUnknown_02010B20
	subs r3, #0x3c
	adds r2, r4, r3
	ldr r2, [r2]
	bl sub_801A43C
_08014370:
	movs r0, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801437C: .4byte 0xFFF90000
_08014380: .4byte 0x0000028A
_08014384: .4byte gUnknown_020119F0
_08014388: .4byte 0x000002AA
_0801438C: .4byte gUnknown_087F8B90
_08014390: .4byte gUnknown_087F8BB0
_08014394: .4byte 0x000002AE
_08014398: .4byte gUnknown_02010B20

	thumb_func_start sub_801439C
sub_801439C: @ 0x0801439C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r1, #0
	str r1, [r5, #0x4c]
	movs r0, #5
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	movs r0, #0x60
	str r0, [r5, #0x28]
	str r1, [r5]
	str r1, [r5, #4]
	str r1, [r5, #8]
	movs r0, #1
	str r0, [r5, #0x14]
	str r1, [r5, #0x18]
	str r1, [r5, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _08014474 @ =sub_8013FD0+1
	str r0, [r1]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, _08014478 @ =sub_8014058
	str r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _0801447C @ =sub_8013FD4
	str r0, [r1]
	movs r0, #0
	ldr r6, _08014480 @ =gUnknown_08263924
	movs r2, #0
	adds r1, r5, #0
	adds r1, #0x2c
_080143E6:
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #7
	bls _080143E6
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r5, r1
	str r6, [r0]
	movs r4, #0
	str r4, [sp, #4]
	ldr r1, _08014484 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	movs r2, #0xa2
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1, #4]
	ldr r0, _08014488 @ =0x8500000B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0x10
	movs r2, #0
	movs r3, #0x10
	bl sub_8006FC8
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #6
	str r0, [r1]
	str r4, [r5, #0x24]
	movs r0, #0
	adds r1, r6, #0
	bl sub_801A42C
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _0801448C @ =gUnknown_02013114
	ldr r0, [r0]
	str r0, [r1]
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	strh r4, [r0]
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800ACF8
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0x20
	bl sub_80040F4
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014474: .4byte sub_8013FD0+1
_08014478: .4byte sub_8014058
_0801447C: .4byte sub_8013FD4
_08014480: .4byte gUnknown_08263924
_08014484: .4byte 0x040000D4
_08014488: .4byte 0x8500000B
_0801448C: .4byte gUnknown_02013114

	thumb_func_start sub_8014490
sub_8014490: @ 0x08014490
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	ldr r0, _080144A0 @ =gUnknown_02012628
	ldr r0, [r0]
	cmp r0, #0
	beq _080144A4
	movs r0, #0
	b _08014518
	.align 2, 0
_080144A0: .4byte gUnknown_02012628
_080144A4:
	ldr r0, [r1, #0x58]
	cmp r0, #1
	beq _080144CC
	cmp r0, #1
	blo _080144BC
	cmp r0, #2
	beq _080144DC
	ldr r6, _080144B8 @ =gUnknown_0201A660
	b _080144E4
	.align 2, 0
_080144B8: .4byte gUnknown_0201A660
_080144BC:
	ldr r1, _080144C4 @ =gUnknown_0201A660
	ldr r0, _080144C8 @ =gUnknown_087F8BD0
	b _080144E0
	.align 2, 0
_080144C4: .4byte gUnknown_0201A660
_080144C8: .4byte gUnknown_087F8BD0
_080144CC:
	ldr r1, _080144D4 @ =gUnknown_0201A660
	ldr r0, _080144D8 @ =gUnknown_087F8C40
	b _080144E0
	.align 2, 0
_080144D4: .4byte gUnknown_0201A660
_080144D8: .4byte gUnknown_087F8C40
_080144DC:
	ldr r1, _08014520 @ =gUnknown_0201A660
	ldr r0, _08014524 @ =gUnknown_087F8CB8
_080144E0:
	str r0, [r1]
	adds r6, r1, #0
_080144E4:
	ldr r5, _08014528 @ =gUnknown_0201A66C
	ldr r1, [r5]
	adds r1, #1
	str r1, [r5]
	ldr r4, _0801452C @ =gUnknown_0201A668
	ldr r3, [r4]
	ldr r2, [r6]
	lsls r0, r3, #3
	adds r0, r0, r2
	ldr r0, [r0, #4]
	cmp r1, r0
	bls _08014504
	movs r0, #0
	str r0, [r5]
	adds r0, r3, #1
	str r0, [r4]
_08014504:
	ldr r0, _08014530 @ =gUnknown_020154DC
	ldr r1, [r4]
	str r1, [r0]
	ldr r2, _08014534 @ =gUnknown_020154E0
	ldr r0, [r5]
	str r0, [r2]
	ldr r0, [r6]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, [r1]
_08014518:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08014520: .4byte gUnknown_0201A660
_08014524: .4byte gUnknown_087F8CB8
_08014528: .4byte gUnknown_0201A66C
_0801452C: .4byte gUnknown_0201A668
_08014530: .4byte gUnknown_020154DC
_08014534: .4byte gUnknown_020154E0

	thumb_func_start sub_8014538
sub_8014538: @ 0x08014538
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	mov ip, r1
	ldr r1, [r1, #4]
	cmp r1, #0
	bge _0801454A
	movs r1, #0
	mov r2, ip
	str r1, [r2, #4]
_0801454A:
	ldr r3, _08014574 @ =gUnknown_0201A640
	ldr r2, _08014578 @ =gUnknown_02015590
	ldr r1, [r2, #8]
	str r1, [r3, #8]
	ldr r1, [r2]
	str r1, [r3]
	ldr r1, [r2, #0xc]
	str r1, [r3, #0xc]
	ldr r1, [r2, #4]
	str r1, [r3, #4]
	mov r2, ip
	ldr r1, [r2, #8]
	adds r5, r3, #0
	cmp r1, #0
	bne _0801457C
	movs r1, #0x60
	str r1, [r5, #8]
	movs r1, #0x40
	str r1, [r5]
	b _08014584
	.align 2, 0
_08014574: .4byte gUnknown_0201A640
_08014578: .4byte gUnknown_02015590
_0801457C:
	movs r1, #0x8f
	str r1, [r5]
	movs r1, #0xaf
	str r1, [r5, #8]
_08014584:
	mov r3, ip
	movs r2, #2
	ldrsh r1, [r3, r2]
	ldr r2, _080145AC @ =gUnknown_0201A664
	ldr r3, [r2]
	subs r4, r1, r3
	movs r1, #2
	ands r6, r1
	adds r7, r2, #0
	ldr r1, [r5]
	cmp r4, r1
	bge _080145B6
	cmp r3, #0
	ble _080145B6
	subs r1, r1, r4
	cmp r1, #7
	ble _080145B0
	subs r1, r3, #7
	str r1, [r7]
	b _0801461A
	.align 2, 0
_080145AC: .4byte gUnknown_0201A664
_080145B0:
	subs r1, r3, r1
	str r1, [r7]
	b _0801461A
_080145B6:
	ldr r2, [r5, #4]
	cmp r4, r2
	bge _080145D4
	movs r1, #0x98
	lsls r1, r1, #2
	add r1, ip
	ldr r1, [r1]
	cmp r1, #0
	bgt _0801461A
	ldr r1, [r7]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	mov r3, ip
	str r1, [r3]
	b _0801461A
_080145D4:
	ldr r6, [r5, #8]
	cmp r4, r6
	ble _080145FE
	ldr r3, [r7]
	adds r1, r3, #0
	adds r1, #0xf0
	ldr r2, _080145F4 @ =gUnknown_0201550C
	ldr r2, [r2]
	cmp r1, r2
	bge _080145FE
	subs r1, r4, r6
	cmp r1, #7
	ble _080145F8
	adds r1, r3, #7
	str r1, [r7]
	b _0801461A
	.align 2, 0
_080145F4: .4byte gUnknown_0201550C
_080145F8:
	adds r1, r3, r1
	str r1, [r7]
	b _0801461A
_080145FE:
	ldr r2, [r5, #0xc]
	cmp r4, r2
	ble _0801461A
	movs r1, #0x98
	lsls r1, r1, #2
	add r1, ip
	ldr r1, [r1]
	cmp r1, #0
	blt _0801461A
	ldr r1, [r7]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	mov r2, ip
	str r1, [r2]
_0801461A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8014620
sub_8014620: @ 0x08014620
	movs r0, #0
	bx lr

	thumb_func_start sub_8014624
sub_8014624: @ 0x08014624
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, [r4, #0x48]
	cmp r2, #0
	bne _0801466C
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r2, [r0]
	subs r1, #0x14
	adds r0, r4, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r2, [r0]
	str r2, [r4, #0x28]
	ldr r1, [r4, #0x58]
	lsls r1, r1, #1
	str r2, [sp]
	adds r0, r4, #0
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_0801466C:
	adds r0, r4, #0
	bl sub_800709C
	ldr r1, _080146AC @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080146A0
	ldr r0, _080146B0 @ =gUnknown_02013118
	movs r1, #0
	str r1, [r0]
	ldr r0, _080146B4 @ =gUnknown_02012630
	str r1, [r0]
	ldr r1, _080146B8 @ =gUnknown_02000800
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl sub_80149E8
	ldr r0, _080146BC @ =gUnknown_020003EC
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _080146C0 @ =gUnknown_020003F4
	ldr r0, [r0]
	str r0, [r4, #4]
_080146A0:
	movs r0, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080146AC: .4byte 0x000002B7
_080146B0: .4byte gUnknown_02013118
_080146B4: .4byte gUnknown_02012630
_080146B8: .4byte gUnknown_02000800
_080146BC: .4byte gUnknown_020003EC
_080146C0: .4byte gUnknown_020003F4

	thumb_func_start sub_80146C4
sub_80146C4: @ 0x080146C4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_8014490
	adds r7, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _0801471E
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r4, r2
	str r5, [r0]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r0, r4, r3
	str r5, [r0]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0]
	subs r2, #4
	adds r0, r4, r2
	str r1, [r0]
	ldr r1, [r4, #0x58]
	lsls r1, r1, #1
	str r5, [sp]
	adds r0, r4, #0
	movs r2, #0xff
	movs r3, #7
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
	ldr r1, _08014754 @ =gUnknown_0201A664
	ldr r0, _08014758 @ =gUnknown_02015500
	ldr r0, [r0]
	str r0, [r1]
_0801471E:
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r6, r4, r3
	ldr r5, [r6]
	adds r0, r4, #0
	bl sub_800709C
	adds r1, r4, #0
	bl sub_8014538
	cmp r5, #0
	beq _08014770
	ldr r2, [r6]
	cmp r2, #0
	bne _08014770
	asrs r5, r5, #2
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0801475C
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r5, r0
	bgt _08014768
	subs r0, r0, r5
	b _0801476E
	.align 2, 0
_08014754: .4byte gUnknown_0201A664
_08014758: .4byte gUnknown_02015500
_0801475C:
	movs r3, #0x94
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r0, [r1]
	cmn r5, r0
	ble _0801476C
_08014768:
	str r2, [r1]
	b _08014770
_0801476C:
	adds r0, r0, r5
_0801476E:
	str r0, [r1]
_08014770:
	movs r1, #0x20
	ands r1, r7
	cmp r1, #0
	beq _0801478C
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _08014786
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
_08014786:
	movs r0, #1
	str r0, [r4, #8]
	b _080147A4
_0801478C:
	movs r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq _080147A4
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _080147A2
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r4, r3
	str r1, [r0]
_080147A2:
	str r1, [r4, #8]
_080147A4:
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r6, r4, r0
	ldr r0, [r6]
	cmp r0, #6
	bne _08014842
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl sub_8003C5C
	adds r5, r0, #0
	cmp r5, #0x15
	bgt _080147CA
	cmp r5, #0x10
	blt _080147CA
	movs r0, #8
	str r0, [r6]
_080147CA:
	movs r3, #2
	ldrsh r0, [r4, r3]
	movs r2, #6
	ldrsh r1, [r4, r2]
	adds r1, #1
	bl sub_8003C5C
	adds r5, r0, #0
	subs r0, r5, #2
	cmp r0, #5
	bhi _08014820
	lsls r0, r0, #2
	ldr r1, _080147EC @ =_080147F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080147EC: .4byte _080147F0
_080147F0: @ jump table
	.4byte _08014808 @ case 0
	.4byte _0801480E @ case 1
	.4byte _08014814 @ case 2
	.4byte _08014814 @ case 3
	.4byte _0801481A @ case 4
	.4byte _0801481A @ case 5
_08014808:
	movs r0, #0x80
	lsls r0, r0, #6
	b _08014822
_0801480E:
	movs r0, #0xe0
	lsls r0, r0, #8
	b _08014822
_08014814:
	movs r0, #0x80
	lsls r0, r0, #5
	b _08014822
_0801481A:
	movs r0, #0xf0
	lsls r0, r0, #8
	b _08014822
_08014820:
	movs r0, #0
_08014822:
	str r0, [r4, #0x4c]
	movs r1, #2
	ands r1, r7
	cmp r1, #0
	beq _080148A4
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0801483A
	movs r3, #0x98
	lsls r3, r3, #2
	adds r1, r4, r3
	b _08014892
_0801483A:
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	b _0801489A
_08014842:
	cmp r0, #8
	bne _08014874
	movs r1, #2
	ands r1, r7
	cmp r1, #0
	beq _08014864
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0801485C
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	b _08014892
_0801485C:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r4, r2
	b _0801489A
_08014864:
	movs r3, #0x98
	lsls r3, r3, #2
	adds r0, r4, r3
	str r1, [r0]
	movs r2, #0x99
	lsls r2, r2, #2
	adds r0, r4, r2
	b _080148B2
_08014874:
	cmp r0, #7
	bne _080148B4
	movs r1, #2
	ands r1, r7
	cmp r1, #0
	beq _080148A4
	movs r3, #0x98
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r0, [r1]
	cmp r0, #0
	bne _080148B4
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0801489A
_08014892:
	movs r0, #0xfa
	lsls r0, r0, #0xa
	str r0, [r1]
	b _080148B4
_0801489A:
	ldr r0, _080148A0 @ =0xFFFC1800
	str r0, [r1]
	b _080148B4
	.align 2, 0
_080148A0: .4byte 0xFFFC1800
_080148A4:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
	movs r3, #0x99
	lsls r3, r3, #2
	adds r0, r4, r3
_080148B2:
	str r1, [r0]
_080148B4:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080148E6
	ldr r0, _080148D8 @ =gUnknown_087F7990
	movs r1, #0
	bl sub_8003A9C
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080148DC
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0xd0
	lsls r0, r0, #0xb
	b _080148E4
	.align 2, 0
_080148D8: .4byte gUnknown_087F7990
_080148DC:
	movs r2, #0x94
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r0, _080149C8 @ =0xFFF98000
_080148E4:
	str r0, [r1]
_080148E6:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _0801490A
	movs r3, #0x9d
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r0, [r1]
	cmp r0, #6
	bne _0801490A
	movs r0, #7
	str r0, [r1]
	movs r0, #0x95
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r1]
_0801490A:
	ldr r0, [r4]
	bl sub_800BB44
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_800BB54
	adds r3, r0, #0
	adds r1, r5, #0
	adds r1, #0x1f
	movs r0, #0x97
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080149BC
	adds r0, r3, #0
	adds r0, #0x1f
	cmp r0, #0xfe
	bhi _080149BC
	ldr r0, [r4, #0x58]
	lsls r0, r0, #1
	ldr r1, _080149CC @ =0x0000028A
	adds r2, r4, r1
	strh r0, [r2]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r0, _080149D0 @ =gUnknown_020119F0
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	subs r0, #0x20
	ldr r1, _080149D4 @ =0x000002AA
	adds r2, r4, r1
	strh r0, [r2]
	adds r0, r3, #0
	subs r0, #0x10
	adds r1, #2
	adds r3, r4, r1
	strh r0, [r3]
	ldr r1, _080149D8 @ =gUnknown_087F8B90
	ldr r0, [r4, #0x4c]
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r1, _080149DC @ =gUnknown_087F8BB0
	ldr r0, [r4, #0x4c]
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldr r2, _080149E0 @ =0x000002AE
	adds r0, r4, r2
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r0, r4, r3
	strh r1, [r0]
	movs r0, #0xa7
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #3
	str r0, [r1]
	ldr r1, [r4, #0x4c]
	adds r2, #4
	adds r0, r4, r2
	strh r1, [r0]
	subs r3, #0x28
	adds r0, r4, r3
	ldr r1, _080149E4 @ =gUnknown_02010B20
	subs r3, #0x3c
	adds r2, r4, r3
	ldr r2, [r2]
	bl sub_801A43C
_080149BC:
	movs r0, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080149C8: .4byte 0xFFF98000
_080149CC: .4byte 0x0000028A
_080149D0: .4byte gUnknown_020119F0
_080149D4: .4byte 0x000002AA
_080149D8: .4byte gUnknown_087F8B90
_080149DC: .4byte gUnknown_087F8BB0
_080149E0: .4byte 0x000002AE
_080149E4: .4byte gUnknown_02010B20

	thumb_func_start sub_80149E8
sub_80149E8: @ 0x080149E8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08014ACC @ =gUnknown_0201A668
	movs r1, #0
	str r1, [r0]
	ldr r0, _08014AD0 @ =gUnknown_0201A66C
	str r1, [r0]
	str r1, [r5, #0x4c]
	movs r0, #5
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	movs r0, #0x60
	str r0, [r5, #0x28]
	str r1, [r5]
	str r1, [r5, #4]
	str r1, [r5, #8]
	movs r0, #1
	str r0, [r5, #0x14]
	str r1, [r5, #0x18]
	str r1, [r5, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, _08014AD4 @ =sub_8014620
	str r0, [r1]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, _08014AD8 @ =sub_80146C4
	str r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _08014ADC @ =sub_8014624
	str r0, [r1]
	movs r0, #0
	ldr r6, _08014AE0 @ =gUnknown_08421A54
	movs r2, #0
	adds r1, r5, #0
	adds r1, #0x2c
_08014A3A:
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #7
	bls _08014A3A
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r5, r1
	str r6, [r0]
	movs r4, #0
	str r4, [sp, #4]
	ldr r1, _08014AE4 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	movs r2, #0xa2
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1, #4]
	ldr r0, _08014AE8 @ =0x8500000B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0x10
	movs r2, #0
	movs r3, #0x10
	bl sub_8006FC8
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #6
	str r0, [r1]
	movs r0, #1
	str r0, [r5, #0x24]
	movs r0, #8
	adds r1, r6, #0
	bl sub_801A42C
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _08014AEC @ =gUnknown_02013114
	ldr r0, [r0]
	str r0, [r1]
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r2, #8
	movs r0, #8
	strh r0, [r1]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r5, r1
	strb r2, [r0]
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800ACF8
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_80040F4
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014ACC: .4byte gUnknown_0201A668
_08014AD0: .4byte gUnknown_0201A66C
_08014AD4: .4byte sub_8014620
_08014AD8: .4byte sub_80146C4
_08014ADC: .4byte sub_8014624
_08014AE0: .4byte gUnknown_08421A54
_08014AE4: .4byte 0x040000D4
_08014AE8: .4byte 0x8500000B
_08014AEC: .4byte gUnknown_02013114

	thumb_func_start sub_8014AF0
sub_8014AF0: @ 0x08014AF0
	ldr r1, [r0]
	ldr r2, _08014B0C @ =0xFFFF0000
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, _08014B10 @ =gUnknown_0201A6C0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	ldr r1, _08014B14 @ =gUnknown_0201A670
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08014B0C: .4byte 0xFFFF0000
_08014B10: .4byte gUnknown_0201A6C0
_08014B14: .4byte gUnknown_0201A670

	thumb_func_start sub_8014B18
sub_8014B18: @ 0x08014B18
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	str r1, [r0]
	ldr r1, _08014B34 @ =gUnknown_0201A6C0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	ldr r1, _08014B38 @ =gUnknown_0201A670
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08014B34: .4byte gUnknown_0201A6C0
_08014B38: .4byte gUnknown_0201A670

	thumb_func_start sub_8014B3C
sub_8014B3C:
	movs r0, #0
	bx lr

	thumb_func_start sub_8014B40
sub_8014B40: @ 0x08014B40
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x48]
	cmp r4, #0
	bne _08014B82
	ldr r0, _08014BD8 @ =gUnknown_087F7A38
	movs r1, #1
	bl sub_8003A9C
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	ldr r0, _08014BDC @ =gUnknown_0201A6C0
	str r4, [sp]
	movs r1, #5
	movs r2, #0xff
	movs r3, #5
	bl sub_800B0F4
	ldr r0, _08014BE0 @ =gUnknown_0201A670
	str r4, [sp]
	movs r1, #5
	movs r2, #0xff
	movs r3, #5
	bl sub_800B0F4
	movs r0, #1
	str r0, [r5, #0x48]
_08014B82:
	ldr r3, _08014BDC @ =gUnknown_0201A6C0
	ldrb r0, [r3, #0xf]
	ldr r2, _08014BE4 @ =gUnknown_0201A708
	cmp r0, #0
	beq _08014B90
	movs r0, #0
	str r0, [r2]
_08014B90:
	ldr r4, _08014BE0 @ =gUnknown_0201A670
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08014B9E
	ldr r1, _08014BE8 @ =gUnknown_0201A6B8
	movs r0, #0
	str r0, [r1]
_08014B9E:
	ldr r0, [r2]
	cmp r0, #0
	beq _08014BAA
	adds r0, r3, #0
	bl sub_800B054
_08014BAA:
	ldr r0, _08014BE8 @ =gUnknown_0201A6B8
	ldr r0, [r0]
	cmp r0, #0
	beq _08014BB8
	adds r0, r4, #0
	bl sub_800B054
_08014BB8:
	ldr r1, _08014BEC @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08014BCC
	adds r0, r5, #0
	bl sub_8006580
	movs r0, #0
	str r0, [r5, #0x20]
_08014BCC:
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08014BD8: .4byte gUnknown_087F7A38
_08014BDC: .4byte gUnknown_0201A6C0
_08014BE0: .4byte gUnknown_0201A670
_08014BE4: .4byte gUnknown_0201A708
_08014BE8: .4byte gUnknown_0201A6B8
_08014BEC: .4byte 0x000002B7

	thumb_func_start sub_8014BF0
sub_8014BF0: @ 0x08014BF0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0xa
	str r0, [r5, #0x28]
	ldr r4, [r5, #0x48]
	cmp r4, #0
	bne _08014C1A
	ldr r0, _08014C44 @ =gUnknown_087F783C
	movs r1, #1
	bl sub_8003A9C
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #6
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
_08014C1A:
	ldr r0, _08014C48 @ =gUnknown_0201A708
	ldr r0, [r0]
	cmp r0, #0
	beq _08014C28
	ldr r0, _08014C4C @ =gUnknown_0201A6C0
	bl sub_800B054
_08014C28:
	ldr r0, _08014C50 @ =gUnknown_0201A6B8
	ldr r0, [r0]
	cmp r0, #0
	beq _08014C36
	ldr r0, _08014C54 @ =gUnknown_0201A670
	bl sub_800B054
_08014C36:
	ldr r1, _08014C58 @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08014C5C
	movs r0, #0
	b _08014C5E
	.align 2, 0
_08014C44: .4byte gUnknown_087F783C
_08014C48: .4byte gUnknown_0201A708
_08014C4C: .4byte gUnknown_0201A6C0
_08014C50: .4byte gUnknown_0201A6B8
_08014C54: .4byte gUnknown_0201A670
_08014C58: .4byte 0x000002B7
_08014C5C:
	movs r0, #1
_08014C5E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8014C68
sub_8014C68: @ 0x08014C68
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _08014D0A
	ldr r6, _08014CF4 @ =gUnknown_0201A6C0
	ldr r0, [r4]
	ldr r2, _08014CF8 @ =0xFFCC0000
	adds r1, r0, r2
	str r1, [r6]
	ldr r7, _08014CFC @ =gUnknown_0201A670
	movs r1, #0xd0
	lsls r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r7]
	ldr r0, [r4, #4]
	ldr r2, _08014D00 @ =0xFFB00000
	adds r0, r0, r2
	str r0, [r6, #4]
	str r0, [r7, #4]
	ldr r0, _08014D04 @ =gUnknown_083A3ECC
	movs r1, #0
	movs r2, #0
	bl sub_801A44C
	cmp r0, #0
	beq _08014CB4
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #4]
	rsbs r2, r2, #0
	ldr r3, [r0, #8]
	rsbs r3, r3, #0
	ldr r0, [r0, #0x10]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_80040F4
_08014CB4:
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #7
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
	ldr r0, [r4, #0x58]
	adds r0, #1
	str r0, [r4, #0x58]
	cmp r0, #2
	bls _08014D08
	movs r0, #0xa
	str r0, [r4, #0x28]
	movs r0, #0xb
	b _08014D8A
	.align 2, 0
_08014CF4: .4byte gUnknown_0201A6C0
_08014CF8: .4byte 0xFFCC0000
_08014CFC: .4byte gUnknown_0201A670
_08014D00: .4byte 0xFFB00000
_08014D04: .4byte gUnknown_083A3ECC
_08014D08:
	str r5, [r4, #0x28]
_08014D0A:
	ldr r0, _08014D44 @ =gUnknown_0201A708
	ldr r0, [r0]
	cmp r0, #0
	beq _08014D18
	ldr r0, _08014D48 @ =gUnknown_0201A6C0
	bl sub_800B054
_08014D18:
	ldr r0, _08014D4C @ =gUnknown_0201A6B8
	ldr r0, [r0]
	cmp r0, #0
	beq _08014D26
	ldr r0, _08014D50 @ =gUnknown_0201A670
	bl sub_800B054
_08014D26:
	ldr r0, _08014D54 @ =gUnknown_020146D4
	ldr r0, [r0]
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	ble _08014D58
	subs r1, r1, r0
	movs r0, #0xb0
	lsls r0, r0, #0xf
	cmp r1, r0
	ble _08014D68
	adds r0, r4, #0
	bl sub_8014AF0
	b _08014D68
	.align 2, 0
_08014D44: .4byte gUnknown_0201A708
_08014D48: .4byte gUnknown_0201A6C0
_08014D4C: .4byte gUnknown_0201A6B8
_08014D50: .4byte gUnknown_0201A670
_08014D54: .4byte gUnknown_020146D4
_08014D58:
	subs r1, r0, r1
	movs r0, #0xb0
	lsls r0, r0, #0xf
	cmp r1, r0
	ble _08014D68
	adds r0, r4, #0
	bl sub_8014B18
_08014D68:
	ldr r1, _08014D80 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08014D88
	ldr r2, _08014D84 @ =0x000002B9
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #9
	bls _08014D88
	movs r0, #0xb
	b _08014D8A
	.align 2, 0
_08014D80: .4byte 0x000002B7
_08014D84: .4byte 0x000002B9
_08014D88:
	movs r0, #0
_08014D8A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8014D94
sub_8014D94: @ 0x08014D94
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0xa
	str r0, [r6, #0x28]
	ldr r1, [r6, #0x48]
	cmp r1, #0
	bne _08014E5E
	movs r0, #1
	str r0, [r6, #0x48]
	str r1, [sp]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	ldr r1, _08014DD0 @ =gUnknown_0201A70C
	ldr r0, [r1]
	adds r2, r0, #1
	movs r0, #7
	ands r2, r0
	str r2, [r1]
	cmp r2, #7
	bhi _08014E5A
	lsls r0, r2, #2
	ldr r1, _08014DD4 @ =_08014DD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014DD0: .4byte gUnknown_0201A70C
_08014DD4: .4byte _08014DD8
_08014DD8: @ jump table
	.4byte _08014DF8 @ case 0
	.4byte _08014E04 @ case 1
	.4byte _08014E10 @ case 2
	.4byte _08014E3C @ case 3
	.4byte _08014E16 @ case 4
	.4byte _08014E16 @ case 5
	.4byte _08014E3C @ case 6
	.4byte _08014F86 @ case 7
_08014DF8:
	ldr r0, _08014E00 @ =gUnknown_0201A6C0
	movs r1, #0
	str r1, [sp]
	b _08014E50
	.align 2, 0
_08014E00: .4byte gUnknown_0201A6C0
_08014E04:
	ldr r0, _08014E0C @ =gUnknown_0201A670
	movs r1, #0
	str r1, [sp]
	b _08014E50
	.align 2, 0
_08014E0C: .4byte gUnknown_0201A670
_08014E10:
	movs r0, #0
	str r0, [sp]
	b _08014E28
_08014E16:
	ldr r0, _08014E38 @ =gUnknown_0201A6C0
	movs r4, #0
	str r4, [sp]
	movs r1, #4
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
	str r4, [sp]
_08014E28:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	b _08014E5A
	.align 2, 0
_08014E38: .4byte gUnknown_0201A6C0
_08014E3C:
	ldr r0, _08014F38 @ =gUnknown_0201A6C0
	movs r4, #0
	str r4, [sp]
	movs r1, #4
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
	ldr r0, _08014F3C @ =gUnknown_0201A670
	str r4, [sp]
_08014E50:
	movs r1, #4
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
_08014E5A:
	movs r0, #0
	str r0, [r6, #0x58]
_08014E5E:
	ldr r0, _08014F40 @ =gUnknown_0201A708
	ldr r0, [r0]
	cmp r0, #0
	beq _08014EC0
	ldr r7, _08014F38 @ =gUnknown_0201A6C0
	adds r0, r7, #0
	bl sub_800B054
	ldr r0, _08014F44 @ =gUnknown_083A3ECC
	ldrh r1, [r7, #0x16]
	ldrh r2, [r7, #0x18]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _08014EC0
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r7]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r7, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_800A770
	ldr r0, _08014F48 @ =gUnknown_020146D4
	ldr r1, [r0]
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08014EC0
	ldr r0, [r1, #0x14]
	cmp r0, #0x3d
	beq _08014EC0
	movs r0, #0x3d
	bl sub_8006F10
_08014EC0:
	ldr r0, _08014F4C @ =gUnknown_0201A6B8
	ldr r0, [r0]
	cmp r0, #0
	beq _08014F22
	ldr r7, _08014F3C @ =gUnknown_0201A670
	adds r0, r7, #0
	bl sub_800B054
	ldr r0, _08014F44 @ =gUnknown_083A3ECC
	ldrh r1, [r7, #0x16]
	ldrh r2, [r7, #0x18]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _08014F22
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r7]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r7, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_800A770
	ldr r0, _08014F48 @ =gUnknown_020146D4
	ldr r1, [r0]
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08014F22
	ldr r0, [r1, #0x14]
	cmp r0, #0x3d
	beq _08014F22
	movs r0, #0x3d
	bl sub_8006F10
_08014F22:
	ldr r0, _08014F50 @ =gUnknown_0201A70C
	ldr r0, [r0]
	cmp r0, #6
	bls _08014F2C
	b _080151D0
_08014F2C:
	lsls r0, r0, #2
	ldr r1, _08014F54 @ =_08014F58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014F38: .4byte gUnknown_0201A6C0
_08014F3C: .4byte gUnknown_0201A670
_08014F40: .4byte gUnknown_0201A708
_08014F44: .4byte gUnknown_083A3ECC
_08014F48: .4byte gUnknown_020146D4
_08014F4C: .4byte gUnknown_0201A6B8
_08014F50: .4byte gUnknown_0201A70C
_08014F54: .4byte _08014F58
_08014F58: @ jump table
	.4byte _08014F74 @ case 0
	.4byte _08014F7C @ case 1
	.4byte _08014F90 @ case 2
	.4byte _08015178 @ case 3
	.4byte _08015070 @ case 4
	.4byte _080150EC @ case 5
	.4byte _08015178 @ case 6
_08014F74:
	ldr r0, _08014F78 @ =gUnknown_0201A6C0
	b _08014F7E
	.align 2, 0
_08014F78: .4byte gUnknown_0201A6C0
_08014F7C:
	ldr r0, _08014F8C @ =gUnknown_0201A670
_08014F7E:
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	bne _08014F86
	b _080151D0
_08014F86:
	movs r0, #1
	b _080151D2
	.align 2, 0
_08014F8C: .4byte gUnknown_0201A670
_08014F90:
	ldr r0, _08014FC4 @ =gUnknown_083A3ECC
	movs r1, #1
	movs r2, #0
	bl sub_801A44C
	adds r5, r0, #0
	ldr r0, [r6, #0x40]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r0, #0x14
	bne _08014FCC
	adds r5, #0x14
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, _08014FC8 @ =0xFFFF0000
	str r2, [sp]
	movs r2, #0xa
	movs r3, #0
	b _0801504E
	.align 2, 0
_08014FC4: .4byte gUnknown_083A3ECC
_08014FC8: .4byte 0xFFFF0000
_08014FCC:
	cmp r0, #0x28
	bne _08014FF8
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r3, _08014FF0 @ =0xFFFF8000
	ldr r4, _08014FF4 @ =0xFFFF0000
	str r4, [sp]
	movs r2, #0xa
	bl sub_80082DC
	adds r5, #0x28
	b _08015036
	.align 2, 0
_08014FF0: .4byte 0xFFFF8000
_08014FF4: .4byte 0xFFFF0000
_08014FF8:
	cmp r0, #0x3c
	bne _08015068
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r3, _0801505C @ =0xFFFF8000
	ldr r4, _08015060 @ =0xFFFF0000
	str r4, [sp]
	movs r2, #0xa
	bl sub_80082DC
	adds r5, #0x14
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	str r4, [sp]
	movs r2, #0xa
	movs r3, #0
	bl sub_80082DC
	adds r5, #0x14
_08015036:
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #8
	str r4, [sp]
	movs r2, #0xa
_0801504E:
	bl sub_80082DC
	ldr r0, _08015064 @ =gUnknown_087F7484
	movs r1, #2
	bl sub_8003A9C
	b _080151D0
	.align 2, 0
_0801505C: .4byte 0xFFFF8000
_08015060: .4byte 0xFFFF0000
_08015064: .4byte gUnknown_087F7484
_08015068:
	cmp r0, #0x50
	beq _0801506E
	b _080151D0
_0801506E:
	b _08014F86
_08015070:
	ldr r0, [r6, #0x40]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r0, #0x28
	bne _080150CA
	ldr r0, _080150DC @ =gUnknown_083A3ECC
	movs r1, #1
	movs r2, #0
	bl sub_801A44C
	adds r5, r0, #0
	adds r5, #0x14
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r4, _080150E0 @ =0xFFFF0000
	str r4, [sp]
	movs r2, #0xa
	movs r3, #0
	bl sub_80082DC
	adds r5, #0x14
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #8
	str r4, [sp]
	movs r2, #0xa
	bl sub_80082DC
	ldr r0, _080150E4 @ =gUnknown_087F7484
	movs r1, #2
	bl sub_8003A9C
_080150CA:
	ldr r1, _080150E8 @ =gUnknown_0201A6C0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	bne _080150D4
	b _080151D0
_080150D4:
	ldrh r0, [r1, #0x16]
	cmp r0, #4
	beq _08015152
	b _08014F86
	.align 2, 0
_080150DC: .4byte gUnknown_083A3ECC
_080150E0: .4byte 0xFFFF0000
_080150E4: .4byte gUnknown_087F7484
_080150E8: .4byte gUnknown_0201A6C0
_080150EC:
	ldr r0, [r6, #0x40]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r0, #0x28
	bne _08015142
	ldr r0, _08015164 @ =gUnknown_083A3ECC
	movs r1, #1
	movs r2, #0
	bl sub_801A44C
	adds r5, r0, #0
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r3, _08015168 @ =0xFFFF8000
	ldr r4, _0801516C @ =0xFFFF0000
	str r4, [sp]
	movs r2, #0xa
	bl sub_80082DC
	adds r5, #0x14
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	str r4, [sp]
	movs r2, #0xa
	movs r3, #0
	bl sub_80082DC
	ldr r0, _08015170 @ =gUnknown_087F7484
	movs r1, #2
	bl sub_8003A9C
_08015142:
	ldr r1, _08015174 @ =gUnknown_0201A670
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq _080151D0
	ldrh r0, [r1, #0x16]
	cmp r0, #4
	beq _08015152
	b _08014F86
_08015152:
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
	b _080151D0
	.align 2, 0
_08015164: .4byte gUnknown_083A3ECC
_08015168: .4byte 0xFFFF8000
_0801516C: .4byte 0xFFFF0000
_08015170: .4byte gUnknown_087F7484
_08015174: .4byte gUnknown_0201A670
_08015178:
	ldr r0, _080151C4 @ =gUnknown_0201A6C0
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _080151D0
	movs r0, #0x80
	lsls r0, r0, #0xf
	ldr r5, _080151C8 @ =gUnknown_02015530
	ldr r1, [r5]
	subs r1, #2
	lsls r1, r1, #0x10
	ldr r4, _080151CC @ =0xFFFE0000
	str r4, [sp]
	movs r2, #5
	movs r3, #0
	bl sub_80082DC
	movs r0, #0xc0
	lsls r0, r0, #0x10
	ldr r1, [r5]
	subs r1, #2
	lsls r1, r1, #0x10
	str r4, [sp]
	movs r2, #5
	movs r3, #0
	bl sub_80082DC
	movs r0, #0xa0
	lsls r0, r0, #0x11
	ldr r1, [r5]
	subs r1, #2
	lsls r1, r1, #0x10
	str r4, [sp]
	movs r2, #5
	movs r3, #0
	bl sub_80082DC
	b _08014F86
	.align 2, 0
_080151C4: .4byte gUnknown_0201A6C0
_080151C8: .4byte gUnknown_02015530
_080151CC: .4byte 0xFFFE0000
_080151D0:
	movs r0, #0
_080151D2:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80151DC
sub_80151DC: @ 0x080151DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r1, _08015340 @ =gUnknown_0201A70C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	movs r0, #0x20
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	ldr r0, _08015344 @ =gUnknown_0201A708
	movs r1, #1
	str r1, [r0]
	ldr r0, _08015348 @ =gUnknown_0201A6B8
	str r1, [r0]
	movs r0, #0
	str r0, [r7, #0x28]
	str r0, [r7]
	str r0, [r7, #4]
	str r0, [r7, #8]
	str r1, [r7, #0x14]
	str r0, [r7, #0x18]
	str r0, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _0801534C @ =sub_8014B3C+1
	str r0, [r1]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _08015350 @ =sub_8014C68
	str r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _08015354 @ =sub_8014D94
	str r0, [r1]
	adds r2, #0xf8
	adds r1, r7, r2
	ldr r0, _08015358 @ =sub_8014B40
	str r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, _0801535C @ =sub_8014BF0
	str r0, [r1]
	movs r0, #0
	ldr r1, _08015360 @ =gUnknown_083A3ECC
	mov sl, r1
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x2c
_0801524E:
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #7
	bls _0801524E
	movs r2, #0x93
	lsls r2, r2, #2
	adds r0, r7, r2
	mov r1, sl
	str r1, [r0]
	movs r6, #0
	str r6, [sp, #4]
	ldr r4, _08015364 @ =0x040000D4
	add r2, sp, #4
	str r2, [r4]
	movs r1, #0xa2
	lsls r1, r1, #2
	adds r0, r7, r1
	str r0, [r4, #4]
	ldr r0, _08015368 @ =0x8500000B
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r2, #0x94
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0
	movs r3, #0x50
	bl sub_8006FC8
	adds r0, r5, #0
	bl sub_8006FFC
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r7, r1
	str r6, [r0]
	movs r2, #1
	str r2, [r7, #0x24]
	movs r0, #8
	mov r1, sl
	bl sub_801A42C
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r2, _0801536C @ =gUnknown_02013114
	mov sb, r2
	ldr r0, [r2]
	adds r0, #1
	str r0, [r1]
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0
	movs r2, #8
	mov r8, r2
	mov r2, r8
	strh r2, [r0]
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800ACF8
	str r6, [sp, #4]
	add r0, sp, #4
	str r0, [r4]
	ldr r0, _08015370 @ =gUnknown_0201A6C0
	str r0, [r4, #4]
	ldr r1, _08015374 @ =0x85000012
	str r1, [r4, #8]
	ldr r2, [r4, #8]
	str r6, [sp, #4]
	add r2, sp, #4
	str r2, [r4]
	ldr r5, _08015378 @ =gUnknown_0201A670
	str r5, [r4, #4]
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	mov r1, sl
	str r1, [r0, #0x40]
	str r1, [r5, #0x40]
	mov r2, sb
	ldr r1, [r2]
	str r1, [r0, #0x30]
	mov r2, r8
	strh r2, [r0, #0x34]
	movs r2, #1
	str r2, [r0, #8]
	str r1, [r5, #0x30]
	mov r1, r8
	strh r1, [r5, #0x34]
	str r6, [r5, #8]
	str r6, [sp]
	movs r1, #3
	movs r2, #9
	movs r3, #3
	bl sub_800B0F4
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #9
	movs r3, #3
	bl sub_800B0F4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015340: .4byte gUnknown_0201A70C
_08015344: .4byte gUnknown_0201A708
_08015348: .4byte gUnknown_0201A6B8
_0801534C: .4byte sub_8014B3C+1
_08015350: .4byte sub_8014C68
_08015354: .4byte sub_8014D94
_08015358: .4byte sub_8014B40
_0801535C: .4byte sub_8014BF0
_08015360: .4byte gUnknown_083A3ECC
_08015364: .4byte 0x040000D4
_08015368: .4byte 0x8500000B
_0801536C: .4byte gUnknown_02013114
_08015370: .4byte gUnknown_0201A6C0
_08015374: .4byte 0x85000012
_08015378: .4byte gUnknown_0201A670

	thumb_func_start sub_801537C
sub_801537C: @ 0x0801537C
	movs r0, #0
	bx lr

	thumb_func_start sub_8015380
sub_8015380: @ 0x08015380
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _080153A6
	ldr r0, _080153C4 @ =gUnknown_087F7510
	movs r1, #1
	bl sub_8003A9C
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_080153A6:
	ldr r1, _080153C8 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080153BA
	adds r0, r4, #0
	bl sub_8006580
	movs r0, #0
	str r0, [r4, #0x20]
_080153BA:
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080153C4: .4byte gUnknown_087F7510
_080153C8: .4byte 0x000002B7

	thumb_func_start sub_80153CC
sub_80153CC: @ 0x080153CC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _080153FA
	ldr r1, _08015408 @ =gUnknown_0201A710
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0801540C @ =gUnknown_087F7B34
	movs r1, #1
	bl sub_8003A9C
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
_080153FA:
	ldr r1, _08015410 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015414
	movs r0, #0
	b _08015416
	.align 2, 0
_08015408: .4byte gUnknown_0201A710
_0801540C: .4byte gUnknown_087F7B34
_08015410: .4byte 0x000002B7
_08015414:
	movs r0, #1
_08015416:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8015420
sub_8015420: @ 0x08015420
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08015484 @ =gUnknown_083CE210
	movs r1, #0
	movs r2, #0
	bl sub_801A44C
	adds r5, r0, #0
	ldr r4, [r6, #0x48]
	cmp r4, #0
	bne _0801548E
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_8006FFC
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	str r4, [r0]
	cmp r5, #0
	beq _08015462
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #4]
	rsbs r2, r2, #0
	ldr r3, [r5, #8]
	rsbs r3, r3, #0
	ldr r0, [r5, #0x10]
	str r0, [sp]
	adds r0, r6, #0
	bl sub_80040F4
_08015462:
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #7
	bl sub_800ACF8
	movs r0, #1
	str r0, [r6, #0x48]
	ldr r0, _08015488 @ =gUnknown_0201A710
	ldr r0, [r0]
	cmp r0, #2
	bls _0801548C
	movs r0, #0xfa
	lsls r0, r0, #2
	str r0, [r6, #0x28]
	b _08015558
	.align 2, 0
_08015484: .4byte gUnknown_083CE210
_08015488: .4byte gUnknown_0201A710
_0801548C:
	str r4, [r6, #0x28]
_0801548E:
	adds r5, #0x14
	cmp r5, #0
	beq _080154E8
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _080154C2
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_800A770
	b _080154E8
_080154C2:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_800A770
_080154E8:
	adds r0, r6, #0
	bl sub_800709C
	ldr r1, _0801551C @ =0x000002B7
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08015544
	adds r0, r6, #0
	bl sub_800A6A0
	cmp r0, #0x60
	bls _08015534
	adds r0, r6, #0
	bl sub_800A65C
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08015520
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	b _08015528
	.align 2, 0
_0801551C: .4byte 0x000002B7
_08015520:
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, _08015530 @ =0xFFFF0000
_08015528:
	str r0, [r1]
	movs r0, #4
	b _0801555A
	.align 2, 0
_08015530: .4byte 0xFFFF0000
_08015534:
	adds r0, r6, #0
	bl sub_800A6A0
	cmp r0, #0x17
	bhi _08015544
	adds r0, r6, #0
	bl sub_800A65C
_08015544:
	ldr r1, _08015554 @ =0x000002B9
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x14
	bhi _08015558
	movs r0, #0
	b _0801555A
	.align 2, 0
_08015554: .4byte 0x000002B9
_08015558:
	movs r0, #0xb
_0801555A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8015564
sub_8015564: @ 0x08015564
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0801560C @ =gUnknown_083CE210
	movs r1, #0
	movs r2, #0
	bl sub_801A44C
	adds r6, r0, #0
	ldr r2, [r5, #0x48]
	cmp r2, #0
	bne _080155D2
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	ble _08015596
	movs r3, #0x98
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0
	bge _08015596
	str r2, [r1]
_08015596:
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	bge _080155B2
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	ble _080155B2
	movs r0, #0
	str r0, [r1]
_080155B2:
	movs r3, #0x96
	lsls r3, r3, #2
	adds r1, r5, r3
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
_080155D2:
	adds r0, r5, #0
	bl sub_800709C
	adds r6, #0x14
	cmp r6, #0
	beq _08015636
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08015610
	ldr r3, [r6, #4]
	lsls r1, r3, #0x10
	ldr r0, [r5]
	adds r0, r0, r1
	ldr r4, [r6, #8]
	lsls r2, r4, #0x10
	ldr r1, [r5, #4]
	adds r1, r1, r2
	ldr r2, [r6, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r6, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r5, [sp, #4]
	bl sub_800A770
	b _08015636
	.align 2, 0
_0801560C: .4byte gUnknown_083CE210
_08015610:
	ldr r2, [r6, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r5]
	subs r0, r0, r1
	ldr r4, [r6, #8]
	lsls r3, r4, #0x10
	ldr r1, [r5, #4]
	adds r1, r1, r3
	ldr r3, [r6, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r6, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r5, [sp, #4]
	bl sub_800A770
_08015636:
	ldr r1, _08015644 @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015648
	movs r0, #0
	b _0801564A
	.align 2, 0
_08015644: .4byte 0x000002B7
_08015648:
	movs r0, #1
_0801564A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8015654
sub_8015654: @ 0x08015654
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, _08015678 @ =gUnknown_0201A714
	ldr r0, [r0]
	cmp r0, #0
	bne _0801572E
	ldr r0, [r4, #0x44]
	cmp r0, #1
	beq _080156C0
	cmp r0, #1
	blo _0801567C
	cmp r0, #2
	beq _080156E2
	cmp r0, #3
	beq _0801570C
	b _0801598A
	.align 2, 0
_08015678: .4byte gUnknown_0201A714
_0801567C:
	ldr r1, _080156A8 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015688
	b _0801598A
_08015688:
	ldr r2, _080156AC @ =0x000002B9
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015694
	b _0801598A
_08015694:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080156B0
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0xa0
	lsls r0, r0, #0xb
	b _080156B8
	.align 2, 0
_080156A8: .4byte 0x000002B7
_080156AC: .4byte 0x000002B9
_080156B0:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r0, _080156BC @ =0xFFFB0000
_080156B8:
	str r0, [r1]
	b _08015966
	.align 2, 0
_080156BC: .4byte 0xFFFB0000
_080156C0:
	cmp r2, #0
	bne _080156C6
	b _0801598A
_080156C6:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080156DC
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _080156D8 @ =0xFFFB0000
	b _08015816
	.align 2, 0
_080156D8: .4byte 0xFFFB0000
_080156DC:
	movs r2, #0x98
	lsls r2, r2, #2
	b _08015810
_080156E2:
	cmp r2, #0
	bne _080156E8
	b _0801598A
_080156E8:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080156FA
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0xa0
	lsls r0, r0, #0xb
	b _08015702
_080156FA:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r0, _08015708 @ =0xFFFB0000
_08015702:
	str r0, [r1]
	b _0801587A
	.align 2, 0
_08015708: .4byte 0xFFFB0000
_0801570C:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08015720
	ldr r1, [r4]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bhs _0801571C
	b _0801598A
_0801571C:
	movs r0, #1
	b _0801598C
_08015720:
	ldr r1, [r4]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bls _0801572A
	b _0801598A
_0801572A:
	movs r0, #1
	b _0801598C
_0801572E:
	cmp r0, #1
	beq _08015734
	b _080158FC
_08015734:
	ldr r0, [r4, #0x44]
	cmp r0, #4
	bls _0801573C
	b _0801598A
_0801573C:
	lsls r0, r0, #2
	ldr r1, _08015748 @ =_0801574C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015748: .4byte _0801574C
_0801574C: @ jump table
	.4byte _08015760 @ case 0
	.4byte _080157C8 @ case 1
	.4byte _08015824 @ case 2
	.4byte _08015880 @ case 3
	.4byte _080158C0 @ case 4
_08015760:
	ldr r1, _080157B0 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801576C
	b _0801598A
_0801576C:
	ldr r2, _080157B4 @ =0x000002B9
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015778
	b _0801598A
_08015778:
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #2
	str r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r2, #0x96
	lsls r2, r2, #2
	adds r0, r4, r2
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080157B8
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0xa0
	lsls r0, r0, #0xb
	b _080157C0
	.align 2, 0
_080157B0: .4byte 0x000002B7
_080157B4: .4byte 0x000002B9
_080157B8:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r0, _080157C4 @ =0xFFFB0000
_080157C0:
	str r0, [r1]
	b _08015966
	.align 2, 0
_080157C4: .4byte 0xFFFB0000
_080157C8:
	ldr r2, [r4, #8]
	cmp r2, #0
	bne _080157D8
	ldr r1, [r4]
	movs r0, #0xb4
	lsls r0, r0, #0x11
	cmp r1, r0
	bgt _080157E8
_080157D8:
	cmp r2, #1
	beq _080157DE
	b _0801598A
_080157DE:
	ldr r1, [r4]
	ldr r0, _08015820 @ =0x0017FFFF
	cmp r1, r0
	ble _080157E8
	b _0801598A
_080157E8:
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r2, #0x96
	lsls r2, r2, #2
	adds r0, r4, r2
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	adds r2, #8
_08015810:
	adds r1, r4, r2
	movs r0, #0xa0
	lsls r0, r0, #0xb
_08015816:
	str r0, [r1]
	movs r0, #2
	str r0, [r4, #0x44]
	b _0801598A
	.align 2, 0
_08015820: .4byte 0x0017FFFF
_08015824:
	ldr r1, [r4, #4]
	ldr r0, _0801585C @ =0x0023FFFF
	cmp r1, r0
	ble _0801582E
	b _0801598A
_0801582E:
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r2, #0x96
	lsls r2, r2, #2
	adds r0, r4, r2
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08015864
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _08015860 @ =0xFFFB0000
	b _0801586E
	.align 2, 0
_0801585C: .4byte 0x0023FFFF
_08015860: .4byte 0xFFFB0000
_08015864:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r0, #0xa0
	lsls r0, r0, #0xb
_0801586E:
	str r0, [r1]
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
_0801587A:
	movs r0, #3
	str r0, [r4, #0x44]
	b _0801598A
_08015880:
	cmp r2, #0
	bne _08015886
	b _0801598A
_08015886:
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r4, r2
	bl sub_8006FFC
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	movs r2, #0x97
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	adds r2, #8
	adds r1, r4, r2
	ldr r0, _080158BC @ =0xFFFB0000
	str r0, [r1]
	movs r0, #4
	str r0, [r4, #0x44]
	b _0801598A
	.align 2, 0
_080158BC: .4byte 0xFFFB0000
_080158C0:
	cmp r2, #0
	beq _0801598A
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080158E0
	ldr r0, [r4, #4]
	ldr r1, _080158DC @ =0xFFFC0000
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4]
	movs r2, #0x94
	lsls r2, r2, #0xe
	b _080158EC
	.align 2, 0
_080158DC: .4byte 0xFFFC0000
_080158E0:
	ldr r0, [r4, #4]
	ldr r1, _080158F4 @ =0xFFFC0000
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r4]
	ldr r2, _080158F8 @ =0xFFDB0000
_080158EC:
	adds r0, r0, r2
	str r0, [r4]
	movs r0, #1
	b _0801598C
	.align 2, 0
_080158F4: .4byte 0xFFFC0000
_080158F8: .4byte 0xFFDB0000
_080158FC:
	cmp r0, #2
	bne _0801598A
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0801590C
	cmp r0, #1
	beq _08015970
	b _0801598A
_0801590C:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0xe
	bne _0801598A
	adds r0, r4, #0
	bl sub_800A65C
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r0, #1
	str r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08015950
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0xa0
	lsls r0, r0, #0xa
	b _08015958
_08015950:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r0, _0801596C @ =0xFFFD8000
_08015958:
	str r0, [r1]
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0xa0
	lsls r1, r1, #0xb
	str r1, [r0]
_08015966:
	movs r0, #1
	str r0, [r4, #0x44]
	b _0801598A
	.align 2, 0
_0801596C: .4byte 0xFFFD8000
_08015970:
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0801598A
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r0, #1
	b _0801598C
_0801598A:
	movs r0, #0
_0801598C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8015994
sub_8015994: @ 0x08015994
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0xa
	str r0, [r6, #0x28]
	ldr r4, [r6, #0x48]
	cmp r4, #0
	bne _080159E2
	movs r0, #1
	str r0, [r6, #0x48]
	movs r0, #0xf
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	movs r2, #0x97
	lsls r2, r2, #2
	adds r0, r6, r2
	str r1, [r0]
	ldr r0, _08015A3C @ =gUnknown_0201A710
	str r4, [r0]
	ldr r1, _08015A40 @ =gUnknown_0201A714
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	bls _080159DE
	str r4, [r1]
_080159DE:
	ldr r0, [r6]
	str r0, [r6, #0x40]
_080159E2:
	ldr r1, _08015A44 @ =gUnknown_020154A0
	movs r0, #0
	str r0, [r1]
	adds r0, r6, #0
	bl sub_800709C
	adds r7, r0, #0
	movs r3, #0x93
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r2, _08015A48 @ =0x0000028A
	adds r1, r6, r2
	ldrh r1, [r1]
	adds r3, #0x40
	adds r2, r6, r3
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _08015A72
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08015A4C
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_800A770
	b _08015A72
	.align 2, 0
_08015A3C: .4byte gUnknown_0201A710
_08015A40: .4byte gUnknown_0201A714
_08015A44: .4byte gUnknown_020154A0
_08015A48: .4byte 0x0000028A
_08015A4C:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_800A770
_08015A72:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_8015654
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8015A84
sub_8015A84: @ 0x08015A84
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r1, _08015B78 @ =gUnknown_0201A714
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	movs r0, #0x20
	str r0, [r6, #0xc]
	str r0, [r6, #0x10]
	movs r1, #0
	str r1, [r6, #0x28]
	str r1, [r6]
	str r1, [r6, #4]
	str r1, [r6, #8]
	movs r0, #1
	str r0, [r6, #0x14]
	str r1, [r6, #0x18]
	str r1, [r6, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _08015B7C @ =sub_801537C
	str r0, [r1]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r6, r2
	ldr r0, _08015B80 @ =sub_8015420
	str r0, [r1]
	movs r0, #0xae
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _08015B84 @ =sub_8015564
	str r0, [r1]
	adds r2, #0x28
	adds r1, r6, r2
	ldr r0, _08015B88 @ =sub_8015994
	str r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, _08015B8C @ =sub_8015380
	str r0, [r1]
	adds r2, #0xc8
	adds r1, r6, r2
	ldr r0, _08015B90 @ =sub_80153CC
	str r0, [r1]
	movs r0, #0
	ldr r7, _08015B94 @ =gUnknown_083CE210
	movs r2, #0
	adds r1, r6, #0
	adds r1, #0x2c
_08015AEC:
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #7
	bls _08015AEC
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	str r7, [r0]
	movs r5, #0
	str r5, [sp, #4]
	ldr r1, _08015B98 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	movs r2, #0xa2
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1, #4]
	ldr r0, _08015B9C @ =0x8500000B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r4, r6, r0
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0
	movs r3, #0x40
	bl sub_8006FC8
	adds r0, r4, #0
	bl sub_8006FFC
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	str r5, [r0]
	movs r0, #1
	str r0, [r6, #0x24]
	movs r0, #8
	adds r1, r7, #0
	bl sub_801A42C
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, _08015BA0 @ =gUnknown_02013114
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r2, #8
	movs r0, #8
	strh r0, [r1]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r6, r1
	strb r2, [r0]
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800ACF8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015B78: .4byte gUnknown_0201A714
_08015B7C: .4byte sub_801537C
_08015B80: .4byte sub_8015420
_08015B84: .4byte sub_8015564
_08015B88: .4byte sub_8015994
_08015B8C: .4byte sub_8015380
_08015B90: .4byte sub_80153CC
_08015B94: .4byte gUnknown_083CE210
_08015B98: .4byte 0x040000D4
_08015B9C: .4byte 0x8500000B
_08015BA0: .4byte gUnknown_02013114

	thumb_func_start sub_8015BA4
sub_8015BA4:
	movs r0, #0
	bx lr

	thumb_func_start sub_8015BA8
sub_8015BA8: @ 0x08015BA8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x48]
	cmp r4, #0
	bne _08015BFA
	bl sub_8006580
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
	subs r1, #0x14
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
	str r4, [r5, #0x28]
	ldr r0, _08015C18 @ =gUnknown_087F785C
	movs r1, #1
	bl sub_8003A9C
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xff
	movs r3, #5
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
_08015BFA:
	adds r0, r5, #0
	bl sub_800709C
	ldr r1, _08015C1C @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08015C0E
	movs r0, #0
	str r0, [r5, #0x20]
_08015C0E:
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08015C18: .4byte gUnknown_087F785C
_08015C1C: .4byte 0x000002B7

	thumb_func_start sub_8015C20
sub_8015C20: @ 0x08015C20
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4, #0x5c]
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _08015C7C
	ldr r0, _08015CE8 @ =gUnknown_087F79E4
	movs r1, #0
	bl sub_8003A9C
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	ldr r0, [r4, #4]
	ldr r1, _08015CEC @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #4]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x70
	bl sub_80040F4
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0xff
	movs r3, #4
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
	ldr r0, _08015CF0 @ =gUnknown_0201A720
	ldr r1, [r4, #0x50]
	lsls r1, r1, #3
	adds r1, #0xc
	str r5, [sp]
	movs r2, #0xff
	movs r3, #4
	bl sub_800B0F4
_08015C7C:
	ldr r0, _08015CF0 @ =gUnknown_0201A720
	ldr r1, [r4]
	str r1, [r0]
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	bl sub_800B054
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl sub_801A444
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	bne _08015CCE
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r4]
	subs r0, r0, r1
	ldr r1, [r4, #4]
	bl sub_801A444
	cmp r0, r5
	bne _08015CCE
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r1, [r4, #4]
	bl sub_801A444
	cmp r0, r5
	beq _08015CD4
_08015CCE:
	ldr r1, _08015CF4 @ =gUnknown_020154A0
	movs r0, #0
	str r0, [r1]
_08015CD4:
	adds r0, r4, #0
	bl sub_800709C
	ldr r1, _08015CF8 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015CFC
	movs r0, #0
	b _08015CFE
	.align 2, 0
_08015CE8: .4byte gUnknown_087F79E4
_08015CEC: .4byte 0xFFFF0000
_08015CF0: .4byte gUnknown_0201A720
_08015CF4: .4byte gUnknown_020154A0
_08015CF8: .4byte 0x000002B7
_08015CFC:
	movs r0, #0x3c
_08015CFE:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8015D08
sub_8015D08: @ 0x08015D08
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	str r5, [r4, #0x58]
	ldr r0, [r4, #0xc]
	asrs r0, r0, #2
	ldr r1, [r4, #0x10]
	cmp r1, r0
	ble _08015D48
	adds r0, r4, #0
	bl sub_800A65C
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x50
	bls _08015D3C
	ldr r0, [r4, #0x50]
	cmp r0, #3
	bne _08015D36
	movs r0, #1
	str r0, [r4, #0x50]
	b _08015D60
_08015D36:
	movs r0, #3
	str r0, [r4, #0x50]
	b _08015D60
_08015D3C:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _08015D5E
	movs r0, #2
	str r0, [r4, #0x50]
	b _08015D60
_08015D48:
	adds r0, r4, #0
	bl sub_800A65C
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x6e
	bls _08015D5E
	movs r0, #4
	str r0, [r4, #0x50]
	b _08015D60
_08015D5E:
	str r5, [r4, #0x50]
_08015D60:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8015D68
sub_8015D68: @ 0x08015D68
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _08015DBE
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, r1
	str r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r5, [r0]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x70
	bl sub_80040F4
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #6
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
	ldr r0, _08015DE4 @ =gUnknown_0201A720
	ldr r1, [r4, #0x50]
	lsls r1, r1, #3
	adds r1, #8
	str r5, [sp]
	movs r2, #0xff
	movs r3, #6
	bl sub_800B0F4
_08015DBE:
	ldr r0, _08015DE4 @ =gUnknown_0201A720
	ldr r1, [r4]
	str r1, [r0]
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	bl sub_800B054
	adds r0, r4, #0
	bl sub_800709C
	ldr r1, _08015DE8 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015DEC
	movs r0, #0
	b _08015DEE
	.align 2, 0
_08015DE4: .4byte gUnknown_0201A720
_08015DE8: .4byte 0x000002B7
_08015DEC:
	movs r0, #0x3c
_08015DEE:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8015DF8
sub_8015DF8: @ 0x08015DF8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0
	str r0, [r5, #0x5c]
	ldr r6, [r5, #0x48]
	cmp r6, #0
	bne _08015E42
	movs r4, #1
	str r4, [r5, #0x48]
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #6
	bl sub_800ACF8
	str r4, [r5, #0x48]
	ldr r0, _08015E70 @ =gUnknown_0201A720
	ldr r1, [r5, #0x50]
	lsls r1, r1, #3
	adds r1, #8
	str r6, [sp]
	movs r2, #0xff
	movs r3, #6
	bl sub_800B0F4
	ldr r0, [r5, #0x58]
	adds r0, #1
	str r0, [r5, #0x58]
	cmp r0, #8
	bls _08015E42
	movs r0, #0xa
	str r0, [r5, #0x28]
	adds r0, r5, #0
	bl sub_8015D08
_08015E42:
	ldr r0, _08015E70 @ =gUnknown_0201A720
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5, #4]
	str r1, [r0, #4]
	ldr r1, [r5, #8]
	str r1, [r0, #8]
	bl sub_800B054
	adds r0, r5, #0
	bl sub_800A6A0
	cmp r0, #0xaa
	bhi _08015EA0
	ldr r0, [r5, #0x50]
	cmp r0, #4
	bhi _08015F0C
	lsls r0, r0, #2
	ldr r1, _08015E74 @ =_08015E78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015E70: .4byte gUnknown_0201A720
_08015E74: .4byte _08015E78
_08015E78: @ jump table
	.4byte _08015E8C @ case 0
	.4byte _08015EC2 @ case 1
	.4byte _08015E8C @ case 2
	.4byte _08015EC2 @ case 3
	.4byte _08015EDC @ case 4
_08015E8C:
	adds r0, r5, #0
	bl sub_800A6A0
	cmp r0, #0x64
	bls _08015EB2
	movs r0, #4
	bl RandomCapped
	cmp r0, #0
	ble _08015EAA
_08015EA0:
	adds r0, r5, #0
	bl sub_800A65C
	movs r0, #4
	b _08015F0E
_08015EAA:
	adds r0, r5, #0
	bl sub_800A65C
	b _08015F0C
_08015EB2:
	adds r0, r5, #0
	bl sub_800A65C
	ldr r0, [r5, #0x18]
	cmp r0, #0xb
	beq _08015F0C
	movs r0, #0xb
	b _08015F0E
_08015EC2:
	adds r0, r5, #0
	bl sub_800A6A0
	cmp r0, #0x77
	bhi _08015EE6
	adds r0, r5, #0
	bl sub_800A65C
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08015F04
	movs r0, #1
	b _08015F06
_08015EDC:
	ldr r0, _08015EF0 @ =gUnknown_020146D4
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	cmp r0, #0x18
	bne _08015EF4
_08015EE6:
	adds r0, r5, #0
	bl sub_800A65C
	movs r0, #0xb
	b _08015F0E
	.align 2, 0
_08015EF0: .4byte gUnknown_020146D4
_08015EF4:
	adds r0, r5, #0
	bl sub_800A65C
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08015F04
	movs r0, #1
	b _08015F06
_08015F04:
	movs r0, #0
_08015F06:
	str r0, [r5, #8]
	movs r0, #4
	b _08015F0E
_08015F0C:
	movs r0, #1
_08015F0E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8015F18
sub_8015F18: @ 0x08015F18
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _08015FBC
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08015F38
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _08015F34 @ =0xFFFF6000
	b _08015F42
	.align 2, 0
_08015F34: .4byte 0xFFFF6000
_08015F38:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0xa0
	lsls r0, r0, #8
_08015F42:
	str r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	ble _08015F60
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bge _08015F60
	movs r0, #0
	str r0, [r1]
_08015F60:
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	bge _08015F7C
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	ble _08015F7C
	movs r0, #0
	str r0, [r1]
_08015F7C:
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1]
	movs r4, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x70
	bl sub_80040F4
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
	ldr r0, _08015FE8 @ =gUnknown_0201A720
	ldr r1, [r5, #0x50]
	lsls r1, r1, #3
	adds r1, #0xa
	str r4, [sp]
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
_08015FBC:
	ldr r0, _08015FE8 @ =gUnknown_0201A720
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5, #4]
	str r1, [r0, #4]
	ldr r1, [r5, #8]
	str r1, [r0, #8]
	bl sub_800B054
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08015FEC
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r0, #1
	movs r2, #6
	ldrsh r1, [r5, r2]
	adds r1, #1
	bl sub_8003B78
	b _08015FFC
	.align 2, 0
_08015FE8: .4byte gUnknown_0201A720
_08015FEC:
	movs r1, #2
	ldrsh r0, [r5, r1]
	subs r0, #1
	movs r2, #6
	ldrsh r1, [r5, r2]
	adds r1, #1
	bl sub_8003B78
_08015FFC:
	cmp r0, #0
	beq _08016044
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08016018
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r0, #8
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r1, #0xa
	bl sub_8003B78
	b _08016028
_08016018:
	movs r1, #2
	ldrsh r0, [r5, r1]
	subs r0, #8
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r1, #0xa
	bl sub_8003B78
_08016028:
	cmp r0, #0
	bne _08016044
	adds r0, r5, #0
	bl sub_800709C
	ldr r1, _08016040 @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016044
	movs r0, #0
	b _08016046
	.align 2, 0
_08016040: .4byte 0x000002B7
_08016044:
	movs r0, #0x3c
_08016046:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8016050
sub_8016050: @ 0x08016050
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	movs r7, #0
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bne _080160BC
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_8006FFC
	movs r0, #1
	str r0, [r6, #0x48]
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x70
	bl sub_80040F4
	ldr r1, [r6, #0x50]
	cmp r1, #0
	bne _080160AC
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	ldr r0, _080160A8 @ =gUnknown_0201A720
	ldr r1, [r6, #0x50]
	lsls r1, r1, #3
	adds r1, #0xb
	str r7, [sp]
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
	b _080160BC
	.align 2, 0
_080160A8: .4byte gUnknown_0201A720
_080160AC:
	lsls r1, r1, #3
	adds r1, #0xb
	str r7, [sp]
	adds r0, r6, #0
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
_080160BC:
	adds r0, r6, #0
	bl sub_800709C
	ldr r0, [r6, #0x50]
	cmp r0, #0
	bne _08016124
	movs r0, #0xa
	str r0, [r6, #0x28]
	ldr r7, _08016108 @ =gUnknown_0201A720
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r6, #4]
	str r0, [r7, #4]
	ldr r0, [r6, #8]
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_800B054
	ldr r0, _0801610C @ =gUnknown_0826260C
	ldrh r1, [r7, #0x16]
	ldrh r2, [r7, #0x18]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	bne _080160F2
	b _08016376
_080160F2:
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08016110
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r7]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r7, #4]
	b _08016330
	.align 2, 0
_08016108: .4byte gUnknown_0201A720
_0801610C: .4byte gUnknown_0826260C
_08016110:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r7]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r7, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	b _08016334
_08016124:
	cmp r0, #1
	beq _0801612C
	cmp r0, #3
	bne _080161EC
_0801612C:
	ldr r0, [r6, #0x40]
	cmp r0, #0
	bne _08016136
	movs r0, #3
	str r0, [r6, #0x28]
_08016136:
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	beq _08016146
	b _08016376
_08016146:
	movs r3, #0x93
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r5, _0801618C @ =0x0000028A
	adds r1, r6, r5
	ldrh r1, [r1]
	adds r3, #0x40
	adds r2, r6, r3
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	bne _08016166
	b _08016376
_08016166:
	movs r0, #1
	str r0, [r6, #0x40]
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _080161A6
	ldr r0, [r6, #0x50]
	cmp r0, #1
	bne _08016190
	ldr r1, [r5, #0xc]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xa
	b _080161BE
	.align 2, 0
_0801618C: .4byte 0x0000028A
_08016190:
	ldr r1, [r5, #0xc]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xa
	b _080161DE
_080161A6:
	ldr r0, [r6, #0x50]
	cmp r0, #1
	bne _080161CC
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r3, _080161C8 @ =0xFFFE0000
_080161BE:
	str r4, [sp]
	movs r2, #0xe
	bl sub_80082DC
	b _08016376
	.align 2, 0
_080161C8: .4byte 0xFFFE0000
_080161CC:
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r3, _080161E8 @ =0xFFFE0000
_080161DE:
	str r4, [sp]
	movs r2, #0xd
	bl sub_80082DC
	b _08016376
	.align 2, 0
_080161E8: .4byte 0xFFFE0000
_080161EC:
	cmp r0, #4
	beq _080161F2
	b _080162F8
_080161F2:
	movs r0, #0xa
	str r0, [r6, #0x28]
	movs r0, #1
	str r0, [r6, #0x5c]
	movs r7, #0
	ldr r4, _08016274 @ =gUnknown_02013730
	adds r5, r4, #4
	mov ip, r5
_08016202:
	movs r0, #0x8c
	adds r3, r7, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _080162E0
	ldr r0, [r6, #8]
	mov r8, r0
	cmp r0, #0
	bne _08016280
	adds r1, r3, r4
	ldr r2, [r6]
	movs r5, #0x80
	lsls r5, r5, #0xe
	adds r0, r2, r5
	ldr r1, [r1]
	cmp r1, r0
	blt _080162E0
	movs r5, #0x80
	lsls r5, r5, #0xf
	adds r0, r2, r5
	cmp r1, r0
	bgt _080162E0
	mov r0, ip
	adds r1, r3, r0
	ldr r2, [r6, #4]
	ldr r5, _08016278 @ =0xFFA80000
	adds r0, r2, r5
	ldr r1, [r1]
	cmp r1, r0
	blt _080162E0
	ldr r5, _0801627C @ =0xFFF80000
	adds r0, r2, r5
	cmp r1, r0
	bgt _080162E0
	adds r0, r4, #0
	adds r0, #0x30
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, #0
	bge _080162E0
	rsbs r0, r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0x40
	adds r1, r3, r1
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r3, r0
	mov r1, r8
	b _080162D2
	.align 2, 0
_08016274: .4byte gUnknown_02013730
_08016278: .4byte 0xFFA80000
_0801627C: .4byte 0xFFF80000
_08016280:
	adds r1, r3, r4
	ldr r2, [r6]
	ldr r5, _080162E8 @ =0xFFC00000
	adds r0, r2, r5
	ldr r1, [r1]
	cmp r1, r0
	blt _080162E0
	ldr r5, _080162EC @ =0xFFE00000
	adds r0, r2, r5
	cmp r1, r0
	bgt _080162E0
	mov r0, ip
	adds r1, r3, r0
	ldr r2, [r6, #4]
	ldr r5, _080162F0 @ =0xFFA80000
	adds r0, r2, r5
	ldr r1, [r1]
	cmp r1, r0
	blt _080162E0
	ldr r5, _080162F4 @ =0xFFF80000
	adds r0, r2, r5
	cmp r1, r0
	bgt _080162E0
	adds r0, r4, #0
	adds r0, #0x30
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, #0
	ble _080162E0
	rsbs r0, r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0x40
	adds r1, r3, r1
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r3, r0
	movs r1, #0
_080162D2:
	str r1, [r0]
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r3, r1
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080162E0:
	adds r7, #1
	cmp r7, #9
	ble _08016202
	b _08016376
	.align 2, 0
_080162E8: .4byte 0xFFC00000
_080162EC: .4byte 0xFFE00000
_080162F0: .4byte 0xFFA80000
_080162F4: .4byte 0xFFF80000
_080162F8:
	movs r0, #0xa
	str r0, [r6, #0x28]
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r2, _0801634C @ =0x0000028A
	adds r1, r6, r2
	ldrh r1, [r1]
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _08016376
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08016350
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
_08016330:
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
_08016334:
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_800A770
	b _08016376
	.align 2, 0
_0801634C: .4byte 0x0000028A
_08016350:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_800A770
_08016376:
	ldr r5, _08016384 @ =0x000002B7
	adds r0, r6, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016388
	movs r0, #0
	b _0801638A
	.align 2, 0
_08016384: .4byte 0x000002B7
_08016388:
	movs r0, #0x3c
_0801638A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8016398
sub_8016398: @ 0x08016398
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0x20
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r4, #0
	movs r2, #8
	movs r0, #8
	strh r0, [r1]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r2, [r0]
	ldr r2, _080164A8 @ =gUnknown_083FB594
	movs r0, #8
	movs r1, #3
	bl sub_801A434
	str r4, [r7, #0x50]
	str r4, [r7, #0x28]
	str r4, [r7]
	str r4, [r7, #4]
	str r4, [r7, #8]
	movs r0, #1
	str r0, [r7, #0x14]
	str r0, [r7, #0x18]
	str r0, [r7, #0x1c]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _080164AC @ =sub_8015BA4+1
	str r0, [r1]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _080164B0 @ =sub_8015D68
	str r0, [r1]
	adds r2, #0x10
	adds r1, r7, r2
	ldr r0, _080164B4 @ =sub_8015F18
	str r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _080164B8 @ =sub_8016050
	str r0, [r1]
	adds r2, #0xe0
	adds r1, r7, r2
	ldr r0, _080164BC @ =sub_8015DF8
	str r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, _080164C0 @ =sub_8015BA8
	str r0, [r1]
	adds r2, #4
	adds r1, r7, r2
	ldr r0, _080164C4 @ =sub_8015C20
	str r0, [r1]
	movs r0, #0
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x2c
_0801641E:
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #7
	bls _0801641E
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r6, _080164C8 @ =gUnknown_0826260C
	str r6, [r0]
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r1, #0x80
	movs r2, #0
	movs r3, #0x50
	bl sub_8006FC8
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r4, #0
	str r4, [r0]
	movs r5, #1
	str r5, [r7, #0x24]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r7, r2
	str r5, [r0]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800ACF8
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x70
	bl sub_80040F4
	str r4, [sp, #4]
	ldr r2, _080164CC @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _080164D0 @ =gUnknown_0201A720
	str r0, [r2, #4]
	ldr r1, _080164D4 @ =0x85000012
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	str r6, [r0, #0x40]
	str r5, [r0, #0x30]
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r1, r7, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x34]
	str r4, [sp]
	movs r1, #8
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080164A8: .4byte gUnknown_083FB594
_080164AC: .4byte sub_8015BA4+1
_080164B0: .4byte sub_8015D68
_080164B4: .4byte sub_8015F18
_080164B8: .4byte sub_8016050
_080164BC: .4byte sub_8015DF8
_080164C0: .4byte sub_8015BA8
_080164C4: .4byte sub_8015C20
_080164C8: .4byte gUnknown_0826260C
_080164CC: .4byte 0x040000D4
_080164D0: .4byte gUnknown_0201A720
_080164D4: .4byte 0x85000012

	thumb_func_start sub_80164D8
sub_80164D8: @ 0x080164D8
	movs r0, #0
	bx lr

	thumb_func_start sub_80164DC
sub_80164DC: @ 0x080164DC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x48]
	cmp r4, #0
	bne _08016510
	ldr r0, _0801654C @ =gUnknown_087F7B88
	movs r1, #1
	bl sub_8003A9C
	ldr r0, _08016550 @ =gUnknown_0201A780
	str r4, [sp]
	movs r1, #5
	movs r2, #0
	movs r3, #3
	bl sub_800B0F4
	ldr r0, _08016554 @ =gUnknown_0201A7E0
	str r4, [sp]
	movs r1, #5
	movs r2, #0
	movs r3, #3
	bl sub_800B0F4
	movs r0, #1
	str r0, [r5, #0x48]
_08016510:
	ldr r0, _08016558 @ =gUnknown_0201A7CC
	ldr r0, [r0]
	cmp r0, #0
	beq _0801651E
	ldr r0, _08016550 @ =gUnknown_0201A780
	bl sub_800B054
_0801651E:
	ldr r0, _0801655C @ =gUnknown_0201A770
	ldr r0, [r0]
	cmp r0, #0
	beq _0801652C
	ldr r0, _08016554 @ =gUnknown_0201A7E0
	bl sub_800B054
_0801652C:
	ldr r0, [r5, #0x44]
	adds r0, #1
	str r0, [r5, #0x44]
	cmp r0, #0x1e
	bls _08016540
	adds r0, r5, #0
	bl sub_8006580
	movs r0, #0
	str r0, [r5, #0x20]
_08016540:
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801654C: .4byte gUnknown_087F7B88
_08016550: .4byte gUnknown_0201A780
_08016554: .4byte gUnknown_0201A7E0
_08016558: .4byte gUnknown_0201A7CC
_0801655C: .4byte gUnknown_0201A770

	thumb_func_start sub_8016560
sub_8016560: @ 0x08016560
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _08016588
	ldr r0, _080165A8 @ =gUnknown_087F7B88
	movs r1, #1
	bl sub_8003A9C
	movs r0, #1
	str r0, [r4, #0x48]
	ldr r1, _080165AC @ =0x040000D4
	ldr r0, _080165B0 @ =gUnknown_08742300
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080165B4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08016588:
	ldr r0, _080165B8 @ =gUnknown_0201A780
	bl sub_800B054
	ldr r0, _080165BC @ =gUnknown_0201A7E0
	bl sub_800B054
	ldr r0, [r4, #0x44]
	adds r0, #1
	str r0, [r4, #0x44]
	cmp r0, #0xa
	beq _080165C0
	cmp r0, #0x1e
	bls _080165D2
	movs r0, #1
	b _080165D4
	.align 2, 0
_080165A8: .4byte gUnknown_087F7B88
_080165AC: .4byte 0x040000D4
_080165B0: .4byte gUnknown_08742300
_080165B4: .4byte 0x80000100
_080165B8: .4byte gUnknown_0201A780
_080165BC: .4byte gUnknown_0201A7E0
_080165C0:
	ldr r1, _080165DC @ =0x040000D4
	ldr r0, _080165E0 @ =gUnknown_08736078
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080165E4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080165D2:
	movs r0, #0
_080165D4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080165DC: .4byte 0x040000D4
_080165E0: .4byte gUnknown_08736078
_080165E4: .4byte 0x80000100

	thumb_func_start sub_80165E8
sub_80165E8: @ 0x080165E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, [r7, #0x48]
	mov sb, r0
	cmp r0, #0
	beq _080165FE
	b _08016768
_080165FE:
	movs r0, #0x90
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0x18
	movs r2, #0x18
	movs r3, #0xac
	bl sub_80040F4
	movs r0, #1
	str r0, [r7, #0x48]
	ldr r5, _08016674 @ =gUnknown_020155D0
	ldr r1, _08016678 @ =gUnknown_0201A7D0
	mov r8, r1
	ldr r0, [r1]
	movs r6, #0x94
	muls r0, r6, r0
	adds r2, r0, r5
	movs r1, #8
	strh r1, [r2, #0x1a]
	ldr r0, _0801667C @ =gUnknown_0201A7C8
	ldr r0, [r0]
	muls r0, r6, r0
	adds r0, r0, r5
	strh r1, [r0, #0x1a]
	ldr r0, _08016680 @ =gUnknown_0201A7CC
	ldr r1, [r0]
	cmp r1, #0
	beq _0801668C
	movs r0, #0x10
	strh r0, [r2, #0x1a]
	ldr r4, _08016684 @ =gUnknown_0201A780
	ldr r0, _08016688 @ =0xFFB80000
	str r0, [r4]
	movs r0, #0xb4
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	mov r2, sb
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #3
	bl sub_800B0F4
	mov r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	muls r1, r6, r1
	adds r2, r1, r5
	ldr r0, [r4]
	str r0, [r2]
	adds r0, r5, #4
	adds r1, r1, r0
	ldr r0, [r4, #4]
	movs r5, #0x80
	lsls r5, r5, #0xe
	adds r0, r0, r5
	b _080166B8
	.align 2, 0
_08016674: .4byte gUnknown_020155D0
_08016678: .4byte gUnknown_0201A7D0
_0801667C: .4byte gUnknown_0201A7C8
_08016680: .4byte gUnknown_0201A7CC
_08016684: .4byte gUnknown_0201A780
_08016688: .4byte 0xFFB80000
_0801668C:
	ldr r4, _08016710 @ =gUnknown_0201A780
	str r1, [r4]
	movs r0, #0xd4
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #3
	bl sub_800B0F4
	mov r1, r8
	ldr r0, [r1]
	adds r1, r0, #0
	muls r1, r6, r1
	adds r2, r1, r5
	ldr r0, [r4]
	str r0, [r2]
	adds r0, r5, #4
	adds r1, r1, r0
	ldr r0, [r4, #4]
_080166B8:
	str r0, [r1]
	ldr r0, _08016714 @ =gUnknown_0201A770
	ldr r1, [r0]
	cmp r1, #0
	beq _08016728
	ldr r5, _08016718 @ =gUnknown_020155D0
	ldr r2, _0801671C @ =gUnknown_0201A7C8
	mov r8, r2
	ldr r0, [r2]
	movs r6, #0x94
	muls r0, r6, r0
	adds r0, r0, r5
	movs r2, #0
	movs r1, #0x10
	strh r1, [r0, #0x1a]
	ldr r4, _08016720 @ =gUnknown_0201A7E0
	movs r0, #0xc4
	lsls r0, r0, #0x11
	str r0, [r4]
	movs r0, #0xb4
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #3
	bl sub_800B0F4
	mov r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	muls r1, r6, r1
	adds r2, r1, r5
	ldr r0, [r4]
	ldr r3, _08016724 @ =0xFF800000
	adds r0, r0, r3
	str r0, [r2]
	adds r5, #4
	adds r1, r1, r5
	ldr r0, [r4, #4]
	movs r5, #0x80
	lsls r5, r5, #0xe
	adds r0, r0, r5
	b _0801675C
	.align 2, 0
_08016710: .4byte gUnknown_0201A780
_08016714: .4byte gUnknown_0201A770
_08016718: .4byte gUnknown_020155D0
_0801671C: .4byte gUnknown_0201A7C8
_08016720: .4byte gUnknown_0201A7E0
_08016724: .4byte 0xFF800000
_08016728:
	ldr r4, _08016784 @ =gUnknown_0201A7E0
	ldr r0, _08016788 @ =0x013F0000
	str r0, [r4]
	movs r0, #0xd4
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #3
	bl sub_800B0F4
	ldr r2, _0801678C @ =gUnknown_020155D0
	ldr r0, _08016790 @ =gUnknown_0201A7C8
	ldr r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	adds r3, r1, r2
	ldr r0, [r4]
	ldr r5, _08016794 @ =0xFF800000
	adds r0, r0, r5
	str r0, [r3]
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r4, #4]
_0801675C:
	str r0, [r1]
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	cmp r0, #2
	bhi _0801679C
_08016768:
	ldr r0, _08016798 @ =gUnknown_0201A780
	bl sub_800B054
	ldr r0, _08016784 @ =gUnknown_0201A7E0
	bl sub_800B054
	ldr r0, [r7, #0x44]
	adds r0, #1
	str r0, [r7, #0x44]
	cmp r0, #0x78
	bhi _0801679C
	movs r0, #0
	b _080167A6
	.align 2, 0
_08016784: .4byte gUnknown_0201A7E0
_08016788: .4byte 0x013F0000
_0801678C: .4byte gUnknown_020155D0
_08016790: .4byte gUnknown_0201A7C8
_08016794: .4byte 0xFF800000
_08016798: .4byte gUnknown_0201A780
_0801679C:
	movs r0, #0
	str r0, [r7, #0x50]
	movs r0, #0xa
	str r0, [r7, #0x28]
	movs r0, #0xb
_080167A6:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80167B4
sub_80167B4: @ 0x080167B4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0xa
	str r0, [r7, #0x28]
	ldr r4, [r7, #0x48]
	cmp r4, #0
	bne _080167FE
	movs r0, #1
	str r0, [r7, #0x48]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	ldr r3, _08016870 @ =gUnknown_020155D0
	ldr r0, _08016874 @ =gUnknown_0201A7D0
	ldr r0, [r0]
	movs r2, #0x94
	muls r0, r2, r0
	adds r0, r0, r3
	movs r1, #8
	strh r1, [r0, #0x1a]
	ldr r0, _08016878 @ =gUnknown_0201A7C8
	ldr r0, [r0]
	muls r0, r2, r0
	adds r0, r0, r3
	strh r1, [r0, #0x1a]
	ldr r1, _0801687C @ =gUnknown_0201A7D4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #3
	bls _080167FE
	str r4, [r1]
_080167FE:
	ldr r6, _08016880 @ =gUnknown_0201A780
	adds r0, r6, #0
	bl sub_800B054
	ldr r0, _08016884 @ =gUnknown_0201A7CC
	ldr r0, [r0]
	cmp r0, #0
	beq _0801688C
	ldr r2, _08016870 @ =gUnknown_020155D0
	ldr r0, _08016874 @ =gUnknown_0201A7D0
	ldr r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	adds r3, r1, r2
	ldr r0, [r6]
	str r0, [r3]
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r6, #4]
	movs r2, #0x80
	lsls r2, r2, #0xe
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _0801687C @ =gUnknown_0201A7D4
	ldr r0, [r0]
	cmp r0, #1
	beq _08016838
	cmp r0, #3
	bne _080168A4
_08016838:
	ldr r0, _08016888 @ =gUnknown_083D3A14
	ldrh r1, [r6, #0x16]
	ldrh r2, [r6, #0x18]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _080168A4
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r7, [sp, #4]
	bl sub_800A770
	b _080168A4
	.align 2, 0
_08016870: .4byte gUnknown_020155D0
_08016874: .4byte gUnknown_0201A7D0
_08016878: .4byte gUnknown_0201A7C8
_0801687C: .4byte gUnknown_0201A7D4
_08016880: .4byte gUnknown_0201A780
_08016884: .4byte gUnknown_0201A7CC
_08016888: .4byte gUnknown_083D3A14
_0801688C:
	ldr r2, _08016918 @ =gUnknown_020155D0
	ldr r0, _0801691C @ =gUnknown_0201A7D0
	ldr r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	adds r3, r1, r2
	ldr r0, [r6]
	str r0, [r3]
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r6, #4]
	str r0, [r1]
_080168A4:
	ldr r6, _08016920 @ =gUnknown_0201A7E0
	adds r0, r6, #0
	bl sub_800B054
	ldr r0, _08016924 @ =gUnknown_0201A770
	ldr r0, [r0]
	cmp r0, #0
	beq _08016938
	ldr r2, _08016918 @ =gUnknown_020155D0
	ldr r0, _08016928 @ =gUnknown_0201A7C8
	ldr r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	adds r3, r1, r2
	ldr r0, [r6]
	ldr r4, _0801692C @ =0xFF800000
	adds r0, r0, r4
	str r0, [r3]
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r6, #4]
	movs r2, #0x80
	lsls r2, r2, #0xe
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _08016930 @ =gUnknown_0201A7D4
	ldr r0, [r0]
	subs r0, #2
	cmp r0, #1
	bhi _08016954
	ldr r0, _08016934 @ =gUnknown_083D3A14
	ldrh r1, [r6, #0x16]
	ldrh r2, [r6, #0x18]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _08016954
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r7, [sp, #4]
	bl sub_800A770
	b _08016954
	.align 2, 0
_08016918: .4byte gUnknown_020155D0
_0801691C: .4byte gUnknown_0201A7D0
_08016920: .4byte gUnknown_0201A7E0
_08016924: .4byte gUnknown_0201A770
_08016928: .4byte gUnknown_0201A7C8
_0801692C: .4byte 0xFF800000
_08016930: .4byte gUnknown_0201A7D4
_08016934: .4byte gUnknown_083D3A14
_08016938:
	ldr r2, _08016968 @ =gUnknown_020155D0
	ldr r0, _0801696C @ =gUnknown_0201A7C8
	ldr r1, [r0]
	movs r0, #0x94
	muls r1, r0, r1
	adds r3, r1, r2
	ldr r0, [r6]
	ldr r4, _08016970 @ =0xFF800000
	adds r0, r0, r4
	str r0, [r3]
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r6, #4]
	str r0, [r1]
_08016954:
	ldr r2, [r7, #0x40]
	cmp r2, #4
	bls _0801695C
	b _08016BE4
_0801695C:
	lsls r0, r2, #2
	ldr r1, _08016974 @ =_08016978
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016968: .4byte gUnknown_020155D0
_0801696C: .4byte gUnknown_0201A7C8
_08016970: .4byte 0xFF800000
_08016974: .4byte _08016978
_08016978: @ jump table
	.4byte _0801698C @ case 0
	.4byte _08016A08 @ case 1
	.4byte _08016B38 @ case 2
	.4byte _08016BE0 @ case 3
	.4byte _08016BE0 @ case 4
_0801698C:
	ldr r0, _080169B8 @ =gUnknown_0201A7D4
	ldr r1, [r0]
	adds r4, r0, #0
	cmp r1, #1
	beq _0801699A
	cmp r1, #3
	bne _080169D4
_0801699A:
	ldr r0, _080169BC @ =gUnknown_0201A7CC
	ldr r0, [r0]
	cmp r0, #0
	beq _080169C4
	ldr r1, _080169C0 @ =gUnknown_0201A780
	ldr r0, [r1]
	cmp r0, #0
	blt _080169AC
	b _08016B58
_080169AC:
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r0, r0, r2
	str r0, [r1]
	b _080169D4
	.align 2, 0
_080169B8: .4byte gUnknown_0201A7D4
_080169BC: .4byte gUnknown_0201A7CC
_080169C0: .4byte gUnknown_0201A780
_080169C4:
	cmp r1, #1
	beq _080169D0
	ldr r0, _080169FC @ =gUnknown_0201A770
	ldr r0, [r0]
	cmp r0, #0
	bne _080169D4
_080169D0:
	adds r0, r2, #1
	str r0, [r7, #0x40]
_080169D4:
	ldr r1, [r4]
	subs r0, r1, #2
	cmp r0, #1
	bls _080169DE
	b _08016BCE
_080169DE:
	ldr r0, _080169FC @ =gUnknown_0201A770
	ldr r0, [r0]
	cmp r0, #0
	bne _080169E8
	b _08016BBC
_080169E8:
	ldr r2, _08016A00 @ =gUnknown_0201A7E0
	ldr r1, [r2]
	movs r0, #0xa0
	lsls r0, r0, #0x11
	cmp r1, r0
	bgt _080169F6
	b _08016BD4
_080169F6:
	ldr r3, _08016A04 @ =0xFFFC0000
	b _08016BAA
	.align 2, 0
_080169FC: .4byte gUnknown_0201A770
_08016A00: .4byte gUnknown_0201A7E0
_08016A04: .4byte 0xFFFC0000
_08016A08:
	ldr r0, [r7, #0x44]
	cmp r0, #0
	bne _08016A44
	ldr r0, _08016A40 @ =gUnknown_0201A7D4
	ldr r0, [r0]
	cmp r0, #0
	beq _08016A1C
	cmp r0, #3
	beq _08016A1C
	b _08016B30
_08016A1C:
	movs r0, #0x92
	lsls r0, r0, #0x10
	movs r4, #0xc8
	lsls r4, r4, #0xf
	adds r1, r4, #0
	movs r2, #0
	movs r3, #6
	bl sub_8008930
	movs r0, #0xac
	lsls r0, r0, #0x10
	adds r1, r4, #0
	movs r2, #0
	movs r3, #6
	bl sub_8008930
	b _08016B30
	.align 2, 0
_08016A40: .4byte gUnknown_0201A7D4
_08016A44:
	cmp r0, #0xa
	bne _08016A80
	ldr r0, _08016A78 @ =gUnknown_0201A7D4
	ldr r0, [r0]
	cmp r0, #0
	beq _08016A54
	cmp r0, #3
	bne _08016B30
_08016A54:
	movs r0, #0x92
	lsls r0, r0, #0x10
	movs r5, #0xd4
	lsls r5, r5, #0xf
	ldr r4, _08016A7C @ =0xFFFE0000
	str r4, [sp]
	adds r1, r5, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_80082DC
	movs r0, #0xae
	lsls r0, r0, #0x10
	str r4, [sp]
	adds r1, r5, #0
	movs r2, #0xb
	movs r3, #0
	b _08016B0C
	.align 2, 0
_08016A78: .4byte gUnknown_0201A7D4
_08016A7C: .4byte 0xFFFE0000
_08016A80:
	cmp r0, #0x19
	bne _08016B28
	ldr r0, _08016B1C @ =gUnknown_0201A7D4
	ldr r0, [r0]
	cmp r0, #0
	beq _08016A90
	cmp r0, #2
	bne _08016AD0
_08016A90:
	movs r5, #0x94
	lsls r5, r5, #0xf
	movs r6, #0xb0
	lsls r6, r6, #0xf
	ldr r3, _08016B20 @ =0xFFFF0000
	movs r4, #0x80
	lsls r4, r4, #0xa
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xc
	bl sub_80082DC
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_80082DC
	movs r3, #0x80
	lsls r3, r3, #9
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xc
	bl sub_80082DC
	ldr r0, _08016B24 @ =gUnknown_087F74A0
	movs r1, #2
	bl sub_8003A9C
_08016AD0:
	ldr r0, _08016B1C @ =gUnknown_0201A7D4
	ldr r0, [r0]
	cmp r0, #1
	bhi _08016B30
	movs r5, #0xf4
	lsls r5, r5, #0x10
	movs r6, #0xb0
	lsls r6, r6, #0xf
	ldr r3, _08016B20 @ =0xFFFF0000
	movs r4, #0x80
	lsls r4, r4, #0xa
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xc
	bl sub_80082DC
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_80082DC
	movs r3, #0x80
	lsls r3, r3, #9
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xc
_08016B0C:
	bl sub_80082DC
	ldr r0, _08016B24 @ =gUnknown_087F74A0
	movs r1, #2
	bl sub_8003A9C
	b _08016B30
	.align 2, 0
_08016B1C: .4byte gUnknown_0201A7D4
_08016B20: .4byte 0xFFFF0000
_08016B24: .4byte gUnknown_087F74A0
_08016B28:
	cmp r0, #0x27
	bls _08016B30
	adds r0, r2, #1
	str r0, [r7, #0x40]
_08016B30:
	ldr r0, [r7, #0x44]
	adds r0, #1
	str r0, [r7, #0x44]
	b _08016BE4
_08016B38:
	ldr r0, _08016B60 @ =gUnknown_0201A7D4
	ldr r1, [r0]
	adds r4, r0, #0
	cmp r1, #1
	beq _08016B46
	cmp r1, #3
	bne _08016B8C
_08016B46:
	ldr r0, _08016B64 @ =gUnknown_0201A7CC
	ldr r0, [r0]
	cmp r0, #0
	beq _08016B7C
	ldr r3, _08016B68 @ =gUnknown_0201A780
	ldr r1, [r3]
	ldr r0, _08016B6C @ =0xFFB80000
	cmp r1, r0
	bgt _08016B70
_08016B58:
	adds r0, r2, #1
	str r0, [r7, #0x40]
	b _08016BE4
	.align 2, 0
_08016B60: .4byte gUnknown_0201A7D4
_08016B64: .4byte gUnknown_0201A7CC
_08016B68: .4byte gUnknown_0201A780
_08016B6C: .4byte 0xFFB80000
_08016B70:
	ldr r2, _08016B78 @ =0xFFFE0000
	adds r0, r1, r2
	str r0, [r3]
	b _08016B8C
	.align 2, 0
_08016B78: .4byte 0xFFFE0000
_08016B7C:
	cmp r1, #1
	beq _08016B88
	ldr r0, _08016BB0 @ =gUnknown_0201A770
	ldr r0, [r0]
	cmp r0, #0
	bne _08016B8C
_08016B88:
	adds r0, r2, #1
	str r0, [r7, #0x40]
_08016B8C:
	ldr r1, [r4]
	subs r0, r1, #2
	cmp r0, #1
	bhi _08016BCE
	ldr r0, _08016BB0 @ =gUnknown_0201A770
	ldr r0, [r0]
	cmp r0, #0
	beq _08016BBC
	ldr r2, _08016BB4 @ =gUnknown_0201A7E0
	ldr r1, [r2]
	ldr r0, _08016BB8 @ =0x0187FFFF
	cmp r1, r0
	bgt _08016BD4
	movs r3, #0x80
	lsls r3, r3, #0xa
_08016BAA:
	adds r0, r1, r3
	str r0, [r2]
	b _08016BCE
	.align 2, 0
_08016BB0: .4byte gUnknown_0201A770
_08016BB4: .4byte gUnknown_0201A7E0
_08016BB8: .4byte 0x0187FFFF
_08016BBC:
	cmp r1, #2
	beq _08016BC8
	ldr r0, _08016BDC @ =gUnknown_0201A7CC
	ldr r0, [r0]
	cmp r0, #0
	bne _08016BCE
_08016BC8:
	ldr r0, [r7, #0x40]
	adds r0, #1
	str r0, [r7, #0x40]
_08016BCE:
	ldr r0, [r4]
	cmp r0, #0
	bne _08016BE4
_08016BD4:
	ldr r0, [r7, #0x40]
	adds r0, #1
	str r0, [r7, #0x40]
	b _08016BE4
	.align 2, 0
_08016BDC: .4byte gUnknown_0201A7CC
_08016BE0:
	movs r0, #1
	b _08016BE6
_08016BE4:
	movs r0, #0
_08016BE6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8016BF0
sub_8016BF0: @ 0x08016BF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	movs r0, #0x20
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	ldr r0, _08016D70 @ =gUnknown_0201A7CC
	movs r5, #1
	str r5, [r0]
	ldr r0, _08016D74 @ =gUnknown_0201A770
	str r5, [r0]
	movs r0, #0xa
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0x14
	movs r3, #0x18
	bl sub_800D01C
	ldr r1, _08016D78 @ =gUnknown_0201A7D0
	str r0, [r1]
	movs r0, #0xb
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0x14
	movs r3, #0x18
	bl sub_800D01C
	ldr r1, _08016D7C @ =gUnknown_0201A7C8
	str r0, [r1]
	str r4, [r7]
	str r4, [r7, #4]
	str r4, [r7, #8]
	str r5, [r7, #0x14]
	str r4, [r7, #0x18]
	str r4, [r7, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _08016D80 @ =sub_80164D8
	str r0, [r1]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _08016D84 @ =sub_80165E8
	str r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _08016D88 @ =sub_80167B4
	str r0, [r1]
	adds r2, #0xf8
	adds r1, r7, r2
	ldr r0, _08016D8C @ =sub_80164DC
	str r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, _08016D90 @ =sub_8016560
	str r0, [r1]
	movs r0, #0
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x2c
_08016C80:
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #7
	bls _08016C80
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r6, #0
	str r6, [r0]
	str r6, [sp, #8]
	ldr r4, _08016D94 @ =0x040000D4
	add r2, sp, #8
	str r2, [r4]
	adds r1, #0x3c
	adds r0, r7, r1
	str r0, [r4, #4]
	ldr r0, _08016D98 @ =0x8500000B
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r2, #0x94
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0
	movs r3, #0x50
	bl sub_8006FC8
	adds r0, r5, #0
	bl sub_8006FFC
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r7, r1
	str r6, [r0]
	movs r2, #1
	str r2, [r7, #0x24]
	ldr r0, _08016D9C @ =gUnknown_083D3A14
	mov sb, r0
	movs r0, #8
	mov r1, sb
	bl sub_801A42C
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, _08016DA0 @ =gUnknown_02013114
	mov sl, r0
	ldr r0, [r0]
	adds r0, #1
	str r0, [r1]
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0
	movs r2, #8
	mov r8, r2
	mov r2, r8
	strh r2, [r0]
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r1, [r0]
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800ACF8
	str r6, [sp, #8]
	add r0, sp, #8
	str r0, [r4]
	ldr r0, _08016DA4 @ =gUnknown_0201A780
	str r0, [r4, #4]
	ldr r1, _08016DA8 @ =0x85000012
	str r1, [r4, #8]
	ldr r2, [r4, #8]
	str r6, [sp, #8]
	add r2, sp, #8
	str r2, [r4]
	ldr r5, _08016DAC @ =gUnknown_0201A7E0
	str r5, [r4, #4]
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	mov r1, sb
	str r1, [r0, #0x40]
	str r1, [r5, #0x40]
	mov r2, sl
	ldr r1, [r2]
	str r1, [r0, #0x30]
	mov r2, r8
	strh r2, [r0, #0x34]
	movs r2, #1
	str r2, [r0, #8]
	str r1, [r5, #0x30]
	mov r1, r8
	strh r1, [r5, #0x34]
	str r6, [r5, #8]
	str r6, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #3
	bl sub_800B0F4
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #3
	bl sub_800B0F4
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016D70: .4byte gUnknown_0201A7CC
_08016D74: .4byte gUnknown_0201A770
_08016D78: .4byte gUnknown_0201A7D0
_08016D7C: .4byte gUnknown_0201A7C8
_08016D80: .4byte sub_80164D8
_08016D84: .4byte sub_80165E8
_08016D88: .4byte sub_80167B4
_08016D8C: .4byte sub_80164DC
_08016D90: .4byte sub_8016560
_08016D94: .4byte 0x040000D4
_08016D98: .4byte 0x8500000B
_08016D9C: .4byte gUnknown_083D3A14
_08016DA0: .4byte gUnknown_02013114
_08016DA4: .4byte gUnknown_0201A780
_08016DA8: .4byte 0x85000012
_08016DAC: .4byte gUnknown_0201A7E0

	thumb_func_start sub_8016DB0
sub_8016DB0: @ 0x08016DB0
	push {lr}
	ldr r1, [r0, #0x44]
	adds r1, #1
	str r1, [r0, #0x44]
	cmp r1, #0x3b
	bhi _08016DC0
	movs r0, #0
	b _08016DC2
_08016DC0:
	movs r0, #0xb
_08016DC2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8016DC8
sub_8016DC8: @ 0x08016DC8
	push {lr}
	sub sp, #4
	bl sub_800A600
	cmp r0, #2
	bhi _08016E38
	movs r0, #4
	bl RandomCapped
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08016E0A
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08016DF8
	movs r0, #4
	str r0, [sp]
	movs r0, #0x1e
	movs r1, #0xcf
	movs r2, #0
	b _08016E1C
_08016DF8:
	movs r0, #4
	str r0, [sp]
	movs r0, #0x1e
	movs r1, #0xcf
	movs r2, #0
	movs r3, #3
	bl sub_8009C44
	b _08016E38
_08016E0A:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08016E28
	ldr r0, _08016E24 @ =0x00000121
	movs r1, #4
	str r1, [sp]
	movs r1, #0xcf
	movs r2, #1
_08016E1C:
	movs r3, #1
	bl sub_8009C44
	b _08016E38
	.align 2, 0
_08016E24: .4byte 0x00000121
_08016E28:
	ldr r0, _08016E40 @ =0x00000121
	movs r1, #4
	str r1, [sp]
	movs r1, #0xcf
	movs r2, #1
	movs r3, #3
	bl sub_8009C44
_08016E38:
	movs r0, #1
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_08016E40: .4byte 0x00000121

	thumb_func_start sub_8016E44
sub_8016E44: @ 0x08016E44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _08016E52
	movs r0, #1
	str r0, [r4, #0x48]
_08016E52:
	ldr r0, [r4, #0x44]
	adds r0, #1
	str r0, [r4, #0x44]
	cmp r0, #0xa
	bls _08016E66
	adds r0, r4, #0
	bl sub_8006580
	movs r0, #0
	str r0, [r4, #0x20]
_08016E66:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8016E70
sub_8016E70: @ 0x08016E70
	movs r0, #1
	bx lr

	thumb_func_start sub_8016E74
sub_8016E74: @ 0x08016E74
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0x1e
	str r0, [r6, #0xc]
	str r0, [r6, #0x10]
	movs r1, #0
	str r1, [r6]
	str r1, [r6, #4]
	str r1, [r6, #8]
	movs r0, #1
	str r0, [r6, #0x14]
	str r1, [r6, #0x18]
	str r1, [r6, #0x1c]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _08016F54 @ =sub_80164D8
	str r0, [r1]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r6, r2
	ldr r0, _08016F58 @ =sub_8016DB0
	str r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _08016F5C @ =sub_8016DC8
	str r0, [r1]
	adds r2, #0xf8
	adds r1, r6, r2
	ldr r0, _08016F60 @ =sub_8016E44
	str r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, _08016F64 @ =sub_8016E70
	str r0, [r1]
	movs r0, #0
	movs r2, #0
	adds r1, r6, #0
	adds r1, #0x2c
_08016EC8:
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #7
	bls _08016EC8
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r5, #0
	str r5, [r0]
	str r5, [sp, #4]
	ldr r1, _08016F68 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	movs r2, #0xa2
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1, #4]
	ldr r0, _08016F6C @ =0x8500000B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r4, r6, r0
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0
	movs r3, #0x50
	bl sub_8006FC8
	adds r0, r4, #0
	bl sub_8006FFC
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	str r5, [r0]
	movs r0, #1
	str r0, [r6, #0x24]
	ldr r1, _08016F70 @ =gUnknown_083D3A14
	movs r0, #8
	bl sub_801A42C
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, _08016F74 @ =gUnknown_02013114
	ldr r0, [r0]
	adds r0, #1
	str r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r2, #0
	movs r0, #8
	strh r0, [r1]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r6, r1
	strb r2, [r0]
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800ACF8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016F54: .4byte sub_80164D8
_08016F58: .4byte sub_8016DB0
_08016F5C: .4byte sub_8016DC8
_08016F60: .4byte sub_8016E44
_08016F64: .4byte sub_8016E70
_08016F68: .4byte 0x040000D4
_08016F6C: .4byte 0x8500000B
_08016F70: .4byte gUnknown_083D3A14
_08016F74: .4byte gUnknown_02013114

	thumb_func_start sub_8016F78
sub_8016F78: @ 0x08016F78
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	str r7, [r4, #0x5c]
	ldr r5, [r4, #0x4c]
	adds r0, r5, #1
	movs r6, #7
	ands r0, r6
	str r0, [r4, #0x4c]
	ldr r2, _08016FF8 @ =gUnknown_0201A830
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r4]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r1, [r4, #4]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r4, #8]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	bl sub_800B054
	cmp r5, #3
	bhi _08017068
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x47
	bhi _08017064
	ldr r0, [r4, #0x18]
	cmp r0, #0xb
	beq _08017064
	adds r0, r4, #0
	bl sub_800A700
	cmp r0, #0x1f
	bhi _08017064
	ldr r0, _08016FFC @ =gUnknown_020146D4
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	subs r0, #9
	cmp r0, #1
	bhi _08017000
	str r7, [r4, #8]
	b _08017100
	.align 2, 0
_08016FF8: .4byte gUnknown_0201A830
_08016FFC: .4byte gUnknown_020146D4
_08017000:
	adds r0, r4, #0
	bl sub_800A65C
	ands r5, r6
	str r5, [r4, #0x4c]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0801702E
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _0801705A
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	b _0801704A
_0801702E:
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _0801705A
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
_0801704A:
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	beq _080170F4
_0801705A:
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	bne _080170F4
	b _080170F8
_08017064:
	movs r0, #0
	b _080170FE
_08017068:
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x47
	bhi _080170FC
	ldr r0, [r4, #0x18]
	cmp r0, #0xb
	beq _080170FC
	adds r0, r4, #0
	bl sub_800A700
	cmp r0, #0x1f
	bhi _080170FC
	ldr r0, _080170BC @ =gUnknown_020146D4
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	subs r0, #9
	cmp r0, #1
	bls _080170FC
	adds r0, r4, #0
	bl sub_800A65C
	ands r5, r6
	str r5, [r4, #0x4c]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080170C0
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _080170EC
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	b _080170DC
	.align 2, 0
_080170BC: .4byte gUnknown_020146D4
_080170C0:
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _080170EC
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
_080170DC:
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	beq _080170F4
_080170EC:
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _080170F8
_080170F4:
	movs r0, #0xb
	b _08017102
_080170F8:
	movs r0, #1
	b _08017102
_080170FC:
	movs r0, #1
_080170FE:
	str r0, [r4, #8]
_08017100:
	movs r0, #4
_08017102:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8017108
sub_8017108: @ 0x08017108
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4, #0x5c]
	ldr r5, [r4, #0x4c]
	adds r0, r5, #1
	movs r1, #7
	ands r0, r1
	str r0, [r4, #0x4c]
	ldr r2, _080171B4 @ =gUnknown_0201A830
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r4]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r1, [r4, #4]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r4, #8]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	bl sub_800B054
	cmp r5, #3
	bhi _080171BC
	cmp r5, #3
	bne _08017168
	ldr r0, [r4, #0x18]
	cmp r0, #0x13
	bne _080171C6
_08017168:
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x50
	bls _080171B8
	ldr r0, [r4, #0x18]
	cmp r0, #0x13
	beq _080171B8
	adds r0, r4, #0
	bl sub_800A700
	cmp r0, #0x1f
	bhi _080171B8
	adds r0, r4, #0
	bl sub_800A65C
	movs r0, #7
	ands r0, r5
	str r0, [r4, #0x4c]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0801721A
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _08017246
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	b _08017236
	.align 2, 0
_080171B4: .4byte gUnknown_0201A830
_080171B8:
	movs r0, #0
	b _08017254
_080171BC:
	cmp r5, #7
	bne _080171D0
	ldr r0, [r4, #0x18]
	cmp r0, #0x13
	beq _080171D0
_080171C6:
	adds r0, r4, #0
	bl sub_800A65C
_080171CC:
	movs r0, #0x13
	b _08017258
_080171D0:
	adds r0, r4, #0
	bl sub_800A6A0
	cmp r0, #0x50
	bls _08017252
	ldr r0, [r4, #0x18]
	cmp r0, #0x13
	beq _08017252
	adds r0, r4, #0
	bl sub_800A700
	cmp r0, #0x1f
	bhi _08017252
	adds r0, r4, #0
	bl sub_800A65C
	movs r0, #7
	ands r0, r5
	str r0, [r4, #0x4c]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0801721A
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _08017246
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	b _08017236
_0801721A:
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #8
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	bne _08017246
	movs r1, #2
	ldrsh r0, [r4, r1]
	subs r0, #0x10
_08017236:
	movs r2, #6
	ldrsh r1, [r4, r2]
	subs r1, #0x10
	bl sub_8003B78
	adds r5, r0, #0
	cmp r5, #0
	beq _080171CC
_08017246:
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	bne _080171CC
	movs r0, #1
	b _08017258
_08017252:
	movs r0, #1
_08017254:
	str r0, [r4, #8]
	movs r0, #4
_08017258:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8017260
sub_8017260: @ 0x08017260
	movs r0, #0
	bx lr

	thumb_func_start sub_8017264
sub_8017264: @ 0x08017264
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x48]
	cmp r4, #0
	bne _08017336
	bl sub_8006580
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r5, r1
	str r4, [r0]
	movs r2, #0x99
	lsls r2, r2, #2
	adds r0, r5, r2
	str r4, [r0]
	subs r1, #0x10
	adds r0, r5, r1
	str r4, [r0]
	subs r2, #0x10
	adds r0, r5, r2
	str r4, [r0]
	adds r1, #8
	adds r0, r5, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r5, r2
	str r4, [r0]
	str r4, [r5, #0x28]
	ldr r0, _080172D4 @ =gUnknown_087F785C
	movs r1, #1
	bl sub_8003A9C
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xff
	movs r3, #5
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
	movs r0, #0xa
	bl RandomCapped
	cmp r0, #7
	bls _08017336
	ldr r0, [r5, #0x50]
	cmp r0, #4
	bhi _08017336
	lsls r0, r0, #2
	ldr r1, _080172D8 @ =_080172DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080172D4: .4byte gUnknown_087F785C
_080172D8: .4byte _080172DC
_080172DC: @ jump table
	.4byte _080172F0 @ case 0
	.4byte _080172FC @ case 1
	.4byte _08017308 @ case 2
	.4byte _08017314 @ case 3
	.4byte _08017326 @ case 4
_080172F0:
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	movs r2, #3
	b _0801731E
_080172FC:
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	movs r2, #0xc
	b _0801731E
_08017308:
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	movs r2, #0xd
	b _0801731E
_08017314:
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	movs r2, #0xb
_0801731E:
	movs r3, #0
	bl sub_80091B4
	b _08017336
_08017326:
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	movs r2, #0xe
	movs r3, #0
	bl sub_80091B4
_08017336:
	ldr r1, _08017350 @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017344
	movs r0, #0
	str r0, [r5, #0x20]
_08017344:
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08017350: .4byte 0x000002B7

	thumb_func_start sub_8017354
sub_8017354: @ 0x08017354
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _080173B6
	ldr r0, _08017450 @ =gUnknown_087F79E4
	movs r1, #0
	bl sub_8003A9C
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	ldr r0, [r4, #4]
	ldr r1, _08017454 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #4]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x70
	bl sub_80040F4
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0xff
	movs r3, #4
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08017458 @ =gUnknown_0201A830
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsls r1, r1, #3
	adds r1, #0xc
	str r5, [sp]
	movs r2, #0xff
	movs r3, #4
	bl sub_800B0F4
_080173B6:
	ldr r2, _08017458 @ =gUnknown_0201A830
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r4]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r1, [r4, #4]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r4, #8]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	bl sub_800B054
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl sub_801A444
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	bne _08017436
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r4]
	subs r0, r0, r1
	ldr r1, [r4, #4]
	bl sub_801A444
	cmp r0, r5
	bne _08017436
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r1, [r4, #4]
	bl sub_801A444
	cmp r0, r5
	beq _0801743C
_08017436:
	ldr r1, _0801745C @ =gUnknown_020154A0
	movs r0, #0
	str r0, [r1]
_0801743C:
	adds r0, r4, #0
	bl sub_800709C
	ldr r1, _08017460 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017464
	movs r0, #0
	b _08017466
	.align 2, 0
_08017450: .4byte gUnknown_087F79E4
_08017454: .4byte 0xFFFF0000
_08017458: .4byte gUnknown_0201A830
_0801745C: .4byte gUnknown_020154A0
_08017460: .4byte 0x000002B7
_08017464:
	movs r0, #0x3c
_08017466:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8017470
sub_8017470: @ 0x08017470
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x48]
	cmp r5, #0
	bne _080174D0
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_8006FFC
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, r1
	str r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r5, [r0]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x70
	bl sub_80040F4
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xff
	movs r3, #8
	bl sub_800ACF8
	movs r0, #1
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08017524 @ =gUnknown_0201A830
	adds r0, r0, r1
	ldr r1, [r4, #0x50]
	lsls r1, r1, #3
	adds r1, #8
	str r5, [sp]
	movs r2, #0xff
	movs r3, #8
	bl sub_800B0F4
_080174D0:
	ldr r2, _08017524 @ =gUnknown_0201A830
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r4]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r1, [r4, #4]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r4, #8]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	bl sub_800B054
	adds r0, r4, #0
	bl sub_800709C
	ldr r1, _08017528 @ =0x000002B7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801752C
	movs r0, #0
	b _0801752E
	.align 2, 0
_08017524: .4byte gUnknown_0201A830
_08017528: .4byte 0x000002B7
_0801752C:
	movs r0, #0x3c
_0801752E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8017538
sub_8017538: @ 0x08017538
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _080175E6
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08017558
	movs r0, #0x98
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _08017554 @ =0xFFFF6000
	b _08017562
	.align 2, 0
_08017554: .4byte 0xFFFF6000
_08017558:
	movs r2, #0x98
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0xa0
	lsls r0, r0, #8
_08017562:
	str r0, [r1]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	ble _08017580
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bge _08017580
	movs r0, #0
	str r0, [r1]
_08017580:
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	bge _0801759C
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	ble _0801759C
	movs r0, #0
	str r0, [r1]
_0801759C:
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1]
	movs r4, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x70
	bl sub_80040F4
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	movs r0, #1
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08017640 @ =gUnknown_0201A830
	adds r0, r0, r1
	ldr r1, [r5, #0x50]
	lsls r1, r1, #3
	adds r1, #0xa
	str r4, [sp]
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
_080175E6:
	ldr r2, _08017640 @ =gUnknown_0201A830
	ldr r1, [r5, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r1, [r5, #4]
	str r1, [r0]
	ldr r1, [r5, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r5, #8]
	str r1, [r0]
	ldr r1, [r5, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	bl sub_800B054
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08017644
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r0, #2
	movs r2, #6
	ldrsh r1, [r5, r2]
	adds r1, #1
	bl sub_8003B78
	b _08017654
	.align 2, 0
_08017640: .4byte gUnknown_0201A830
_08017644:
	movs r1, #2
	ldrsh r0, [r5, r1]
	subs r0, #2
	movs r2, #6
	ldrsh r1, [r5, r2]
	adds r1, #1
	bl sub_8003B78
_08017654:
	cmp r0, #0
	beq _080176B0
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0801767A
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r0, #2
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r1, [r1]
	adds r0, r0, r1
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r1, #0xa
	bl sub_8003B78
	b _08017694
_0801767A:
	movs r1, #2
	ldrsh r0, [r5, r1]
	subs r0, #2
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r1, [r1]
	subs r0, r0, r1
	movs r2, #6
	ldrsh r1, [r5, r2]
	subs r1, #0xa
	bl sub_8003B78
_08017694:
	cmp r0, #0
	bne _080176B0
	adds r0, r5, #0
	bl sub_800709C
	ldr r1, _080176AC @ =0x000002B7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080176B0
	movs r0, #0
	b _080176B2
	.align 2, 0
_080176AC: .4byte 0x000002B7
_080176B0:
	movs r0, #0x3c
_080176B2:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80176BC
sub_80176BC: @ 0x080176BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	movs r7, #0
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bne _08017730
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_8006FFC
	movs r0, #1
	str r0, [r6, #0x48]
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x70
	bl sub_80040F4
	ldr r1, [r6, #0x50]
	cmp r1, #0
	bne _08017720
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
	ldr r1, [r6, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0801771C @ =gUnknown_0201A830
	adds r0, r0, r1
	ldr r1, [r6, #0x50]
	lsls r1, r1, #3
	adds r1, #0xb
	str r7, [sp]
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
	b _08017730
	.align 2, 0
_0801771C: .4byte gUnknown_0201A830
_08017720:
	lsls r1, r1, #3
	adds r1, #0xb
	str r7, [sp]
	adds r0, r6, #0
	movs r2, #0xff
	movs r3, #3
	bl sub_800ACF8
_08017730:
	adds r0, r6, #0
	bl sub_800709C
	ldr r0, [r6, #0x50]
	cmp r0, #0
	bne _080177E4
	ldr r4, _080177BC @ =gUnknown_0201A830
	ldr r1, [r6, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, [r6]
	str r1, [r0]
	ldr r1, [r6, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r7, r4, #4
	adds r0, r0, r7
	ldr r1, [r6, #4]
	str r1, [r0]
	ldr r1, [r6, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r4, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r6, #8]
	str r1, [r0]
	ldr r1, [r6, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	bl sub_800B054
	ldr r0, _080177C0 @ =gUnknown_0826260C
	ldr r1, [r6, #0x54]
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #3
	adds r2, r2, r4
	ldrh r1, [r2, #0x16]
	ldrh r2, [r2, #0x18]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	bne _08017798
	b _08017A22
_08017798:
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _080177C4
	ldr r0, [r6, #0x54]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r0, r1, r4
	ldr r3, [r5, #4]
	lsls r2, r3, #0x10
	ldr r0, [r0]
	adds r0, r0, r2
	adds r1, r1, r7
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r1]
	b _080179DC
	.align 2, 0
_080177BC: .4byte gUnknown_0201A830
_080177C0: .4byte gUnknown_0826260C
_080177C4:
	ldr r0, [r6, #0x54]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r0, r1, r4
	ldr r2, [r5, #0xc]
	lsls r3, r2, #0x10
	ldr r0, [r0]
	subs r0, r0, r3
	adds r1, r1, r7
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r1]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	b _080179E0
_080177E4:
	cmp r0, #1
	beq _080177EC
	cmp r0, #3
	bne _080178A0
_080177EC:
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	beq _080177FC
	b _08017A22
_080177FC:
	movs r3, #0x93
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r5, _08017840 @ =0x0000028A
	adds r1, r6, r5
	ldrh r1, [r1]
	adds r3, #0x40
	adds r2, r6, r3
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	bne _0801781C
	b _08017A22
_0801781C:
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _0801785A
	ldr r0, [r6, #0x50]
	cmp r0, #1
	bne _08017844
	ldr r1, [r5, #0xc]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xa
	b _08017872
	.align 2, 0
_08017840: .4byte 0x0000028A
_08017844:
	ldr r1, [r5, #0xc]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xa
	b _08017892
_0801785A:
	ldr r0, [r6, #0x50]
	cmp r0, #1
	bne _08017880
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r3, _0801787C @ =0xFFFE0000
_08017872:
	str r4, [sp]
	movs r2, #0xe
	bl sub_80082DC
	b _08017A22
	.align 2, 0
_0801787C: .4byte 0xFFFE0000
_08017880:
	ldr r1, [r5, #4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r2, [r5, #0x10]
	lsls r2, r2, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r2
	ldr r3, _0801789C @ =0xFFFE0000
_08017892:
	str r4, [sp]
	movs r2, #0xd
	bl sub_80082DC
	b _08017A22
	.align 2, 0
_0801789C: .4byte 0xFFFE0000
_080178A0:
	cmp r0, #4
	beq _080178A6
	b _080179A8
_080178A6:
	movs r0, #1
	str r0, [r6, #0x5c]
	movs r7, #0
	ldr r4, _08017924 @ =gUnknown_02013730
	adds r5, r4, #4
	mov ip, r5
_080178B2:
	movs r0, #0x8c
	adds r3, r7, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08017990
	ldr r0, [r6, #8]
	mov r8, r0
	cmp r0, #0
	bne _08017930
	adds r1, r3, r4
	ldr r2, [r6]
	movs r5, #0x80
	lsls r5, r5, #0xe
	adds r0, r2, r5
	ldr r1, [r1]
	cmp r1, r0
	blt _08017990
	movs r5, #0x80
	lsls r5, r5, #0xf
	adds r0, r2, r5
	cmp r1, r0
	bgt _08017990
	mov r0, ip
	adds r1, r3, r0
	ldr r2, [r6, #4]
	ldr r5, _08017928 @ =0xFFA80000
	adds r0, r2, r5
	ldr r1, [r1]
	cmp r1, r0
	blt _08017990
	ldr r5, _0801792C @ =0xFFF80000
	adds r0, r2, r5
	cmp r1, r0
	bgt _08017990
	adds r0, r4, #0
	adds r0, #0x30
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, #0
	bge _08017990
	rsbs r0, r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0x40
	adds r1, r3, r1
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r3, r0
	mov r1, r8
	b _08017982
	.align 2, 0
_08017924: .4byte gUnknown_02013730
_08017928: .4byte 0xFFA80000
_0801792C: .4byte 0xFFF80000
_08017930:
	adds r1, r3, r4
	ldr r2, [r6]
	ldr r5, _08017998 @ =0xFFC00000
	adds r0, r2, r5
	ldr r1, [r1]
	cmp r1, r0
	blt _08017990
	ldr r5, _0801799C @ =0xFFE00000
	adds r0, r2, r5
	cmp r1, r0
	bgt _08017990
	mov r0, ip
	adds r1, r3, r0
	ldr r2, [r6, #4]
	ldr r5, _080179A0 @ =0xFFA80000
	adds r0, r2, r5
	ldr r1, [r1]
	cmp r1, r0
	blt _08017990
	ldr r5, _080179A4 @ =0xFFF80000
	adds r0, r2, r5
	cmp r1, r0
	bgt _08017990
	adds r0, r4, #0
	adds r0, #0x30
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, #0
	ble _08017990
	rsbs r0, r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0x40
	adds r1, r3, r1
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r3, r0
	movs r1, #0
_08017982:
	str r1, [r0]
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r3, r1
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08017990:
	adds r7, #1
	cmp r7, #9
	ble _080178B2
	b _08017A22
	.align 2, 0
_08017998: .4byte 0xFFC00000
_0801799C: .4byte 0xFFE00000
_080179A0: .4byte 0xFFA80000
_080179A4: .4byte 0xFFF80000
_080179A8:
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r2, _080179F8 @ =0x0000028A
	adds r1, r6, r2
	ldrh r1, [r1]
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r6, r3
	ldrh r2, [r2]
	bl sub_801A44C
	adds r5, r0, #0
	cmp r5, #0
	beq _08017A22
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _080179FC
	ldr r3, [r5, #4]
	lsls r1, r3, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r4, [r5, #8]
	lsls r2, r4, #0x10
	ldr r1, [r6, #4]
_080179DC:
	adds r1, r1, r2
	ldr r2, [r5, #0xc]
_080179E0:
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_800A770
	b _08017A22
	.align 2, 0
_080179F8: .4byte 0x0000028A
_080179FC:
	ldr r2, [r5, #0xc]
	lsls r1, r2, #0x10
	ldr r0, [r6]
	subs r0, r0, r1
	ldr r4, [r5, #8]
	lsls r3, r4, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r3
	ldr r3, [r5, #4]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, [r5, #0x10]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_800A770
_08017A22:
	ldr r5, _08017A30 @ =0x000002B7
	adds r0, r6, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017A34
	movs r0, #0
	b _08017A36
	.align 2, 0
_08017A30: .4byte 0x000002B7
_08017A34:
	movs r0, #0x3c
_08017A36:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8017A44
sub_8017A44: @ 0x08017A44
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r2, #4
	bhi _08017ADA
	lsls r0, r2, #2
	ldr r1, _08017A5C @ =_08017A60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017A5C: .4byte _08017A60
_08017A60: @ jump table
	.4byte _08017A74 @ case 0
	.4byte _08017A98 @ case 1
	.4byte _08017ABC @ case 2
	.4byte _08017A98 @ case 3
	.4byte _08017ABC @ case 4
_08017A74:
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r2, #5
	movs r0, #5
	strh r0, [r1]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r6, r1
	strb r2, [r0]
	ldr r1, _08017A94 @ =gUnknown_083FB594
	movs r0, #5
	bl sub_801A42C
	b _08017ADA
	.align 2, 0
_08017A94: .4byte gUnknown_083FB594
_08017A98:
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r2, #8
	movs r0, #8
	strh r0, [r1]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r6, r1
	strb r2, [r0]
	ldr r2, _08017AB8 @ =gUnknown_083FB594
	movs r0, #8
	movs r1, #2
	bl sub_801A434
	b _08017ADA
	.align 2, 0
_08017AB8: .4byte gUnknown_083FB594
_08017ABC:
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r2, #9
	movs r0, #9
	strh r0, [r1]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r6, r1
	strb r2, [r0]
	ldr r2, _08017BF0 @ =gUnknown_083FB594
	movs r0, #9
	movs r1, #1
	bl sub_801A434
_08017ADA:
	str r4, [r6, #0x54]
	movs r0, #0
	str r0, [r6, #0x50]
	str r0, [r6, #0x28]
	str r0, [r6]
	str r0, [r6, #4]
	str r0, [r6, #8]
	movs r1, #1
	str r1, [r6, #0x14]
	str r0, [r6, #0x18]
	str r0, [r6, #0x1c]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r6, r2
	ldr r0, _08017BF4 @ =sub_8017260
	str r0, [r1]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _08017BF8 @ =sub_8017470
	str r0, [r1]
	adds r2, #0x10
	adds r1, r6, r2
	ldr r0, _08017BFC @ =sub_8017538
	str r0, [r1]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, _08017C00 @ =sub_80176BC
	str r1, [r0]
	adds r2, #0x3c
	adds r0, r6, r2
	str r1, [r0]
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, _08017C04 @ =sub_8017264
	str r0, [r1]
	adds r2, #0xa8
	adds r1, r6, r2
	ldr r0, _08017C08 @ =sub_8017354
	str r0, [r1]
	movs r0, #0
	ldr r7, _08017C0C @ =gUnknown_0826260C
	movs r2, #0
	adds r1, r6, #0
	adds r1, #0x2c
_08017B38:
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #7
	bls _08017B38
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r6, r1
	str r7, [r0]
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0x80
	movs r2, #0
	movs r3, #0x50
	bl sub_8006FC8
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r4, #0
	str r4, [r0]
	movs r5, #1
	str r5, [r6, #0x24]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r6, r2
	str r5, [r0]
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800ACF8
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x70
	bl sub_80040F4
	str r4, [sp, #4]
	ldr r2, _08017C10 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r1, [r6, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r3, _08017C14 @ =gUnknown_0201A830
	adds r0, r0, r3
	str r0, [r2, #4]
	ldr r0, _08017C18 @ =0x85000012
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r6, #0x54]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r0, r3, #0
	adds r0, #0x40
	adds r0, r1, r0
	str r7, [r0]
	adds r0, r3, #0
	adds r0, #0x30
	adds r1, r1, r0
	str r5, [r1]
	ldr r1, [r6, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r1, r6, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x34]
	ldr r1, [r6, #0x54]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	str r4, [sp]
	movs r1, #8
	movs r2, #0xff
	movs r3, #3
	bl sub_800B0F4
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017BF0: .4byte gUnknown_083FB594
_08017BF4: .4byte sub_8017260
_08017BF8: .4byte sub_8017470
_08017BFC: .4byte sub_8017538
_08017C00: .4byte sub_80176BC
_08017C04: .4byte sub_8017264
_08017C08: .4byte sub_8017354
_08017C0C: .4byte gUnknown_0826260C
_08017C10: .4byte 0x040000D4
_08017C14: .4byte gUnknown_0201A830
_08017C18: .4byte 0x85000012
