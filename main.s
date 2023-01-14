	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 0
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_linecounter@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	callq	_yyparse
	testl	%eax, %eax
	jne	LBB0_2
## %bb.1:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str(%rip), %rdi
	movl	$28, %esi
	movl	$1, %edx
	callq	_fwrite
LBB0_2:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_cons                           ## -- Begin function cons
	.p2align	4, 0x90
_cons:                                  ## @cons
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$24, %edi
	callq	_malloc
	movl	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	%r14, 16(%rax)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_node                           ## -- Begin function node
	.p2align	4, 0x90
_node:                                  ## @node
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$24, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$1, (%rax)
	movq	%r15, %rdi
	callq	_strdup
	movq	%rax, 8(%rbx)
	movq	%r14, 16(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_leaf                           ## -- Begin function leaf
	.p2align	4, 0x90
_leaf:                                  ## @leaf
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$24, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$2, (%rax)
	movq	%r15, %rdi
	callq	_strdup
	movq	%rax, 8(%rbx)
	movq	%r14, %rdi
	callq	_strdup
	movq	%rax, 16(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_tree                           ## -- Begin function tree
	.p2align	4, 0x90
_tree:                                  ## @tree
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %esi
	callq	_visit
	movl	$10, %edi
	popq	%rbp
	jmp	_putchar                        ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_visit                          ## -- Begin function visit
	.p2align	4, 0x90
_visit:                                 ## @visit
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r15d
	movq	%rdi, %r14
	movl	$10, %edi
	callq	_putchar
	testl	%r15d, %r15d
	jle	LBB5_3
## %bb.1:                               ## %.lr.ph.preheader
	leaq	L_.str.2(%rip), %r12
	movl	%r15d, %ebx
	.p2align	4, 0x90
LBB5_2:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	_printf
	addl	$-1, %ebx
	jne	LBB5_2
LBB5_3:                                 ## %._crit_edge
	movl	(%r14), %eax
	testl	%eax, %eax
	je	LBB5_4
## %bb.5:
	cmpl	$1, %eax
	je	LBB5_6
LBB5_7:
	cmpl	$2, %eax
	jne	LBB5_8
LBB5_9:
	movl	$40, %edi
	callq	_putchar
	movq	8(%r14), %rsi
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	16(%r14), %rsi
	leaq	L_.str.6(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$41, %edi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_putchar                        ## TAILCALL
LBB5_4:
	movl	$40, %edi
	callq	_putchar
	movq	8(%r14), %rdi
	leal	1(%r15), %ebx
	movl	%ebx, %esi
	callq	_visit
	movq	16(%r14), %rdi
	movl	%ebx, %esi
	callq	_visit
	movl	$41, %edi
	callq	_putchar
	movl	(%r14), %eax
	cmpl	$1, %eax
	jne	LBB5_7
LBB5_6:
	movl	$40, %edi
	callq	_putchar
	movq	8(%r14), %rsi
	leaq	L_.str.5(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	16(%r14), %rdi
	addl	$1, %r15d
	movl	%r15d, %esi
	callq	_visit
	movl	$41, %edi
	callq	_putchar
	movl	(%r14), %eax
	cmpl	$2, %eax
	je	LBB5_9
LBB5_8:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\nparser successfully ended\n\n"

L_.str.2:                               ## @.str.2
	.asciz	"    "

L_.str.5:                               ## @.str.5
	.asciz	"%s "

L_.str.6:                               ## @.str.6
	.asciz	"%s"

.subsections_via_symbols
