	.file	"intervaltest.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L2
	jmp	.L3
.L4:
	addl	$5, -8(%rbp)
.L3:
	cmpl	$99, -8(%rbp)
	jle	.L4
	jmp	.L1
.L2:
	subl	$1, -8(%rbp)
.L1:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
