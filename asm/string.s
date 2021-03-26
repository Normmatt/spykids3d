
.include "asm/macros.inc"

.syntax unified
.section .text

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
