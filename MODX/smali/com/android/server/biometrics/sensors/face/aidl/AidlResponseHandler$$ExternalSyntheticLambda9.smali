.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;
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
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    .line 8
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const/4 p0, 0x1

    .line 18
    :try_start_0
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 20
    iget v1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    .line 22
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p0, v1}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureSet(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "FaceSetFeatureClient"

    .line 33
    const-string v2, "Remote exception"

    .line 35
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 40
    invoke-interface {v0, p1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 43
    return-void

    .line 44
    :pswitch_1
    check-cast p1, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 46
    const/4 p0, 0x0

    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 51
    return-void

    .line 52
    :pswitch_2
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;

    .line 54
    iget p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 56
    iget v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 58
    iget-object v1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 60
    iget-object v2, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 62
    iget-object v3, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 64
    check-cast v3, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 66
    iget-object v3, v3, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 68
    iget v4, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mBiometricStrength:I

    .line 70
    iget-wide v5, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 72
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->resetLockoutFor(IIJ)V

    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-interface {v1, v0, v3}, Lcom/android/server/biometrics/sensors/LockoutTracker;->setLockoutModeForUser(II)V

    .line 79
    invoke-virtual {v2, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    .line 82
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 84
    const/4 v0, 0x1

    .line 85
    invoke-interface {p0, p1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 88
    return-void

    .line 89
    :pswitch_3
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    :try_start_1
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 96
    iget v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 98
    iget v1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 100
    iget-boolean v2, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mIsStrongBiometric:Z

    .line 102
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 104
    if-eqz v3, :cond_1

    .line 106
    invoke-interface {v3, v0, v1, v2}, Landroid/hardware/face/IFaceServiceReceiver;->onFaceDetected(IIZ)V

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 112
    if-eqz p0, :cond_2

    .line 114
    invoke-interface {p0, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onFingerprintDetected(IIZ)V

    .line 117
    :cond_2
    :goto_1
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 119
    const/4 v0, 0x1

    .line 120
    invoke-interface {p0, p1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    goto :goto_2

    .line 124
    :catch_1
    move-exception p0

    .line 125
    const-string v0, "FaceDetectClient"

    .line 127
    const-string v1, "Remote exception when sending onDetected"

    .line 129
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 134
    const/4 v0, 0x0

    .line 135
    invoke-interface {p0, p1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 138
    :goto_2
    return-void

    .line 139
    :pswitch_4
    check-cast p1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 141
    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutPermanent()V

    .line 144
    return-void

    .line 145
    :pswitch_5
    check-cast p1, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 147
    const/4 p0, 0x0

    .line 148
    const/4 v0, 0x0

    .line 149
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 152
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
