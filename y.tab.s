	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 0
	.globl	_yyparse                        ## -- Begin function yyparse
	.p2align	4, 0x90
_yyparse:                               ## @yyparse
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2056, %rsp                     ## imm = 0x808
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-448(%rbp), %r13
	leaq	-2048(%rbp), %rcx
	movq	_yynerrs@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	_yychar@GOTPCREL(%rip), %r14
	movl	$-2, (%r14)
	xorl	%edx, %edx
	movl	$200, %ebx
	movq	%r13, -2080(%rbp)               ## 8-byte Spill
	movq	%rcx, -2088(%rbp)               ## 8-byte Spill
	movq	%rcx, %r15
	jmp	LBB0_4
	.p2align	4, 0x90
LBB0_1:                                 ##   in Loop: Header=BB0_4 Depth=1
	leaq	_yydefgoto(%rip), %rcx
	movsbl	-33(%rax,%rcx), %edx
LBB0_2:                                 ##   in Loop: Header=BB0_4 Depth=1
	movq	-2064(%rbp), %rbx               ## 8-byte Reload
LBB0_3:                                 ##   in Loop: Header=BB0_4 Depth=1
	addq	$2, %r13
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	movw	%dx, (%r13)
	movq	-2080(%rbp), %rax               ## 8-byte Reload
	leaq	(%rax,%rbx,2), %rax
	addq	$-2, %rax
	cmpq	%r13, %rax
	jbe	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	movq	%r13, -2072(%rbp)               ## 8-byte Spill
	movq	%r15, %r13
	movq	%rbx, -2064(%rbp)               ## 8-byte Spill
	jmp	LBB0_12
	.p2align	4, 0x90
LBB0_6:                                 ##   in Loop: Header=BB0_4 Depth=1
	movl	%edx, -2056(%rbp)               ## 4-byte Spill
	cmpq	$9999, %rbx                     ## imm = 0x270F
	ja	LBB0_72
## %bb.7:                               ##   in Loop: Header=BB0_4 Depth=1
	addq	%rbx, %rbx
	cmpq	$10000, %rbx                    ## imm = 0x2710
	movl	$10000, %eax                    ## imm = 0x2710
	cmovaeq	%rax, %rbx
	leaq	(%rbx,%rbx,4), %rax
	leaq	(%rax,%rax), %rdi
	addq	$7, %rdi
	callq	_malloc
	testq	%rax, %rax
	je	LBB0_72
## %bb.8:                               ##   in Loop: Header=BB0_4 Depth=1
	movq	%rax, %r12
	movq	-2080(%rbp), %r15               ## 8-byte Reload
	subq	%r15, %r13
	movq	%r13, %r14
	sarq	%r14
	leaq	1(%r14), %r13
	movq	%r13, %rdx
	addq	%r13, %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	_memcpy
	movq	%rbx, -2064(%rbp)               ## 8-byte Spill
	addq	%rbx, %rbx
	addq	$7, %rbx
	andq	$-8, %rbx
	addq	%r12, %rbx
	shlq	$3, %r13
	movq	%rbx, %rdi
	movq	-2088(%rbp), %rsi               ## 8-byte Reload
	movq	%r13, %rdx
	callq	_memcpy
	leaq	-448(%rbp), %rax
	cmpq	%rax, %r15
	je	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_4 Depth=1
	movq	%r15, %rdi
	callq	_free
LBB0_10:                                ##   in Loop: Header=BB0_4 Depth=1
	leaq	(%r12,%r14,2), %rcx
	movq	-2064(%rbp), %rax               ## 8-byte Reload
	leaq	(%r12,%rax,2), %rax
	addq	$-2, %rax
	cmpq	%rcx, %rax
	jbe	LBB0_67
## %bb.11:                              ##   in Loop: Header=BB0_4 Depth=1
	movq	%rcx, -2072(%rbp)               ## 8-byte Spill
	leaq	(%rbx,%r14,8), %r13
	movq	%r12, -2080(%rbp)               ## 8-byte Spill
	movq	%rbx, -2088(%rbp)               ## 8-byte Spill
	movq	_yychar@GOTPCREL(%rip), %r14
	movl	-2056(%rbp), %edx               ## 4-byte Reload
LBB0_12:                                ## %.thread288
                                        ##   in Loop: Header=BB0_4 Depth=1
	movslq	%edx, %r15
	leaq	_yypact(%rip), %rax
	movsbl	(%r15,%rax), %ebx
	cmpl	$-41, %ebx
	je	LBB0_28
## %bb.13:                              ##   in Loop: Header=BB0_4 Depth=1
	movl	(%r14), %eax
	cmpl	$-2, %eax
	jne	LBB0_15
## %bb.14:                              ##   in Loop: Header=BB0_4 Depth=1
	callq	_yylex
	movl	%eax, (%r14)
LBB0_15:                                ##   in Loop: Header=BB0_4 Depth=1
	testl	%eax, %eax
	jle	LBB0_18
## %bb.16:                              ##   in Loop: Header=BB0_4 Depth=1
	cmpl	$287, %eax                      ## imm = 0x11F
	ja	LBB0_19
## %bb.17:                              ##   in Loop: Header=BB0_4 Depth=1
	movl	%eax, %eax
	leaq	_yytranslate(%rip), %rcx
	movzbl	(%rax,%rcx), %ecx
	jmp	LBB0_20
LBB0_18:                                ##   in Loop: Header=BB0_4 Depth=1
	movl	$0, (%r14)
	xorl	%ecx, %ecx
	movb	$1, %al
	jmp	LBB0_21
LBB0_19:                                ##   in Loop: Header=BB0_4 Depth=1
	movl	$2, %ecx
LBB0_20:                                ##   in Loop: Header=BB0_4 Depth=1
	xorl	%eax, %eax
LBB0_21:                                ##   in Loop: Header=BB0_4 Depth=1
	addl	%ecx, %ebx
	cmpl	$68, %ebx
	ja	LBB0_28
## %bb.22:                              ##   in Loop: Header=BB0_4 Depth=1
	movl	%ebx, %edx
	leaq	_yycheck(%rip), %rsi
	movsbl	(%rdx,%rsi), %esi
	cmpl	%esi, %ecx
	jne	LBB0_28
## %bb.23:                              ##   in Loop: Header=BB0_4 Depth=1
	leaq	-65(%rdx), %rcx
	cmpq	$3, %rcx
	jb	LBB0_73
## %bb.24:                              ##   in Loop: Header=BB0_4 Depth=1
	cmpl	$17, %ebx
	je	LBB0_71
## %bb.25:                              ##   in Loop: Header=BB0_4 Depth=1
	movq	%r13, %r15
	testb	%al, %al
	jne	LBB0_27
## %bb.26:                              ##   in Loop: Header=BB0_4 Depth=1
	movl	$-2, (%r14)
LBB0_27:                                ##   in Loop: Header=BB0_4 Depth=1
	leaq	_yytable(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movq	_yylval@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%r15)
	addq	$8, %r15
	movq	-2064(%rbp), %rbx               ## 8-byte Reload
	movq	-2072(%rbp), %r13               ## 8-byte Reload
	jmp	LBB0_3
	.p2align	4, 0x90
LBB0_28:                                ##   in Loop: Header=BB0_4 Depth=1
	leaq	_yydefact(%rip), %rax
	movzbl	(%r15,%rax), %ebx
	testq	%rbx, %rbx
	je	LBB0_73
## %bb.29:                              ##   in Loop: Header=BB0_4 Depth=1
	leaq	_yyr2(%rip), %rax
	movzbl	(%rbx,%rax), %edx
	leal	-2(%rbx), %eax
	cmpb	$41, %al
	movq	%r13, %r15
	ja	LBB0_39
## %bb.30:                              ##   in Loop: Header=BB0_4 Depth=1
	movzbl	%al, %eax
	leaq	LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-2072(%rbp), %r13               ## 8-byte Reload
	jmpq	*%rax
LBB0_31:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.18(%rip), %rdi
LBB0_32:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	%rdx, %r12
	callq	_leaf
	jmp	LBB0_60
LBB0_33:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-8(%r15), %rsi
	leaq	L_.str(%rip), %rdi
	jmp	LBB0_58
LBB0_34:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-8(%r15), %rsi
	leaq	L_.str.1(%rip), %rdi
	jmp	LBB0_58
LBB0_35:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	(%r15), %r12
	movq	%r12, %rdi
	movq	%rdx, -2056(%rbp)               ## 8-byte Spill
	callq	_tree
	movq	-2056(%rbp), %rdx               ## 8-byte Reload
	jmp	LBB0_62
LBB0_36:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-8(%r15), %rsi
	leaq	L_.str.2(%rip), %rdi
	jmp	LBB0_58
LBB0_37:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	(%r15), %rsi
	leaq	L_.str.11(%rip), %rdi
	jmp	LBB0_58
LBB0_38:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-16(%r15), %rdi
	movq	(%r15), %rsi
	movq	%rdx, %r12
	callq	_cons
	leaq	L_.str.11(%rip), %rdi
	jmp	LBB0_55
LBB0_39:                                ##   in Loop: Header=BB0_4 Depth=1
	movl	$1, %eax
	subq	%rdx, %rax
	movq	(%r15,%rax,8), %r12
	movq	-2072(%rbp), %r13               ## 8-byte Reload
	jmp	LBB0_62
LBB0_40:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	(%r15), %r12
	jmp	LBB0_62
LBB0_41:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-8(%r15), %rdi
	movq	(%r15), %rsi
	movq	%rdx, %r12
	callq	_cons
	leaq	L_.str.3(%rip), %rdi
	jmp	LBB0_55
LBB0_42:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-8(%r15), %rdi
	movq	(%r15), %rsi
	movq	%rdx, %r12
	callq	_cons
	leaq	L_.str.4(%rip), %rdi
	jmp	LBB0_55
LBB0_43:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-8(%r15), %rdi
	movq	(%r15), %rsi
	movq	%rdx, %r12
	callq	_cons
	leaq	L_.str.5(%rip), %rdi
	jmp	LBB0_55
LBB0_44:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-8(%r15), %rdi
	movq	(%r15), %rsi
	movq	%rdx, %r12
	callq	_cons
	leaq	L_.str.6(%rip), %rdi
	jmp	LBB0_55
LBB0_45:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-8(%r15), %rdi
	movq	(%r15), %rsi
	movq	%rdx, %r12
	callq	_cons
	leaq	L_.str.7(%rip), %rdi
	jmp	LBB0_55
LBB0_46:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-8(%r15), %rdi
	movq	(%r15), %rsi
	movq	%rdx, %r12
	callq	_cons
	jmp	LBB0_60
LBB0_47:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-16(%r15), %rax
	movq	%rax, -2056(%rbp)               ## 8-byte Spill
	movq	-8(%r15), %rdi
	movq	(%r15), %rsi
	movq	%rdx, %r12
	callq	_cons
	movq	-2056(%rbp), %rdi               ## 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	jmp	LBB0_60
LBB0_48:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-24(%r15), %rdi
	movq	-16(%r15), %rsi
	movq	%rdx, -2056(%rbp)               ## 8-byte Spill
	callq	_cons
	movq	%rax, %r12
	movq	-8(%r15), %rdi
	movq	(%r15), %rsi
	callq	_cons
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	_cons
	movq	-2056(%rbp), %rdx               ## 8-byte Reload
	jmp	LBB0_61
LBB0_49:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	(%r15), %rsi
	leaq	L_.str.8(%rip), %rdi
	jmp	LBB0_58
LBB0_50:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	(%r15), %rsi
	leaq	L_.str.9(%rip), %rdi
	jmp	LBB0_58
LBB0_51:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-8(%r15), %rsi
	leaq	L_.str.9(%rip), %rdi
	movq	%rdx, %r12
	callq	_node
	movq	(%r15), %rsi
	movq	%rax, %rdi
	callq	_cons
	jmp	LBB0_60
LBB0_52:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	(%r15), %rsi
	leaq	L_.str.10(%rip), %rdi
	jmp	LBB0_58
LBB0_53:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	(%r15), %rsi
	leaq	L_.str.12(%rip), %rdi
	jmp	LBB0_58
LBB0_54:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	-16(%r15), %rdi
	movq	(%r15), %rsi
	movq	%rdx, %r12
	callq	_cons
	leaq	L_.str.13(%rip), %rdi
LBB0_55:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	%rax, %rsi
	jmp	LBB0_59
LBB0_56:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	(%r15), %rsi
	leaq	L_.str.14(%rip), %rdi
	jmp	LBB0_58
LBB0_57:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	(%r15), %rsi
	leaq	L_.str.15(%rip), %rdi
	.p2align	4, 0x90
LBB0_58:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	%rdx, %r12
LBB0_59:                                ##   in Loop: Header=BB0_4 Depth=1
	callq	_node
LBB0_60:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	%r12, %rdx
LBB0_61:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	%rax, %r12
LBB0_62:                                ##   in Loop: Header=BB0_4 Depth=1
	leaq	(,%rdx,8), %rax
	subq	%rax, %r15
	addq	%rdx, %rdx
	subq	%rdx, %r13
	movq	%r12, 8(%r15)
	addq	$8, %r15
	leaq	_yyr1(%rip), %rax
	movzbl	(%rbx,%rax), %eax
	leaq	_yypgoto(%rip), %rcx
	movsbl	-33(%rax,%rcx), %edx
	movswl	(%r13), %ecx
	addl	%ecx, %edx
	cmpl	$68, %edx
	ja	LBB0_1
## %bb.63:                              ##   in Loop: Header=BB0_4 Depth=1
	movl	%edx, %edx
	leaq	_yycheck(%rip), %rsi
	movsbl	(%rdx,%rsi), %esi
	cmpw	%si, %cx
	jne	LBB0_1
