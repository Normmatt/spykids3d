
.include "asm/macros.inc"

.syntax unified
.section .text

	arm_func_start sub_80001CC
sub_80001CC: @ 0x080001CC
	ldr r2, _08000208 @ =0x040000D4
	mov r1, #0xa0
	stmdb sp!, {r1}
	str sp, [r2], #4
	add sp, sp, #4
	add r1, r0, #0x14
	str r1, [r2], #4
	ldr r1, _0800020C @ =0x85000100
	str r1, [r2]
	mov r1, #0
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	bx lr
	.align 2, 0
_08000208: .4byte 0x040000D4
_0800020C: .4byte 0x85000100

	arm_func_start sub_8000210
sub_8000210: @ 0x08000210
	push {r4, r5, r6, lr}
	ldr r4, _080002B8 @ =0x06017FF0
	ldr r5, [r0, #4]
	cmp r5, r4
	movgt r0, #1
	bgt _080002AC
	ldrb r4, [r0, #1]
	cmp r4, #0x7f
	movgt r0, #1
	bgt _080002AC
	lsl r4, r4, #3
	add r4, r4, #0x14
	add r4, r0, r4
	ldr r5, [r3], #4
	str r5, [r4], #4
	ldrh r5, [r3]
	strh r5, [r4]
	mov r4, #0x400
	add r4, r4, #0x14
	ldrb r5, [r0, #1]
	mov r6, #0x14
	mul r6, r5, r6
	add r4, r4, r6
	add r4, r0, r4
	str r1, [r4, #8]
	ldr r5, [r0, #4]
	str r5, [r4, #0xc]
	lsl r3, r2, #5
	strh r3, [r4, #0x10]
	ldrb r4, [r0, #1]
	add r4, r4, #1
	strb r4, [r0, #1]
	ldr r4, [r0, #4]
	add r4, r4, r2, lsl #5
	str r4, [r0, #4]
	ldrh r4, [r0, #8]
	add r4, r4, r2
	strh r4, [r0, #8]
	mov r0, #0
_080002AC:
	pop {r4, r5, r6}
	ldm sp!, {r1}
	bx r1
	.align 2, 0
_080002B8: .4byte 0x06017FF0

	arm_func_start sub_80002BC
sub_80002BC: @ 0x080002BC
	push {r4, r5, r6}
	ldr r1, _08000334 @ =0x040000D4
	add r2, r0, #0x14
	str r2, [r1]
	ldr r2, _08000330 @ =0x07000000
	str r2, [r1, #4]
	ldr r2, _08000338 @ =0x84000100
	str r2, [r1, #8]
	mov r2, #0x400
	add r2, r2, #0x14
	add r2, r2, r0
	ldr r3, _08000340 @ =0x06010000
	ldrb r6, [r0, #1]
	cmp r6, #0
	beq _08000328
_080002F8:
	ldr r4, [r2, #8]
	str r4, [r1]
	ldr r4, [r2, #0xc]
	add r4, r3, r4
	str r4, [r1, #4]
	ldr r4, _0800033C @ =0x84000000
	ldr r5, [r2, #0x10]
	orr r4, r4, r5, lsr #2
	str r4, [r1, #8]
	add r2, r2, #0x14
	subs r6, r6, #1
	bne _080002F8
_08000328:
	pop {r4, r5, r6}
	bx lr
	.align 2, 0
_08000330: .4byte 0x07000000
_08000334: .4byte 0x040000D4
_08000338: .4byte 0x84000100
_0800033C: .4byte 0x84000000
_08000340: .4byte 0x06010000

	arm_func_start sub_8000344
sub_8000344: @ 0x08000344
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, [r2, #4]
	ldrh r3, [r0, #2]
	add r4, r4, r3, lsl #3
	ldr r5, [r4, #4]
	ldrh r3, [r0, #4]
	add r5, r5, r3, lsl #4
	ldr r6, [r5, #4]
	ldrh r3, [r0, #4]
	ldrh r4, [r4]
	cmp r3, r4
	bge _08000750
	ldrh r5, [r5, #2]
	cmp r5, #0
	beq _08000750
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _08000588
	sub sp, sp, #0x18
	ldr r7, [r6, #0x14]
	ldrh r8, [r7, #0x14]
	lsl sl, r8, #8
	ldrh sb, [r0, #0x26]
	push {r0, r1, r2}
	mov r1, sl
	mov r2, sb
	bl sub_800081C
	mov sl, r0
	pop {r0, r1, r2}
	sub r8, r8, sl
	lsr r8, r8, #1
	str r8, [sp, #0xc]
	ldrh r8, [r7, #0x16]
	lsl sl, r8, #8
	ldrh sb, [r0, #0x28]
	push {r0, r1, r2}
	mov r1, sl
	mov r2, sb
	bl sub_800081C
	mov sl, r0
	pop {r0, r1, r2}
	sub r8, r8, sl
	lsr r8, r8, #1
	str r8, [sp, #0x10]
_080003F4:
	ldr r7, [r6, #0x14]
	ldr r8, [r7, #0xc]
	ldrh r7, [r7, #8]
_08000400:
	ldrsh sl, [r8, #8]
	ldrsh sb, [r6, #2]
	add sl, sl, sb
	lsl sl, sl, #8
	ldrsh sb, [r0, #0x26]
	push {r0, r1, r2}
	mov r1, sl
	mov r2, sb
	bl sub_800081C
	mov sl, r0
	pop {r0, r1, r2}
	ldrsh sb, [r0, #0x22]
	add sl, sb, sl
	mov sb, #0x100
	orr sb, sb, #0xff
	and sl, sl, sb
	ldrsh fp, [r8, #0xa]
	ldrsh sb, [r6, #4]
	add fp, fp, sb
	lsl fp, fp, #8
	ldrsh sb, [r0, #0x28]
	push {r0, r1, r2}
	mov r1, fp
	mov r2, sb
	bl sub_800081C
	mov fp, r0
	pop {r0, r1, r2}
	ldrsh sb, [r0, #0x24]
	add fp, sb, fp
	and fp, fp, #0xff
	mov r4, fp
	ldr sb, [r0, #0x14]
	orr r4, r4, sb, lsl #8
	ldr sb, [r0, #0x18]
	orr r4, r4, sb, lsl #10
	ldr sb, [r0, #0x10]
	orr r4, r4, sb, lsl #12
	ldr sb, [r8, #4]
	orr r4, r4, sb
	orr r4, r4, sl, lsl #16
	ldrb sb, [r1, #2]
	orr r4, r4, sb, lsl #25
	ldr sb, [r8]
	orr r4, r4, sb
	str r4, [sp]
	ldrh r4, [r1, #8]
	ldr sb, [r0, #0x1c]
	orr r4, r4, sb, lsl #10
	ldrh sb, [r0, #0x20]
	orr r4, r4, sb, lsl #12
	str r4, [sp, #4]
	mov r3, sp
	push {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp}
	mov r0, r1
	ldr r1, [r6, #0x14]
	ldr r1, [r1, #4]
	ldr sb, [r8, #0x10]
	add r1, r1, sb
	ldr r2, [r3]
	lsr sb, r2, #0x1e
	and sb, sb, #3
	lsr r2, r2, #0xc
	and r2, r2, #0xc
	orr r2, r2, sb
	ldr sb, _08000888 @ =_0800075C
	ldrb r2, [sb, r2]
	bl sub_8000210
	mov r0, #0
	pop {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp}
	add r8, r8, #0x14
	subs r7, r7, #1
	bne _08000400
	add r6, r6, #0x18
	subs r5, r5, #1
	bne _080003F4
	ldrh sb, [r0, #0x26]
	ldrh sl, [r0, #0x28]
	orr sb, sb, sl, lsl #16
	str sb, [sp]
	ldrh sb, [r0, #0x2a]
	str sb, [sp, #4]
	mov r0, sp
	ldrb sl, [r1, #2]
	add sl, sl, #1
	strb sl, [r1, #2]
	sub sl, sl, #1
	lsl sl, sl, #2
	lsl sl, sl, #3
	add r1, r1, #0x14
	add r1, r1, sl
	add r1, r1, #6
	mov r2, #1
	mov r3, #8
	ldr r4, _0800088C @ =ObjAffineSet
	mov lr, pc
	bx r4
_08000580:
	.byte 0x18, 0xD0, 0x8D, 0xE2, 0x71, 0x00, 0x00, 0xEA
_08000588:
	sub sp, sp, #0x10
_0800058C:
	ldr r7, [r6, #0x14]
	ldr r8, [r7, #0xc]
	ldrh r7, [r7, #8]
_08000598:
	ldrb sl, [r6]
	ldr sb, [r0, #0xc]
	teq sl, sb
	ldrsheq sl, [r8, #8]
	ldrshne sl, [r8, #0xc]
	rsbne sl, sl, #0
	ldrsh sb, [r6, #2]
	rsbne sb, sb, #0
	add sl, sl, sb
	ldrsh sb, [r0, #0x22]
	add sl, sb, sl
	mov sb, #0x100
	orr sb, sb, #0xff
	and sl, sl, sb
	cmp sl, #0xf0
	blt _08000600
	cmp sl, #0x1c0
	bgt _08000600
	add r8, r8, #0x14
	subs r7, r7, #1
	bne _08000598
	add r6, r6, #0x18
	subs r5, r5, #1
	bne _0800058C
	add sp, sp, #0x10
	b _08000750
_08000600:
	ldrb fp, [r6, #1]
	ldr sb, [r0, #8]
	teq fp, sb
	ldrsheq fp, [r8, #0xa]
	ldrshne fp, [r8, #0xe]
	rsbne fp, fp, #0
	ldrsh sb, [r6, #4]
	rsbne sb, sb, #0
	add fp, fp, sb
	ldrsh sb, [r0, #0x24]
	cmp fp, #0
	bgt _0800063C
	blt _08000650
	mov fp, sb
	b _0800067C
_0800063C:
	add fp, fp, sb
	and fp, fp, #0xff
	cmp fp, sb
	bgt _0800067C
	b _0800065C
_08000650:
	add fp, fp, sb
	cmp fp, sb
	blt _0800067C
_0800065C:
	add r8, r8, #0x14
	subs r7, r7, #1
	bne _08000598
	add r6, r6, #0x18
	subs r5, r5, #1
	bne _0800058C
	add sp, sp, #0x10
	b _08000750
_0800067C:
	and fp, fp, #0xff
	mov r4, fp
	ldr sb, [r0, #0x18]
	orr r4, r4, sb, lsl #10
	ldr sb, [r0, #0x10]
	orr r4, r4, sb, lsl #12
	ldr sb, [r8, #4]
	orr r4, r4, sb
	orr r4, r4, sl, lsl #16
	ldrb sl, [r6]
	ldr fp, [r0, #0xc]
	teq sl, fp
	orrne r4, r4, #0x10000000
	ldrb sl, [r6, #1]
	ldr fp, [r0, #8]
	teq sl, fp
	orrne r4, r4, #0x20000000
	ldr sb, [r8]
	orr r4, r4, sb
	str r4, [sp]
	ldrh r4, [r1, #8]
	ldr sb, [r0, #0x1c]
	orr r4, r4, sb, lsl #10
	ldrh sb, [r0, #0x20]
	orr r4, r4, sb, lsl #12
	str r4, [sp, #4]
	mov r3, sp
	mov sl, r0
	mov fp, r1
	push {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp}
	mov r0, fp
	ldr r1, [r6, #0x14]
	ldr r1, [r1, #4]
	ldr sb, [r8, #0x10]
	add r1, r1, sb
	ldr r2, [r3]
	lsr sb, r2, #0x1e
	and sb, sb, #3
	lsr r2, r2, #0xc
	and r2, r2, #0xc
	orr r2, r2, sb
	ldr sb, _08000890 @ =_0800075C
	ldrb r2, [sb, r2]
	bl sub_8000210
	mov r0, #0
	pop {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp}
	add r8, r8, #0x14
	subs r7, r7, #1
	bne _08000598
	add r6, r6, #0x18
	subs r5, r5, #1
	bne _0800058C
	add sp, sp, #0x10
_08000750:
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	ldm sp!, {r1}
	bx r1
_0800075C:
	.byte 0x01, 0x04, 0x10, 0x40
	.byte 0x02, 0x04, 0x08, 0x20, 0x02, 0x04, 0x08, 0x20, 0x01, 0x01, 0x01, 0x01

	arm_func_start sub_800076C
sub_800076C: @ 0x0800076C
	ldr r2, [r1, #4]
	ldr r2, [r2, #4]
	ldr r2, [r2, #4]
	ldr r2, [r2, #0x14]
	ldr r2, [r2]
	ldr r3, _080007D8 @ =0x05000200
	add r3, r3, r0, lsl #5
	ldr r1, _080007DC @ =0x040000D4
	str r2, [r1], #4
	str r3, [r1], #4
	ldr r2, _080007E0 @ =0x80000010
	str r2, [r1]
	bx lr

	arm_func_start sub_80007A0
sub_80007A0: @ 0x080007A0
	ldr r3, [r2, #4]
	add r3, r3, r1, lsl #3
	ldr r3, [r3, #4]
	ldr r3, [r3, #4]
	ldr r3, [r3, #0x14]
	ldr r3, [r3]
	ldr r2, _080007D8 @ =0x05000200
	add r2, r2, r0, lsl #5
	ldr r1, _080007DC @ =0x040000D4
	str r3, [r1], #4
	str r2, [r1], #4
	ldr r3, _080007E0 @ =0x80000010
	str r3, [r1]
	bx lr
	.align 2, 0
_080007D8: .4byte 0x05000200
_080007DC: .4byte 0x040000D4
_080007E0: .4byte 0x80000010

	arm_func_start sub_80007E4
sub_80007E4: @ 0x080007E4
	ldr r3, [r0, #4]
	add r3, r3, r1, lsl #3
	ldr r1, [r3, #4]
	add r3, r1, r2, lsl #4
	mov r0, #0
	ldrh r1, [r3, #8]
	cmp r1, #0
	ldrgt r0, [r3, #0xc]
	bx lr

	arm_func_start sub_8000808
sub_8000808: @ 0x08000808
	ldr r3, [r0, #4]
	add r3, r3, r1, lsl #3
	ldrh r0, [r3]
	sub r0, r0, #1
	bx lr

	arm_func_start sub_800081C
sub_800081C: @ 0x0800081C
	mov r0, #0
_08000820:
	cmp r1, r2, lsl #8
	blt _08000834
	sub r1, r1, r2, lsl #8
	add r0, r0, #0x100
	b _08000820
_08000834:
	cmp r1, r2, lsl #6
	blt _08000848
	sub r1, r1, r2, lsl #6
	add r0, r0, #0x40
	b _08000834
_08000848:
	cmp r1, r2, lsl #4
	blt _0800085C
	sub r1, r1, r2, lsl #4
	add r0, r0, #0x10
	b _08000848
_0800085C:
	cmp r1, r2, lsl #2
	blt _08000870
	sub r1, r1, r2, lsl #2
	add r0, r0, #4
	b _0800085C
_08000870:
	cmp r1, r2
	blt _08000884
	sub r1, r1, r2
	add r0, r0, #1
	b _08000870
_08000884:
	bx lr
	.align 2, 0
_08000888: .4byte _0800075C
_0800088C: .4byte ObjAffineSet
_08000890: .4byte _0800075C

	arm_func_start sub_8000894
sub_8000894: @ 0x08000894
	push {r4, r5, r6, lr}
	ldr r2, _08000A14 @ =gUnknown_020154A0
	ldrb r3, [r2]
	cmp r3, #0
	beq _08000A00
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	cmp r3, #1
	beq _080008C4
	cmp r3, #2
	beq _080009A0
	b _08000A00
_080008C4:
	ldr r2, _08000A18 @ =gUnknown_020146E0
	mov r3, #6
_080008CC:
	ldr r4, [r2, #0x20]
	cmp r4, #0
	beq _08000990
	ldr r4, [r2, #0x14]
	cmp r4, #0x3f
	beq _08000990
	push {r0, r1, r2, r3, r4}
	ldr r0, [r2]
	ldr r1, _08000A1C @ =sub_800BB44
	mov lr, pc
	bx r1
_080008F8:
	.byte 0x00, 0x50, 0xA0, 0xE1, 0x1F, 0x00, 0x9D, 0xE8
	.byte 0x04, 0x00, 0x92, 0xE5, 0x14, 0x11, 0x9F, 0xE5, 0x0F, 0xE0, 0xA0, 0xE1, 0x11, 0xFF, 0x2F, 0xE1
	.byte 0x00, 0x60, 0xA0, 0xE1, 0x1F, 0x00, 0xBD, 0xE8, 0x11, 0x0E, 0x55, 0xE3, 0x1B, 0x00, 0x00, 0xAA
	.byte 0x20, 0x00, 0x75, 0xE3, 0x19, 0x00, 0x00, 0xDA, 0xC0, 0x00, 0x56, 0xE3, 0x17, 0x00, 0x00, 0xAA
	.byte 0x20, 0x00, 0x76, 0xE3, 0x15, 0x00, 0x00, 0xDA, 0x00, 0x50, 0x92, 0xE5, 0x04, 0x60, 0x92, 0xE5
	.byte 0x25, 0x58, 0xA0, 0xE1, 0x26, 0x68, 0xA0, 0xE1, 0x78, 0x42, 0x92, 0xE5, 0x05, 0x40, 0x84, 0xE0
	.byte 0x04, 0x00, 0x50, 0xE1, 0x0D, 0x00, 0x00, 0xCA, 0x7C, 0x42, 0x92, 0xE5, 0x04, 0x40, 0x45, 0xE0
	.byte 0x04, 0x00, 0x50, 0xE1, 0x09, 0x00, 0x00, 0xBA, 0x80, 0x42, 0x92, 0xE5, 0x04, 0x40, 0x46, 0xE0
	.byte 0x04, 0x00, 0x51, 0xE1, 0x05, 0x00, 0x00, 0xBA, 0x84, 0x42, 0x92, 0xE5, 0x06, 0x40, 0x84, 0xE0
	.byte 0x04, 0x00, 0x51, 0xE1, 0x01, 0x00, 0x00, 0xCA, 0x06, 0x00, 0x63, 0xE2, 0x1C, 0x00, 0x00, 0xEA
_08000990:
	add r2, r2, #0x2c0
	subs r3, r3, #1
	beq _08000A00
	b _080008CC
_080009A0:
	ldr r2, _08000A24 @ =gUnknown_02000810
	ldr r5, [r2]
	ldr r6, [r2, #4]
	lsr r5, r5, #0x10
	lsr r6, r6, #0x10
	add r2, r2, #0x278
	ldr r4, [r2]
	add r4, r4, r5
	cmp r0, r4
	bgt _08000A00
	ldr r4, [r2, #4]
	sub r4, r5, r4
	cmp r0, r4
	blt _08000A00
	ldr r4, [r2, #8]
	sub r4, r6, r4
	cmp r1, r4
	blt _08000A00
	ldr r4, [r2, #0xc]
	add r4, r4, r6
	cmp r1, r4
	bgt _08000A00
	mov r0, #1
	b _08000A04
_08000A00:
	mvn r0, #0
_08000A04:
	pop {r4, r5, r6}
	ldm sp!, {r1}
	bx r1
_08000A10:
	.byte 0xC0, 0x02, 0x00, 0x00
_08000A14: .4byte gUnknown_020154A0
_08000A18: .4byte gUnknown_020146E0
_08000A1C: .4byte sub_800BB44
_08000A20:
	.byte 0x55, 0xBB, 0x00, 0x08
_08000A24: .4byte gUnknown_02000810
