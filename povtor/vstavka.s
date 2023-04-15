	.file	"vstavka.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	bubble_sorting
	.type	bubble_sorting, @function
bubble_sorting:
	addi	a1,a1,-1
	ble	a1,zero,.L2
	mv	a6,a0
	slli	a2,a1,2
	add	a2,a0,a2
	j	.L3
.L4:
	addi	a5,a5,4
	beq	a5,a2,.L6
.L5:
	lw	a4,0(a5)
	lw	a3,4(a5)
	ble	a4,a3,.L4
	sw	a3,0(a5)
	sw	a4,4(a5)
	j	.L4
.L6:
	addi	a1,a1,-1
	addi	a2,a2,-4
	beq	a1,zero,.L2
.L3:
	mv	a5,a6
	bgt	a1,zero,.L5
	j	.L6
.L2:
	ret
	.size	bubble_sorting, .-bubble_sorting
	.ident	"GCC: (SiFive GCC 8.3.0-2020.04.1) 8.3.0"
