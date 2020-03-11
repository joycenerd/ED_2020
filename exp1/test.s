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
	.file	"test.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Tokens: \000"
	.align	2
.LC1:
	.ascii	" \012\000\000"
	.align	2
.LC2:
	.ascii	", \000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 10112
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #10112
	sub	sp, sp, #4
	ldr	r3, .L7
	ldr	r3, [r3]
	sub	r2, fp, #124
	mov	r0, r2
	mov	r1, #100
	mov	r2, r3
	bl	fgets
	ldr	r3, .L7+4
	ldr	r3, [r3]
	sub	r2, fp, #124
	mov	r0, r2
	mov	r1, r3
	bl	fputs
	ldr	r3, .L7+4
	ldr	r3, [r3]
	ldr	r0, .L7+8
	mov	r1, #1
	mov	r2, #8
	bl	fwrite
	sub	r3, fp, #124
	mov	r0, r3
	ldr	r1, .L7+12
	bl	strtok
	str	r0, [fp, #-16]
	b	.L2
.L3:
	sub	r2, fp, #10112
	sub	r2, r2, #12
	ldr	r3, [fp, #-20]
	mov	r1, #100
	mul	r3, r1, r3
	add	r4, r2, r3
	ldr	r0, [fp, #-16]
	bl	strlen
	mov	r3, r0
	mov	r0, r4
	ldr	r1, [fp, #-16]
	mov	r2, r3
	bl	strncpy
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	mov	r0, #0
	ldr	r1, .L7+12
	bl	strtok
	str	r0, [fp, #-16]
.L2:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L3
	ldr	r3, .L7+4
	ldr	r3, [r3]
	sub	r2, fp, #10112
	sub	r2, r2, #12
	mov	r0, r2
	mov	r1, r3
	bl	fputs
	mov	r3, #1
	str	r3, [fp, #-24]
	b	.L4
.L5:
	ldr	r3, .L7+4
	ldr	r3, [r3]
	ldr	r0, .L7+16
	mov	r1, #1
	mov	r2, #2
	bl	fwrite
	sub	r2, fp, #10112
	sub	r2, r2, #12
	ldr	r3, [fp, #-24]
	mov	r1, #100
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, .L7+4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	fputs
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L4:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L5
	ldr	r3, .L7+4
	ldr	r3, [r3]
	mov	r0, #10
	mov	r1, r3
	bl	fputc
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L8:
	.align	2
.L7:
	.word	stdin
	.word	stdout
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.3"
	.section	.note.GNU-stack,"",%progbits
