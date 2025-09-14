.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public final mDebugConsent:Z

.field public final mDisabledFeatures:[I

.field public final mEnrollIgnoreList:[I

.field public final mEnrollIgnoreListVendor:[I

.field public final mEnrollReason:I

.field public mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

.field public final mMaxTemplatesPerUser:I

.field public mOsPreviewHandle:Landroid/os/NativeHandle;

.field public final mPreviewHandleDeleterCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

.field public final mPreviewSurface:Landroid/view/Surface;

.field public final mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/face/FaceUtils;[ILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZLandroid/hardware/face/FaceEnrollOptions;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;)V
    .locals 15

    move-object v14, p0

    .line 1
    invoke-virtual/range {p18 .. p18}, Landroid/hardware/face/FaceEnrollOptions;->getEnrollReason()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricFaceConstants;->reasonToMetric(I)I

    move-result v13

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move/from16 v9, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    .line 2
    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/EnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;I)V

    .line 3
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;I)V

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewHandleDeleterCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    .line 4
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;I)V

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    move-wide/from16 v0, p8

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    move-object/from16 v0, p19

    .line 6
    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 7
    invoke-virtual/range {p18 .. p18}, Landroid/hardware/face/FaceEnrollOptions;->getEnrollReason()I

    move-result v0

    iput v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700fd

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070100

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    move/from16 v0, p16

    .line 12
    iput v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mMaxTemplatesPerUser:I

    move/from16 v0, p17

    .line 13
    iput-boolean v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDebugConsent:Z

    move-object/from16 v0, p11

    .line 14
    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDisabledFeatures:[I

    move-object/from16 v0, p12

    .line 15
    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EnrollOptions "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p18 .. p18}, Landroid/hardware/face/FaceEnrollOptions;->getEnrollReason()I

    move-result v1

    .line 18
    invoke-static {v1}, Landroid/hardware/face/FaceEnrollOptions;->enrollReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    const-string v1, "FaceEnrollClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final doEnroll([B)V
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
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-lt v2, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 25
    .line 26
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {v4, p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;Landroid/hardware/keymaster/HardwareAuthToken;[B)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    check-cast v3, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 38
    .line 39
    invoke-virtual {v3, v2, v4, p0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider;->subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-interface {v0, v1, v3, p1, v2}, Landroid/hardware/biometrics/face/ISession;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final hasReachedEnrollmentLimit()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 16
    .line 17
    invoke-interface {v0, v3, p0}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    if-lt p0, v0, :cond_1

    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    return v1

    .line 36
    :cond_2
    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-static {v0, v3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    iget v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 46
    .line 47
    invoke-virtual {v0, v3, v4}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mMaxTemplatesPerUser:I

    .line 58
    .line 59
    if-lt v0, p0, :cond_3

    .line 60
    .line 61
    move v1, v2

    .line 62
    :cond_3
    return v1
.end method

.method public final onAcquired(II)V
    .locals 7

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    .line 8
    .line 9
    invoke-static {p2, v3}, Lcom/android/server/biometrics/Utils;->listContains(I[I)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    :goto_0
    move v1, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    .line 18
    .line 19
    invoke-static {p1, v3}, Lcom/android/server/biometrics/Utils;->listContains(I[I)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 27
    .line 28
    if-ne p1, v0, :cond_2

    .line 29
    .line 30
    add-int/lit16 v0, p2, 0x3e8

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v0, p1

    .line 34
    :goto_2
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v2, p1, p2}, Landroid/hardware/face/FaceManager;->getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 41
    .line 42
    new-instance v4, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;

    .line 43
    .line 44
    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 45
    .line 46
    iget v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    .line 47
    .line 48
    invoke-static {v6}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFaceEnrollReason(I)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-direct {v4, v5, v6, v2, v0}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v3, v0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onError(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 2
    .line 3
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    .line 4
    .line 5
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    .line 8
    .line 9
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFaceEnrollReason(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v4, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-direct {v1, v2, v3, v4, p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    .line 27
    .line 28
    .line 29
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 33
    .line 34
    new-instance p2, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 35
    .line 36
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    .line 37
    .line 38
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFaceEnrollReason(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-direct {p2, v2, p0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/EnrollClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    sget-object v0, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->DISMISS_FRR_INTENT:Landroid/content/Intent;

    .line 7
    .line 8
    const-class v0, Landroid/app/NotificationManager;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/app/NotificationManager;

    .line 15
    .line 16
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 17
    .line 18
    const-string v1, "FaceEnroll"

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {p1, v1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-class p1, Landroid/app/NotificationManager;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Landroid/app/NotificationManager;

    .line 33
    .line 34
    const-string p1, "FaceReEnroll"

    .line 35
    .line 36
    invoke-virtual {p0, p1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final startHalOperation()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 2
    .line 3
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;

    .line 4
    .line 5
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    .line 8
    .line 9
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFaceEnrollReason(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStartedInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    .line 24
    .line 25
    const-string v1, "FaceEnrollClient"

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->acquireSurfaceHandle(Landroid/view/Surface;)Landroid/os/NativeHandle;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    .line 34
    .line 35
    :try_start_0
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlNativeHandleUtils;->dup(Landroid/os/NativeHandle;)Landroid/hardware/common/NativeHandle;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 40
    .line 41
    const-string v0, "Obtained handles for the preview surface."

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const/4 v2, 0x0

    .line 49
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 50
    .line 51
    const-string v2, "Failed to dup mOsPreviewHandle"

    .line 52
    .line 53
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 57
    const/4 v2, 0x2

    .line 58
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDebugConsent:Z

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception v3

    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDisabledFeatures:[I

    .line 79
    .line 80
    array-length v5, v4

    .line 81
    const/4 v6, 0x1

    .line 82
    move v7, v0

    .line 83
    move v8, v6

    .line 84
    :goto_2
    if-ge v7, v5, :cond_3

    .line 85
    .line 86
    aget v9, v4, v7

    .line 87
    .line 88
    invoke-static {v9}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertFrameworkToAidlFeature(I)B

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-ne v9, v6, :cond_2

    .line 93
    .line 94
    move v8, v0

    .line 95
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    if-eqz v8, :cond_4

    .line 99
    .line 100
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    new-array v9, v4, [B

    .line 112
    .line 113
    move v4, v0

    .line 114
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-ge v4, v5, :cond_5

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    check-cast v5, Ljava/lang/Byte;

    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    aput-byte v5, v9, v4

    .line 131
    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3, v6}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startOperation(I)V

    .line 140
    .line 141
    .line 142
    const-string/jumbo v3, "enroll START"

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 149
    .line 150
    .line 151
    move-result-wide v3

    .line 152
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_7

    .line 161
    .line 162
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 163
    .line 164
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    check-cast v5, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    .line 175
    .line 176
    invoke-static {v8}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 181
    .line 182
    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    .line 183
    .line 184
    iget v5, v5, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 185
    .line 186
    const/4 v12, 0x4

    .line 187
    if-lt v5, v12, :cond_6

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_6
    move v6, v0

    .line 191
    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonEnroll(Landroid/hardware/keymaster/HardwareAuthToken;[BLandroid/hardware/common/NativeHandle;Landroid/view/Surface;Ljava/lang/Boolean;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    iput-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_7
    invoke-virtual {p0, v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->doEnroll([B)V

    .line 203
    .line 204
    .line 205
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string/jumbo v6, "enroll FINISH ("

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 217
    .line 218
    .line 219
    move-result-wide v6

    .line 220
    sub-long/2addr v6, v3

    .line 221
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string/jumbo v3, "ms) RESULT: "

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 231
    .line 232
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    .line 241
    .line 242
    goto :goto_7

    .line 243
    :goto_6
    const-string v4, "Exception when requesting enroll"

    .line 244
    .line 245
    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onError(II)V

    .line 249
    .line 250
    .line 251
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 252
    .line 253
    invoke-interface {v1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 254
    .line 255
    .line 256
    :goto_7
    return-void
.end method

.method public final stopHalOperation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 2
    .line 3
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 4
    .line 5
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    .line 8
    .line 9
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFaceEnrollReason(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    const-string v2, "FaceEnrollClient"

    .line 43
    .line 44
    const-string v3, "Remote exception when requesting cancel"

    .line 45
    .line 46
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onError(II)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 54
    .line 55
    invoke-interface {v1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 56
    .line 57
    .line 58
    :cond_0
    :goto_0
    return-void
.end method

.method public final wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewHandleDeleterCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 8
    .line 9
    new-instance v3, Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v3, p0, v4}, Lcom/android/server/biometrics/log/CallbackWithProbe;-><init>(Lcom/android/server/biometrics/log/ALSProbe;Z)V

    .line 15
    .line 16
    .line 17
    filled-new-array {v1, v2, v3, p1}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
