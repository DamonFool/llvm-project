; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=aarch64-linux-gnu -mattr=+sme2 -force-streaming -verify-machineinstrs < %s | FileCheck %s

; FRINTA

define { <vscale x 4 x float>, <vscale x 4 x float> } @multi_vec_frinta_x2_f32(<vscale x 4 x float> %unused, <vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2) {
; CHECK-LABEL: multi_vec_frinta_x2_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov z3.d, z2.d
; CHECK-NEXT:    mov z2.d, z1.d
; CHECK-NEXT:    frinta { z0.s, z1.s }, { z2.s, z3.s }
; CHECK-NEXT:    ret
  %res = call { <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frinta.x2.nxv4f32(<vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2)
  ret { <vscale x 4 x float>, <vscale x 4 x float> } %res
}

define { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } @multi_vec_frinta_x4_f32(<vscale x 4 x float> %unused, <vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2, <vscale x 4 x float> %zn3, <vscale x 4 x float> %zn4) {
; CHECK-LABEL: multi_vec_frinta_x4_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov z7.d, z4.d
; CHECK-NEXT:    mov z6.d, z3.d
; CHECK-NEXT:    mov z5.d, z2.d
; CHECK-NEXT:    mov z4.d, z1.d
; CHECK-NEXT:    frinta { z0.s - z3.s }, { z4.s - z7.s }
; CHECK-NEXT:    ret
  %res = call { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frinta.x4.nxv4f32(<vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2, <vscale x 4 x float> %zn3, <vscale x 4 x float> %zn4)
  ret { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } %res
}

; FRINTM

define { <vscale x 4 x float>, <vscale x 4 x float> } @multi_vec_frintm_x2_f32(<vscale x 4 x float> %unused, <vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2) {
; CHECK-LABEL: multi_vec_frintm_x2_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov z3.d, z2.d
; CHECK-NEXT:    mov z2.d, z1.d
; CHECK-NEXT:    frintm { z0.s, z1.s }, { z2.s, z3.s }
; CHECK-NEXT:    ret
  %res = call { <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frintm.x2.nxv4f32(<vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2)
  ret { <vscale x 4 x float>, <vscale x 4 x float> } %res
}

define { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } @multi_vec_frintm_x4_f32(<vscale x 4 x float> %unused, <vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2, <vscale x 4 x float> %zn3, <vscale x 4 x float> %zn4) {
; CHECK-LABEL: multi_vec_frintm_x4_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov z7.d, z4.d
; CHECK-NEXT:    mov z6.d, z3.d
; CHECK-NEXT:    mov z5.d, z2.d
; CHECK-NEXT:    mov z4.d, z1.d
; CHECK-NEXT:    frintm { z0.s - z3.s }, { z4.s - z7.s }
; CHECK-NEXT:    ret
  %res = call { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frintm.x4.nxv4f32(<vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2, <vscale x 4 x float> %zn3, <vscale x 4 x float> %zn4)
  ret { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } %res
}

; FRINTN

define { <vscale x 4 x float>, <vscale x 4 x float> } @multi_vec_frintn_x2_f32(<vscale x 4 x float> %unused, <vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2) {
; CHECK-LABEL: multi_vec_frintn_x2_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov z3.d, z2.d
; CHECK-NEXT:    mov z2.d, z1.d
; CHECK-NEXT:    frintn { z0.s, z1.s }, { z2.s, z3.s }
; CHECK-NEXT:    ret
  %res = call { <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frintn.x2.nxv4f32(<vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2)
  ret { <vscale x 4 x float>, <vscale x 4 x float> } %res
}

define { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } @multi_vec_frintn_x4_f32(<vscale x 4 x float> %unused, <vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2, <vscale x 4 x float> %zn3, <vscale x 4 x float> %zn4) {
; CHECK-LABEL: multi_vec_frintn_x4_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov z7.d, z4.d
; CHECK-NEXT:    mov z6.d, z3.d
; CHECK-NEXT:    mov z5.d, z2.d
; CHECK-NEXT:    mov z4.d, z1.d
; CHECK-NEXT:    frintn { z0.s - z3.s }, { z4.s - z7.s }
; CHECK-NEXT:    ret
  %res = call { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frintn.x4.nxv4f32(<vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2, <vscale x 4 x float> %zn3, <vscale x 4 x float> %zn4)
  ret { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } %res
}

; FRINTP

define { <vscale x 4 x float>, <vscale x 4 x float> } @multi_vec_frintp_x2_f32(<vscale x 4 x float> %unused, <vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2) {
; CHECK-LABEL: multi_vec_frintp_x2_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov z3.d, z2.d
; CHECK-NEXT:    mov z2.d, z1.d
; CHECK-NEXT:    frintp { z0.s, z1.s }, { z2.s, z3.s }
; CHECK-NEXT:    ret
  %res = call { <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frintp.x2.nxv4f32(<vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2)
  ret { <vscale x 4 x float>, <vscale x 4 x float> } %res
}

define { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } @multi_vec_frintp_x4_f32(<vscale x 4 x float> %unused, <vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2, <vscale x 4 x float> %zn3, <vscale x 4 x float> %zn4) {
; CHECK-LABEL: multi_vec_frintp_x4_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mov z7.d, z4.d
; CHECK-NEXT:    mov z6.d, z3.d
; CHECK-NEXT:    mov z5.d, z2.d
; CHECK-NEXT:    mov z4.d, z1.d
; CHECK-NEXT:    frintp { z0.s - z3.s }, { z4.s - z7.s }
; CHECK-NEXT:    ret
  %res = call { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frintp.x4.nxv4f32(<vscale x 4 x float> %zn1, <vscale x 4 x float> %zn2, <vscale x 4 x float> %zn3, <vscale x 4 x float> %zn4)
  ret { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } %res
}

declare { <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frinta.x2.nxv4f32(<vscale x 4 x float>, <vscale x 4 x float>)
declare { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frinta.x4.nxv4f32(<vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>)

declare { <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frintm.x2.nxv4f32(<vscale x 4 x float>, <vscale x 4 x float>)
declare { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frintm.x4.nxv4f32(<vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>)

declare { <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frintn.x2.nxv4f32(<vscale x 4 x float>, <vscale x 4 x float>)
declare { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frintn.x4.nxv4f32(<vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>)

declare { <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frintp.x2.nxv4f32(<vscale x 4 x float>, <vscale x 4 x float>)
declare { <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float> } @llvm.aarch64.sve.frintp.x4.nxv4f32(<vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>, <vscale x 4 x float>)
