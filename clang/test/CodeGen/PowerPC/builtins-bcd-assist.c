// NOTE: Assertions have been autogenerated by utils/update_cc_test_checks.py UTC_ARGS: --version 5
// REQUIRES: powerpc-registered-target
// RUN: %clang_cc1 -triple powerpc64le-unknown-linux -O2 -target-cpu pwr7 \
// RUN:   -emit-llvm %s -o - | FileCheck %s
// RUN: %clang_cc1 -triple powerpc64-unknown-aix -O2 -target-cpu pwr7 \
// RUN:   -emit-llvm %s -o - | FileCheck %s
// RUN: %clang_cc1 -triple powerpc-unknown-aix -O2 -target-cpu pwr7 \
// RUN:   -emit-llvm %s -o - | FileCheck %s

// CHECK-LABEL: define{{.*}} i64 @cdtbcd_test(i64
// CHECK:         [[CONV:%.*]] = trunc i64 {{.*}} to i32
// CHECK-NEXT:    [[TMP0:%.*]] = tail call i32 @llvm.ppc.cdtbcd(i32 [[CONV]])
// CHECK-NEXT:    [[CONV1:%.*]] = zext i32 [[TMP0]] to i64
// CHECK-NEXT:    ret i64 [[CONV1]]
long long cdtbcd_test(long long ll) {
    return __builtin_cdtbcd (ll);
}

// CHECK-LABEL: define{{.*}} i32 @cdtbcd_test_ui(i32
// CHECK:         [[TMP0:%.*]] = tail call i32 @llvm.ppc.cdtbcd(i32
// CHECK-NEXT:    ret i32 [[TMP0]]
unsigned int cdtbcd_test_ui(unsigned int ui) {
    return __builtin_cdtbcd (ui);
}

// CHECK-LABEL: define{{.*}} i64 @cbcdtd_test(i64
// CHECK:         [[CONV:%.*]] = trunc i64 {{.*}} to i32
// CHECK-NEXT:    [[TMP0:%.*]] = tail call i32 @llvm.ppc.cbcdtd(i32 [[CONV]])
// CHECK-NEXT:    [[CONV1:%.*]] = zext i32 [[TMP0]] to i64
// CHECK-NEXT:    ret i64 [[CONV1]]
long long cbcdtd_test(long long ll) {
    return __builtin_cbcdtd (ll);
}

// CHECK-LABEL: define{{.*}} i32 @cbcdtd_test_ui(i32
// CHECK:         [[TMP0:%.*]] = tail call i32 @llvm.ppc.cbcdtd(i32
// CHECK-NEXT:    ret i32 [[TMP0]]
unsigned int cbcdtd_test_ui(unsigned int ui) {
    return __builtin_cbcdtd (ui);
}

// CHECK-LABEL: define{{.*}}  i64 @addg6s_test(i64
// CHECK:         [[CONV:%.*]] = trunc i64 {{.*}} to i32
// CHECK-NEXT:    [[CONV1:%.*]] = trunc i64 {{.*}} to i32
// CHECK-NEXT:    [[TMP0:%.*]] = tail call i32 @llvm.ppc.addg6s(i32 [[CONV]], i32 [[CONV1]])
// CHECK-NEXT:    [[CONV2:%.*]] = zext i32 [[TMP0]] to i64
// CHECK-NEXT:    ret i64 [[CONV2]]
//
long long addg6s_test(long long ll, long long ll2) {
    return __builtin_addg6s (ll, ll2);
}

// CHECK-LABEL: define{{.*}} i32 @addg6s_test_ui(i32
// CHECK:         [[TMP0:%.*]] = tail call i32 @llvm.ppc.addg6s(i32 {{.*}}, i32
// CHECK-NEXT:    ret i32 [[TMP0]]
unsigned int addg6s_test_ui(unsigned int ui, unsigned int ui2) {
    return __builtin_addg6s (ui, ui2);
}
