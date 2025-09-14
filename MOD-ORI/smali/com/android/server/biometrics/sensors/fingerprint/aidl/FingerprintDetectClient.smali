.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/DetectionConsumer;


# instance fields
.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public final mIsStrongBiometric:Z

.field public final mOptions:Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

.field public final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;Lcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;Z)V
    .locals 14

    .line 1
    move-object v13, p0

    .line 2
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getUserId()I

    .line 3
    .line 4
    .line 5
    move-result v5

    .line 6
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v6

    .line 10
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    const/4 v12, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v9, 0x1

    .line 17
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    move-object/from16 v2, p2

    .line 20
    .line 21
    move-object/from16 v3, p3

    .line 22
    .line 23
    move-object/from16 v4, p6

    .line 24
    .line 25
    move-object/from16 v10, p8

    .line 26
    .line 27
    move-object/from16 v11, p9

    .line 28
    .line 29
    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 30
    .line 31
    .line 32
    move-wide/from16 v0, p4

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    .line 35
    .line 36
    .line 37
    move-object/from16 v0, p10

    .line 38
    .line 39
    iput-object v0, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 40
    .line 41
    move/from16 v0, p11

    .line 42
    .line 43
    iput-boolean v0, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mIsStrongBiometric:Z

    .line 44
    .line 45
    new-instance v0, Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 51
    .line 52
    move-object/from16 v0, p7

    .line 53
    .line 54
    iput-object v0, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mOptions:Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final doDetectInteraction$1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 20
    .line 21
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v3, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    invoke-direct {v4, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mOptions:Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 32
    .line 33
    check-cast v2, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 34
    .line 35
    invoke-virtual {v2, v1, v3, v4, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 40
    .line 41
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/ISession;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/16 p0, 0xd

    .line 2
    .line 3
    return p0
.end method

.method public final interruptsPrecedingClients()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->startHalOperation()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final startHalOperation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 10
    .line 11
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;

    .line 12
    .line 13
    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 14
    .line 15
    invoke-direct {v1, v3, v2}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStartedInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->doDetectInteraction$1()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string v1, "FingerprintDetectClient"

    .line 31
    .line 32
    const-string v3, "Remote exception when requesting finger detect"

    .line 33
    .line 34
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 38
    .line 39
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 45
    .line 46
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 47
    .line 48
    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 49
    .line 50
    invoke-direct {v1, v3, v2}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public final stopHalOperation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 9
    .line 10
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 11
    .line 12
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "FingerprintDetectClient"

    .line 38
    .line 39
    const-string v2, "Remote exception"

    .line 40
    .line 41
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    return-void
.end method

.method public final vibrateSuccess()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
