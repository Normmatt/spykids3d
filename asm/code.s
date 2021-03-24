
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

	thumb_func_start AgbMain
AgbMain: @ 0x080021E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_80027FC
	bl sub_8002984
	bl DoCopyrightScreens
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
	bl Sound_PlayMusic
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
	ldr r0, _08002314 @ =gIgnoreKeys
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
_08002314: .4byte gIgnoreKeys
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
	bl Sound_PlayMusic
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
