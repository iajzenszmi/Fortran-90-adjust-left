	.file	"test_adjustl.f08"
	.text
	.section	.rodata
.LC0:
	.string	"test_adjustl.f08"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	leaq	-32(%rbp), %rax
	leaq	str.1(%rip), %rdx
	movl	$20, %esi
	movq	%rax, %rdi
	call	_gfortran_adjustl@PLT
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, str.1(%rip)
	movq	%rdx, 8+str.1(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, 16+str.1(%rip)
	leaq	.LC0(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$4, -544(%rbp)
	movl	$128, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movl	$20, %edx
	leaq	str.1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.2.0(%rip), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.data
	.align 16
	.type	str.1, @object
	.size	str.1, 20
str.1:
	.ascii	"   gfortran         "
	.section	.rodata
	.align 16
	.type	options.2.0, @object
	.size	options.2.0, 28
options.2.0:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
