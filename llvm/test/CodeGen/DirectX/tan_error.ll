; RUN: not opt -S -dxil-op-lower -mtriple=dxil-pc-shadermodel6.3-library %s 2>&1 | FileCheck %s

; DXIL operation tan does not support double overload type
; CHECK: in function tan_double
; CHECK-SAME: Cannot create Tan operation: Invalid overload type

define noundef double @tan_double(double noundef %a) #0 {
entry:
  %1 = call double @llvm.tan.f64(double %a)
  ret double %1
}
