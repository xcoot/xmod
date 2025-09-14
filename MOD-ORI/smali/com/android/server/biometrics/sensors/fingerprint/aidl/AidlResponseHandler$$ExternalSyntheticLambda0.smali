.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    .line 7
    .line 8
    iget p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 9
    .line 10
    iget v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 11
    .line 12
    iget-object v1, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 13
    .line 14
    iget-object v2, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 17
    .line 18
    check-cast v3, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 21
    .line 22
    iget v4, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->mBiometricStrength:I

    .line 23
    .line 24
    iget-wide v5, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    invoke-interface {v1, v0, v7}, Lcom/android/server/biometrics/sensors/LockoutTracker;->resetFailedAttemptsForUser(IZ)V

    .line 28
    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    invoke-interface {v1, v0, v8}, Lcom/android/server/biometrics/sensors/LockoutTracker;->setLockoutModeForUser(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->resetLockoutFor(IIJ)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 41
    .line 42
    invoke-interface {p0, p1, v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_0
    check-cast p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    check-cast p1, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_2
    check-cast p1, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_3
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    :try_start_0
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 74
    .line 75
    iget v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 76
    .line 77
    iget v1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 78
    .line 79
    iget-boolean v2, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mIsStrongBiometric:Z

    .line 80
    .line 81
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 82
    .line 83
    if-eqz v3, :cond_0

    .line 84
    .line 85
    invoke-interface {v3, v0, v1, v2}, Landroid/hardware/face/IFaceServiceReceiver;->onFaceDetected(IIZ)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 90
    .line 91
    if-eqz p0, :cond_1

    .line 92
    .line 93
    invoke-interface {p0, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onFingerprintDetected(IIZ)V

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    invoke-interface {p0, p1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception p0

    .line 104
    const-string v0, "FingerprintDetectClient"

    .line 105
    .line 106
    const-string v1, "Remote exception when sending onDetected"

    .line 107
    .line 108
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    invoke-interface {p0, p1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 115
    .line 116
    .line 117
    :goto_1
    return-void

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
