; ModuleID = 'src/conv3s1_verify.c'
source_filename = "src/conv3s1_verify.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32"

%struct.convpara_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32] }

; Function Attrs: nounwind
define dso_local i32 @conv3s1(ptr noundef %convpara, i32 noundef %wt_addr, i32 noundef %bc_addr, i32 noundef %ifm_addr, i32 noundef %efm_addr, i32 noundef %ofm_addr) local_unnamed_addr #0 {
entry:
  %wt_addr.addr = alloca i32, align 4
  %bc_addr.addr = alloca i32, align 4
  %ifm_addr.addr = alloca i32, align 4
  %ofm_addr.addr = alloca i32, align 4
  store i32 %wt_addr, ptr %wt_addr.addr, align 4, !tbaa !4
  store i32 %bc_addr, ptr %bc_addr.addr, align 4, !tbaa !4
  store i32 %ifm_addr, ptr %ifm_addr.addr, align 4, !tbaa !4
  store i32 %ofm_addr, ptr %ofm_addr.addr, align 4, !tbaa !4
  %0 = tail call <2 x i32> @llvm.riscv.hpu700.alloc.mr.v2i32(i32 0)
  %ifm_line_size = getelementptr inbounds %struct.convpara_t, ptr %convpara, i32 0, i32 7
  %1 = load i32, ptr %ifm_line_size, align 4, !tbaa !8
  %2 = tail call <2 x i32> @llvm.riscv.hpu700.alloc.mr.v2i32(i32 %1)
  %3 = load i32, ptr %ifm_line_size, align 4, !tbaa !8
  %4 = tail call <2 x i32> @llvm.riscv.hpu700.alloc.mr.v2i32(i32 %3)
  %5 = load i32, ptr %ifm_line_size, align 4, !tbaa !8
  %6 = tail call <2 x i32> @llvm.riscv.hpu700.alloc.mr.v2i32(i32 %5)
  %ofm_line_size = getelementptr inbounds %struct.convpara_t, ptr %convpara, i32 0, i32 8
  %7 = load i32, ptr %ofm_line_size, align 4, !tbaa !10
  %8 = tail call <2 x i32> @llvm.riscv.hpu700.alloc.mr.v2i32(i32 %7)
  %wt_size = getelementptr inbounds %struct.convpara_t, ptr %convpara, i32 0, i32 5
  %9 = load i32, ptr %wt_size, align 4, !tbaa !11
  %10 = tail call <2 x i32> @llvm.riscv.hpu700.alloc.mro.v2i32(i32 %9)
  %bc_size = getelementptr inbounds %struct.convpara_t, ptr %convpara, i32 0, i32 6
  %11 = load i32, ptr %bc_size, align 4, !tbaa !12
  %12 = tail call <2 x i32> @llvm.riscv.hpu700.alloc.mrp.v2i32(i32 %11)
  call void @llvm.riscv.hpu700.mcoloado.v2i32(<2 x i32> %10, ptr nonnull %wt_addr.addr)
  call void @llvm.riscv.hpu700.mcoloadp.v2i32(<2 x i32> %12, ptr nonnull %bc_addr.addr)
  call void @llvm.riscv.hpu700.mcoload.v2i32(<2 x i32> %4, ptr nonnull %ifm_addr.addr)
  %13 = load i32, ptr %ifm_line_size, align 4, !tbaa !8
  %add.ptr6 = getelementptr inbounds i32, ptr %ifm_addr.addr, i32 %13
  call void @llvm.riscv.hpu700.mcoload.v2i32(<2 x i32> %6, ptr nonnull %add.ptr6)
  %ofm_h = getelementptr inbounds %struct.convpara_t, ptr %convpara, i32 0, i32 1
  %14 = load i32, ptr %ofm_h, align 4, !tbaa !13
  %cmp82.not = icmp eq i32 %14, 0
  br i1 %cmp82.not, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tsr_arg = getelementptr inbounds %struct.convpara_t, ptr %convpara, i32 0, i32 13
  %stride_h = getelementptr inbounds %struct.convpara_t, ptr %convpara, i32 0, i32 2
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  ret i32 0

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %15 = phi i32 [ %14, %for.body.lr.ph ], [ %21, %for.inc ]
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %add33, %for.inc ]
  %cmp7 = icmp eq i32 %i.083, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @llvm.riscv.hpu700.mcoconv.test.v2i32(<2 x i32> %8, ptr nonnull %tsr_arg, <2 x i32> %10, <2 x i32> %12, <2 x i32> %0, <2 x i32> %4, <2 x i32> %6)
  %.pre = load i32, ptr %ofm_h, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %16 = phi i32 [ %.pre, %if.then ], [ %15, %for.body ]
  %sub = add i32 %16, -1
  %cmp9 = icmp eq i32 %i.083, %sub
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  call void @llvm.riscv.hpu700.mcoconv.test.v2i32(<2 x i32> %8, ptr nonnull %tsr_arg, <2 x i32> %10, <2 x i32> %12, <2 x i32> %2, <2 x i32> %4, <2 x i32> %0)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end
  %cmp14 = icmp sgt i32 %i.083, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end13
  %17 = load i32, ptr %ofm_h, align 4, !tbaa !13
  %sub16 = add i32 %17, -1
  %cmp17 = icmp ult i32 %i.083, %sub16
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %land.lhs.true
  call void @llvm.riscv.hpu700.mcoconv.test.v2i32(<2 x i32> %8, ptr nonnull %tsr_arg, <2 x i32> %10, <2 x i32> %12, <2 x i32> %2, <2 x i32> %4, <2 x i32> %6)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true, %if.end13
  %18 = load i32, ptr %ofm_line_size, align 4, !tbaa !10
  %mul23 = mul i32 %18, %i.083
  %add.ptr24 = getelementptr inbounds i32, ptr %ofm_addr.addr, i32 %mul23
  call void @llvm.riscv.hpu700.mcostore.v2i32(ptr nonnull %add.ptr24, <2 x i32> %8)
  call void @llvm.riscv.hpu700.mcomove.v2i32(<2 x i32> %2, <2 x i32> %4)
  call void @llvm.riscv.hpu700.mcomove.v2i32(<2 x i32> %4, <2 x i32> %6)
  %19 = load i32, ptr %ofm_h, align 4, !tbaa !13
  %sub26 = add i32 %19, -1
  %cmp27 = icmp ult i32 %i.083, %sub26
  br i1 %cmp27, label %if.then28, label %for.inc

