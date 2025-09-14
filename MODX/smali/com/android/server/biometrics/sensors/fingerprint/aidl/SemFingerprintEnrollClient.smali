.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpPauseResumeHandler;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpTspBlockStatusHandler;
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;
.implements Lcom/android/server/biometrics/sensors/fingerprint/PowerPressHandler;


# instance fields
.field public final mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public mDuplicatedImgCnt:I

.field public final mEnrollReason:I

.field public mLastErrorCode:I

.field public final mMaxTemplatesPerUser:I

.field public final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

.field public final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public mTotalQualityErrorCount:I

.field public final mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;IILandroid/hardware/fingerprint/FingerprintEnrollOptions;)V
    .locals 16

    move-object/from16 v14, p0

    move/from16 v15, p17

    .line 1
    invoke-virtual/range {p18 .. p18}, Landroid/hardware/fingerprint/FingerprintEnrollOptions;->getEnrollReason()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricFingerprintConstants;->reasonToMetric(I)I

    move-result v13

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    .line 2
    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/EnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;I)V

    move-wide/from16 v0, p4

    .line 3
    invoke-virtual {v14, v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    move-object/from16 v0, p14

    .line 4
    iput-object v0, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 5
    new-instance v1, Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>()V

    iput-object v1, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    move-object/from16 v1, p15

    .line 6
    iput-object v1, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    move/from16 v1, p16

    .line 7
    iput v1, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mMaxTemplatesPerUser:I

    .line 8
    iget-object v1, v14, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 9
    new-instance v2, Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 10
    iget-object v3, v1, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    const/4 v4, 0x1

    .line 11
    invoke-direct {v2, v3, v4}, Lcom/android/server/biometrics/log/CallbackWithProbe;-><init>(Lcom/android/server/biometrics/log/ALSProbe;Z)V

    .line 12
    iput-object v2, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 13
    iput v15, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mEnrollReason:I

    if-ne v15, v4, :cond_0

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v1, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 15
    invoke-virtual {v3}, Lcom/android/server/biometrics/log/ALSProbe;->destroy()V

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EnrollOptions "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p18 .. p18}, Landroid/hardware/fingerprint/FingerprintEnrollOptions;->getEnrollReason()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintEnrollOptions;->enrollReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    const-string v2, "FingerprintEnrollClient"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual/range {p14 .. p14}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->createUdfpsSysUiImpl()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    const/16 v1, 0x40

    .line 21
    iput v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    .line 22
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;

    invoke-direct {v1, v14}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setSysUiListener(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createUdfpsSysUiImpl()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 7
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 9
    iget v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v0, v7

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;-><init>(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;IZZ)V

    .line 17
    return-object v7
.end method

.method public final destroy()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->destroy()V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->destroy()V

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 13
    long-to-int v4, v0

    .line 14
    iget v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mTotalQualityErrorCount:I

    .line 16
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mLastErrorCode:I

    .line 18
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 21
    move-result-object v3

    .line 22
    int-to-long v5, v0

    .line 23
    invoke-virtual {v3}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;

    .line 29
    const-string v7, "U"

    .line 31
    const/4 v8, 0x0

    .line 32
    move-object v2, v0

    .line 33
    invoke-direct/range {v2 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJLjava/lang/String;II)V

    .line 36
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method

.method public final doEnroll()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    .line 11
    invoke-static {v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 27
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;

    .line 29
    invoke-direct {v4, p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;Landroid/hardware/keymaster/HardwareAuthToken;)V

    .line 32
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;

    .line 34
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    .line 37
    const/4 v0, 0x0

    .line 38
    check-cast v3, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 40
    invoke-virtual {v3, v2, v4, p0, v0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 46
    invoke-interface {v0, v1}, Landroid/hardware/biometrics/fingerprint/ISession;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 52
    :goto_0
    return-void
.end method

.method public getBioAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getLastErrorCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mLastErrorCode:I

    .line 3
    return p0
.end method

.method public final hasReachedEnrollmentLimit()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 5
    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mMaxTemplatesPerUser:I

    .line 17
    if-lt v0, p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final onAcquired(II)V
    .locals 7

    .line 1
    const/4 v0, 0x7

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 6
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;

    .line 8
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 10
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mEnrollReason:I

    .line 12
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFingerprintEnrollReason(I)I

    .line 15
    move-result v3

    .line 16
    invoke-direct {v1, v2, v3, p1}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;II)V

    .line 19
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x6

    .line 33
    if-eqz v0, :cond_2

    .line 35
    if-ne p1, v1, :cond_1

    .line 37
    add-int/lit16 v2, p2, 0x3e8

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v2, p1

    .line 41
    :goto_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 43
    new-instance v4, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;

    .line 45
    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 47
    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mEnrollReason:I

    .line 49
    invoke-static {v6}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFingerprintEnrollReason(I)I

    .line 52
    move-result v6

    .line 53
    invoke-direct {v4, v5, v6, v0, v2}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 56
    invoke-virtual {v4}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v3, v0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 65
    const-string v2, "Remote exception using overlay controller"

    .line 67
    const-string v3, "SensorOverlays"

    .line 69
    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 79
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 81
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_3

    .line 87
    :try_start_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 89
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 95
    iget v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 97
    invoke-interface {v0, v4, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 107
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 109
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_4

    .line 115
    :try_start_1
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 117
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 123
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 125
    invoke-static {v4, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    .line 128
    move-result-object v4

    .line 129
    if-eqz v4, :cond_4

    .line 131
    iget v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 133
    invoke-interface {v0, v4}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onEnrollmentHelp(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    goto :goto_2

    .line 137
    :catch_1
    move-exception v0

    .line 138
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 143
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onBiometricAction()V

    .line 146
    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    .line 150
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 152
    if-nez v2, :cond_5

    .line 154
    goto :goto_3

    .line 155
    :cond_5
    if-ne p1, v1, :cond_6

    .line 157
    const/16 v3, 0x2713

    .line 159
    if-ne p2, v3, :cond_6

    .line 161
    invoke-virtual {v2, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnAcquired(II)V

    .line 164
    :cond_6
    :goto_3
    if-ne p1, v1, :cond_7

    .line 166
    const/16 v1, 0x3ea

    .line 168
    if-ne p2, v1, :cond_7

    .line 170
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mDuplicatedImgCnt:I

    .line 172
    add-int/2addr v1, v0

    .line 173
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mDuplicatedImgCnt:I

    .line 175
    :cond_7
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsQualityFailedEvent(II)Z

    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_8

    .line 181
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mTotalQualityErrorCount:I

    .line 183
    add-int/2addr p1, v0

    .line 184
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mTotalQualityErrorCount:I

    .line 186
    :cond_8
    return-void
.end method

.method public final onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 10

    .line 1
    if-nez p2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->stop()V

    .line 10
    :cond_0
    move-object v0, p1

    .line 11
    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 13
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mDuplicatedImgCnt:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/Fingerprint;->semSetDuplicatedImgCount(I)V

    .line 18
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->getBioAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const/4 v2, 0x3

    .line 31
    const-string v3, "FPEN"

    .line 33
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 38
    long-to-int v4, v0

    .line 39
    iget v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mDuplicatedImgCnt:I

    .line 41
    iget v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mTotalQualityErrorCount:I

    .line 43
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 46
    move-result-object v3

    .line 47
    const/4 v0, 0x0

    .line 48
    int-to-long v5, v0

    .line 49
    invoke-virtual {v3}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;

    .line 55
    const-string v7, "S"

    .line 57
    move-object v2, v1

    .line 58
    invoke-direct/range {v2 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJLjava/lang/String;II)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 67
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 69
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 71
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 77
    :try_start_0
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 79
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 85
    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 87
    invoke-interface {p1, v0, p2}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onEnrollmentProgress(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    const-string v0, "SensorOverlays"

    .line 94
    const-string v1, "Remote exception using overlay controller"

    .line 96
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 101
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 103
    iget p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 105
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 108
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 110
    new-instance p2, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 112
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 114
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mEnrollReason:I

    .line 116
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFingerprintEnrollReason(I)I

    .line 119
    move-result p0

    .line 120
    invoke-direct {p2, v0, p0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 123
    invoke-virtual {p2}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 130
    :cond_3
    return-void
.end method

.method public final onError(II)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mLastErrorCode:I

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mLastErrorCode:I

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 12
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    .line 14
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 16
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mEnrollReason:I

    .line 18
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFingerprintEnrollReason(I)I

    .line 21
    move-result v3

    .line 22
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {v4, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    invoke-direct {v1, v2, v3, v4, p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 31
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    .line 38
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    .line 41
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 43
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 48
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 50
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 52
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mEnrollReason:I

    .line 54
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFingerprintEnrollReason(I)I

    .line 57
    move-result v3

    .line 58
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 61
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 68
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 70
    if-eqz p0, :cond_1

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnError(II)V

    .line 75
    :cond_1
    return-void
.end method

.method public final onOneHandModeEnabled()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 3
    const/16 v1, 0x1389

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->onError(II)V

    .line 8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    .line 11
    return-void
.end method

.method public final onPointerDown(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 9
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 17
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 25
    iget v1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 27
    iget v2, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 29
    float-to-int v2, v2

    .line 30
    iget v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 32
    float-to-int v3, v3

    .line 33
    iget v4, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 35
    iget v5, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 37
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDown(IIIFF)V

    .line 40
    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 42
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 44
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 46
    if-eqz p1, :cond_1

    .line 48
    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerDown(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_2

    .line 52
    :goto_1
    const-string p1, "FingerprintEnrollClient"

    .line 54
    const-string v0, "Unable to send pointer down"

    .line 56
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :cond_1
    :goto_2
    return-void
.end method

.method public final onPointerUp(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 9
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 17
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 25
    iget p1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 27
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUp(I)V

    .line 30
    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 32
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 34
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 36
    if-eqz p1, :cond_1

    .line 38
    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerUp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    const-string p1, "FingerprintEnrollClient"

    .line 44
    const-string v0, "Unable to send pointer up"

    .line 46
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_1
    :goto_2
    return-void
.end method

.method public final onTspBlocked()V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    const/16 v1, 0x3ec

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->onAcquired(II)V

    .line 7
    return-void
.end method

.method public final onTspUnBlocked()V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    const/16 v1, 0x3ed

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->onAcquired(II)V

    .line 7
    return-void
.end method

.method public final onUdfpsUiEvent(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "FingerprintEnrollClient"

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    :try_start_0
    const-string p0, "No matching event for onUdfpsUiEvent"

    .line 11
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 19
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 25
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 27
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->onUiReady()V

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 33
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 35
    if-eqz p0, :cond_2

    .line 37
    invoke-interface {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsOverlayShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_1

    .line 41
    :goto_0
    const-string p1, "Unable to send onUdfpsUiEvent"

    .line 43
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method public final request(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 5
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 16
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 18
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 20
    iget v8, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 22
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    .line 24
    const/4 v14, 0x0

    .line 25
    const/4 v15, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const-string v10, "FingerprintRequestClient"

    .line 31
    const/4 v11, 0x0

    .line 32
    const/4 v13, 0x0

    .line 33
    move-object v2, v0

    .line 34
    move/from16 v12, p1

    .line 36
    invoke-direct/range {v2 .. v15}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V

    .line 39
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startWithoutScheduler()I

    .line 42
    return-void
.end method

.method public final setIgnoreDisplayTouches(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 11
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->setIgnoreDisplayTouches(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string p1, "FingerprintEnrollClient"

    .line 18
    const-string v0, "Unable to send setIgnoreDisplayTouches"

    .line 20
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :goto_0
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/EnrollClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 6
    sget-object p1, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->DISMISS_FRR_INTENT:Landroid/content/Intent;

    .line 8
    const-class p1, Landroid/app/NotificationManager;

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/app/NotificationManager;

    .line 16
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 18
    const-string v0, "FingerprintEnroll"

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v0, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 24
    return-void
.end method

.method public final startHalOperation()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 3
    const/16 v0, 0x12

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->request(I)V

    .line 8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->start()V

    .line 15
    :cond_0
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 17
    long-to-int v0, v0

    .line 18
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;

    .line 30
    const-string v5, "E"

    .line 32
    invoke-direct {v4, v2, v5, v1, v0}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 40
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 42
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mEnrollReason:I

    .line 44
    invoke-static {v2}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFingerprintEnrollReason(I)I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 51
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 53
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;

    .line 55
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 57
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mEnrollReason:I

    .line 59
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFingerprintEnrollReason(I)I

    .line 62
    move-result v3

    .line 63
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 66
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStartedInfo;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V

    .line 73
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 75
    sget-object v1, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->DISMISS_FRR_INTENT:Landroid/content/Intent;

    .line 77
    const-class v1, Landroid/app/NotificationManager;

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/app/NotificationManager;

    .line 85
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 87
    const-string v2, "FingerprintBadCalibration"

    .line 89
    const/4 v3, 0x1

    .line 90
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->doEnroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v1, "FingerprintEnrollClient"

    .line 100
    const-string v2, "Remote exception when requesting enroll"

    .line 102
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v0, 0x2

    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->onError(II)V

    .line 110
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 112
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 115
    :goto_0
    return-void
.end method

.method public final stopHalOperation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->stop()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 10
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 17
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 19
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 21
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mEnrollReason:I

    .line 23
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFingerprintEnrollReason(I)I

    .line 26
    move-result v3

    .line 27
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 30
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 40
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 42
    const-string v1, "FingerprintEnrollClient"

    .line 44
    if-eqz v0, :cond_1

    .line 46
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v2, "Remote exception when requesting cancel"

    .line 53
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v0, 0x1

    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->onError(II)V

    .line 61
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 63
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const-string/jumbo p0, "cancellation signal was null"

    .line 70
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void
.end method

.method public final vibrateSuccess()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    .line 7
    return-void
.end method

.method public final wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 5
    new-instance v2, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;

    .line 7
    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/HalClientMonitor;)V

    .line 10
    filled-new-array {v1, v2, p1}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 17
    return-object v0
.end method
