.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 6
    return-void
.end method


# virtual methods
.method public final deliverAcquiredEvent(II)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 3
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 9
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    .line 11
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onAcquired(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method public final deliverAuthenticationResult(I)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 3
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    .line 5
    if-eqz v0, :cond_2

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    .line 9
    check-cast v0, Ljava/util/HashSet;

    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const/16 p1, 0x8

    .line 19
    const/16 v0, 0x3ec

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->deliverErrorEvent(II)V

    .line 24
    goto :goto_1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    .line 31
    check-cast p1, Ljava/util/HashSet;

    .line 33
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/Integer;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result p1

    .line 47
    :cond_1
    move v3, p1

    .line 48
    new-instance v5, Ljava/util/ArrayList;

    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 54
    move-result-object p1

    .line 55
    const/16 v0, 0x45

    .line 57
    invoke-static {v0, p1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    .line 60
    move-result-object p1

    .line 61
    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 66
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    .line 68
    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    .line 70
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onAuthenticated(JIILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_1

    .line 74
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    :cond_2
    :goto_1
    return-void
.end method

.method public final deliverEnrollResult(I)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 3
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 9
    iget-wide v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    .line 11
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    .line 13
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    .line 15
    move v4, p1

    .line 16
    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onEnrollResult(IIIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method public final deliverErrorEvent(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->deliverErrorEvent(II)V

    .line 6
    return-void
.end method

.method public final deliverTspEvent(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 8
    const-string/jumbo v1, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    const/4 v1, 0x2

    .line 15
    const-string/jumbo v2, "info"

    .line 18
    if-ne p1, v1, :cond_0

    .line 20
    const/16 p1, 0xf

    .line 22
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    if-ne p1, v1, :cond_1

    .line 29
    const/16 p1, 0x10

    .line 31
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :goto_1
    return-void
.end method