## %bb.64:                              ##   in Loop: Header=BB0_4 Depth=1
	leaq	_yytable(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	jmp	LBB0_2
LBB0_65:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.16(%rip), %rdi
	jmp	LBB0_32
LBB0_66:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	L_.str.17(%rip), %rdi
	jmp	LBB0_32
LBB0_67:                                ## %.thread295.thread.loopexit
	movl	$1, %ebx
	movq	%r12, %rdi
LBB0_68:                                ## %.thread295.thread
	callq	_free
LBB0_69:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB0_74
## %bb.70:
	movl	%ebx, %eax
	addq	$2056, %rsp                     ## imm = 0x808
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_71:                                ## %.thread295
	xorl	%ebx, %ebx
	leaq	-448(%rbp), %rax
	movq	-2080(%rbp), %rdi               ## 8-byte Reload
	cmpq	%rax, %rdi
	jne	LBB0_68
	jmp	LBB0_69
LBB0_72:
	leaq	L_.str.22(%rip), %rdi
	callq	_yyerror
LBB0_73:
	movq	_yynerrs@GOTPCREL(%rip), %rax
	addl	$1, (%rax)
	leaq	L_.str.19(%rip), %rdi
	callq	_yyerror
LBB0_74:
	callq	___stack_chk_fail
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_40, LBB0_40-LJTI0_0
.set L0_0_set_35, LBB0_35-LJTI0_0
.set L0_0_set_33, LBB0_33-LJTI0_0
.set L0_0_set_34, LBB0_34-LJTI0_0
.set L0_0_set_36, LBB0_36-LJTI0_0
.set L0_0_set_41, LBB0_41-LJTI0_0
.set L0_0_set_42, LBB0_42-LJTI0_0
.set L0_0_set_43, LBB0_43-LJTI0_0
.set L0_0_set_44, LBB0_44-LJTI0_0
.set L0_0_set_45, LBB0_45-LJTI0_0
.set L0_0_set_46, LBB0_46-LJTI0_0
.set L0_0_set_47, LBB0_47-LJTI0_0
.set L0_0_set_48, LBB0_48-LJTI0_0
.set L0_0_set_49, LBB0_49-LJTI0_0
.set L0_0_set_50, LBB0_50-LJTI0_0
.set L0_0_set_51, LBB0_51-LJTI0_0
.set L0_0_set_52, LBB0_52-LJTI0_0
.set L0_0_set_37, LBB0_37-LJTI0_0
.set L0_0_set_38, LBB0_38-LJTI0_0
.set L0_0_set_53, LBB0_53-LJTI0_0
.set L0_0_set_54, LBB0_54-LJTI0_0
.set L0_0_set_56, LBB0_56-LJTI0_0
.set L0_0_set_57, LBB0_57-LJTI0_0
.set L0_0_set_65, LBB0_65-LJTI0_0
.set L0_0_set_66, LBB0_66-LJTI0_0
.set L0_0_set_31, LBB0_31-LJTI0_0
LJTI0_0:
	.long	L0_0_set_40
	.long	L0_0_set_35
	.long	L0_0_set_35
	.long	L0_0_set_33
	.long	L0_0_set_34
	.long	L0_0_set_33
	.long	L0_0_set_34
	.long	L0_0_set_33
	.long	L0_0_set_34
	.long	L0_0_set_36
	.long	L0_0_set_36
	.long	L0_0_set_41
	.long	L0_0_set_42
	.long	L0_0_set_43
	.long	L0_0_set_44
	.long	L0_0_set_45
	.long	L0_0_set_46
	.long	L0_0_set_47
	.long	L0_0_set_48
	.long	L0_0_set_49
	.long	L0_0_set_50
	.long	L0_0_set_51
	.long	L0_0_set_52
	.long	L0_0_set_37
	.long	L0_0_set_38
	.long	L0_0_set_37
	.long	L0_0_set_38
	.long	L0_0_set_53
	.long	L0_0_set_54
	.long	L0_0_set_56
	.long	L0_0_set_57
	.long	L0_0_set_65
	.long	L0_0_set_66
	.long	L0_0_set_31
	.long	L0_0_set_31
	.long	L0_0_set_31
	.long	L0_0_set_31
	.long	L0_0_set_31
	.long	L0_0_set_31
	.long	L0_0_set_31
	.long	L0_0_set_31
	.long	L0_0_set_31
	.end_data_region
                                        ## -- End function
	.globl	_yylex                          ## -- Begin function yylex
	.p2align	4, 0x90
_yylex:                                 ## @yylex
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpb	$0, _yy_init(%rip)
	jne	LBB1_11
## %bb.1:
	movb	$1, _yy_init(%rip)
	cmpb	$0, _yy_start(%rip)
	je	LBB1_2
## %bb.3:
	cmpq	$0, _yyin(%rip)
	je	LBB1_4
LBB1_5:
	cmpq	$0, _yyout(%rip)
	je	LBB1_6
LBB1_7:
	movq	_yy_buffer_stack(%rip), %rcx
	testq	%rcx, %rcx
	je	LBB1_9
## %bb.8:
	movq	_yy_buffer_stack_top(%rip), %rdx
	movq	(%rcx,%rdx,8), %rax
	testq	%rax, %rax
	jne	LBB1_10
LBB1_9:
	callq	_yyensure_buffer_stack
	movq	_yyin(%rip), %rdi
	movl	$16384, %esi                    ## imm = 0x4000
	callq	_yy_create_buffer
	movq	_yy_buffer_stack(%rip), %rcx
	movq	_yy_buffer_stack_top(%rip), %rdx
	movq	%rax, (%rcx,%rdx,8)
LBB1_10:
	movq	32(%rax), %rsi
	movq	%rsi, _yy_n_chars(%rip)
	movq	16(%rax), %rax
	movq	%rax, _yy_c_buf_p(%rip)
	movq	_yytext@GOTPCREL(%rip), %rsi
	movq	%rax, (%rsi)
	movq	(%rcx,%rdx,8), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, _yyin(%rip)
	movb	(%rax), %al
	movb	%al, _yy_hold_char(%rip)
LBB1_11:                                ## %yy_get_previous_state.exit118.thread.preheader
	leaq	_yy_ec(%rip), %r9
	leaq	_yy_accept(%rip), %r10
	leaq	_yy_base(%rip), %r13
	leaq	_yy_chk(%rip), %r12
	leaq	_yy_nxt(%rip), %r11
	movq	_yytext@GOTPCREL(%rip), %r8
	leaq	_yy_def(%rip), %r14
LBB1_12:                                ## %yy_get_previous_state.exit118.thread
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_14 Depth 2
                                        ##       Child Loop BB1_17 Depth 3
                                        ##       Child Loop BB1_24 Depth 3
                                        ##         Child Loop BB1_27 Depth 4
                                        ##         Child Loop BB1_65 Depth 4
                                        ##           Child Loop BB1_71 Depth 5
                                        ##         Child Loop BB1_80 Depth 4
                                        ##         Child Loop BB1_102 Depth 4
                                        ##           Child Loop BB1_108 Depth 5
                                        ##       Child Loop BB1_89 Depth 3
                                        ##         Child Loop BB1_95 Depth 4
	movq	_yy_c_buf_p(%rip), %r15
	movb	_yy_hold_char(%rip), %al
	movb	%al, (%r15)
	movzbl	_yy_start(%rip), %ecx
	movq	%r15, -48(%rbp)                 ## 8-byte Spill
	jmp	LBB1_14
	.p2align	4, 0x90
LBB1_21:                                ## %._crit_edge
                                        ##   in Loop: Header=BB1_14 Depth=2
	movswq	(%r11,%rdi,2), %rcx
	addq	$1, %r15
	movzwl	(%r13,%rcx,2), %eax
	cmpl	$135, %eax
	je	LBB1_22
LBB1_14:                                ##   Parent Loop BB1_12 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_17 Depth 3
                                        ##       Child Loop BB1_24 Depth 3
                                        ##         Child Loop BB1_27 Depth 4
                                        ##         Child Loop BB1_65 Depth 4
                                        ##           Child Loop BB1_71 Depth 5
                                        ##         Child Loop BB1_80 Depth 4
                                        ##         Child Loop BB1_102 Depth 4
                                        ##           Child Loop BB1_108 Depth 5
                                        ##       Child Loop BB1_89 Depth 3
                                        ##         Child Loop BB1_95 Depth 4
	movzbl	(%r15), %edx
	movslq	%ecx, %rax
	cmpw	$0, (%r10,%rax,2)
	je	LBB1_16
## %bb.15:                              ##   in Loop: Header=BB1_14 Depth=2
	movl	%ecx, _yy_last_accepting_state(%rip)
	movq	%r15, _yy_last_accepting_cpos(%rip)
LBB1_16:                                ##   in Loop: Header=BB1_14 Depth=2
	movb	(%rdx,%r9), %dl
	movzbl	%dl, %esi
	movswq	(%r13,%rax,2), %rdi
	addq	%rsi, %rdi
	movswl	(%r12,%rdi,2), %ebx
	cmpl	%ebx, %ecx
	leaq	_yy_meta(%rip), %rbx
	jne	LBB1_17
	jmp	LBB1_21
	.p2align	4, 0x90
LBB1_19:                                ##   in Loop: Header=BB1_17 Depth=3
	movzbl	(%rsi,%rbx), %edx
LBB1_20:                                ##   in Loop: Header=BB1_17 Depth=3
	movswl	(%r14,%rax,2), %ecx
	movslq	%ecx, %rax
	movswq	(%r13,%rax,2), %rdi
	movzbl	%dl, %esi
	addq	%rsi, %rdi
	cmpw	(%r12,%rdi,2), %ax
	je	LBB1_21
LBB1_17:                                ## %.lr.ph
                                        ##   Parent Loop BB1_12 Depth=1
                                        ##     Parent Loop BB1_14 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$30, %ecx
	je	LBB1_19
## %bb.18:                              ## %.lr.ph
                                        ##   in Loop: Header=BB1_17 Depth=3
	cmpl	$8, %ecx
	je	LBB1_19
	jmp	LBB1_20
LBB1_22:                                ## %.preheader.preheader
                                        ##   in Loop: Header=BB1_14 Depth=2
	movl	%ecx, %eax
LBB1_24:                                ## %.preheader
                                        ##   Parent Loop BB1_12 Depth=1
                                        ##     Parent Loop BB1_14 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB1_27 Depth 4
                                        ##         Child Loop BB1_65 Depth 4
                                        ##           Child Loop BB1_71 Depth 5
                                        ##         Child Loop BB1_80 Depth 4
                                        ##         Child Loop BB1_102 Depth 4
                                        ##           Child Loop BB1_108 Depth 5
	cltq
	movzwl	(%r10,%rax,2), %eax
	testw	%ax, %ax
	movq	-48(%rbp), %rdx                 ## 8-byte Reload
	jne	LBB1_26
## %bb.25:                              ##   in Loop: Header=BB1_24 Depth=3
	movq	_yy_last_accepting_cpos(%rip), %r15
	movslq	_yy_last_accepting_state(%rip), %rax
	movzwl	(%r10,%rax,2), %eax
LBB1_26:                                ##   in Loop: Header=BB1_24 Depth=3
	cwtl
	movq	%rdx, (%r8)
	movq	%r15, %rcx
	subq	%rdx, %rcx
	movq	_yyleng@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	movb	(%r15), %cl
	movb	%cl, _yy_hold_char(%rip)
	movb	$0, (%r15)
	movq	%r15, %rcx
LBB1_27:                                ##   Parent Loop BB1_12 Depth=1
                                        ##     Parent Loop BB1_14 Depth=2
                                        ##       Parent Loop BB1_24 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	%rcx, _yy_c_buf_p(%rip)
	cmpl	$38, %eax
	ja	LBB1_114
## %bb.28:                              ##   in Loop: Header=BB1_27 Depth=4
	movl	%eax, %eax
	leaq	LJTI1_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB1_59:                                ##   in Loop: Header=BB1_27 Depth=4
	movq	(%r8), %rbx
	movzbl	_yy_hold_char(%rip), %eax
	movb	%al, (%r15)
	movq	_yy_buffer_stack(%rip), %rdx
	movq	_yy_buffer_stack_top(%rip), %rsi
	movq	(%rdx,%rsi,8), %rax
	cmpl	$0, 64(%rax)
	je	LBB1_61
## %bb.60:                              ## %._crit_edge335
                                        ##   in Loop: Header=BB1_27 Depth=4
	movq	_yy_n_chars(%rip), %rcx
	jmp	LBB1_62
LBB1_61:                                ##   in Loop: Header=BB1_27 Depth=4
	movq	32(%rax), %rcx
	movq	%rcx, _yy_n_chars(%rip)
	movq	_yyin(%rip), %rdi
	movq	%rdi, (%rax)
	movq	(%rdx,%rsi,8), %rax
	movl	$1, 64(%rax)
LBB1_62:                                ##   in Loop: Header=BB1_27 Depth=4
	addq	8(%rax), %rcx
	cmpq	%rcx, _yy_c_buf_p(%rip)
	jbe	LBB1_63
## %bb.84:                              ##   in Loop: Header=BB1_27 Depth=4
	callq	_yy_get_next_buffer
	cmpl	$1, %eax
	jne	LBB1_85
## %bb.113:                             ## %yy_get_previous_state.exit118
                                        ##   in Loop: Header=BB1_27 Depth=4
	movq	_yytext@GOTPCREL(%rip), %r8
	movq	(%r8), %rcx
	movl	$38, %eax
	leaq	_yy_ec(%rip), %r9
	leaq	_yy_accept(%rip), %r10
	leaq	_yy_nxt(%rip), %r11
	jmp	LBB1_27
LBB1_85:                                ##   in Loop: Header=BB1_24 Depth=3
	cmpl	$2, %eax
	leaq	_yy_ec(%rip), %r9
	leaq	_yy_accept(%rip), %r10
	leaq	_yy_nxt(%rip), %r11
	movq	_yytext@GOTPCREL(%rip), %r8
	jne	LBB1_86
## %bb.100:                             ##   in Loop: Header=BB1_24 Depth=3
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %r15
	addq	_yy_n_chars(%rip), %r15
	movq	%r15, _yy_c_buf_p(%rip)
	movzbl	_yy_start(%rip), %eax
	movq	(%r8), %rcx
	movq	%rcx, -48(%rbp)                 ## 8-byte Spill
	cmpq	%r15, %rcx
	jae	LBB1_24
## %bb.101:                             ## %.lr.ph30.preheader.i81
                                        ##   in Loop: Header=BB1_24 Depth=3
	movq	-48(%rbp), %r8                  ## 8-byte Reload
	jmp	LBB1_102
	.p2align	4, 0x90
LBB1_112:                               ## %._crit_edge.i95
                                        ##   in Loop: Header=BB1_102 Depth=4
	movswl	(%r11,%rcx,2), %eax
	addq	$1, %r8
	cmpq	%r15, %r8
	je	LBB1_23
LBB1_102:                               ## %.lr.ph30.i85
                                        ##   Parent Loop BB1_12 Depth=1
                                        ##     Parent Loop BB1_14 Depth=2
                                        ##       Parent Loop BB1_24 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB1_108 Depth 5
	movzbl	(%r8), %ecx
	testq	%rcx, %rcx
	je	LBB1_103
## %bb.104:                             ##   in Loop: Header=BB1_102 Depth=4
	movb	(%rcx,%r9), %dl
	jmp	LBB1_105
LBB1_103:                               ##   in Loop: Header=BB1_102 Depth=4
	movb	$1, %dl
LBB1_105:                               ##   in Loop: Header=BB1_102 Depth=4
	movslq	%eax, %rsi
	cmpw	$0, (%r10,%rsi,2)
	je	LBB1_107
## %bb.106:                             ##   in Loop: Header=BB1_102 Depth=4
	movl	%eax, _yy_last_accepting_state(%rip)
	movq	%r8, _yy_last_accepting_cpos(%rip)
LBB1_107:                               ##   in Loop: Header=BB1_102 Depth=4
	movswq	(%r13,%rsi,2), %rcx
	movzbl	%dl, %edi
	addq	%rdi, %rcx
	movswl	(%r12,%rcx,2), %ebx
	cmpl	%ebx, %eax
	leaq	_yy_meta(%rip), %rbx
	jne	LBB1_108
	jmp	LBB1_112
	.p2align	4, 0x90
LBB1_110:                               ##   in Loop: Header=BB1_108 Depth=5
	movzbl	(%rdi,%rbx), %edx
LBB1_111:                               ##   in Loop: Header=BB1_108 Depth=5
	movswl	(%r14,%rsi,2), %eax
	movslq	%eax, %rsi
	movswq	(%r13,%rsi,2), %rcx
	movzbl	%dl, %edi
	addq	%rdi, %rcx
	cmpw	(%r12,%rcx,2), %si
	je	LBB1_112
LBB1_108:                               ## %.lr.ph.i90
                                        ##   Parent Loop BB1_12 Depth=1
                                        ##     Parent Loop BB1_14 Depth=2
                                        ##       Parent Loop BB1_24 Depth=3
                                        ##         Parent Loop BB1_102 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	cmpl	$30, %eax
	je	LBB1_110
## %bb.109:                             ## %.lr.ph.i90
                                        ##   in Loop: Header=BB1_108 Depth=5
	cmpl	$8, %eax
	je	LBB1_110
	jmp	LBB1_111
LBB1_29:                                ##   in Loop: Header=BB1_24 Depth=3
	movb	_yy_hold_char(%rip), %al
	movb	%al, (%r15)
	movq	_yy_last_accepting_cpos(%rip), %r15
	movl	_yy_last_accepting_state(%rip), %eax
	jmp	LBB1_24
LBB1_63:                                ##   in Loop: Header=BB1_24 Depth=3
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	movq	(%r8), %rdx
	leal	-1(%rcx), %eax
	movslq	%eax, %r15
	addq	%rdx, %r15
	movq	%r15, _yy_c_buf_p(%rip)
	movzbl	_yy_start(%rip), %eax
	cmpl	$2, %ecx
	movq	%rdx, -48(%rbp)                 ## 8-byte Spill
	jl	LBB1_77
## %bb.64:                              ## %.lr.ph30.i.preheader
                                        ##   in Loop: Header=BB1_24 Depth=3
	movq	%rdx, %r8
	jmp	LBB1_65
	.p2align	4, 0x90
LBB1_75:                                ## %._crit_edge.i
                                        ##   in Loop: Header=BB1_65 Depth=4
	movswl	(%r11,%rcx,2), %eax
	addq	$1, %r8
	cmpq	%r15, %r8
	je	LBB1_76
LBB1_65:                                ## %.lr.ph30.i
                                        ##   Parent Loop BB1_12 Depth=1
                                        ##     Parent Loop BB1_14 Depth=2
                                        ##       Parent Loop BB1_24 Depth=3
                                        ## =>      This Loop Header: Depth=4
                                        ##           Child Loop BB1_71 Depth 5
	movzbl	(%r8), %ecx
	testq	%rcx, %rcx
	je	LBB1_66
## %bb.67:                              ##   in Loop: Header=BB1_65 Depth=4
	movb	(%rcx,%r9), %dl
	jmp	LBB1_68
LBB1_66:                                ##   in Loop: Header=BB1_65 Depth=4
	movb	$1, %dl
LBB1_68:                                ##   in Loop: Header=BB1_65 Depth=4
	movslq	%eax, %rsi
	cmpw	$0, (%r10,%rsi,2)
	je	LBB1_70
## %bb.69:                              ##   in Loop: Header=BB1_65 Depth=4
	movl	%eax, _yy_last_accepting_state(%rip)
	movq	%r8, _yy_last_accepting_cpos(%rip)
LBB1_70:                                ##   in Loop: Header=BB1_65 Depth=4
	movswq	(%r13,%rsi,2), %rcx
	movzbl	%dl, %edi
	addq	%rdi, %rcx
	movswl	(%r12,%rcx,2), %ebx
	cmpl	%ebx, %eax
	leaq	_yy_meta(%rip), %rbx
	jne	LBB1_71
	jmp	LBB1_75
	.p2align	4, 0x90
LBB1_73:                                ##   in Loop: Header=BB1_71 Depth=5
	movzbl	(%rdi,%rbx), %edx
LBB1_74:                                ##   in Loop: Header=BB1_71 Depth=5
	movswl	(%r14,%rsi,2), %eax
	movslq	%eax, %rsi
	movswq	(%r13,%rsi,2), %rcx
	movzbl	%dl, %edi
	addq	%rdi, %rcx
	cmpw	(%r12,%rcx,2), %si
	je	LBB1_75
LBB1_71:                                ## %.lr.ph.i
                                        ##   Parent Loop BB1_12 Depth=1
                                        ##     Parent Loop BB1_14 Depth=2
                                        ##       Parent Loop BB1_24 Depth=3
                                        ##         Parent Loop BB1_65 Depth=4
                                        ## =>        This Inner Loop Header: Depth=5
	cmpl	$30, %eax
	je	LBB1_73
## %bb.72:                              ## %.lr.ph.i
                                        ##   in Loop: Header=BB1_71 Depth=5
	cmpl	$8, %eax
	je	LBB1_73
	jmp	LBB1_74
LBB1_76:                                ## %yy_get_previous_state.exit.loopexit
                                        ##   in Loop: Header=BB1_24 Depth=3
	movq	_yytext@GOTPCREL(%rip), %r8
LBB1_77:                                ## %yy_get_previous_state.exit
                                        ##   in Loop: Header=BB1_24 Depth=3
	movslq	%eax, %rcx
	cmpw	$0, (%r10,%rcx,2)
	je	LBB1_79
## %bb.78:                              ##   in Loop: Header=BB1_24 Depth=3
	movl	%eax, _yy_last_accepting_state(%rip)
	movq	%r15, _yy_last_accepting_cpos(%rip)
LBB1_79:                                ##   in Loop: Header=BB1_24 Depth=3
	movswq	(%r13,%rcx,2), %rdx
	movswl	2(%r12,%rdx,2), %esi
	cmpl	%esi, %eax
	je	LBB1_81
	.p2align	4, 0x90
LBB1_80:                                ## %.lr.ph.i120
                                        ##   Parent Loop BB1_12 Depth=1
                                        ##     Parent Loop BB1_14 Depth=2
                                        ##       Parent Loop BB1_24 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movswq	(%r14,%rcx,2), %rcx
	movswq	(%r13,%rcx,2), %rdx
	cmpw	2(%r12,%rdx,2), %cx
	jne	LBB1_80
LBB1_81:                                ##   in Loop: Header=BB1_24 Depth=3
	addq	$1, %rdx
	movswl	(%r11,%rdx,2), %ecx
	cmpl	$123, %ecx
	je	LBB1_24
## %bb.82:                              ## %yy_try_NUL_trans.exit
                                        ##   in Loop: Header=BB1_24 Depth=3
	testq	%rdx, %rdx
	je	LBB1_24
	jmp	LBB1_83
LBB1_23:                                ## %.preheader.loopexit
                                        ##   in Loop: Header=BB1_24 Depth=3
	movq	_yytext@GOTPCREL(%rip), %r8
	jmp	LBB1_24
LBB1_86:                                ##   in Loop: Header=BB1_14 Depth=2
	testl	%eax, %eax
	jne	LBB1_12
## %bb.87:                              ##   in Loop: Header=BB1_14 Depth=2
	movl	%r15d, %eax
	subl	%ebx, %eax
	movq	(%r8), %rdx
	leal	-1(%rax), %ecx
	movslq	%ecx, %r15
	movq	%rdx, -48(%rbp)                 ## 8-byte Spill
	addq	%rdx, %r15
	movq	%r15, _yy_c_buf_p(%rip)
	movzbl	_yy_start(%rip), %ecx
	cmpl	$2, %eax
	jl	LBB1_14
## %bb.88:                              ## %.lr.ph30.i105.preheader
                                        ##   in Loop: Header=BB1_14 Depth=2
	movq	-48(%rbp), %r8                  ## 8-byte Reload
	jmp	LBB1_89
	.p2align	4, 0x90
LBB1_99:                                ## %._crit_edge.i115
                                        ##   in Loop: Header=BB1_89 Depth=3
	movswl	(%r11,%rax,2), %ecx
	addq	$1, %r8
	cmpq	%r15, %r8
	je	LBB1_13
LBB1_89:                                ## %.lr.ph30.i105
                                        ##   Parent Loop BB1_12 Depth=1
                                        ##     Parent Loop BB1_14 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB1_95 Depth 4
	movzbl	(%r8), %eax
	testq	%rax, %rax
	je	LBB1_90
## %bb.91:                              ##   in Loop: Header=BB1_89 Depth=3
	movb	(%rax,%r9), %dl
	jmp	LBB1_92
LBB1_90:                                ##   in Loop: Header=BB1_89 Depth=3
	movb	$1, %dl
LBB1_92:                                ##   in Loop: Header=BB1_89 Depth=3
	movslq	%ecx, %rsi
	cmpw	$0, (%r10,%rsi,2)
	je	LBB1_94
## %bb.93:                              ##   in Loop: Header=BB1_89 Depth=3
	movl	%ecx, _yy_last_accepting_state(%rip)
	movq	%r8, _yy_last_accepting_cpos(%rip)
LBB1_94:                                ##   in Loop: Header=BB1_89 Depth=3
	movswq	(%r13,%rsi,2), %rax
	movzbl	%dl, %edi
	addq	%rdi, %rax
	movswl	(%r12,%rax,2), %ebx
	cmpl	%ebx, %ecx
	leaq	_yy_meta(%rip), %rbx
	jne	LBB1_95
	jmp	LBB1_99
	.p2align	4, 0x90
LBB1_97:                                ##   in Loop: Header=BB1_95 Depth=4
	movzbl	(%rdi,%rbx), %edx
LBB1_98:                                ##   in Loop: Header=BB1_95 Depth=4
	movswl	(%r14,%rsi,2), %ecx
	movslq	%ecx, %rsi
	movswq	(%r13,%rsi,2), %rax
	movzbl	%dl, %edi
	addq	%rdi, %rax
	cmpw	(%r12,%rax,2), %si
	je	LBB1_99
LBB1_95:                                ## %.lr.ph.i110
                                        ##   Parent Loop BB1_12 Depth=1
                                        ##     Parent Loop BB1_14 Depth=2
                                        ##       Parent Loop BB1_89 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	cmpl	$30, %ecx
	je	LBB1_97
## %bb.96:                              ## %.lr.ph.i110
                                        ##   in Loop: Header=BB1_95 Depth=4
	cmpl	$8, %ecx
	je	LBB1_97
	jmp	LBB1_98
LBB1_13:                                ## %.loopexit130.loopexit
                                        ##   in Loop: Header=BB1_14 Depth=2
	movq	_yytext@GOTPCREL(%rip), %r8
	jmp	LBB1_14
LBB1_83:                                ##   in Loop: Header=BB1_14 Depth=2
	addq	$1, %r15
	movq	%r15, _yy_c_buf_p(%rip)
	jmp	LBB1_14
LBB1_53:                                ##   in Loop: Header=BB1_12 Depth=1
	addl	$1, _linecounter(%rip)
	jmp	LBB1_12
LBB1_54:                                ##   in Loop: Header=BB1_12 Depth=1
	callq	_comment
	jmp	LBB1_55
LBB1_57:                                ##   in Loop: Header=BB1_12 Depth=1
	movq	(%r8), %rdi
	movq	_yyleng@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	_yyout(%rip), %rcx
	movl	$1, %edx
	callq	_fwrite
LBB1_55:                                ## %yy_get_previous_state.exit118.thread
                                        ##   in Loop: Header=BB1_12 Depth=1
	movq	_yytext@GOTPCREL(%rip), %r8
	leaq	_yy_nxt(%rip), %r11
	leaq	_yy_accept(%rip), %r10
	leaq	_yy_ec(%rip), %r9
	jmp	LBB1_12
LBB1_2:
	movb	$1, _yy_start(%rip)
	cmpq	$0, _yyin(%rip)
	jne	LBB1_5
LBB1_4:
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, _yyin(%rip)
	cmpq	$0, _yyout(%rip)
	jne	LBB1_7
LBB1_6:
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, _yyout(%rip)
	jmp	LBB1_7
LBB1_115:                               ## %.loopexit
	movl	$265, %eax                      ## imm = 0x109
	jmp	LBB1_121
LBB1_116:                               ## %.loopexit236
	movl	$260, %eax                      ## imm = 0x104
	jmp	LBB1_121
LBB1_117:                               ## %.loopexit355
	movl	$266, %eax                      ## imm = 0x10A
	jmp	LBB1_121
LBB1_118:                               ## %.loopexit390
	movl	$258, %eax                      ## imm = 0x102
	jmp	LBB1_121
LBB1_119:                               ## %.loopexit447
	movl	$259, %eax                      ## imm = 0x103
	jmp	LBB1_121
LBB1_120:                               ## %.loopexit567
	movl	$262, %eax                      ## imm = 0x106
	jmp	LBB1_121
LBB1_30:
	movl	$263, %eax                      ## imm = 0x107
	jmp	LBB1_121
LBB1_31:
	movl	$264, %eax                      ## imm = 0x108
	jmp	LBB1_121
LBB1_32:
	movl	$270, %eax                      ## imm = 0x10E
	jmp	LBB1_121
LBB1_33:
	movl	$271, %eax                      ## imm = 0x10F
	jmp	LBB1_121
LBB1_34:
	movl	$267, %eax                      ## imm = 0x10B
	jmp	LBB1_121
LBB1_35:
	movl	$269, %eax                      ## imm = 0x10D
	jmp	LBB1_121
LBB1_36:
	movl	$268, %eax                      ## imm = 0x10C
	jmp	LBB1_121
LBB1_37:
	movl	$274, %eax                      ## imm = 0x112
	jmp	LBB1_121
LBB1_38:
	movl	$273, %eax                      ## imm = 0x111
	jmp	LBB1_121
LBB1_39:
	movl	$278, %eax                      ## imm = 0x116
	jmp	LBB1_121
LBB1_40:
	movl	$279, %eax                      ## imm = 0x117
	jmp	LBB1_121
LBB1_41:
	movl	$280, %eax                      ## imm = 0x118
	jmp	LBB1_121
LBB1_42:
	movl	$281, %eax                      ## imm = 0x119
	jmp	LBB1_121
LBB1_43:
	movl	$282, %eax                      ## imm = 0x11A
	jmp	LBB1_121
LBB1_44:
	movl	$283, %eax                      ## imm = 0x11B
	jmp	LBB1_121
LBB1_45:
	movl	$284, %eax                      ## imm = 0x11C
	jmp	LBB1_121
LBB1_46:
	movl	$285, %eax                      ## imm = 0x11D
	jmp	LBB1_121
LBB1_47:
	movl	$286, %eax                      ## imm = 0x11E
	jmp	LBB1_121
LBB1_48:
	movl	$272, %eax                      ## imm = 0x110
	jmp	LBB1_121
LBB1_49:
	movl	$275, %eax                      ## imm = 0x113
	jmp	LBB1_121
LBB1_50:
	movl	$261, %eax                      ## imm = 0x105
	jmp	LBB1_121
LBB1_51:
	movl	$276, %eax                      ## imm = 0x114
	jmp	LBB1_121
LBB1_52:
	movl	$277, %eax                      ## imm = 0x115
	jmp	LBB1_121
LBB1_56:
	movl	$287, %eax                      ## imm = 0x11F
	jmp	LBB1_121
LBB1_58:
	xorl	%eax, %eax
LBB1_121:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_114:
	leaq	L_.str.25(%rip), %rdi
	callq	_yy_fatal_error
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L1_0_set_29, LBB1_29-LJTI1_0
.set L1_0_set_115, LBB1_115-LJTI1_0
.set L1_0_set_116, LBB1_116-LJTI1_0
.set L1_0_set_117, LBB1_117-LJTI1_0
.set L1_0_set_118, LBB1_118-LJTI1_0
.set L1_0_set_119, LBB1_119-LJTI1_0
.set L1_0_set_120, LBB1_120-LJTI1_0
.set L1_0_set_30, LBB1_30-LJTI1_0
.set L1_0_set_31, LBB1_31-LJTI1_0
.set L1_0_set_32, LBB1_32-LJTI1_0
.set L1_0_set_33, LBB1_33-LJTI1_0
.set L1_0_set_34, LBB1_34-LJTI1_0
.set L1_0_set_35, LBB1_35-LJTI1_0
.set L1_0_set_36, LBB1_36-LJTI1_0
.set L1_0_set_37, LBB1_37-LJTI1_0
.set L1_0_set_38, LBB1_38-LJTI1_0
.set L1_0_set_39, LBB1_39-LJTI1_0
.set L1_0_set_40, LBB1_40-LJTI1_0
.set L1_0_set_41, LBB1_41-LJTI1_0
.set L1_0_set_42, LBB1_42-LJTI1_0
.set L1_0_set_43, LBB1_43-LJTI1_0
.set L1_0_set_44, LBB1_44-LJTI1_0
.set L1_0_set_45, LBB1_45-LJTI1_0
.set L1_0_set_46, LBB1_46-LJTI1_0
.set L1_0_set_47, LBB1_47-LJTI1_0
.set L1_0_set_48, LBB1_48-LJTI1_0
.set L1_0_set_49, LBB1_49-LJTI1_0
.set L1_0_set_50, LBB1_50-LJTI1_0
.set L1_0_set_51, LBB1_51-LJTI1_0
.set L1_0_set_52, LBB1_52-LJTI1_0
.set L1_0_set_53, LBB1_53-LJTI1_0
.set L1_0_set_12, LBB1_12-LJTI1_0
.set L1_0_set_54, LBB1_54-LJTI1_0
.set L1_0_set_56, LBB1_56-LJTI1_0
.set L1_0_set_57, LBB1_57-LJTI1_0
.set L1_0_set_59, LBB1_59-LJTI1_0
.set L1_0_set_58, LBB1_58-LJTI1_0
LJTI1_0:
	.long	L1_0_set_29
	.long	L1_0_set_115
	.long	L1_0_set_116
	.long	L1_0_set_117
	.long	L1_0_set_118
	.long	L1_0_set_119
	.long	L1_0_set_120
	.long	L1_0_set_30
	.long	L1_0_set_31
	.long	L1_0_set_32
	.long	L1_0_set_33
	.long	L1_0_set_34
	.long	L1_0_set_35
	.long	L1_0_set_36
	.long	L1_0_set_37
	.long	L1_0_set_38
	.long	L1_0_set_39
	.long	L1_0_set_40
	.long	L1_0_set_41
	.long	L1_0_set_42
	.long	L1_0_set_43
	.long	L1_0_set_44
	.long	L1_0_set_45
	.long	L1_0_set_46
	.long	L1_0_set_47
	.long	L1_0_set_48
	.long	L1_0_set_49
	.long	L1_0_set_50
	.long	L1_0_set_51
	.long	L1_0_set_52
	.long	L1_0_set_53
	.long	L1_0_set_53
	.long	L1_0_set_53
	.long	L1_0_set_12
	.long	L1_0_set_54
	.long	L1_0_set_56
	.long	L1_0_set_57
	.long	L1_0_set_59
	.long	L1_0_set_58
	.end_data_region
                                        ## -- End function
	.globl	_yyerror                        ## -- Begin function yyerror
	.p2align	4, 0x90
_yyerror:                               ## @yyerror
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rdx
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	_linecounter(%rip), %ecx
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	(%rax), %r8
	leaq	L_.str.31(%rip), %rsi
	xorl	%eax, %eax
	callq	_fprintf
	movl	$1, %edi
	callq	_exit
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function yyensure_buffer_stack
_yyensure_buffer_stack:                 ## @yyensure_buffer_stack
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	_yy_buffer_stack(%rip), %rdi
	testq	%rdi, %rdi
	je	LBB3_1
## %bb.3:
	movq	_yy_buffer_stack_max(%rip), %rbx
	leaq	-1(%rbx), %rax
	cmpq	%rax, _yy_buffer_stack_top(%rip)
	jb	LBB3_6
## %bb.4:
	leaq	64(,%rbx,8), %rsi
	callq	_realloc
	movq	%rax, _yy_buffer_stack(%rip)
	testq	%rax, %rax
	je	LBB3_7
## %bb.5:
	leaq	8(%rbx), %rcx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rax,%rbx,8)
	movups	%xmm0, 32(%rax,%rbx,8)
	movups	%xmm0, 16(%rax,%rbx,8)
	movups	%xmm0, (%rax,%rbx,8)
	movq	%rcx, _yy_buffer_stack_max(%rip)
	jmp	LBB3_6