if.then28:                                        ; preds = %if.end21
  %add = add nsw i32 %i.083, 2
  %20 = load i32, ptr %ifm_line_size, align 4, !tbaa !8
  %mul30 = mul i32 %20, %add
  %add.ptr31 = getelementptr inbounds i32, ptr %ifm_addr.addr, i32 %mul30
  call void @llvm.riscv.hpu700.mcoload.v2i32(<2 x i32> %6, ptr nonnull %add.ptr31)
  %.pre84 = load i32, ptr %ofm_h, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.then28
  %21 = phi i32 [ %19, %if.end21 ], [ %.pre84, %if.then28 ]
  %22 = load i32, ptr %stride_h, align 4, !tbaa !14
  %add33 = add i32 %22, %i.083
  %cmp = icmp ult i32 %add33, %21
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !15
}

; Function Attrs: nounwind
declare <2 x i32> @llvm.riscv.hpu700.alloc.mr.v2i32(i32) #1

; Function Attrs: nounwind
declare <2 x i32> @llvm.riscv.hpu700.alloc.mro.v2i32(i32) #1

; Function Attrs: nounwind
declare <2 x i32> @llvm.riscv.hpu700.alloc.mrp.v2i32(i32) #1

; Function Attrs: nounwind
declare void @llvm.riscv.hpu700.mcoloado.v2i32(<2 x i32>, ptr) #1

; Function Attrs: nounwind
declare void @llvm.riscv.hpu700.mcoloadp.v2i32(<2 x i32>, ptr) #1

; Function Attrs: nounwind
declare void @llvm.riscv.hpu700.mcoload.v2i32(<2 x i32>, ptr) #1

; Function Attrs: nounwind
declare void @llvm.riscv.hpu700.mcoconv.test.v2i32(<2 x i32>, ptr, <2 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, <2 x i32>) #1

; Function Attrs: nounwind
declare void @llvm.riscv.hpu700.mcostore.v2i32(ptr, <2 x i32>) #1

; Function Attrs: nounwind
declare void @llvm.riscv.hpu700.mcomove.v2i32(<2 x i32>, <2 x i32>) #1

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,-d,-e,-experimental-smaia,-experimental-ssaia,-experimental-zacas,-experimental-zfa,-experimental-zfbfmin,-experimental-zicond,-experimental-zihintntl,-experimental-ztso,-experimental-zvbb,-experimental-zvbc,-experimental-zvfbfmin,-experimental-zvfbfwma,-experimental-zvkg,-experimental-zvkn,-experimental-zvknc,-experimental-zvkned,-experimental-zvkng,-experimental-zvknha,-experimental-zvknhb,-experimental-zvks,-experimental-zvksc,-experimental-zvksed,-experimental-zvksg,-experimental-zvksh,-experimental-zvkt,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xcvbitmanip,-xcvmac,-xsfcie,-xsfvcp,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicntr,-zicsr,-zifencei,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfh,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 8, !"SmallDataLimit", i32 8}
!3 = !{!"clang version 17.0.0 (http://202.117.56.250/cag-tool-chains/hpu_llvm.git 2401c5db80abffaffb3fd57ec89fdf12d7de2705)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 28}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !6, i64 52}
!10 = !{!9, !5, i64 32}
!11 = !{!9, !5, i64 20}
!12 = !{!9, !5, i64 24}
!13 = !{!9, !5, i64 4}
!14 = !{!9, !5, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
