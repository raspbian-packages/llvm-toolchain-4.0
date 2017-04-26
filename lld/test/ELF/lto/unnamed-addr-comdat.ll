; RUN: llvm-as %s -o %t.o
; RUN: ld.lld -m elf_x86_64 %t.o %t.o -o %t.so -save-temps -shared
; RUN: llvm-dis %t.so.lto.bc -o - | FileCheck %s

target triple = "x86_64-unknown-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

$foo = comdat any
@foo = linkonce_odr unnamed_addr constant i32 42, comdat

; CHECK: @foo = internal unnamed_addr constant i32 42, comdat
