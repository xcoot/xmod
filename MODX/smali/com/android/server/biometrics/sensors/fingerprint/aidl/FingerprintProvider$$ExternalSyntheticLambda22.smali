.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 14
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 16
    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsForHidl:Z

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 22
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;

    .line 24
    const/4 v3, 0x4

    .line 25
    invoke-direct {v2, v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mProviderEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;

    .line 33
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 35
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->updateCacheDataOfHAL(I)V

    .line 38
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    .line 41
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 43
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;->f$1:Ljava/lang/Object;

    .line 45
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getIBiometricsFingerprint()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 53
    move-result-object p0

    .line 54
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemonForHidl:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
