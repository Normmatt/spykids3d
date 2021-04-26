.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start umul3232H32
umul3232H32: @ 0x08017C1C
	add r2, pc, #0x0 @ =sub_08017C20
	bx r2

	arm_func_start sub_08017C20
sub_08017C20: @ 0x08017C20
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x08017C2C
	ldr r0, _08017C98 @ =gUnknown_03007FF0
	ldr r0, [r0]
	ldr r2, _08017C9C @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _08017C3A
	bx lr
_08017C3A:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _08017C5E
	ldr r2, _08017CA4 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08017C5C
	adds r2, #0xe4
_08017C5C:
	adds r1, r1, r2
_08017C5E:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08017C6E
	ldr r0, [r0, #0x24]
	bl .call_r3
	ldr r0, [sp, #0x18]
_08017C6E:
	ldr r3, [r0, #0x28]
	bl .call_r3
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _08017CA8 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _08017C8E
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_08017C8E:
	str r5, [sp, #8]
	ldr r6, _08017CAC @ =0x00000630
	ldr r3, _08017CA0 @ =SoundMainRAM_Buffer+1
	bx r3
	.align 2, 0
_08017C98: .4byte gUnknown_03007FF0
_08017C9C: .4byte 0x68736D53
_08017CA0: .4byte SoundMainRAM_Buffer+1
_08017CA4: .4byte 0x04000006
_08017CA8: .4byte 0x00000350
_08017CAC: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x08017CB0
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_08017CFC
	add r1, pc, #0x4 @ =sub_08017CBC
	bx r1
	.align 2, 0

	arm_func_start sub_08017CBC
sub_08017CBC: @ 0x08017CBC
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_08017CCC:
	ldrsb r0, [r5]
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #8
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _08017CCC
	add r0, pc, #0x1F @ =sub_08017D1A
	bx r0

	thumb_func_start sub_08017CFC
sub_08017CFC: @ 0x08017CFC
	movs r0, #0
	mov r1, r8
	lsrs r1, r1, #3
	blo _08017D06
	stm r5!, {r0}
_08017D06:
	lsrs r1, r1, #1
	blo _08017D0E
	stm r5!, {r0}
	stm r5!, {r0}
_08017D0E:
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	subs r1, #1
	bgt _08017D0E

	non_word_aligned_thumb_func_start sub_08017D1A
sub_08017D1A: @ 0x08017D1A
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_08017D24:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08017D44
	ldr r1, _08017D40 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08017D38
	adds r1, #0xe4
_08017D38:
	cmp r1, r0
	blo _08017D44
	b _08017FC6
	.align 2, 0
_08017D40: .4byte 0x04000006
_08017D44:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _08017D4E
	b sub_08017FBC
_08017D4E:
	movs r0, #0x80
	tst r0, r6
	beq _08017D7E
	movs r0, #0x40
	tst r0, r6
	bne _08017D8E
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _08017DD6
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _08017DD6
_08017D7E:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _08017D94
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _08017DE4
_08017D8E:
	movs r0, #0
	strb r0, [r4]
	b sub_08017FBC
_08017D94:
	movs r0, #0x40
	tst r0, r6
	beq _08017DB4
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _08017DE4
_08017DA6:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _08017D8E
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _08017DE4
_08017DB4:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _08017DD2
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _08017DE4
	adds r5, r0, #0
	beq _08017DA6
	subs r6, #1
	strb r6, [r4]
	b _08017DE4
_08017DD2:
	cmp r2, #3
	bne _08017DE4
_08017DD6:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _08017DE4
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_08017DE4:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	muls r0, r5, r0
	lsrs r0, r0, #9
	strb r0, [r4, #0xa]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _08017E14
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_08017E14:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_08017E20
	bx r0
	.align 2, 0

	arm_func_start sub_08017E20
sub_08017E20: @ 0x08017E20
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	lsl sl, sl, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _08017F28
_08017E38:
	cmp r2, #4
	ble _08017E94
	subs r2, r2, r8
	movgt lr, #0
	bgt _08017E64
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_08017E64:
	ldr r6, [r5]
_08017E68:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	adds r5, r5, #0x40000000
	blo _08017E68
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08017E64
	adds r8, r8, lr
	beq _08017FA8
_08017E94:
	ldr r6, [r5]
_08017E98:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	subs r2, r2, #1
	beq _08017EF8
_08017EB0:
	adds r5, r5, #0x40000000
	blo _08017E98
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08017E38
	b _08017FA8
_08017EC8:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08017EEC
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_08017EDC:
	adds r2, r0, r2
	bgt _08017F7C
	sub sb, sb, r0
	b _08017EDC
_08017EEC:
	pop {r4, ip}
	mov r2, #0
	b _08017F08
_08017EF8:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _08017EB0
_08017F08:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	str r6, [r5], #4
	b _08017FB0
_08017F28:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08017F44:
	ldr r6, [r5]
_08017F48:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _08017F88
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _08017EC8
	subs sb, sb, #1
	addeq r0, r0, r1
_08017F7C:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08017F88:
	adds r5, r5, #0x40000000
	blo _08017F48
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08017F44
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_08017FA8:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_08017FB0:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_08017FBC
	bx r0

	thumb_func_start sub_08017FBC
sub_08017FBC: @ 0x08017FBC
	ldr r0, [sp, #4]
	subs r0, #1
	ble _08017FC6
	adds r4, #0x40
	b _08017D24
_08017FC6:
	ldr r0, [sp, #0x18]
	ldr r3, _08017FDC @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start .call_r3
.call_r3: @ 0x08017FDA
	bx r3
	.align 2, 0
_08017FDC: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x08017FE0
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start RealClearChain
RealClearChain: @ 0x08017FF8
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _08018016
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _0801800A
	str r1, [r2, #0x34]
	b _0801800C
_0801800A:
	str r1, [r3, #0x20]
_0801800C:
	cmp r1, #0
	beq _08018012
	str r2, [r1, #0x30]
_08018012:
	movs r1, #0
	str r1, [r0, #0x2c]
_08018016:
	bx lr
_08018018:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0801803C
_08018022:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08018030
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_08018030:
	adds r0, r4, #0
	bl RealClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08018022
_0801803C:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlayJumpTableCopy
MPlayJumpTableCopy: @ 0x08018048
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08018078 @ =MPlyJmpTbl
_0801804E:
	ldr r3, [r2]
	bl _08018062
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _0801804E
	bx ip
	.align 2, 0

	thumb_func_start ldrb_r3_r2
ldrb_r3_r2: @ 0x08018060
	ldrb r3, [r2]
_08018062:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08018074
	ldr r0, _08018078 @ =MPlyJmpTbl
	cmp r2, r0
	blo _08018072
	lsrs r0, r2, #0xe
	beq _08018074
_08018072:
	movs r3, #0
_08018074:
	pop {r0}
	bx lr
	.align 2, 0
_08018078: .4byte MPlyJmpTbl

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x0801807C
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_0801807E
sub_0801807E: @ 0x0801807E
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _08018062
	.align 2, 0
_08018088:
	push {lr}
_0801808A:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl ldrb_r3_r2
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x080180A8
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _080180C0
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _08018088
_080180C0:
	b _08018018
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x080180C4
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _080180D6
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_080180D6:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x080180D8
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _080180E8
	adds r2, #1
	str r2, [r1, #0x40]
	b _0801808A
_080180E8:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _080180FA
	b _0801808A
_080180FA:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x08018108
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x08018114
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x08018128
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x0801813C
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _08018062
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _08018062
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _08018062
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x0801816C
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x08018180
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x08018194
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x080181A8
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x080181BC
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x080181C8
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _080181DE
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_080181DE:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x080181E0
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x080181F4
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08018208 @ =0x04000060
	adds r0, r0, r3
	bl sub_0801807E
	strb r3, [r0]
	bx ip
	.align 2, 0
_08018208: .4byte 0x04000060

	thumb_func_start SoundVSync_rev01
SoundVSync_rev01: @ 0x0801820C
	ldr r0, _080184A8 @ =gUnknown_03007FF0
	ldr r0, [r0]
	ldr r2, _080184AC @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _0801823E
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _0801823E
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _08018240 @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _08018232
	ldr r1, _08018244 @ =0x84400004
	str r1, [r2, #8]
_08018232:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
_0801823E:
	bx lr
	.align 2, 0
_08018240: .4byte 0x040000BC
_08018244: .4byte 0x84400004

	thumb_func_start MPlayMain
MPlayMain: @ 0x08018248
	ldr r2, _080184AC @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _08018252
	bx lr
_08018252:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _08018264
	ldr r0, [r0, #0x3c]
	bl sub_080184A0
_08018264:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0801827C
	b _08018490
_0801827C:
	ldr r0, _080184A8 @ =gUnknown_03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08018290
	b _08018490
_08018290:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _080183E0
_08018298:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_080182A0:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _080182AA
	b _080183BC
_080182AA:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080182DE
_080182B6:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080182D2
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _080182D8
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _080182D8
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _080182D8
_080182D2:
	adds r0, r4, #0
	bl ClearChain
_080182D8:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080182B6
_080182DE:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _0801835C
	adds r0, r5, #0
	bl Clear64byte
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _0801835C
_08018304:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _08018310
	ldrb r1, [r5, #7]
	b _0801831A
_08018310:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _0801831A
	strb r1, [r5, #7]
_0801831A:
	cmp r1, #0xcf
	blo _08018330
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_080184A0
	b _0801835C
_08018330:
	cmp r1, #0xb0
	bls _08018352
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080184A0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080183B8
	b _0801835C
_08018352:
	ldr r0, _080184A4 @ =gUnknown_087428A4
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_0801835C:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08018304
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _080183B8
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _080183B8
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0801837E
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _080183B8
_0801837E:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _08018392
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _08018396
_08018392:
	movs r0, #0x80
	subs r2, r0, r1
_08018396:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _080183B8
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _080183B2
	movs r1, #0xc
	b _080183B4
_080183B2:
	movs r1, #3
_080183B4:
	orrs r0, r1
	strb r0, [r5]
_080183B8:
	mov r3, sl
	mov r4, fp
_080183BC:
	subs r6, #1
	ble _080183C8
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _080182A0
_080183C8:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _080183DA
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _08018490
_080183DA:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_080183E0:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _080183E8
	b _08018298
_080183E8:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_080183EC:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _08018486
	movs r1, #0xf
	tst r1, r0
	beq _08018486
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0801847C
_0801840A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _0801841A
	adds r0, r4, #0
	bl ClearChain
	b _08018476
_0801841A:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08018438
	bl ChnVolSetAsm
	cmp r6, #0
	beq _08018438
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08018438:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _08018476
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _0801844C
	movs r2, #0
_0801844C:
	cmp r6, #0
	beq _0801846A
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_080184A0
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _08018476
_0801846A:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKeyToFreq
	str r0, [r4, #0x20]
_08018476:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0801840A
_0801847C:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_08018486:
	subs r2, #1
	ble _08018490
	movs r0, #0x50
	adds r5, r5, r0
	bgt _080183EC
_08018490:
	ldr r0, _080184AC @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_080184A0
sub_080184A0: @ 0x080184A0
	bx r3
	.align 2, 0
_080184A4: .4byte gUnknown_087428A4
_080184A8: .4byte gUnknown_03007FF0
_080184AC: .4byte 0x68736D53

	thumb_func_start TrackStop
TrackStop: @ 0x080184B0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _080184E8
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080184E6
	movs r6, #0
_080184C4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080184DE
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _080184DC
	ldr r3, _080184F0 @ =gUnknown_03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_080184A0
_080184DC:
	strb r6, [r4]
_080184DE:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080184C4
_080184E6:
	str r4, [r5, #0x20]
_080184E8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080184F0: .4byte gUnknown_03007FF0

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x080184F4
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0801850C
	movs r0, #0xff
_0801850C:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08018520
	movs r0, #0xff
_08018520:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note
ply_note: @ 0x08018524
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _0801871C @ =gUnknown_03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _08018720 @ =gUnknown_087428A4
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0801856A
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08018568
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08018568
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_08018568:
	str r3, [r5, #0x40]
_0801856A:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _080185BC
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _0801858A
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _0801858C
_0801858A:
	adds r0, r3, #0
_0801858C:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _080185A4
	b _0801870A
_080185A4:
	movs r0, #0x80
	tst r0, r2
	beq _080185C0
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _080185B8
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_080185B8:
	ldrb r3, [r6, #1]
	b _080185C0
_080185BC:
	mov sb, r4
	ldrb r3, [r5, #5]
_080185C0:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _080185D0
	movs r0, #0xff
_080185D0:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _08018610
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _080185E8
	b _0801870A
_080185E8:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08018664
	movs r0, #0x40
	tst r0, r1
	bne _08018664
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _08018664
	beq _08018608
	b _0801870A
_08018608:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _08018664
	b _0801870A
_08018610:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_0801861E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08018664
	movs r0, #0x40
	tst r0, r1
	beq _08018638
	cmp r2, #0
	bne _0801863C
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _08018656
_08018638:
	cmp r2, #0
	bne _08018658
_0801863C:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _08018648
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _08018656
_08018648:
	bhi _08018658
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _08018654
	adds r7, r0, #0
	b _08018656
_08018654:
	blo _08018658
_08018656:
	mov r8, r4
_08018658:
	adds r4, #0x40
	subs r3, #1
	bgt _0801861E
	mov r4, r8
	cmp r4, #0
	beq _0801870A
_08018664:
	adds r0, r4, #0
	bl ClearChain
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _08018678
	str r4, [r3, #0x30]
_08018678:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _0801868A
	adds r1, r5, #0
	bl clear_modM
_0801868A:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _080186C4
	movs r3, #0
_080186C4:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _080186F2
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _080186DE
	movs r0, #0x70
	tst r0, r1
	bne _080186E0
_080186DE:
	movs r1, #8
_080186E0:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_080184A0
	b _080186FC
_080186F2:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKeyToFreq
_080186FC:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_0801870A:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_0801871C: .4byte gUnknown_03007FF0
_08018720: .4byte gUnknown_087428A4

	thumb_func_start ply_endtie
ply_endtie: @ 0x08018724
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _08018736
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _08018738
_08018736:
	ldrb r3, [r1, #5]
_08018738:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _08018760
	movs r4, #0x83
	movs r5, #0x40
_08018742:
	ldrb r2, [r1]
	tst r2, r4
	beq _0801875A
	tst r2, r5
	bne _0801875A
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _0801875A
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _08018760
_0801875A:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _08018742
_08018760:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x08018764
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _08018774
	movs r2, #0xc
	b _08018776
_08018774:
	movs r2, #3
_08018776:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start ld_r3_tp_adr_i_rev
ld_r3_tp_adr_i_rev: @ 0x08018780
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start ld_r3_r2_i_sub_rev
ld_r3_r2_i_sub_rev: @ 0x08018782
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos
ply_lfos: @ 0x0801878C
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _0801879C
	bl clear_modM
_0801879C:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod
ply_mod: @ 0x080187A0
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _080187B0
	bl clear_modM
_080187B0:
	bx ip
	.align 2, 0