LBB3_1:
	movl	$8, %edi
	callq	_malloc
	movq	%rax, _yy_buffer_stack(%rip)
	testq	%rax, %rax
	je	LBB3_7
## %bb.2:
	movq	$0, (%rax)
	movq	$1, _yy_buffer_stack_max(%rip)
	movq	$0, _yy_buffer_stack_top(%rip)
LBB3_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB3_7:
	leaq	L_.str.37(%rip), %rdi
	callq	_yy_fatal_error
	.cfi_endproc
                                        ## -- End function
	.globl	_yy_create_buffer               ## -- Begin function yy_create_buffer
	.p2align	4, 0x90
_yy_create_buffer:                      ## @yy_create_buffer
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$72, %edi
	callq	_malloc
	testq	%rax, %rax
	je	LBB4_16
## %bb.1:
	movq	%rax, %r15
	movl	%ebx, 24(%rax)
	addl	$2, %ebx
	movslq	%ebx, %rdi
	callq	_malloc
	movq	%rax, 8(%r15)
	testq	%rax, %rax
	je	LBB4_16
## %bb.2:
	movq	%rax, %rbx
	movl	$1, 40(%r15)
	callq	___error
	movl	(%rax), %r12d
	movq	$0, 32(%r15)
	movw	$0, (%rbx)
	movq	%rbx, 16(%r15)
	movl	$1, 48(%r15)
	movl	$0, 64(%r15)
	movq	_yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	LBB4_3
