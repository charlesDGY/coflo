	.file	"test_source_file_1.c"
	.local	f_mutex_protecting_thread_unsafe_function
	.comm	f_mutex_protecting_thread_unsafe_function,40,32
	.globl	some_global_variable
	.data
	.align 4
	.type	some_global_variable, @object
	.size	some_global_variable, 4
some_global_variable:
	.long	1
	.text
	.globl	function_that_we_will_call_through_a_ptr
	.type	function_that_we_will_call_through_a_ptr, @function
function_that_we_will_call_through_a_ptr:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	some_variable_set_by_an_isr(%rip), %edx
	movl	g_external_variable(%rip), %eax
	addl	%edx, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	function_that_we_will_call_through_a_ptr, .-function_that_we_will_call_through_a_ptr
	.globl	another_level_deep
	.type	another_level_deep, @function
another_level_deep:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	another_level_deep, .-another_level_deep
	.globl	function_a
	.type	function_a, @function
function_a:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	call	another_level_deep
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	function_a, .-function_a
	.globl	function_b
	.type	function_b, @function
function_b:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$2, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	function_b, .-function_b
	.globl	function_c
	.type	function_c, @function
function_c:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$3, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	function_c, .-function_c
	.type	function_w, @function
function_w:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$4, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	function_w, .-function_w
	.globl	function_y
	.type	function_y, @function
function_y:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$5, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	function_y, .-function_y
	.globl	function_z
	.type	function_z, @function
function_z:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	some_global_variable(%rip), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	function_z, .-function_z
	.section	.rodata
.LC0:
	.string	"Now printing from thread %d\n"
	.text
	.globl	threadsafe_printf_wrapper
	.type	threadsafe_printf_wrapper, @function
threadsafe_printf_wrapper:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$f_mutex_protecting_thread_unsafe_function, %edi
	call	pthread_mutex_lock
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$f_mutex_protecting_thread_unsafe_function, %edi
	call	pthread_mutex_unlock
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	threadsafe_printf_wrapper, .-threadsafe_printf_wrapper
	.globl	test_func
	.type	test_func, @function
test_func:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	test_func, .-test_func
	.globl	predicate_1
	.type	predicate_1, @function
predicate_1:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	some_variable_set_by_an_isr(%rip), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	predicate_1, .-predicate_1
	.globl	ISR1
	.type	ISR1, @function
ISR1:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$9, %edi
	call	threadsafe_printf_wrapper
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ISR1, .-ISR1
	.section	.rodata
.LC1:
	.string	"Yes\n"
.LC2:
	.string	"t"
.LC3:
	.string	"No\n"
.LC4:
	.string	"h"
	.text
	.globl	one_if
	.type	one_if, @function
one_if:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L24
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	cmpl	$6, -4(%rbp)
	jle	.L26
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L26
.L24:
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	$4, %eax
	jmp	.L28
.L26:
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$2, %edi
	call	exit
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	one_if, .-one_if
	.section	.rodata
.LC5:
	.string	"if with no else\n"
.LC6:
	.string	"OR Test\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	$function_that_we_will_call_through_a_ptr, -24(%rbp)
	call	test_func
	movl	%eax, %ebx
	movl	$0, %eax
	call	function_a
	addl	%eax, %ebx
	movl	$0, %eax
	call	function_w
	movl	%eax, %edi
	call	calculate
	addl	%ebx, %eax
	testl	%eax, %eax
	je	.L30
	movl	$0, %eax
	call	function_a
	movl	%eax, -28(%rbp)
	movl	$0, %eax
	call	function_b
	movl	%eax, -28(%rbp)
	movl	$0, %eax
	call	function_c
	movl	%eax, -28(%rbp)
	jmp	.L31
.L30:
	jmp	.L32
.L33:
	movl	$0, %eax
	call	function_w
	movl	%eax, -28(%rbp)
	movl	$0, %eax
	call	function_y
	movl	%eax, -28(%rbp)
	movl	$0, %eax
	call	function_z
	movl	%eax, -28(%rbp)
.L32:
	call	predicate_1
	testl	%eax, %eax
	jne	.L33
	movl	g_external_variable(%rip), %eax
	testl	%eax, %eax
	je	.L34
	movl	$0, %eax
	call	do_this
	jmp	.L35
.L34:
	movl	$0, %eax
	call	do_that
.L35:
	movl	g_external_variable(%rip), %eax
	testl	%eax, %eax
	je	.L31
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L31:
	movl	$0, %eax
	call	function_a
	nop
	movl	g_external_variable(%rip), %eax
	testl	%eax, %eax
	je	.L36
	call	predicate_1
	testl	%eax, %eax
	je	.L36
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
.L36:
	movl	$88, %edi
	call	last_function_called_by_main
	movl	-28(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
