	.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"a.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%f\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, #10
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	fmsr	s15, r3	@ int
	fsitod	d7, s15
	fcpyd	d0, d7
	bl	cos
	fcpyd	d6, d0
	fldd	d7, .L3
	faddd	d7, d6, d7
	fstd	d7, [fp, #-20]
	ldr	r0, .L3+8
	ldrd	r2, [fp, #-20]
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L4:
	.align	3
.L3:
	.word	0
	.word	1077149696
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.3"
	.section	.note.GNU-stack,"",%progbits
