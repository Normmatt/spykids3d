
.include "asm/macros.inc"

.syntax unified
.section .text

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
	bl Sound_StopMusic
	ldr r0, _08001508 @ =gUnknown_087F6E20
	movs r1, #0
	bl Sound_PlayMusic
	bl Fade_FadeToBlack
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
	bl Fade_FadeFromBlack
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
	bl InputUpdate
	ldr r0, _0800156C @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08001574
	ldr r0, _08001570 @ =gUnknown_087F7920
	movs r1, #2
	bl Sound_PlaySE
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
_0800156C: .4byte gNewKeys
_08001570: .4byte gUnknown_087F7920
_08001574:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800158A
	ldr r0, _08001610 @ =gUnknown_087F7920
	movs r1, #2
	bl Sound_PlaySE
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
	ldr r0, _0800162C @ =gNewKeys
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
_0800162C: .4byte gNewKeys
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
	bl Fade_FadeToBlack
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
	ldr r0, _080016BC @ =gNewKeys
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080016C0 @ =gHeldKeys
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
_080016BC: .4byte gNewKeys
_080016C0: .4byte gHeldKeys
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
	bl Sound_PlayMusic
	bl Fade_FadeFromBlack
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
	bl InputUpdate
	ldr r0, _08001C48 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08001C5C
	ldr r0, _08001C4C @ =gUnknown_087F7920
	movs r1, #2
	bl Sound_PlaySE
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
_08001C48: .4byte gNewKeys
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
	bl Sound_PlaySE
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
	ldr r0, _08001CBC @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	bne _08001CA4
	b _080018F0
_08001CA4:
	bl Fade_FadeToBlack
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
_08001CBC: .4byte gNewKeys

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
	bl InputUpdate
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
	bl InputUpdate
	cmp r4, r5
	bls _08001D1E
	ldr r0, _08001D44 @ =gNewKeys
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
_08001D44: .4byte gNewKeys

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
	bl Fade_FadeFromBlack
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
	bl InputUpdate
	adds r7, #1
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r7, r0
	bhi _08001EE2
	cmp r7, #0x3c
	bls _08001E64
	ldr r0, _08001FFC @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08001E64
_08001EE2:
	bl Fade_FadeToBlack
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
	ldr r0, _08001FFC @ =gNewKeys
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08002008 @ =gHeldKeys
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
_08001FFC: .4byte gNewKeys
_08002000: .4byte gUnknown_02011934
_08002004: .4byte gUnknown_020119A0
_08002008: .4byte gHeldKeys

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
	bl Fade_FadeFromBlack
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
	bl InputUpdate
	adds r7, #1
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r7, r0
	bhi _0800215C
	cmp r7, #0x3c
	bls _080020E0
	ldr r0, _080021E4 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080020E0
_0800215C:
	bl Fade_FadeToBlack
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
_080021E4: .4byte gNewKeys