## %bb.4:
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rcx
	cmpq	%r15, %rcx
	jne	LBB4_7
LBB4_6:
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	32(%rdx), %rsi
	movq	%rsi, _yy_n_chars(%rip)
	movq	16(%rdx), %rdx
	movq	%rdx, _yy_c_buf_p(%rip)
	movq	_yytext@GOTPCREL(%rip), %rsi
	movq	%rdx, (%rsi)
	movq	(%rax,%rcx,8), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, _yyin(%rip)
	movb	(%rdx), %cl
	movb	%cl, _yy_hold_char(%rip)
LBB4_7:                                 ## %yy_flush_buffer.exit
	movq	%r14, (%r15)
	movl	$1, 60(%r15)
	testq	%rax, %rax
	je	LBB4_8
## %bb.9:
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	%r15, %rax
	je	LBB4_12
LBB4_11:
	movq	$1, 52(%r15)
LBB4_12:
	testq	%r14, %r14
	je	LBB4_13
## %bb.14:
	movq	%r14, %rdi
	callq	_fileno
	movl	%eax, %edi
	callq	_isatty
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	jmp	LBB4_15
LBB4_3:
	xorl	%ecx, %ecx
	cmpq	%r15, %rcx
	jne	LBB4_7
	jmp	LBB4_6
LBB4_8:
	xorl	%eax, %eax
	cmpq	%r15, %rax
	jne	LBB4_11
	jmp	LBB4_12
LBB4_13:
	xorl	%ecx, %ecx
LBB4_15:                                ## %yy_init_buffer.exit
	movl	%ecx, 44(%r15)
	callq	___error
	movl	%r12d, (%rax)
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_16:
	leaq	L_.str.26(%rip), %rdi
	callq	_yy_fatal_error
	.cfi_endproc
                                        ## -- End function
	.globl	_comment                        ## -- Begin function comment
	.p2align	4, 0x90
_comment:                               ## @comment
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movb	_yy_hold_char(%rip), %al
	movq	_yy_c_buf_p(%rip), %rbx
	movb	%al, (%rbx)
	testb	%al, %al
	jne	LBB5_9
## %bb.1:
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rax
	addq	_yy_n_chars(%rip), %rax
	cmpq	%rax, %rbx
	jae	LBB5_3
## %bb.2:
	movb	$0, (%rbx)
	jmp	LBB5_9
LBB5_3:
	movq	_yytext@GOTPCREL(%rip), %r14
	movq	(%r14), %r15
	leaq	1(%rbx), %rax
	movq	%rax, _yy_c_buf_p(%rip)
	callq	_yy_get_next_buffer
	testl	%eax, %eax
	je	LBB5_8
## %bb.4:
	xorl	%r15d, %r15d
	cmpl	$1, %eax
	je	LBB5_10
## %bb.5:
	cmpl	$2, %eax
	jne	LBB5_6
## %bb.7:
	movq	_yyin(%rip), %rdi
	callq	_yyrestart
	jmp	LBB5_10
LBB5_8:
	subq	%r15, %rbx
	addq	(%r14), %rbx
	jmp	LBB5_9
LBB5_6:                                 ## %._crit_edge.i
	movq	_yy_c_buf_p(%rip), %rbx
LBB5_9:
	movzbl	(%rbx), %r15d
	movb	$0, (%rbx)
	leaq	1(%rbx), %rax
	movq	%rax, _yy_c_buf_p(%rip)
	movb	1(%rbx), %al
	movb	%al, _yy_hold_char(%rip)
LBB5_10:                                ## %input.exit.preheader
	movq	_yytext@GOTPCREL(%rip), %r14
	jmp	LBB5_11
	.p2align	4, 0x90
LBB5_36:                                ##   in Loop: Header=BB5_11 Depth=1
	addl	$1, _linecounter(%rip)
	movl	%r13d, %r15d
LBB5_11:                                ## %input.exit
                                        ## =>This Inner Loop Header: Depth=1
	movzbl	_yy_hold_char(%rip), %eax
	movq	_yy_c_buf_p(%rip), %rbx
	movb	%al, (%rbx)
	testb	%al, %al
	jne	LBB5_19
## %bb.12:                              ##   in Loop: Header=BB5_11 Depth=1
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rax
	addq	_yy_n_chars(%rip), %rax
	cmpq	%rax, %rbx
	jae	LBB5_14
## %bb.13:                              ##   in Loop: Header=BB5_11 Depth=1
	movb	$0, (%rbx)
	jmp	LBB5_19
LBB5_14:                                ##   in Loop: Header=BB5_11 Depth=1
	movq	(%r14), %r12
	leaq	1(%rbx), %rax
	movq	%rax, _yy_c_buf_p(%rip)
	callq	_yy_get_next_buffer
	testl	%eax, %eax
	je	LBB5_18
## %bb.15:                              ##   in Loop: Header=BB5_11 Depth=1
	xorl	%r13d, %r13d
	cmpl	$1, %eax
	je	LBB5_34
## %bb.16:                              ##   in Loop: Header=BB5_11 Depth=1
	cmpl	$2, %eax
	jne	LBB5_17
## %bb.33:                              ##   in Loop: Header=BB5_11 Depth=1
	movq	_yyin(%rip), %rdi
	callq	_yyrestart
	jmp	LBB5_34
LBB5_18:                                ##   in Loop: Header=BB5_11 Depth=1
	subq	%r12, %rbx
	addq	(%r14), %rbx
	jmp	LBB5_19
LBB5_17:                                ## %._crit_edge.i23
                                        ##   in Loop: Header=BB5_11 Depth=1
	movq	_yy_c_buf_p(%rip), %rbx
	.p2align	4, 0x90
