	.file	"compound_condition_1.c"
	.section	.rodata
.LC0:
	.string	"Inside the condition"
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
	movl	x(%rip), %eax
	cmpl	$1, %eax
	jne	.L2
	movl	y(%rip), %eax
	cmpl	$1, %eax
	jne	.L2
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
.L2:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
