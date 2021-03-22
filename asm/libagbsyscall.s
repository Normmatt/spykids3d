.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start DummyFunc_rev
DummyFunc_rev: @ 0x08019D00
	bx lr
	.align 2, 0

	thumb_func_start CpuSet
CpuSet: @ 0x08019D04
	svc #0xb
	bx lr

	thumb_func_start ObjAffineSet
ObjAffineSet: @ 0x08019D08
	svc #0xf
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x08019D0C
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start SoftResetRom
SoftResetRom: @ 0x08019D14
	ldr r3, _08019D28 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r3, _08019D2C @ =gUnknown_03007FFA
	movs r2, #0
	strb r2, [r3]
	subs r3, #0xfa
	mov sp, r3
	svc #1
	svc #0
	.align 2, 0
_08019D28: .4byte 0x04000208
_08019D2C: .4byte gUnknown_03007FFA
