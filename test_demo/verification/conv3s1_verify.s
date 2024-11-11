	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p1_m2p0"
	.file	"conv3s1_verify.c"
	.globl	conv3s1                         # -- Begin function conv3s1
	.p2align	1
	.type	conv3s1,@function
conv3s1:                                # @conv3s1
# %bb.0:                                # %entry
	addi	sp, sp, -16
	sw	a1, 12(sp)
	sw	a2, 8(sp)
	sw	a3, 4(sp)
	sw	a5, 0(sp)
	lui	t1, 40960
	sw	zero, 4(t1)
	mco.movem0mr0	 m0r1
	lw	a2, 28(a0)
	sw	a2, 8(t1)
	mco.movem0mr0	 m0r2
	lw	a2, 28(a0)
	sw	a2, 12(t1)
	mco.movem0mr0	 m0r3
	lw	a2, 28(a0)
	sw	a2, 16(t1)
	mco.movem0mr0	 m0r4
	lw	a2, 32(a0)
	sw	a2, 20(t1)
	mco.movem0mr0	 m0r5
	lw	a2, 20(a0)
	sw	a2, 0(t1)
	mco.movem0mr0	 m0ro0
	lw	a2, 24(a0)
	sw	a2, 0(t1)
	mco.movem0mr0	 m0rp0
	lw	a2, 128(t1)
	addi	a3, sp, 12
	mco.loadm0	 a3, a2, m0ro0
	lw	a2, 160(t1)
	addi	a3, sp, 8
	mco.loadm0	 a3, a2, m0rp0
	lw	a2, 12(t1)
	addi	a6, sp, 4
	mco.loadm0	 a6, a2, m0r3
	lw	a2, 28(a0)
	lw	a3, 16(t1)
	slli	a2, a2, 2
	add	a2, a2, a6
	mco.loadm0	 a2, a3, m0r4
	lw	a2, 4(a0)
	beqz	a2, .LBB0_12
# %bb.1:                                # %for.body.lr.ph
	li	a3, 0
	addi	a4, a0, 52
	li	t0, 0
	mv	a7, sp
	j	.LBB0_3
.LBB0_2:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	lw	a1, 8(a0)
	add	a3, a3, a1
	bgeu	a3, a2, .LBB0_12
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beqz	a3, .LBB0_6
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	addi	a2, a2, -1
	beq	a3, a2, .LBB0_7
.LBB0_5:                                # %if.end13
                                        #   in Loop: Header=BB0_3 Depth=1
	bgtz	a3, .LBB0_8
	j	.LBB0_10
.LBB0_6:                                # %if.then
                                        #   in Loop: Header=BB0_3 Depth=1
	lw	a2, 0(a4)
	lw	a5, 1(a4)
	mco.arg	 0, a2, a5
	lw	a2, 2(a4)
	lw	a5, 3(a4)
	mco.arg	 1, a2, a5
	lw	a2, 4(a4)
	lw	a5, 5(a4)
	mco.arg	 2, a2, a5
	lw	a2, 6(a4)
	lw	a5, 7(a4)
	mco.arg	 3, a2, a5
	lw	a2, 8(a4)
	lw	a5, 9(a4)
	mco.arg	 4, a2, a5
	lw	a2, 10(a4)
	lw	a5, 11(a4)
	mco.arg	 5, a2, a5
	lw	a2, 12(a4)
	lw	a5, 13(a4)
	mco.arg	 6, a2, a5
	lw	a2, 14(a4)
	lw	a5, 15(a4)
	mco.arg	 7, a2, a5
	mco.regm0	 0, m0ro0, m0rp0
	mco.regm0	 1, m0r1, m0r3
	mco.regm0	 2, m0r4, m0r0
	lw	a2, 20(t1)
	mco.corem0	 t0, a2, m0r5
	lw	a2, 4(a0)
	addi	a2, a2, -1
	bne	a3, a2, .LBB0_5