LBB5_19:                                ## %input.exit25
                                        ##   in Loop: Header=BB5_11 Depth=1
	movzbl	(%rbx), %ecx
	movb	$0, (%rbx)
	leaq	1(%rbx), %r12
	movq	%r12, _yy_c_buf_p(%rip)
	movzbl	1(%rbx), %eax
	movb	%al, _yy_hold_char(%rip)
	cmpl	$42, %r15d
	jne	LBB5_21
## %bb.20:                              ## %input.exit25
                                        ##   in Loop: Header=BB5_11 Depth=1
	cmpb	$47, %cl
	je	LBB5_37
LBB5_21:                                ##   in Loop: Header=BB5_11 Depth=1
	movzbl	%cl, %r13d
	cmpl	$13, %r15d
	jne	LBB5_34
## %bb.22:                              ##   in Loop: Header=BB5_11 Depth=1
	cmpb	$10, %cl
	jne	LBB5_34
## %bb.23:                              ##   in Loop: Header=BB5_11 Depth=1
	addl	$1, _linecounter(%rip)
	movb	%al, (%r12)
	testb	%al, %al
	jne	LBB5_32
## %bb.24:                              ##   in Loop: Header=BB5_11 Depth=1
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rax
	addq	_yy_n_chars(%rip), %rax
	cmpq	%rax, %r12
	jae	LBB5_26
## %bb.25:                              ##   in Loop: Header=BB5_11 Depth=1
	movb	$0, (%r12)
	jmp	LBB5_32
	.p2align	4, 0x90
LBB5_34:                                ## %.thread
                                        ##   in Loop: Header=BB5_11 Depth=1
	cmpl	$13, %r15d
	je	LBB5_36
## %bb.35:                              ## %.thread
                                        ##   in Loop: Header=BB5_11 Depth=1
	cmpl	$10, %r15d
	movl	%r13d, %r15d
	je	LBB5_36
	jmp	LBB5_11
LBB5_26:                                ##   in Loop: Header=BB5_11 Depth=1
	movq	(%r14), %r15
	addq	$2, %rbx
	movq	%rbx, _yy_c_buf_p(%rip)
	callq	_yy_get_next_buffer
	testl	%eax, %eax
	je	LBB5_31
## %bb.27:                              ##   in Loop: Header=BB5_11 Depth=1
	xorl	%r15d, %r15d
	cmpl	$1, %eax
	je	LBB5_11
## %bb.28:                              ##   in Loop: Header=BB5_11 Depth=1
	cmpl	$2, %eax
	jne	LBB5_29
## %bb.30:                              ##   in Loop: Header=BB5_11 Depth=1
	movq	_yyin(%rip), %rdi
	callq	_yyrestart
	jmp	LBB5_11
LBB5_31:                                ##   in Loop: Header=BB5_11 Depth=1
	subq	%r15, %r12
	addq	(%r14), %r12
	jmp	LBB5_32
LBB5_29:                                ## %._crit_edge.i27
                                        ##   in Loop: Header=BB5_11 Depth=1
	movq	_yy_c_buf_p(%rip), %r12
	.p2align	4, 0x90
LBB5_32:                                ##   in Loop: Header=BB5_11 Depth=1
	movzbl	(%r12), %r15d
	movb	$0, (%r12)
	leaq	1(%r12), %rax
	movq	%rax, _yy_c_buf_p(%rip)
	movzbl	1(%r12), %eax
	movb	%al, _yy_hold_char(%rip)
	jmp	LBB5_11
LBB5_37:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function yy_get_next_buffer
_yy_get_next_buffer:                    ## @yy_get_next_buffer
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %r15
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	(%rax,%r15,8), %r12
	movq	8(%r12), %rcx
	movq	_yy_c_buf_p(%rip), %r14
	movq	_yy_n_chars(%rip), %rax
	addq	%rcx, %rax
	addq	$1, %rax
	cmpq	%rax, %r14
	ja	LBB6_64
## %bb.1:
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	cmpl	$0, 60(%r12)
	je	LBB6_13
## %bb.2:
	movq	%rbx, %r13
	notq	%r13
	addq	%r14, %r13
	testl	%r13d, %r13d
	jle	LBB6_10
## %bb.3:                               ## %iter.check
	movl	$4294967294, %r8d               ## imm = 0xFFFFFFFE
	leal	(%r14,%r8), %r10d
	subl	%ebx, %r10d
	xorl	%r11d, %r11d
	cmpl	$7, %r10d
	jb	LBB6_6
## %bb.4:                               ## %vector.memcheck
	leal	(%r14,%r8), %eax
	subl	%ebx, %eax
	leaq	(%rbx,%rax), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jae	LBB6_33
## %bb.5:                               ## %vector.memcheck
	addq	%rcx, %rax
	addq	$1, %rax
	cmpq	%rax, %rbx
	jae	LBB6_33
LBB6_6:
	movq	%rcx, %rsi
	movq	%rbx, %rax
LBB6_7:                                 ## %.lr.ph127.preheader
	movl	%r14d, %ecx
	subl	%r11d, %ecx
	notl	%ebx
	addl	%ecx, %ebx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_8:                                 ## %.lr.ph127
                                        ## =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rcx), %edx
	movb	%dl, (%rsi,%rcx)
	addq	$1, %rcx
	cmpl	%ecx, %ebx
	jne	LBB6_8
LBB6_9:                                 ## %._crit_edge128.loopexit
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	movq	(%rax,%r15,8), %r12
LBB6_10:                                ## %._crit_edge128
	cmpl	$2, 64(%r12)
	jne	LBB6_14
## %bb.11:                              ## %.thread101
	movq	$0, _yy_n_chars(%rip)
LBB6_12:                                ## %.thread101
	movq	$0, 32(%r12)
	testl	%r13d, %r13d
	jne	LBB6_42
LBB6_54:
	movq	_yyin(%rip), %rdi
	callq	_yyrestart
	movq	_yy_n_chars(%rip), %rbx
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %r15
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	(%rax,%r15,8), %r12
	movl	$1, %r14d
	jmp	LBB6_55
LBB6_13:
	subq	%rbx, %r14
	xorl	%eax, %eax
	cmpq	$1, %r14
	sete	%al
	movl	$2, %r14d
	subl	%eax, %r14d
	jmp	LBB6_60
LBB6_14:
	movq	%r13, -56(%rbp)                 ## 8-byte Spill
                                        ## kill: def $r13d killed $r13d killed $r13
	notl	%r13d
	movl	24(%r12), %ecx
	movl	%ecx, %edx
	addl	%r13d, %edx
	jne	LBB6_18
	.p2align	4, 0x90
LBB6_15:                                ## %.lr.ph121
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$0, 40(%r12)
	je	LBB6_62
## %bb.16:                              ##   in Loop: Header=BB6_15 Depth=1
	movq	8(%r12), %rbx
	leal	(%rcx,%rcx), %eax
	movl	%eax, 24(%r12)
	leal	(%rcx,%rcx), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	%rbx, %rdi
	callq	_realloc
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	LBB6_63
## %bb.17:                              ##   in Loop: Header=BB6_15 Depth=1
	subq	%rbx, %r14
	movslq	%r14d, %rcx
	addq	%rcx, %rax
	movq	%rax, _yy_c_buf_p(%rip)
	movq	-48(%rbp), %rcx                 ## 8-byte Reload
	movq	(%rcx,%r15,8), %r12
	movl	24(%r12), %ecx
	movl	%ecx, %edx
	movq	%rax, %r14
	addl	%r13d, %edx
	je	LBB6_15
LBB6_18:                                ## %._crit_edge
	movslq	%edx, %rax
	cmpq	$8192, %rax                     ## imm = 0x2000
	movl	$8192, %r14d                    ## imm = 0x2000
	cmovbq	%rax, %r14
	cmpl	$0, 44(%r12)
	je	LBB6_28
## %bb.19:                              ## %.preheader
	testq	%r14, %r14
	movq	-56(%rbp), %r13                 ## 8-byte Reload
	je	LBB6_35
## %bb.20:                              ## %.lr.ph110.preheader
	movslq	%r13d, %r15
	movslq	%r13d, %r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_21:                                ## %.lr.ph110
                                        ## =>This Inner Loop Header: Depth=1
	movq	_yyin(%rip), %rdi
	callq	_getc
	cmpl	$-1, %eax
	je	LBB6_25
## %bb.22:                              ## %.lr.ph110
                                        ##   in Loop: Header=BB6_21 Depth=1
	cmpl	$10, %eax
	je	LBB6_25
## %bb.23:                              ##   in Loop: Header=BB6_21 Depth=1
	movq	_yy_buffer_stack(%rip), %rcx
	movq	_yy_buffer_stack_top(%rip), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	8(%rcx), %rcx
	addq	%r12, %rcx
	movb	%al, (%rbx,%rcx)
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	LBB6_21
## %bb.24:
	movq	%r14, %rbx
LBB6_25:                                ## %.critedge
	cmpl	$-1, %eax
	je	LBB6_38
## %bb.26:                              ## %.critedge
	cmpl	$10, %eax
	jne	LBB6_39
## %bb.27:                              ## %.thread98
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rax
	addq	8(%rax), %r15
	movb	$10, (%rbx,%r15)
	addq	$1, %rbx
	jmp	LBB6_39
LBB6_28:
	callq	___error
	movl	$0, (%rax)
	movq	-56(%rbp), %r13                 ## 8-byte Reload
	movslq	%r13d, %r15
	.p2align	4, 0x90
LBB6_29:                                ## =>This Inner Loop Header: Depth=1
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rdi
	addq	%r15, %rdi
	movq	_yyin(%rip), %rcx
	movl	$1, %esi
	movq	%r14, %rdx
	callq	_fread
	movslq	%eax, %rbx
	shlq	$32, %rax
	movq	%rbx, _yy_n_chars(%rip)
	jne	LBB6_40
## %bb.30:                              ## %.lr.ph
                                        ##   in Loop: Header=BB6_29 Depth=1
	movq	_yyin(%rip), %rdi
	callq	_ferror
	testl	%eax, %eax
	je	LBB6_53
## %bb.31:                              ##   in Loop: Header=BB6_29 Depth=1
	callq	___error
	cmpl	$4, (%rax)
	jne	LBB6_65
## %bb.32:                              ##   in Loop: Header=BB6_29 Depth=1
	callq	___error
	movl	$0, (%rax)
	movq	_yyin(%rip), %rdi
	callq	_clearerr
	jmp	LBB6_29
LBB6_33:                                ## %vector.main.loop.iter.check
	movabsq	$8589934560, %r11               ## imm = 0x1FFFFFFE0
	cmpl	$31, %r10d
	jae	LBB6_36
## %bb.34:
	xorl	%edi, %edi
	jmp	LBB6_50
LBB6_35:
	xorl	%ebx, %ebx
	jmp	LBB6_39
LBB6_36:                                ## %vector.ph
	addq	$1, %r10
	movq	%r10, %rdi
	andq	%r11, %rdi
	leaq	-32(%rdi), %rax
	movq	%rax, %rsi
	shrq	$5, %rsi
	addq	$1, %rsi
	movl	%esi, %r9d
	andl	$3, %r9d
	cmpq	$96, %rax
	jae	LBB6_43
## %bb.37:
	xorl	%eax, %eax
	jmp	LBB6_45
LBB6_38:
	movq	_yyin(%rip), %rdi
	callq	_ferror
	testl	%eax, %eax
	jne	LBB6_65
LBB6_39:                                ## %.critedge.thread
	movq	%rbx, _yy_n_chars(%rip)
LBB6_40:                                ## %.loopexit
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %r15
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	(%rax,%r15,8), %r12
	movq	%rbx, 32(%r12)
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	jne	LBB6_55
## %bb.41:
	testl	%r13d, %r13d
	je	LBB6_54
LBB6_42:
	movl	$2, 64(%r12)
	movl	$2, %r14d
	xorl	%ebx, %ebx
LBB6_55:
	movslq	%r13d, %r13
	addq	%rbx, %r13
	movslq	24(%r12), %rax
	cmpq	%rax, %r13
	jbe	LBB6_58
## %bb.56:
	shrq	%rbx
	addq	%r13, %rbx
	movq	8(%r12), %rdi
	movq	%rbx, %rsi
	callq	_realloc
	movq	-48(%rbp), %rdx                 ## 8-byte Reload
	movq	(%rdx,%r15,8), %rcx
	movq	%rax, 8(%rcx)
	movq	(%rdx,%r15,8), %rcx
	movq	8(%rcx), %rax
	testq	%rax, %rax
	je	LBB6_66
## %bb.57:
	addl	$-2, %ebx
	movl	%ebx, 24(%rcx)
	jmp	LBB6_59
LBB6_58:                                ## %._crit_edge139
	movq	8(%r12), %rax
LBB6_59:
	movq	%r13, _yy_n_chars(%rip)
	movb	$0, (%rax,%r13)
	movq	-48(%rbp), %rcx                 ## 8-byte Reload
	movq	(%rcx,%r15,8), %rax
	movq	8(%rax), %rax
	movb	$0, 1(%r13,%rax)
	movq	(%rcx,%r15,8), %rax
	movq	8(%rax), %rax
	movq	_yytext@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
LBB6_60:
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_43:                                ## %vector.ph.new
	andq	$-4, %rsi
	negq	%rsi
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_44:                                ## %vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movups	(%rbx,%rax), %xmm0
	movups	16(%rbx,%rax), %xmm1
	movups	%xmm0, (%rcx,%rax)
	movups	%xmm1, 16(%rcx,%rax)
	movups	32(%rbx,%rax), %xmm0
	movups	48(%rbx,%rax), %xmm1
	movups	%xmm0, 32(%rcx,%rax)
	movups	%xmm1, 48(%rcx,%rax)
	movups	64(%rbx,%rax), %xmm0
	movups	80(%rbx,%rax), %xmm1
	movups	%xmm0, 64(%rcx,%rax)
	movups	%xmm1, 80(%rcx,%rax)
	movups	96(%rbx,%rax), %xmm0
	movups	112(%rbx,%rax), %xmm1
	movups	%xmm0, 96(%rcx,%rax)
	movups	%xmm1, 112(%rcx,%rax)
	subq	$-128, %rax
	addq	$4, %rsi
	jne	LBB6_44
LBB6_45:                                ## %middle.block.unr-lcssa
	testq	%r9, %r9
	je	LBB6_48
