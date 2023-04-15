	.file	"vstavka.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	sorting_by_insertion
	.type	sorting_by_insertion, @function
sorting_by_insertion:
	li	a5,1
	ble	a1,a5,.L2
	mv	t5,a0
	addi	t3,a0,4
	li	t4,1
	j	.L3
.L6:
	mv	a4,t4
.L4:
	addi	t4,t4,1
	addi	t5,t5,4
	addi	t3,t3,4
	beq	a1,t4,.L2
.L3:
	ble	t4,zero,.L6
	mv	a7,t5
	lw	a2,0(t5)
	mv	a6,t3
	lw	a3,0(t3)
	mv	a5,t3
	mv	a4,t4
	addi	t1,t3,-8
	sub	t1,t1,t5
	ble	a2,a3,.L4
.L5:
	sw	a3,0(a7)
	sw	a2,0(a6)
	addi	a4,a4,-1
	beq	a4,zero,.L4
	add	a7,a7,t1
	lw	a2,-8(a5)
	addi	a6,a6,-4
	addi	a5,a5,-4
	lw	a3,0(a5)
	bgt	a2,a3,.L5
	j	.L4
.L2:
	slli	a4,a4,2
	add	a4,a0,a4
	lw	a0,0(a4)
	ret
	.size	sorting_by_insertion, .-sorting_by_insertion
	.ident	"GCC: (SiFive GCC 8.3.0-2020.04.1) 8.3.0"
