
.include "asm/macros.inc"

.syntax unified
.section .text

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
	bl InputUpdate
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
