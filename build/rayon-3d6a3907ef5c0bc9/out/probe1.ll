; ModuleID = 'probe1.f216f01023486c76-cgu.0'
source_filename = "probe1.f216f01023486c76-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_4aead6e2018a46d0df208d5729447de7 = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"assertion failed: step != 0" }>, align 1
@alloc_58b7f4ffc039087fd91729b822ce503e = private unnamed_addr constant <{ [97 x i8] }> <{ [97 x i8] c"/build/rustc-1.80-R0vcdR/rustc-1.80-1.80.1+dfsg0ubuntu1/library/core/src/iter/adapters/step_by.rs" }>, align 1
@alloc_a970765246e5c6808c252983a0743123 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_58b7f4ffc039087fd91729b822ce503e, [16 x i8] c"a\00\00\00\00\00\00\00%\00\00\00\09\00\00\00" }>, align 8

; core::iter::traits::iterator::Iterator::rev
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core4iter6traits8iterator8Iterator3rev17he030325da116e3ccE(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self) unnamed_addr #0 {
start:
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %self, i64 24, i1 false)
  ret void
}

; core::iter::traits::iterator::Iterator::step_by
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7step_by17hb7a8da58c893b930E(ptr sret([24 x i8]) align 8 %_0, i32 %self.0, i32 %self.1, i64 %step) unnamed_addr #0 {
start:
; call core::iter::adapters::step_by::StepBy<I>::new
  call void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17h54749579344fbdbdE"(ptr sret([24 x i8]) align 8 %_0, i32 %self.0, i32 %self.1, i64 %step)
  ret void
}

; core::iter::adapters::step_by::StepBy<I>::new
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17h54749579344fbdbdE"(ptr sret([24 x i8]) align 8 %_0, i32 %iter.0, i32 %iter.1, i64 %step) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_7 = alloca [1 x i8], align 1
  store i8 1, ptr %_7, align 1
  %1 = icmp eq i64 %step, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
; invoke core::panicking::panic
  invoke void @_ZN4core9panicking5panic17h6563675b5449e4baE(ptr align 1 @alloc_4aead6e2018a46d0df208d5729447de7, i64 27, ptr align 8 @alloc_a970765246e5c6808c252983a0743123) #4
          to label %unreachable unwind label %cleanup

bb1:                                              ; preds = %start
  store i8 0, ptr %_7, align 1
; invoke <T as core::iter::adapters::step_by::SpecRangeSetup<T>>::setup
  %2 = invoke { i32, i32 } @"_ZN76_$LT$T$u20$as$u20$core..iter..adapters..step_by..SpecRangeSetup$LT$T$GT$$GT$5setup17h790da5e8902ec234E"(i32 %iter.0, i32 %iter.1, i64 %step)
          to label %bb3 unwind label %cleanup

bb6:                                              ; preds = %cleanup
  %3 = load i8, ptr %_7, align 1
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb5, label %bb4

cleanup:                                          ; preds = %bb1, %bb2
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb6

unreachable:                                      ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb1
  %iter.01 = extractvalue { i32, i32 } %2, 0
  %iter.12 = extractvalue { i32, i32 } %2, 1
  %_6 = sub i64 %step, 1
  store i32 %iter.01, ptr %_0, align 8
  %9 = getelementptr inbounds i8, ptr %_0, i64 4
  store i32 %iter.12, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_6, ptr %10, align 8
  %11 = getelementptr inbounds i8, ptr %_0, i64 16
  store i8 1, ptr %11, align 8
  ret void

bb4:                                              ; preds = %bb5, %bb6
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds i8, ptr %0, i64 8
  %14 = load i32, ptr %13, align 8
  %15 = insertvalue { ptr, i32 } poison, ptr %12, 0
  %16 = insertvalue { ptr, i32 } %15, i32 %14, 1
  resume { ptr, i32 } %16

bb5:                                              ; preds = %bb6
  br label %bb4
}

; <T as core::iter::adapters::step_by::SpecRangeSetup<T>>::setup
; Function Attrs: inlinehint nonlazybind uwtable
define { i32, i32 } @"_ZN76_$LT$T$u20$as$u20$core..iter..adapters..step_by..SpecRangeSetup$LT$T$GT$$GT$5setup17h790da5e8902ec234E"(i32 %inner.0, i32 %inner.1, i64 %_step) unnamed_addr #0 {
start:
  %0 = insertvalue { i32, i32 } poison, i32 %inner.0, 0
  %1 = insertvalue { i32, i32 } %0, i32 %inner.1, 1
  ret { i32, i32 } %1
}

; probe1::probe
; Function Attrs: nonlazybind uwtable
define void @_ZN6probe15probe17h9df91603d8ef1753E() unnamed_addr #1 {
start:
  %_2 = alloca [24 x i8], align 8
  %_1 = alloca [24 x i8], align 8
; call core::iter::traits::iterator::Iterator::step_by
  call void @_ZN4core4iter6traits8iterator8Iterator7step_by17hb7a8da58c893b930E(ptr sret([24 x i8]) align 8 %_2, i32 0, i32 10, i64 2)
; call core::iter::traits::iterator::Iterator::rev
  call void @_ZN4core4iter6traits8iterator8Iterator3rev17he030325da116e3ccE(ptr sret([24 x i8]) align 8 %_1, ptr align 8 %_2)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17h6563675b5449e4baE(ptr align 1, i64, ptr align 8) unnamed_addr #3

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.80.1 (3f5fd8dd4 2024-08-06) (built from a source tarball)"}
