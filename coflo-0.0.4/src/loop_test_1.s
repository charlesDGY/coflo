	.file	"loop_test_1.c"
	.section	.rodata
.LC0:
	.string	"Start.\n"
.LC1:
	.string	"i = %d\n"
.LC2:
	.string	"here\n"
.LC3:
	.string	"Finished.\n"
.LC4:
	.string	"hello"
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
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$6, -4(%rbp)
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
.L2:
	cmpl	$6, -20(%rbp)
	jg	.L3
	cmpl	$1, -20(%rbp)
	jle	.L4
	cmpl	$0, -4(%rbp)
	jle	.L4
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	addl	%edx, %eax
	cmpl	$7, %eax
	jle	.L4
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
.L4:
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC4, %r8d
	movl	$5, %ecx
	movl	$4, %edx
	movl	$3, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	dummy
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