## %bb.46:                              ## %vector.body.epil.preheader
	leaq	(%rbx,%rax), %rsi
	addq	$16, %rsi
	addq	%rcx, %rax
	addq	$16, %rax
	shlq	$5, %r9
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB6_47:                                ## %vector.body.epil
                                        ## =>This Inner Loop Header: Depth=1
	movups	-16(%rsi,%rdx), %xmm0
	movups	(%rsi,%rdx), %xmm1
	movups	%xmm0, -16(%rax,%rdx)
	movups	%xmm1, (%rax,%rdx)
	addq	$32, %rdx
	cmpq	%rdx, %r9
	jne	LBB6_47
LBB6_48:                                ## %middle.block
	cmpq	%rdi, %r10
	je	LBB6_9
## %bb.49:                              ## %vec.epilog.iter.check
	testb	$24, %r10b
	je	LBB6_61
LBB6_50:                                ## %vec.epilog.ph
	addl	%r14d, %r8d
	subl	%ebx, %r8d
	addq	$1, %r8
	addq	$24, %r11
	andq	%r8, %r11
	leaq	(%rcx,%r11), %rsi
	leaq	(%rbx,%r11), %rax
	.p2align	4, 0x90
LBB6_51:                                ## %vec.epilog.vector.body
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rdi), %rdx
	movq	%rdx, (%rcx,%rdi)
	addq	$8, %rdi
	cmpq	%rdi, %r11
	jne	LBB6_51
## %bb.52:                              ## %vec.epilog.middle.block
	cmpq	%r11, %r8
	jne	LBB6_7
	jmp	LBB6_9
LBB6_53:                                ## %.loopexit.thread
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %r15
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	(%rax,%r15,8), %r12
	jmp	LBB6_12
LBB6_61:
	leaq	(%rbx,%rdi), %rax
	addq	%rdi, %rcx
	movq	%rcx, %rsi
	movl	%edi, %r11d
	jmp	LBB6_7
LBB6_62:                                ## %.thread
	movq	$0, 8(%r12)
LBB6_63:                                ## %.loopexit103
	leaq	L_.str.34(%rip), %rdi
	callq	_yy_fatal_error
LBB6_64:
	leaq	L_.str.33(%rip), %rdi
	callq	_yy_fatal_error
LBB6_65:
	leaq	L_.str.35(%rip), %rdi
	callq	_yy_fatal_error
LBB6_66:
	leaq	L_.str.36(%rip), %rdi
	callq	_yy_fatal_error
	.cfi_endproc
                                        ## -- End function
	.globl	_yywrap                         ## -- Begin function yywrap
	.p2align	4, 0x90
_yywrap:                                ## @yywrap
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yyrestart                      ## -- Begin function yyrestart
	.p2align	4, 0x90
_yyrestart:                             ## @yyrestart
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
	movq	%rdi, %r14
	movq	_yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	LBB8_5
## %bb.1:
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rbx
	testq	%rbx, %rbx
	je	LBB8_5
## %bb.2:                               ## %.thread8
	callq	___error
	movl	(%rax), %r15d
	jmp	LBB8_3
LBB8_5:
	callq	_yyensure_buffer_stack
	movq	_yyin(%rip), %rdi
	movl	$16384, %esi                    ## imm = 0x4000
	callq	_yy_create_buffer
	movq	%rax, %rbx
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	%rbx, (%rax,%rcx,8)
	callq	___error
	movl	(%rax), %r15d
	testq	%rbx, %rbx
	je	LBB8_6
LBB8_3:
	movq	$0, 32(%rbx)
	movq	8(%rbx), %rax
	movb	$0, (%rax)
	movq	8(%rbx), %rax
	movb	$0, 1(%rax)
	movq	8(%rbx), %rax
	movq	%rax, 16(%rbx)
	movl	$1, 48(%rbx)
	movl	$0, 64(%rbx)
	movq	_yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	LBB8_4
## %bb.7:
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rcx
	cmpq	%rbx, %rcx
	jne	LBB8_10
	jmp	LBB8_9
LBB8_4:
	xorl	%ecx, %ecx
	cmpq	%rbx, %rcx
	jne	LBB8_10
LBB8_9:
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	32(%rdx), %rsi
	movq	%rsi, _yy_n_chars(%rip)
	movq	16(%rdx), %rdx
	movq	%rdx, _yy_c_buf_p(%rip)
	movq	_yytext@GOTPCREL(%rip), %rsi
	movq	%rdx, (%rsi)
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	%rax, _yyin(%rip)
	movb	(%rdx), %al
	movb	%al, _yy_hold_char(%rip)
	jmp	LBB8_10
LBB8_6:
	xorl	%ebx, %ebx
LBB8_10:                                ## %yy_flush_buffer.exit
	movq	%r14, (%rbx)
	movl	$1, 60(%rbx)
	movq	_yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	LBB8_11
## %bb.12:
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	%rbx, %rax
	je	LBB8_15
LBB8_14:
	movq	$1, 52(%rbx)
LBB8_15:
	testq	%r14, %r14
	je	LBB8_16
## %bb.17:
	movq	%r14, %rdi
	callq	_fileno
	movl	%eax, %edi
	callq	_isatty
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	jmp	LBB8_18
LBB8_11:
	xorl	%eax, %eax
	cmpq	%rbx, %rax
	jne	LBB8_14
	jmp	LBB8_15
LBB8_16:
	xorl	%ecx, %ecx
