; REQUIRES: object-emission

; RUN: llvm-link %S/Inputs/type-unique-simple2-a.ll %S/Inputs/type-unique-simple2-b.ll -S -o %t
; RUN: cat %t | FileCheck %S/Inputs/type-unique-simple2-a.ll -check-prefix=LINK
; RUN: llc -filetype=obj -O0 < %t > %t2
; RUN: llvm-dwarfdump -debug-dump=info %t2 | FileCheck %S/Inputs/type-unique-simple2-a.ll