.LBB0_7:                                # %if.then10
                                        #   in Loop: Header=BB0_3 Depth=1
	lw	a2, 0(a4)
	lw	a5, 1(a4)
	mco.arg	 0, a2, a5
	lw	a2, 2(a4)
	lw	a5, 3(a4)
	mco.arg	 1, a2, a5
	lw	a2, 4(a4)
	lw	a5, 5(a4)
	mco.arg	 2, a2, a5
	lw	a2, 6(a4)
	lw	a5, 7(a4)
	mco.arg	 3, a2, a5
	lw	a2, 8(a4)
	lw	a5, 9(a4)
	mco.arg	 4, a2, a5
	lw	a2, 10(a4)
	lw	a5, 11(a4)
	mco.arg	 5, a2, a5
	lw	a2, 12(a4)
	lw	a5, 13(a4)
	mco.arg	 6, a2, a5
	lw	a2, 14(a4)
	lw	a5, 15(a4)
	mco.arg	 7, a2, a5
	mco.regm0	 0, m0ro0, m0rp0
	mco.regm0	 1, m0r2, m0r3
	mco.regm0	 2, m0r1, m0r0
	lw	a2, 20(t1)
	mco.corem0	 t0, a2, m0r5
	blez	a3, .LBB0_10
.LBB0_8:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_3 Depth=1
	lw	a2, 4(a0)
	addi	a2, a2, -1
	bgeu	a3, a2, .LBB0_10
# %bb.9:                                # %if.then18
                                        #   in Loop: Header=BB0_3 Depth=1
	lw	a2, 0(a4)
	lw	a5, 1(a4)
	mco.arg	 0, a2, a5
	lw	a2, 2(a4)
	lw	a5, 3(a4)
	mco.arg	 1, a2, a5
	lw	a2, 4(a4)
	lw	a5, 5(a4)
	mco.arg	 2, a2, a5
	lw	a2, 6(a4)
	lw	a5, 7(a4)
	mco.arg	 3, a2, a5
	lw	a2, 8(a4)
	lw	a5, 9(a4)
	mco.arg	 4, a2, a5
	lw	a2, 10(a4)
	lw	a5, 11(a4)
	mco.arg	 5, a2, a5
	lw	a2, 12(a4)
	lw	a5, 13(a4)
	mco.arg	 6, a2, a5
	lw	a2, 14(a4)
	lw	a5, 15(a4)
	mco.arg	 7, a2, a5
	mco.regm0	 0, m0ro0, m0rp0
	mco.regm0	 1, m0r2, m0r3
	mco.regm0	 2, m0r4, m0r0
	lw	a2, 20(t1)
	mco.corem0	 t0, a2, m0r5
.LBB0_10:                               # %if.end21
                                        #   in Loop: Header=BB0_3 Depth=1
	lw	a2, 32(a0)
	lw	a5, 20(t1)
	mul	a2, a2, a3
	slli	a2, a2, 2
	add	a2, a2, a7
	mco.storem0	 a2, a5, m0r5
	mco.movem0	 m0r2, m0r3
	mco.movem0	 m0r3, m0r4
	lw	a2, 4(a0)
	addi	a5, a2, -1
	bgeu	a3, a5, .LBB0_2
# %bb.11:                               # %if.then28
                                        #   in Loop: Header=BB0_3 Depth=1
	lw	a2, 28(a0)
	addi	a5, a3, 2
	lw	a1, 16(t1)
	mul	a2, a2, a5
	slli	a2, a2, 2
	add	a2, a2, a6
	mco.loadm0	 a2, a1, m0r4
	lw	a2, 4(a0)
	j	.LBB0_2
.LBB0_12:                               # %for.cond.cleanup
	li	a0, 0
	mco.releasem0	m0r1
	mco.releasem0	m0r2
	mco.releasem0	m0r3
	mco.releasem0	m0r4
	mco.releasem0	m0r5
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	conv3s1, .Lfunc_end0-conv3s1
                                        # -- End function
	.ident	"clang version 17.0.0 (http://202.117.56.250/cag-tool-chains/hpu_llvm.git 2401c5db80abffaffb3fd57ec89fdf12d7de2705)"
	.section	".note.GNU-stack","",@progbits