LBB8_18:                                ## %yy_init_buffer.exit
	movl	%ecx, 44(%rbx)
	callq	___error
	movl	%r15d, (%rax)
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	32(%rdx), %rsi
	movq	%rsi, _yy_n_chars(%rip)
	movq	16(%rdx), %rdx
	movq	%rdx, _yy_c_buf_p(%rip)
	movq	_yytext@GOTPCREL(%rip), %rsi
	movq	%rdx, (%rsi)
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	%rax, _yyin(%rip)
	movb	(%rdx), %al
	movb	%al, _yy_hold_char(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function yy_fatal_error
_yy_fatal_error:                        ## @yy_fatal_error
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rdx
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	L_.str.38(%rip), %rsi
	xorl	%eax, %eax
	callq	_fprintf
	movl	$2, %edi
	callq	_exit
	.cfi_endproc
                                        ## -- End function
	.globl	_yy_switch_to_buffer            ## -- Begin function yy_switch_to_buffer
	.p2align	4, 0x90
_yy_switch_to_buffer:                   ## @yy_switch_to_buffer
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	_yyensure_buffer_stack
	movq	_yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	LBB10_1
## %bb.3:                               ## %.thread
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rdx
	cmpq	%rbx, %rdx
	je	LBB10_7
## %bb.4:
	testq	%rdx, %rdx
	je	LBB10_6
## %bb.5:
	movb	_yy_hold_char(%rip), %dl
	movq	_yy_c_buf_p(%rip), %rsi
	movb	%dl, (%rsi)
	movq	(%rax,%rcx,8), %rdx
	movq	%rsi, 16(%rdx)
	movq	_yy_n_chars(%rip), %rdx
	movq	(%rax,%rcx,8), %rsi
	movq	%rdx, 32(%rsi)
	jmp	LBB10_6
LBB10_1:
	testq	%rbx, %rbx
	je	LBB10_7
## %bb.2:                               ## %._crit_edge
	movq	_yy_buffer_stack_top(%rip), %rcx
LBB10_6:
	movq	%rbx, (%rax,%rcx,8)
	movq	32(%rbx), %rdx
	movq	%rdx, _yy_n_chars(%rip)
	movq	16(%rbx), %rdx
	movq	%rdx, _yy_c_buf_p(%rip)
	movq	_yytext@GOTPCREL(%rip), %rsi
	movq	%rdx, (%rsi)
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	%rax, _yyin(%rip)
	movb	(%rdx), %al
	movb	%al, _yy_hold_char(%rip)
LBB10_7:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yyalloc                        ## -- Begin function yyalloc
	.p2align	4, 0x90
_yyalloc:                               ## @yyalloc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	_malloc                         ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_yy_delete_buffer               ## -- Begin function yy_delete_buffer
	.p2align	4, 0x90
_yy_delete_buffer:                      ## @yy_delete_buffer
	.cfi_startproc
## %bb.0:
	testq	%rdi, %rdi
	je	LBB12_9
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	_yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	LBB12_2
## %bb.3:
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rcx
	cmpq	%rbx, %rcx
	jne	LBB12_6
LBB12_5:
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	$0, (%rax,%rcx,8)
LBB12_6:
	cmpl	$0, 40(%rbx)
	je	LBB12_8
## %bb.7:
	movq	8(%rbx), %rdi
	callq	_free
LBB12_8:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_free                           ## TAILCALL
LBB12_9:
	retq
LBB12_2:
	xorl	%ecx, %ecx
	cmpq	%rbx, %rcx
	jne	LBB12_6
	jmp	LBB12_5
	.cfi_endproc
                                        ## -- End function
	.globl	_yyfree                         ## -- Begin function yyfree
	.p2align	4, 0x90
_yyfree:                                ## @yyfree
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	_free                           ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_yy_flush_buffer                ## -- Begin function yy_flush_buffer
	.p2align	4, 0x90
_yy_flush_buffer:                       ## @yy_flush_buffer
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testq	%rdi, %rdi
	je	LBB14_6
## %bb.1:
	movq	$0, 32(%rdi)
	movq	8(%rdi), %rax
	movb	$0, (%rax)
	movq	8(%rdi), %rax
	movb	$0, 1(%rax)
	movq	8(%rdi), %rax
	movq	%rax, 16(%rdi)
	movl	$1, 48(%rdi)
	movl	$0, 64(%rdi)
	movq	_yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	LBB14_2
## %bb.3:
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rcx
	cmpq	%rdi, %rcx
	je	LBB14_5
LBB14_6:
	popq	%rbp
	retq
LBB14_2:
	xorl	%ecx, %ecx
	cmpq	%rdi, %rcx
	jne	LBB14_6
LBB14_5:
	movq	_yy_buffer_stack_top(%rip), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	32(%rdx), %rsi
	movq	%rsi, _yy_n_chars(%rip)
	movq	16(%rdx), %rdx
	movq	%rdx, _yy_c_buf_p(%rip)
	movq	_yytext@GOTPCREL(%rip), %rsi
	movq	%rdx, (%rsi)
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	%rax, _yyin(%rip)
	movb	(%rdx), %al
	movb	%al, _yy_hold_char(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yypush_buffer_state            ## -- Begin function yypush_buffer_state
	.p2align	4, 0x90
_yypush_buffer_state:                   ## @yypush_buffer_state
	.cfi_startproc
## %bb.0:
	testq	%rdi, %rdi
	je	LBB15_5
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	_yyensure_buffer_stack
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	testq	%rax, %rax
	je	LBB15_4
## %bb.2:
	cmpq	$0, (%rax,%rcx,8)
	je	LBB15_4
## %bb.3:
	movb	_yy_hold_char(%rip), %dl
	movq	_yy_c_buf_p(%rip), %rsi
	movb	%dl, (%rsi)
	movq	(%rax,%rcx,8), %rdx
	movq	%rsi, 16(%rdx)
	movq	_yy_n_chars(%rip), %rdx
	movq	(%rax,%rcx,8), %rsi
	movq	%rdx, 32(%rsi)
	addq	$1, %rcx
	movq	%rcx, _yy_buffer_stack_top(%rip)
LBB15_4:                                ## %.thread
	movq	%rbx, (%rax,%rcx,8)
	movq	32(%rbx), %rdx
	movq	%rdx, _yy_n_chars(%rip)
	movq	16(%rbx), %rdx
	movq	%rdx, _yy_c_buf_p(%rip)
	movq	_yytext@GOTPCREL(%rip), %rsi
	movq	%rdx, (%rsi)
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	%rax, _yyin(%rip)
	movb	(%rdx), %al
	movb	%al, _yy_hold_char(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
LBB15_5:
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yypop_buffer_state             ## -- Begin function yypop_buffer_state
	.p2align	4, 0x90
_yypop_buffer_state:                    ## @yypop_buffer_state
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
	movq	_yy_buffer_stack(%rip), %rbx
	testq	%rbx, %rbx
	je	LBB16_7
## %bb.1:
	movq	_yy_buffer_stack_top(%rip), %r15
	movq	(%rbx,%r15,8), %r14
	testq	%r14, %r14
	je	LBB16_7
## %bb.2:
	movq	$0, (%rbx,%r15,8)
	cmpl	$0, 40(%r14)
	je	LBB16_4
## %bb.3:
	movq	8(%r14), %rdi
	callq	_free
LBB16_4:                                ## %yy_delete_buffer.exit
	movq	%r14, %rdi
	callq	_free
	movq	$0, (%rbx,%r15,8)
	testq	%r15, %r15
	je	LBB16_7
## %bb.5:
	leaq	-1(%r15), %rax
	movq	%rax, _yy_buffer_stack_top(%rip)
	movq	-8(%rbx,%r15,8), %rax
	testq	%rax, %rax
	je	LBB16_7
## %bb.6:
	movq	32(%rax), %rcx
	movq	%rcx, _yy_n_chars(%rip)
	movq	16(%rax), %rax
	movq	%rax, _yy_c_buf_p(%rip)
	movq	_yytext@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbx,%r15,8), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, _yyin(%rip)
	movb	(%rax), %al
	movb	%al, _yy_hold_char(%rip)
LBB16_7:                                ## %.thread
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yy_scan_buffer                 ## -- Begin function yy_scan_buffer
	.p2align	4, 0x90
_yy_scan_buffer:                        ## @yy_scan_buffer
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
	cmpq	$2, %rsi
	jb	LBB17_1
## %bb.2:
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpb	$0, -2(%rdi,%rsi)
	jne	LBB17_1
## %bb.4:
	cmpb	$0, -1(%rbx,%r15)
	je	LBB17_6
LBB17_1:
	xorl	%r14d, %r14d
LBB17_12:                               ## %yy_switch_to_buffer.exit
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB17_6:
	movl	$72, %edi
	callq	_malloc
	testq	%rax, %rax
	je	LBB17_13
## %bb.7:
	movq	%rax, %r14
	addq	$-2, %rbx
	movl	%ebx, 24(%rax)
	movq	%r15, 8(%rax)
	movq	%r15, 16(%rax)
	movl	$0, 40(%rax)
	movq	$0, (%rax)
	movslq	%ebx, %rbx
	movq	%rbx, 32(%rax)
	movabsq	$4294967296, %rax               ## imm = 0x100000000
	movq	%rax, 44(%r14)
	movq	$0, 60(%r14)
	callq	_yyensure_buffer_stack
	movq	_yy_buffer_stack(%rip), %rax
	movq	_yy_buffer_stack_top(%rip), %rcx
	testq	%rax, %rax
	je	LBB17_11
## %bb.8:                               ## %.thread.i
	movq	(%rax,%rcx,8), %rdx
	cmpq	%r14, %rdx
	je	LBB17_12
## %bb.9:
	testq	%rdx, %rdx
	je	LBB17_11
## %bb.10:
	movb	_yy_hold_char(%rip), %dl
	movq	_yy_c_buf_p(%rip), %rsi
	movb	%dl, (%rsi)
	movq	(%rax,%rcx,8), %rdx
	movq	%rsi, 16(%rdx)
	movq	_yy_n_chars(%rip), %rdx
	movq	(%rax,%rcx,8), %rsi
	movq	%rdx, 32(%rsi)
	movq	32(%r14), %rbx
LBB17_11:                               ## %._crit_edge.i
	movq	%r14, (%rax,%rcx,8)
	movq	%rbx, _yy_n_chars(%rip)
	movq	16(%r14), %rdx
	movq	%rdx, _yy_c_buf_p(%rip)
	movq	_yytext@GOTPCREL(%rip), %rsi
	movq	%rdx, (%rsi)
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	%rax, _yyin(%rip)
	movb	(%rdx), %al
	movb	%al, _yy_hold_char(%rip)
	jmp	LBB17_12
LBB17_13:
	leaq	L_.str.27(%rip), %rdi
	callq	_yy_fatal_error
	.cfi_endproc
                                        ## -- End function
	.globl	_yy_scan_string                 ## -- Begin function yy_scan_string
	.p2align	4, 0x90
_yy_scan_string:                        ## @yy_scan_string
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	callq	_strlen
	movq	%rax, %rbx
	movslq	%ebx, %r12
	leaq	2(%r12), %r15
	movq	%r15, %rdi
	callq	_malloc
	testq	%rax, %rax
	je	LBB18_5
## %bb.1:                               ## %.preheader.i
	movq	%rax, %r13
	shlq	$32, %rbx
	je	LBB18_3
## %bb.2:                               ## %.lr.ph.preheader.i
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	_memcpy
LBB18_3:                                ## %._crit_edge.i
	movw	$0, (%r13,%r12)
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	_yy_scan_buffer
	testq	%rax, %rax
	je	LBB18_6
## %bb.4:                               ## %yy_scan_bytes.exit
	movl	$1, 40(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB18_5:
	leaq	L_.str.28(%rip), %rdi
	callq	_yy_fatal_error
LBB18_6:
	leaq	L_.str.29(%rip), %rdi
	callq	_yy_fatal_error
	.cfi_endproc
                                        ## -- End function
	.globl	_yy_scan_bytes                  ## -- Begin function yy_scan_bytes
	.p2align	4, 0x90
_yy_scan_bytes:                         ## @yy_scan_bytes
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
	movq	%rsi, %r15
	movq	%rdi, %r12
	leaq	2(%rsi), %r14
	movq	%r14, %rdi
	callq	_malloc
	testq	%rax, %rax
	je	LBB19_5
## %bb.1:                               ## %.preheader
	movq	%rax, %rbx
	testq	%r15, %r15
	je	LBB19_3
## %bb.2:                               ## %.lr.ph.preheader
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	_memcpy
LBB19_3:                                ## %._crit_edge
	movw	$0, (%rbx,%r15)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_yy_scan_buffer
	testq	%rax, %rax
	je	LBB19_6
## %bb.4:
	movl	$1, 40(%rax)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB19_5:
	leaq	L_.str.28(%rip), %rdi
	callq	_yy_fatal_error
LBB19_6:
	leaq	L_.str.29(%rip), %rdi
	callq	_yy_fatal_error
	.cfi_endproc
                                        ## -- End function
	.globl	_yyget_lineno                   ## -- Begin function yyget_lineno
	.p2align	4, 0x90
_yyget_lineno:                          ## @yyget_lineno
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	_yylineno(%rip), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yyget_in                       ## -- Begin function yyget_in
	.p2align	4, 0x90
_yyget_in:                              ## @yyget_in
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_yyin(%rip), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yyget_out                      ## -- Begin function yyget_out
	.p2align	4, 0x90
_yyget_out:                             ## @yyget_out
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_yyout(%rip), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yyget_leng                     ## -- Begin function yyget_leng
	.p2align	4, 0x90
_yyget_leng:                            ## @yyget_leng
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_yyleng@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yyget_text                     ## -- Begin function yyget_text
	.p2align	4, 0x90
_yyget_text:                            ## @yyget_text
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_yytext@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yyset_lineno                   ## -- Begin function yyset_lineno
	.p2align	4, 0x90
_yyset_lineno:                          ## @yyset_lineno
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, _yylineno(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yyset_in                       ## -- Begin function yyset_in
	.p2align	4, 0x90
_yyset_in:                              ## @yyset_in
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, _yyin(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yyset_out                      ## -- Begin function yyset_out
	.p2align	4, 0x90
_yyset_out:                             ## @yyset_out
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, _yyout(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yyget_debug                    ## -- Begin function yyget_debug
	.p2align	4, 0x90
_yyget_debug:                           ## @yyget_debug
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	_yy_flex_debug(%rip), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yyset_debug                    ## -- Begin function yyset_debug
	.p2align	4, 0x90
_yyset_debug:                           ## @yyset_debug
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, _yy_flex_debug(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yylex_destroy                  ## -- Begin function yylex_destroy
	.p2align	4, 0x90
_yylex_destroy:                         ## @yylex_destroy
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
	movq	_yy_buffer_stack(%rip), %rbx
	testq	%rbx, %rbx
	je	LBB30_5
## %bb.1:                               ## %.lr.ph.preheader
	movq	_yy_buffer_stack_top(%rip), %r15
	movq	(%rbx,%r15,8), %r14
	testq	%r14, %r14
	je	LBB30_5
## %bb.2:                               ## %.lr.ph21
	movq	$0, (%rbx,%r15,8)
	cmpl	$0, 40(%r14)
	je	LBB30_4
## %bb.3:
	movq	8(%r14), %rdi
	callq	_free
	movq	_yy_buffer_stack(%rip), %rbx
	movq	_yy_buffer_stack_top(%rip), %r15
LBB30_4:                                ## %yypop_buffer_state.exit
	movq	%r14, %rdi
	callq	_free
	movq	$0, (%rbx,%r15,8)
LBB30_5:                                ## %.thread
	movq	%rbx, %rdi
	callq	_free
	movq	$0, _yy_buffer_stack(%rip)
	movq	$0, _yy_buffer_stack_top(%rip)
	movq	$0, _yy_buffer_stack_max(%rip)
	movq	$0, _yy_c_buf_p(%rip)
	movb	$0, _yy_init(%rip)
	movb	$0, _yy_start(%rip)
	movq	$0, _yyin(%rip)
	movq	$0, _yyout(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_yyrealloc                      ## -- Begin function yyrealloc
	.p2align	4, 0x90
_yyrealloc:                             ## @yyrealloc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	_realloc                        ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.comm	_yynerrs,4,2                    ## @yynerrs
	.comm	_yychar,4,2                     ## @yychar
	.section	__TEXT,__const
	.p2align	4                               ## @yypact
_yypact:
	.ascii	"\026\025\030\032\021\026\327\007\007\007\007\007\007\006\006\327\327\016!\031\033#\031\037(\031\033)*+\016,\035.\035\327\327 \327\354\016\327\016\327\327\327\016\033\327\327'\327\327\327\327\327\327\327\327\327\016\327\327\327\327\327\327\327\327\327$&\327\037\327\016-\327\016\354\327\327\016\327\327\327\327"

	.p2align	4                               ## @yytranslate
_yytranslate:
	.ascii	"\000\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 "

	.p2align	4                               ## @yycheck
_yycheck:
	.ascii	"(\032\036\027\030\031\032\033\034\035\036\037\b\t*\013\f\000.\f<\026/\021\031\003\004\005\007\b\t\007\b\t\024K\n\013N\006\r\006R\022\023\016\006\006\006\006\006\026\006\025\017\023\022\005\n\f\013\020IO\016\377\377\377\""

	.p2align	4                               ## @yytable
_yytable:
	.ascii	"G26=>?@ABCDE\027\032H\027\032\017I\021M-J\0361\001\002\003\007\b\t\n\013\f#Q\r\016T&*,V'(.034578:<KNO\020\033\035\034RPU\"\000\000\000;"

	.comm	_yylval,8,3                     ## @yylval
	.p2align	4                               ## @yydefact
_yydefact:
	.ascii	"\000\000\000\000\000\002\003\000\000\000\000\000\000\000\000\001\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\"\025\000\005\000\000\r\000\022\007\016\000\000\t\017\000\006\b\n\035\013!\020\f\021\000#$%&'()*+\031\033\030\026\023\000\000\036\000\000\027\037\000\024\032\034 "

	.p2align	4                               ## @yyr2
_yyr2:
	.ascii	"\000\002\001\001\002\004\004\004\004\004\004\004\004\002\002\002\002\002\002\003\004\002\002\003\002\002\004\002\004\002\003\002\002\001\001\001\001\001\001\001\001\001\001\001"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"STROKE"

L_.str.1:                               ## @.str.1
	.asciz	"FILL"

L_.str.2:                               ## @.str.2
	.asciz	"DISPLAY"

L_.str.3:                               ## @.str.3
	.asciz	"RECTANGLE"

L_.str.4:                               ## @.str.4
	.asciz	"LINE"

L_.str.5:                               ## @.str.5
	.asciz	"ARC"

L_.str.6:                               ## @.str.6
	.asciz	"STRING"

L_.str.7:                               ## @.str.7
	.asciz	"IMAGE"

L_.str.8:                               ## @.str.8
	.asciz	"START"

L_.str.9:                               ## @.str.9
	.asciz	"PASS"

L_.str.10:                              ## @.str.10
	.asciz	"END"

L_.str.11:                              ## @.str.11
	.asciz	"COW"

L_.str.12:                              ## @.str.12
	.asciz	"AT"

L_.str.13:                              ## @.str.13
	.asciz	"XY"

L_.str.14:                              ## @.str.14
	.asciz	"ANGLE"

L_.str.15:                              ## @.str.15
	.asciz	"SWEEP"

L_.str.16:                              ## @.str.16
	.asciz	"WQUOTED"

	.comm	_yytext,8,3                     ## @yytext
L_.str.17:                              ## @.str.17
	.asciz	"INTEGER"

L_.str.18:                              ## @.str.18
	.asciz	"COLOR"

	.section	__TEXT,__const
	.p2align	4                               ## @yyr1
_yyr1:
	.ascii	"\000!\"##$$$$$$$$%&'()*+,-../0000123456777777777"

	.p2align	4                               ## @yypgoto
_yypgoto:
	.ascii	"\327\327\327401/\327\327\327\327\327\004\365\347\3772\344\327\327\"\330\360"

	.p2align	4                               ## @yydefgoto
_yydefgoto:
	.ascii	"\377\004\005\006\022\025\030\037!\023\026\031\024/+) $LS9%F"

	.section	__TEXT,__cstring,cstring_literals
L_.str.19:                              ## @.str.19
	.asciz	"syntax error"

L_.str.22:                              ## @.str.22
	.asciz	"memory exhausted"

	.globl	_yyin                           ## @yyin
.zerofill __DATA,__common,_yyin,8,3
	.globl	_yyout                          ## @yyout
.zerofill __DATA,__common,_yyout,8,3
	.section	__DATA,__data
	.globl	_yylineno                       ## @yylineno
	.p2align	2
_yylineno:
	.long	1                               ## 0x1

	.globl	_yy_flex_debug                  ## @yy_flex_debug
.zerofill __DATA,__common,_yy_flex_debug,4,2
	.globl	_linecounter                    ## @linecounter
	.p2align	2
_linecounter:
	.long	1                               ## 0x1

.zerofill __DATA,__bss,_yy_init,1,2     ## @yy_init
.zerofill __DATA,__bss,_yy_start,1,2    ## @yy_start
.zerofill __DATA,__bss,_yy_buffer_stack,8,3 ## @yy_buffer_stack
.zerofill __DATA,__bss,_yy_buffer_stack_top,8,3 ## @yy_buffer_stack_top
.zerofill __DATA,__bss,_yy_c_buf_p,8,3  ## @yy_c_buf_p
.zerofill __DATA,__bss,_yy_hold_char,1,0 ## @yy_hold_char
	.section	__TEXT,__const
	.p2align	4                               ## @yy_ec
_yy_ec:
	.ascii	"\000\001\001\001\001\001\001\001\001\002\003\001\001\004\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\005\001\006\001\001\001\001\001\001\001\007\001\001\b\t\n\013\013\013\013\013\013\013\013\013\013\f\001\001\001\001\001\r\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\001\001\001\001\001\001\017\020\021\022\023\024\025\026\027\016\030\031\032\033\034\035\016\036\037 !\016\"\016#\016\001\001\001$\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"

	.p2align	4                               ## @yy_accept
_yy_accept:
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	37                              ## 0x25
	.short	35                              ## 0x23
	.short	33                              ## 0x21
	.short	30                              ## 0x1e
	.short	32                              ## 0x20
	.short	35                              ## 0x23
	.short	27                              ## 0x1b
	.short	35                              ## 0x23
	.short	26                              ## 0x1a
	.short	28                              ## 0x1c
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	35                              ## 0x23
	.short	31                              ## 0x1f
	.short	29                              ## 0x1d
	.short	0                               ## 0x0
	.short	34                              ## 0x22
	.short	26                              ## 0x1a
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	25                              ## 0x19
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	8                               ## 0x8
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	13                              ## 0xd
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	16                              ## 0x10
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	18                              ## 0x12
	.short	0                               ## 0x0
	.short	19                              ## 0x13
	.short	0                               ## 0x0
	.short	5                               ## 0x5
	.short	22                              ## 0x16
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	7                               ## 0x7
	.short	0                               ## 0x0
	.short	12                              ## 0xc
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	9                               ## 0x9
	.short	23                              ## 0x17
	.short	15                              ## 0xf
	.short	0                               ## 0x0
	.short	17                              ## 0x11
	.short	3                               ## 0x3
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	11                              ## 0xb
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	10                              ## 0xa
	.short	24                              ## 0x18
	.short	14                              ## 0xe
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	1                               ## 0x1
	.short	4                               ## 0x4
	.short	21                              ## 0x15
	.short	2                               ## 0x2
	.short	20                              ## 0x14
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	6                               ## 0x6
	.short	0                               ## 0x0

.zerofill __DATA,__bss,_yy_last_accepting_state,4,2 ## @yy_last_accepting_state
.zerofill __DATA,__bss,_yy_last_accepting_cpos,8,3 ## @yy_last_accepting_cpos
	.p2align	4                               ## @yy_chk
_yy_chk:
	.short	0                               ## 0x0
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	1                               ## 0x1
	.short	13                              ## 0xd
	.short	15                              ## 0xf
	.short	25                              ## 0x19
	.short	13                              ## 0xd
	.short	25                              ## 0x19
	.short	13                              ## 0xd
	.short	26                              ## 0x1a
	.short	26                              ## 0x1a
	.short	15                              ## 0xf
	.short	36                              ## 0x24
	.short	42                              ## 0x2a
	.short	47                              ## 0x2f
	.short	47                              ## 0x2f
	.short	48                              ## 0x30
	.short	42                              ## 0x2a
	.short	71                              ## 0x47
	.short	124                             ## 0x7c
	.short	121                             ## 0x79
	.short	120                             ## 0x78
	.short	114                             ## 0x72
	.short	71                              ## 0x47
	.short	113                             ## 0x71
	.short	112                             ## 0x70
	.short	111                             ## 0x6f
	.short	107                             ## 0x6b
	.short	106                             ## 0x6a
	.short	104                             ## 0x68
	.short	36                              ## 0x24
	.short	48                              ## 0x30
	.short	103                             ## 0x67
	.short	100                             ## 0x64
	.short	96                              ## 0x60
	.short	95                              ## 0x5f
	.short	94                              ## 0x5e
	.short	93                              ## 0x5d
	.short	92                              ## 0x5c
	.short	91                              ## 0x5b
	.short	90                              ## 0x5a
	.short	89                              ## 0x59
	.short	87                              ## 0x57
	.short	85                              ## 0x55
	.short	84                              ## 0x54
	.short	81                              ## 0x51
	.short	79                              ## 0x4f
	.short	77                              ## 0x4d
	.short	76                              ## 0x4c
	.short	75                              ## 0x4b
	.short	74                              ## 0x4a
	.short	73                              ## 0x49
	.short	72                              ## 0x48
	.short	70                              ## 0x46
	.short	68                              ## 0x44
	.short	67                              ## 0x43
	.short	66                              ## 0x42
	.short	65                              ## 0x41
	.short	64                              ## 0x40
	.short	63                              ## 0x3f
	.short	62                              ## 0x3e
	.short	61                              ## 0x3d
	.short	59                              ## 0x3b
	.short	58                              ## 0x3a
	.short	57                              ## 0x39
	.short	56                              ## 0x38
	.short	55                              ## 0x37
	.short	53                              ## 0x35
	.short	52                              ## 0x34
	.short	51                              ## 0x33
	.short	50                              ## 0x32
	.short	49                              ## 0x31
	.short	46                              ## 0x2e
	.short	45                              ## 0x2d
	.short	44                              ## 0x2c
	.short	43                              ## 0x2b
	.short	41                              ## 0x29
	.short	40                              ## 0x28
	.short	39                              ## 0x27
	.short	38                              ## 0x26
	.short	37                              ## 0x25
	.short	34                              ## 0x22
	.short	33                              ## 0x21
	.short	32                              ## 0x20
	.short	30                              ## 0x1e
	.short	27                              ## 0x1b
	.short	24                              ## 0x18
	.short	23                              ## 0x17
	.short	22                              ## 0x16
	.short	21                              ## 0x15
	.short	20                              ## 0x14
	.short	19                              ## 0x13
	.short	18                              ## 0x12
	.short	17                              ## 0x11
	.short	16                              ## 0x10
	.short	14                              ## 0xe
	.short	11                              ## 0xb
	.short	10                              ## 0xa
	.short	8                               ## 0x8
	.short	7                               ## 0x7
	.short	3                               ## 0x3
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b

	.p2align	4                               ## @yy_base
_yy_base:
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	0                               ## 0x0
	.short	134                             ## 0x86
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	130                             ## 0x82
	.short	126                             ## 0x7e
	.short	135                             ## 0x87
	.short	124                             ## 0x7c
	.short	119                             ## 0x77
	.short	135                             ## 0x87
	.short	10                              ## 0xa
	.short	104                             ## 0x68
	.short	10                              ## 0xa
	.short	105                             ## 0x69
	.short	100                             ## 0x64
	.short	103                             ## 0x67
	.short	95                              ## 0x5f
	.short	98                              ## 0x62
	.short	100                             ## 0x64
	.short	107                             ## 0x6b
	.short	106                             ## 0x6a
	.short	101                             ## 0x65
	.short	7                               ## 0x7
	.short	21                              ## 0x15
	.short	100                             ## 0x64
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	112                             ## 0x70
	.short	135                             ## 0x87
	.short	106                             ## 0x6a
	.short	95                              ## 0x5f
	.short	98                              ## 0x62
	.short	135                             ## 0x87
	.short	31                              ## 0x1f
	.short	89                              ## 0x59
	.short	98                              ## 0x62
	.short	81                              ## 0x51
	.short	93                              ## 0x5d
	.short	85                              ## 0x55
	.short	32                              ## 0x20
	.short	94                              ## 0x5e
	.short	81                              ## 0x51
	.short	86                              ## 0x56
	.short	75                              ## 0x4b
	.short	31                              ## 0x1f
	.short	35                              ## 0x23
	.short	86                              ## 0x56
	.short	81                              ## 0x51
	.short	85                              ## 0x55
	.short	77                              ## 0x4d
	.short	76                              ## 0x4c
	.short	135                             ## 0x87
	.short	83                              ## 0x53
	.short	80                              ## 0x50
	.short	70                              ## 0x46
	.short	70                              ## 0x46
	.short	67                              ## 0x43
	.short	135                             ## 0x87
	.short	70                              ## 0x46
	.short	59                              ## 0x3b
	.short	74                              ## 0x4a
	.short	71                              ## 0x47
	.short	72                              ## 0x48
	.short	71                              ## 0x47
	.short	58                              ## 0x3a
	.short	56                              ## 0x38
	.short	135                             ## 0x87
	.short	57                              ## 0x39
	.short	29                              ## 0x1d
	.short	67                              ## 0x43
	.short	60                              ## 0x3c
	.short	52                              ## 0x34
	.short	58                              ## 0x3a
	.short	63                              ## 0x3f
	.short	57                              ## 0x39
	.short	135                             ## 0x87
	.short	50                              ## 0x32
	.short	135                             ## 0x87
	.short	54                              ## 0x36
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	51                              ## 0x33
	.short	58                              ## 0x3a
	.short	135                             ## 0x87
	.short	49                              ## 0x31
	.short	135                             ## 0x87
	.short	60                              ## 0x3c
	.short	42                              ## 0x2a
	.short	46                              ## 0x2e
	.short	48                              ## 0x30
	.short	42                              ## 0x2a
	.short	51                              ## 0x33
	.short	47                              ## 0x2f
	.short	40                              ## 0x28
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	52                              ## 0x34
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	34                              ## 0x22
	.short	36                              ## 0x24
	.short	135                             ## 0x87
	.short	41                              ## 0x29
	.short	42                              ## 0x2a
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	26                              ## 0x1a
	.short	24                              ## 0x18
	.short	43                              ## 0x2b
	.short	35                              ## 0x23
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	30                              ## 0x1e
	.short	35                              ## 0x23
	.short	135                             ## 0x87
	.short	135                             ## 0x87
	.short	51                              ## 0x33

	.p2align	4                               ## @yy_def
_yy_def:
	.short	0                               ## 0x0
	.short	123                             ## 0x7b
	.short	1                               ## 0x1
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	124                             ## 0x7c
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	124                             ## 0x7c
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	0                               ## 0x0
	.short	123                             ## 0x7b

	.p2align	4                               ## @yy_meta
_yy_meta:
	.ascii	"\000\001\001\001\001\001\002\001\002\002\002\002\002\001\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002"

	.p2align	4                               ## @yy_nxt
_yy_nxt:
	.short	0                               ## 0x0
	.short	4                               ## 0x4
	.short	5                               ## 0x5
	.short	6                               ## 0x6
	.short	7                               ## 0x7
	.short	5                               ## 0x5
	.short	8                               ## 0x8
	.short	4                               ## 0x4
	.short	4                               ## 0x4
	.short	9                               ## 0x9
	.short	10                              ## 0xa
	.short	11                              ## 0xb
	.short	4                               ## 0x4
	.short	12                              ## 0xc
	.short	4                               ## 0x4
	.short	13                              ## 0xd
	.short	14                              ## 0xe
	.short	15                              ## 0xf
	.short	16                              ## 0x10
	.short	17                              ## 0x11
	.short	18                              ## 0x12
	.short	19                              ## 0x13
	.short	4                               ## 0x4
	.short	20                              ## 0x14
	.short	4                               ## 0x4
	.short	21                              ## 0x15
	.short	22                              ## 0x16
	.short	4                               ## 0x4
	.short	4                               ## 0x4
	.short	23                              ## 0x17
	.short	24                              ## 0x18
	.short	25                              ## 0x19
	.short	4                               ## 0x4
	.short	4                               ## 0x4
	.short	26                              ## 0x1a
	.short	27                              ## 0x1b
	.short	4                               ## 0x4
	.short	33                              ## 0x21
	.short	37                              ## 0x25
	.short	48                              ## 0x30
	.short	34                              ## 0x22
	.short	49                              ## 0x31
	.short	35                              ## 0x23
	.short	50                              ## 0x32
	.short	51                              ## 0x33
	.short	38                              ## 0x26
	.short	55                              ## 0x37
	.short	62                              ## 0x3e
	.short	68                              ## 0x44
	.short	69                              ## 0x45
	.short	70                              ## 0x46
	.short	63                              ## 0x3f
	.short	91                              ## 0x5b
	.short	30                              ## 0x1e
	.short	122                             ## 0x7a
	.short	121                             ## 0x79
	.short	120                             ## 0x78
	.short	92                              ## 0x5c
	.short	119                             ## 0x77
	.short	118                             ## 0x76
	.short	117                             ## 0x75
	.short	116                             ## 0x74
	.short	115                             ## 0x73
	.short	114                             ## 0x72
	.short	56                              ## 0x38
	.short	71                              ## 0x47
	.short	113                             ## 0x71
	.short	112                             ## 0x70
	.short	111                             ## 0x6f
	.short	110                             ## 0x6e
	.short	109                             ## 0x6d
	.short	108                             ## 0x6c
	.short	107                             ## 0x6b
	.short	106                             ## 0x6a
	.short	105                             ## 0x69
	.short	104                             ## 0x68
	.short	103                             ## 0x67
	.short	102                             ## 0x66
	.short	101                             ## 0x65
	.short	100                             ## 0x64
	.short	99                              ## 0x63
	.short	98                              ## 0x62
	.short	97                              ## 0x61
	.short	96                              ## 0x60
	.short	95                              ## 0x5f
	.short	94                              ## 0x5e
	.short	93                              ## 0x5d
	.short	90                              ## 0x5a
	.short	89                              ## 0x59
	.short	88                              ## 0x58
	.short	87                              ## 0x57
	.short	86                              ## 0x56
	.short	85                              ## 0x55
	.short	84                              ## 0x54
	.short	83                              ## 0x53
	.short	82                              ## 0x52
	.short	81                              ## 0x51
	.short	80                              ## 0x50
	.short	79                              ## 0x4f
	.short	78                              ## 0x4e
	.short	77                              ## 0x4d
	.short	76                              ## 0x4c
	.short	75                              ## 0x4b
	.short	74                              ## 0x4a
	.short	73                              ## 0x49
	.short	72                              ## 0x48
	.short	67                              ## 0x43
	.short	66                              ## 0x42
	.short	65                              ## 0x41
	.short	64                              ## 0x40
	.short	61                              ## 0x3d
	.short	60                              ## 0x3c
	.short	59                              ## 0x3b
	.short	58                              ## 0x3a
	.short	57                              ## 0x39
	.short	54                              ## 0x36
	.short	53                              ## 0x35
	.short	32                              ## 0x20
	.short	29                              ## 0x1d
	.short	52                              ## 0x34
	.short	47                              ## 0x2f
	.short	46                              ## 0x2e
	.short	45                              ## 0x2d
	.short	44                              ## 0x2c
	.short	43                              ## 0x2b
	.short	42                              ## 0x2a
	.short	41                              ## 0x29
	.short	40                              ## 0x28
	.short	39                              ## 0x27
	.short	36                              ## 0x24
	.short	32                              ## 0x20
	.short	31                              ## 0x1f
	.short	29                              ## 0x1d
	.short	28                              ## 0x1c
	.short	123                             ## 0x7b
	.short	3                               ## 0x3
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b
	.short	123                             ## 0x7b

	.comm	_yyleng,8,3                     ## @yyleng
.zerofill __DATA,__bss,_yy_n_chars,8,3  ## @yy_n_chars
	.section	__TEXT,__cstring,cstring_literals
L_.str.25:                              ## @.str.25
	.asciz	"fatal flex scanner internal error--no action found"

L_.str.26:                              ## @.str.26
	.asciz	"out of dynamic memory in yy_create_buffer()"

L_.str.27:                              ## @.str.27
	.asciz	"out of dynamic memory in yy_scan_buffer()"

L_.str.28:                              ## @.str.28
	.asciz	"out of dynamic memory in yy_scan_bytes()"

L_.str.29:                              ## @.str.29
	.asciz	"bad buffer in yy_scan_bytes()"

L_.str.31:                              ## @.str.31
	.asciz	"\n%s at %d: nearby \"%s\"\n\n"

L_.str.33:                              ## @.str.33
	.asciz	"fatal flex scanner internal error--end of buffer missed"

L_.str.34:                              ## @.str.34
	.asciz	"fatal error - scanner input buffer overflow"

L_.str.35:                              ## @.str.35
	.asciz	"input in flex scanner failed"

L_.str.36:                              ## @.str.36
	.asciz	"out of dynamic memory in yy_get_next_buffer()"

L_.str.37:                              ## @.str.37
	.asciz	"out of dynamic memory in yyensure_buffer_stack()"

.zerofill __DATA,__bss,_yy_buffer_stack_max,8,3 ## @yy_buffer_stack_max
L_.str.38:                              ## @.str.38
	.asciz	"%s\n"

.subsections_via_symbols
