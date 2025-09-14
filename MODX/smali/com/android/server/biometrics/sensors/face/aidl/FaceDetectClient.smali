.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/DetectionConsumer;


# instance fields
.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public final mIsStrongBiometric:Z

.field public final mOptions:Landroid/hardware/face/FaceAuthenticateOptions;

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;Lcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;ZLandroid/hardware/SensorPrivacyManager;)V
    .locals 14

    .line 1
    move-object v13, p0

    .line 2
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    .line 5
    move-result v5

    .line 6
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/face/FaceAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 9
    move-result-object v6

    .line 10
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/face/FaceAuthenticateOptions;->getSensorId()I

    .line 13
    move-result v8

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v12, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    move-object/from16 v2, p2

    .line 21
    move-object/from16 v3, p3

    .line 23
    move-object/from16 v4, p6

    .line 25
    move-object/from16 v10, p8

    .line 27
    move-object/from16 v11, p9

    .line 29
    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 32
    move-wide/from16 v0, p4

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    .line 37
    move-object/from16 v0, p10

    .line 39
    iput-object v0, v13, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 41
    move/from16 v0, p11

    .line 43
    iput-boolean v0, v13, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mIsStrongBiometric:Z

    .line 45
    move-object/from16 v0, p12

    .line 47
    iput-object v0, v13, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 49
    move-object/from16 v0, p7

    .line 51
    iput-object v0, v13, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mOptions:Landroid/hardware/face/FaceAuthenticateOptions;

    .line 53
    return-void
.end method


# virtual methods
.method public final doDetectInteraction()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 9
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 11
    const/4 v2, 0x2

    .line 12
    if-lt v1, v2, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 20
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda0;

    .line 22
    invoke-direct {v3, p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    .line 25
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda1;

    .line 27
    invoke-direct {v4, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mOptions:Landroid/hardware/face/FaceAuthenticateOptions;

    .line 32
    check-cast v2, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 34
    invoke-virtual {v2, v1, v3, v4, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISession;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 48
    :goto_0
    return-void
.end method

.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/16 p0, 0xd

    .line 3
    return p0
.end method

.method public final onError(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 3
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    .line 5
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 7
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {v3, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x4

    .line 14
    invoke-direct {v1, v2, v4, v3, p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 17
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    .line 24
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    .line 27
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 29
    new-instance p1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 31
    invoke-direct {p1, v2, v4}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 34
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 41
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->startHalOperation()V

    .line 7
    return-void
.end method

.method public final startHalOperation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 3
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;

    .line 5
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 7
    const/4 v3, 0x4

    .line 8
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 11
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStartedInfo;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V

    .line 18
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-virtual {v0, v3, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, v3, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->onError(II)V

    .line 34
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 36
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 39
    return-void

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->doDetectInteraction()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v2, "FaceDetectClient"

    .line 47
    const-string v3, "Remote exception when requesting face detect"

    .line 49
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 54
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 57
    :goto_0
    return-void
.end method

.method public final stopHalOperation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 3
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 5
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 7
    const/4 v3, 0x4

    .line 8
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 11
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 21
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string v1, "FaceDetectClient"

    .line 32
    const-string v2, "Remote exception"

    .line 34
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 43
    :cond_0
    :goto_0
    return-void
.end method
