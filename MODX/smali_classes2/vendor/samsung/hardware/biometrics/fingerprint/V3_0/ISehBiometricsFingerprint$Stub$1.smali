.class public final Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;


# instance fields
.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Landroid/os/HwParcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onValues(Ljava/util/ArrayList;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
