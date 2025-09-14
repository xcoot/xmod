.class public final Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAuthStartTime:J

.field public mBacklight:I

.field public mBrightnessUp:I

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public mContext:Landroid/content/Context;

.field public mDaemonIsCancelled:Z

.field public mEnrollStartTime:J

.field public mFABK:I

.field public mFALI:I

.field public mFALQ:I

.field public mFAMO:I

.field public mFANM:I

.field public mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

.field public mHIDLmemoryFileForPreview:Landroid/os/MemoryFile;

.field public mHIDLpreviewImage:[B

.field public final mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

.field public mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

.field public mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

.field public mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

.field public mISession:Landroid/hardware/biometrics/face/ISession;

.field public mISessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

.field public mInsufficient:I

.field public mIsAuthenticateResult:Z

.field public mIsAuthenticationExtOperation:Z

.field public mIsCallEnumerateUserInternal:Z

.field public mIsCheckedTooDark:Z

.field public mIsEarlyStop:Z

.field public mIsEnrollPausing:Z

.field public mIsHIDL:Z

.field public mIsOperationStarted:Z

.field public mIsResetting:Z

.field public mIsTimeout:Z

.field public mLastRotation:I

.field public mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

.field public mMotion:I

.field public mNoMatchMaxCountNum:I

.field public mOperationType:I

.field public mOrientationEventListener:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;

.field public mOsPreviewHandle:Landroid/os/NativeHandle;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPrevAcquiredInfo:I

.field public mPrevAcquiredVendorInfo:I

.field public mPreviewSurface:Landroid/view/Surface;

.field public mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public mProximitySensorMgr:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;

.field public mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public mSecurityLevel:I

.field public mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

.field public mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

.field public mSensorId:I

.field public mSkipAcquiredEventCount:I

.field public mStartOperationTime:J

.field public mTpaHalModeEnabled:Z

.field public mUserId:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsResetting:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsCheckedTooDark:Z

    .line 17
    .line 18
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 23
    .line 24
    const-wide/16 v2, -0x1

    .line 25
    .line 26
    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mStartOperationTime:J

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    iput v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mDaemonIsCancelled:Z

    .line 32
    .line 33
    iput v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredInfo:I

    .line 34
    .line 35
    iput v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredVendorInfo:I

    .line 36
    .line 37
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSkipAcquiredEventCount:I

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticateResult:Z

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEnrollPausing:Z

    .line 42
    .line 43
    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEarlyStop:Z

    .line 46
    .line 47
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsTimeout:Z

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsCallEnumerateUserInternal:Z

    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLmemoryFileForPreview:Landroid/os/MemoryFile;

    .line 66
    .line 67
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 68
    .line 69
    sget-object v1, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFaceHandler()Landroid/os/Handler;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/os/Looper;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 83
    .line 84
    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final acquireDVFS(II)V
    .locals 9

    .line 1
    const-string v0, "SemFace"

    .line 2
    .line 3
    const-string v1, "acquireDVFS"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    if-ne p2, p0, :cond_0

    .line 16
    .line 17
    const/16 p0, 0xdb7

    .line 18
    .line 19
    :goto_0
    move v4, p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/16 p0, 0xdb8

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_1
    const/16 v5, 0x8

    .line 25
    .line 26
    const-string v6, "GFACE_SERVICE"

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    move v7, p1

    .line 30
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->acquireDvfs(Landroid/content/Context;IILjava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final declared-synchronized daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V
    .locals 5

    .line 1
    const-string/jumbo v0, "daemonCancel FINISH ("

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->stopOperation()V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "SemFace"

    .line 11
    .line 12
    const-string/jumbo p2, "cancellationSignal is null"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    if-nez p2, :cond_1

    .line 23
    .line 24
    :try_start_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 25
    .line 26
    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    if-eqz p2, :cond_2

    .line 36
    .line 37
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 38
    .line 39
    iget-boolean p2, p2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :cond_2
    const/4 p2, 0x1

    .line 46
    :try_start_2
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mDaemonIsCancelled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    const-string p2, "SemFace"

    .line 53
    .line 54
    const-string/jumbo v3, "daemonCancel START"

    .line 55
    .line 56
    .line 57
    invoke-static {p2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V

    .line 61
    .line 62
    .line 63
    const-string p1, "SemFace"

    .line 64
    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    sub-long/2addr v3, v1

    .line 75
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string/jumbo v0, "ms) RESULT: "

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    :try_start_4
    const-string p2, "SemFace"

    .line 94
    .line 95
    const-string v0, "Failed to get biometric interface"

    .line 96
    .line 97
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    .line 99
    .line 100
    :goto_0
    monitor-exit p0

    .line 101
    return-void

    .line 102
    :goto_1
    monitor-exit p0

    .line 103
    throw p1
.end method

.method public final declared-synchronized daemonCancelInternal()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "SemFace"

    .line 17
    .line 18
    const-string/jumbo v1, "daemonCancelInternal not auth(enroll) client"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const-string v0, "SemFace"

    .line 28
    .line 29
    const-string/jumbo v1, "daemonCancelInternal"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit p0

    .line 44
    throw v0
.end method

.method public final daemonClose()V
    .locals 9

    .line 1
    const-string/jumbo v0, "ms)"

    .line 2
    .line 3
    .line 4
    const-string v1, "IsehSession.close: FINISH ("

    .line 5
    .line 6
    const-string v2, "ISession.close: FINISH ("

    .line 7
    .line 8
    const-string/jumbo v3, "daemonClose"

    .line 9
    .line 10
    .line 11
    const-string v4, "SemFace"

    .line 12
    .line 13
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string/jumbo p0, "daemonClose: no face HAL!"

    .line 21
    .line 22
    .line 23
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 34
    .line 35
    invoke-interface {v3}, Landroid/hardware/biometrics/face/ISession;->close()V

    .line 36
    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    sub-long/2addr v7, v5

    .line 48
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 65
    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    const-string/jumbo p0, "daemonClose: no seh face HAL!"

    .line 69
    .line 70
    .line 71
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 80
    .line 81
    check-cast v3, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 82
    .line 83
    invoke-virtual {v3}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->close()V

    .line 84
    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v7

    .line 95
    sub-long/2addr v7, v5

    .line 96
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :goto_0
    const-string v0, "IsehSession.close: "

    .line 113
    .line 114
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    :goto_1
    return-void
.end method

.method public final daemonEnroll(Landroid/hardware/keymaster/HardwareAuthToken;[BLandroid/hardware/common/NativeHandle;Landroid/view/Surface;Ljava/lang/Boolean;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 5

    .line 1
    const-string v0, "SemFace"

    .line 2
    .line 3
    const-string/jumbo v1, "enroll BILG "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-wide v1, p1, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v1, v1, v3

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v2, "hardwareAuthToken  id = "

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-wide v2, p1, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    .line 34
    .line 35
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p5

    .line 42
    const/4 v0, 0x0

    .line 43
    if-eqz p5, :cond_1

    .line 44
    .line 45
    new-instance p5, Landroid/hardware/biometrics/face/FaceEnrollOptions;

    .line 46
    .line 47
    invoke-direct {p5}, Landroid/hardware/biometrics/face/FaceEnrollOptions;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p5, Landroid/hardware/biometrics/face/FaceEnrollOptions;->hardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 51
    .line 52
    iput-byte v0, p5, Landroid/hardware/biometrics/face/FaceEnrollOptions;->enrollmentType:B

    .line 53
    .line 54
    iput-object p2, p5, Landroid/hardware/biometrics/face/FaceEnrollOptions;->features:[B

    .line 55
    .line 56
    iput-object p3, p5, Landroid/hardware/biometrics/face/FaceEnrollOptions;->nativeHandlePreview:Landroid/hardware/common/NativeHandle;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    iput-object p1, p5, Landroid/hardware/biometrics/face/FaceEnrollOptions;->context:Landroid/hardware/biometrics/common/OperationContext;

    .line 60
    .line 61
    iput-object p4, p5, Landroid/hardware/biometrics/face/FaceEnrollOptions;->surfacePreview:Landroid/view/Surface;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 64
    .line 65
    invoke-interface {p1, p5}, Landroid/hardware/biometrics/face/ISession;->enrollWithOptions(Landroid/hardware/biometrics/face/FaceEnrollOptions;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 73
    .line 74
    invoke-interface {p4, p1, v0, p2, p3}, Landroid/hardware/biometrics/face/ISession;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 79
    .line 80
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string/jumbo p2, "daemonEnroll: hardwareAuthToken mac.length = "

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p1, Landroid/hardware/keymaster/HardwareAuthToken;->mac:[B

    .line 92
    .line 93
    array-length p2, p2

    .line 94
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p2, ", id="

    .line 98
    .line 99
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-wide p2, p1, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    .line 103
    .line 104
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p2, ", challenge="

    .line 108
    .line 109
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-wide p2, p1, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    .line 113
    .line 114
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p2, ", type="

    .line 118
    .line 119
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget p1, p1, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorType:I

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_3
    const-string/jumbo p0, "daemonEnroll: no face HAL!"

    .line 141
    .line 142
    .line 143
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 149
    .line 150
    .line 151
    throw p0
.end method

.method public final daemonEnumerateUserInternal()V
    .locals 5

    .line 1
    const-string/jumbo v0, "daemonEnumerateUserInternal FINISH ("

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "daemonEnumerateUserInternal START"

    .line 5
    .line 6
    .line 7
    const-string v2, "SemFace"

    .line 8
    .line 9
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    const/4 v1, 0x1

    .line 17
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsCallEnumerateUserInternal:Z

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->enumerateEnrollments()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 46
    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    const-string/jumbo p0, "daemonEnumerateUserInternal(): no face HAL!"

    .line 50
    .line 51
    .line 52
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->enumerateEnrollments()V

    .line 57
    .line 58
    .line 59
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    sub-long/2addr v0, v3

    .line 69
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string/jumbo v0, "ms)"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :goto_1
    const-string/jumbo v0, "daemonEnumerateUserInternal: "

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :goto_2
    return-void
.end method

.method public final daemonGenerateChallenge()V
    .locals 5

    .line 1
    const-string/jumbo v0, "daemonGenerateChallenge FINISH ("

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "daemonGenerateChallenge START"

    .line 5
    .line 6
    .line 7
    const-string v2, "SemFace"

    .line 8
    .line 9
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->generateChallenge()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    const-string/jumbo p0, "daemonGenerateChallenge(): no face HAL!"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 54
    .line 55
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->generateChallenge()V

    .line 56
    .line 57
    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    sub-long/2addr v0, v3

    .line 68
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string/jumbo v0, "ms)"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :goto_1
    const-string/jumbo v0, "daemonGenerateChallenge: "

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    :goto_2
    return-void
.end method

.method public final daemonGetAuthenticatorId()V
    .locals 5

    .line 1
    const-string/jumbo v0, "daemonGetAuthenticatorId FINISH ("

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "daemonGetAuthenticatorId START"

    .line 5
    .line 6
    .line 7
    const-string v2, "SemFace"

    .line 8
    .line 9
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->getAuthenticatorId()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 43
    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    const-string/jumbo p0, "daemonGetAuthenticatorId(): no face HAL!"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->getAuthenticatorId()V

    .line 54
    .line 55
    .line 56
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    sub-long/2addr v0, v3

    .line 66
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string/jumbo v0, "ms)"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    const-string/jumbo v0, "daemonGetAuthenticatorId: "

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :goto_2
    return-void
.end method

.method public final daemonGetFeatures()V
    .locals 5

    .line 1
    const-string/jumbo v0, "daemonGetFeatures FINISH ("

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "daemonGetFeatures START"

    .line 5
    .line 6
    .line 7
    const-string v2, "SemFace"

    .line 8
    .line 9
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->getFeatures()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 43
    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    const-string/jumbo p0, "daemonGetFeatures(): no face HAL!"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->getFeatures()V

    .line 54
    .line 55
    .line 56
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    sub-long/2addr v0, v3

    .line 66
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string/jumbo v0, "ms)"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    const-string/jumbo v0, "daemonGetFeatures: "

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :goto_2
    return-void
.end method

.method public final daemonRemove([I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 2
    .line 3
    const-string v1, "SemFace"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "daemonRemove: no face HAL!"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    const-string/jumbo v0, "removeEnrollments START + SemFaceUtils.semGetSubTag()"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISession;->removeEnrollments([I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    :goto_0
    const-string/jumbo p1, "daemonRemove : "

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo p1, "removeEnrollments FINISH ("

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    sub-long/2addr v4, v2

    .line 54
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string/jumbo p1, "ms) RESULT: "

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final daemonRevokeChallenge(J)V
    .locals 5

    .line 1
    const-string/jumbo v0, "daemonRevokeChallenge FINISH ("

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "daemonRevokeChallenge START"

    .line 5
    .line 6
    .line 7
    const-string v2, "SemFace"

    .line 8
    .line 9
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->revokeChallenge(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 43
    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    const-string/jumbo p0, "daemonRevokeChallenge(): no face HAL!"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/ISession;->revokeChallenge(J)V

    .line 54
    .line 55
    .line 56
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    sub-long/2addr p1, v3

    .line 66
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string/jumbo p1, "ms)"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    const-string/jumbo p1, "daemonRevokeChallenge: "

    .line 84
    .line 85
    .line 86
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :goto_2
    return-void
.end method

.method public final daemonSetFaceTag([B)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setFaceTag START type = 1"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "setFaceTag FINISH ("

    .line 5
    .line 6
    .line 7
    const-string v2, ", data: "

    .line 8
    .line 9
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 10
    .line 11
    const-string v4, "SemFace"

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    const-string/jumbo p0, "daemonSetFaceTag(): no seh face HAL!"

    .line 20
    .line 21
    .line 22
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->byteArrayToHex([B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    const-string v0, ""

    .line 55
    .line 56
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 77
    .line 78
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->semSetFaceTag([B)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 95
    .line 96
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->setFaceTag([B)I

    .line 99
    .line 100
    .line 101
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    sub-long/2addr v0, v2

    .line 111
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string/jumbo p1, "ms)"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string/jumbo v0, "setFaceTag: "

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p0, p1, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final daemonSetRotation(I)V
    .locals 12

    .line 1
    const-string v0, "SetRotation FINISH ("

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 4
    .line 5
    const-string v2, "SemFace"

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "daemonSetRotation(): no face seh HAL!"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const-string v1, "SetRotation START"

    .line 25
    .line 26
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    const/16 v6, 0x5a

    .line 33
    .line 34
    const/16 v7, 0xb4

    .line 35
    .line 36
    const/16 v8, 0x10e

    .line 37
    .line 38
    const/4 v9, 0x3

    .line 39
    const/4 v10, 0x2

    .line 40
    const/4 v11, 0x1

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .line 61
    .line 62
    :try_start_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 69
    .line 70
    if-eq p1, v11, :cond_3

    .line 71
    .line 72
    if-eq p1, v10, :cond_2

    .line 73
    .line 74
    if-eq p1, v9, :cond_1

    .line 75
    .line 76
    move v5, v8

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move v5, v7

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v5, v6

    .line 81
    :cond_3
    :goto_0
    invoke-interface {p0, v5}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetRotation(I)I

    .line 82
    .line 83
    .line 84
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    goto :goto_2

    .line 86
    :catch_0
    move-exception p0

    .line 87
    :try_start_2
    const-string p1, "HidlToAidlSessionAdapter"

    .line 88
    .line 89
    const-string/jumbo v1, "semSetRotation HIDL : "

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    .line 95
    const/4 p0, -0x1

    .line 96
    goto :goto_2

    .line 97
    :catch_1
    move-exception p0

    .line 98
    goto :goto_3

    .line 99
    :cond_4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 100
    .line 101
    if-eq p1, v11, :cond_7

    .line 102
    .line 103
    if-eq p1, v10, :cond_6

    .line 104
    .line 105
    if-eq p1, v9, :cond_5

    .line 106
    .line 107
    move v5, v8

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    move v5, v7

    .line 110
    goto :goto_1

    .line 111
    :cond_6
    move v5, v6

    .line 112
    :cond_7
    :goto_1
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 113
    .line 114
    invoke-virtual {p0, v5}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->setRotation(I)I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    sub-long/2addr v0, v3

    .line 128
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string/jumbo v0, "ms) RESULT: "

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string/jumbo v0, "daemonSetRotation: "

    .line 151
    .line 152
    .line 153
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :goto_4
    return-void
.end method

.method public final getCurrentClientHashID()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "SemFace"

    .line 10
    .line 11
    const-string/jumbo v0, "getCurrentClientHashID : client is null"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mHashID:I

    .line 20
    .line 21
    return p0
.end method

.method public final getCurrentClientOwnerString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "SemFace"

    .line 10
    .line 11
    const-string/jumbo v0, "getCurrentClientOwnerString : client is null"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method

.method public final isBrightnessEnable()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    .line 25
    .line 26
    const-string/jumbo v1, "face_brighten_screen"

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-static {v0, v1, v3, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-ne p0, v3, :cond_2

    .line 35
    .line 36
    move v2, v3

    .line 37
    :cond_2
    return v2
.end method

.method public final isTpaSehTestHalEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final isUsingSehAPI()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isTpaSehTestHalEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final onExtended(II)V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mStartOperationTime:J

    .line 6
    .line 7
    sub-long v7, v0, v2

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    const/4 v1, 0x3

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq p1, v3, :cond_17

    .line 14
    .line 15
    const p2, 0x186a2

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    if-eq p1, v4, :cond_d

    .line 20
    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_e

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 26
    .line 27
    if-eqz p1, :cond_9

    .line 28
    .line 29
    iget v5, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    .line 30
    .line 31
    if-lez v5, :cond_1

    .line 32
    .line 33
    move v6, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v6, v2

    .line 36
    :goto_0
    iget v9, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    .line 37
    .line 38
    if-lez v9, :cond_2

    .line 39
    .line 40
    or-int/lit8 v6, v6, 0x8

    .line 41
    .line 42
    :cond_2
    iget v10, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    .line 43
    .line 44
    if-lez v10, :cond_3

    .line 45
    .line 46
    or-int/lit8 v6, v6, 0x10

    .line 47
    .line 48
    :cond_3
    if-lez v5, :cond_4

    .line 49
    .line 50
    if-nez v9, :cond_4

    .line 51
    .line 52
    if-nez v10, :cond_4

    .line 53
    .line 54
    or-int/lit8 v6, v6, 0x40

    .line 55
    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    new-instance v9, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 61
    .line 62
    const-string v10, "FATO"

    .line 63
    .line 64
    invoke-direct {v9, v0, v1, v10, v5}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v9}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 68
    .line 69
    .line 70
    iget v9, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    .line 71
    .line 72
    if-lez v9, :cond_5

    .line 73
    .line 74
    new-instance v10, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 75
    .line 76
    const-string v11, "FAQN"

    .line 77
    .line 78
    invoke-direct {v10, v9, v1, v11, v5}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v10}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    iget v9, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    .line 85
    .line 86
    if-lez v9, :cond_6

    .line 87
    .line 88
    new-instance v10, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 89
    .line 90
    const-string v11, "FAQB"

    .line 91
    .line 92
    invoke-direct {v10, v9, v1, v11, v5}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v10}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 96
    .line 97
    .line 98
    :cond_6
    iget v9, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    .line 99
    .line 100
    if-lez v9, :cond_7

    .line 101
    .line 102
    new-instance v10, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 103
    .line 104
    const-string v11, "FAQS"

    .line 105
    .line 106
    invoke-direct {v10, v9, v1, v11, v5}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v10}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 110
    .line 111
    .line 112
    :cond_7
    iget v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    .line 113
    .line 114
    if-lez v1, :cond_8

    .line 115
    .line 116
    iget v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    .line 117
    .line 118
    if-nez v1, :cond_8

    .line 119
    .line 120
    iget v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    .line 121
    .line 122
    if-nez v1, :cond_8

    .line 123
    .line 124
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 125
    .line 126
    const-string v9, "FANF"

    .line 127
    .line 128
    invoke-direct {v1, v0, v3, v9, v5}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 132
    .line 133
    .line 134
    :cond_8
    iput v2, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    .line 135
    .line 136
    iput v2, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    .line 137
    .line 138
    iput v2, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    .line 139
    .line 140
    move v2, v6

    .line 141
    :cond_9
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    .line 142
    .line 143
    if-ne p1, v4, :cond_a

    .line 144
    .line 145
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendAcquired(I)V

    .line 146
    .line 147
    .line 148
    :cond_a
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iget-boolean v1, p1, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 159
    .line 160
    if-nez v1, :cond_b

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_b
    iget-object v1, p1, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 164
    .line 165
    monitor-enter v1

    .line 166
    :try_start_0
    iget-object p1, p1, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 173
    .line 174
    if-eqz p1, :cond_c

    .line 175
    .line 176
    new-instance v0, Landroid/content/Intent;

    .line 177
    .line 178
    const-string/jumbo v3, "com.samsung.android.intent.action.BIOMETRIC_EXTRA_INFO"

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string v3, "action_type"

    .line 185
    .line 186
    const/16 v4, 0xd

    .line 187
    .line 188
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    const-string/jumbo v3, "reason"

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p2, v0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendBroadcastFaceInfo(Landroid/content/Context;Landroid/content/Intent;)V

    .line 198
    .line 199
    .line 200
    :cond_c
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_1
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    const-string v9, "T"

    .line 210
    .line 211
    const/4 v6, 0x0

    .line 212
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(IIJLjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_e

    .line 216
    .line 217
    :catchall_0
    move-exception p0

    .line 218
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    throw p0

    .line 220
    :cond_d
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    .line 221
    .line 222
    if-eqz p1, :cond_e

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_e
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    .line 226
    .line 227
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBacklight:I

    .line 228
    .line 229
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMotion:I

    .line 230
    .line 231
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mInsufficient:I

    .line 232
    .line 233
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    .line 234
    .line 235
    const/4 v6, 0x4

    .line 236
    if-lt v0, v6, :cond_f

    .line 237
    .line 238
    :goto_2
    move v0, p2

    .line 239
    goto :goto_3

    .line 240
    :cond_f
    if-lt v1, v6, :cond_10

    .line 241
    .line 242
    const p2, 0x186a5

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_10
    if-lt v2, v6, :cond_11

    .line 247
    .line 248
    const p2, 0x186a6

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_11
    mul-int/lit8 v5, v5, 0x5

    .line 253
    .line 254
    int-to-double v0, v5

    .line 255
    const-wide v5, 0x3fe6666666666666L    # 0.7

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    mul-double/2addr v0, v5

    .line 261
    int-to-double v4, v4

    .line 262
    cmpg-double p2, v0, v4

    .line 263
    .line 264
    if-gez p2, :cond_12

    .line 265
    .line 266
    const p2, 0x186a3

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_12
    const p2, 0x186a4

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :goto_3
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 275
    .line 276
    if-eqz p2, :cond_14

    .line 277
    .line 278
    if-eqz p1, :cond_13

    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedFailure(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_6

    .line 288
    .line 289
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedFailure(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    packed-switch v0, :pswitch_data_0

    .line 297
    .line 298
    .line 299
    :pswitch_0
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 300
    .line 301
    invoke-virtual {p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getOperationTime()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    const-string v4, "FANM"

    .line 306
    .line 307
    invoke-direct {v1, v4, p1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :pswitch_1
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 315
    .line 316
    invoke-virtual {p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getOperationTime()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    const-string v4, "FAMO"

    .line 321
    .line 322
    invoke-direct {v1, v4, p1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p2, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 326
    .line 327
    .line 328
    goto :goto_4

    .line 329
    :pswitch_2
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 330
    .line 331
    invoke-virtual {p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getOperationTime()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    const-string v4, "FABK"

    .line 336
    .line 337
    invoke-direct {v1, v4, p1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :pswitch_3
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 345
    .line 346
    invoke-virtual {p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getOperationTime()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    const-string v4, "FALQ"

    .line 351
    .line 352
    invoke-direct {v1, v4, p1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p2, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 356
    .line 357
    .line 358
    goto :goto_4

    .line 359
    :pswitch_4
    new-instance v1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 360
    .line 361
    invoke-virtual {p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getOperationTime()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    const-string v4, "FALI"

    .line 366
    .line 367
    invoke-direct {v1, v4, p1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 371
    .line 372
    .line 373
    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 374
    .line 375
    .line 376
    :pswitch_5
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFANM:I

    .line 377
    .line 378
    add-int/2addr p1, v3

    .line 379
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFANM:I

    .line 380
    .line 381
    goto :goto_5

    .line 382
    :pswitch_6
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFAMO:I

    .line 383
    .line 384
    add-int/2addr p1, v3

    .line 385
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFAMO:I

    .line 386
    .line 387
    goto :goto_5

    .line 388
    :pswitch_7
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFABK:I

    .line 389
    .line 390
    add-int/2addr p1, v3

    .line 391
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFABK:I

    .line 392
    .line 393
    goto :goto_5

    .line 394
    :pswitch_8
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFALQ:I

    .line 395
    .line 396
    add-int/2addr p1, v3

    .line 397
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFALQ:I

    .line 398
    .line 399
    goto :goto_5

    .line 400
    :pswitch_9
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFALI:I

    .line 401
    .line 402
    add-int/2addr p1, v3

    .line 403
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFALI:I

    .line 404
    .line 405
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendAcquired(I)V

    .line 406
    .line 407
    .line 408
    :cond_14
    :goto_6
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 413
    .line 414
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    iget-boolean v2, p1, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 419
    .line 420
    if-nez v2, :cond_15

    .line 421
    .line 422
    goto :goto_7

    .line 423
    :cond_15
    iget-object v3, p1, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 424
    .line 425
    monitor-enter v3

    .line 426
    :try_start_2
    iget-object p1, p1, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 427
    .line 428
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    check-cast p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 433
    .line 434
    if-eqz p1, :cond_16

    .line 435
    .line 436
    new-instance v1, Landroid/content/Intent;

    .line 437
    .line 438
    const-string/jumbo v2, "com.samsung.android.intent.action.BIOMETRIC_EXTRA_INFO"

    .line 439
    .line 440
    .line 441
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    const-string v2, "action_type"

    .line 445
    .line 446
    const/16 v4, 0xc

    .line 447
    .line 448
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    .line 450
    .line 451
    const-string/jumbo v2, "reason"

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    .line 456
    .line 457
    invoke-virtual {p1, p2, v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendBroadcastFaceInfo(Landroid/content/Context;Landroid/content/Intent;)V

    .line 458
    .line 459
    .line 460
    :cond_16
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 461
    :goto_7
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    const-string v9, "N"

    .line 470
    .line 471
    const/4 v6, 0x0

    .line 472
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(IIJLjava/lang/String;)V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_e

    .line 476
    .line 477
    :catchall_1
    move-exception p0

    .line 478
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 479
    throw p0

    .line 480
    :cond_17
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 481
    .line 482
    if-eqz p1, :cond_19

    .line 483
    .line 484
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    new-instance v4, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 489
    .line 490
    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getOperationTime()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    const-string v6, "FAIS"

    .line 495
    .line 496
    invoke-direct {v4, v6, v3, v5}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {p1, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 500
    .line 501
    .line 502
    iget-object v4, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    .line 503
    .line 504
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->isFolderOpened(Landroid/content/Context;)Z

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    if-nez v4, :cond_18

    .line 509
    .line 510
    iget-object v4, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    .line 511
    .line 512
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->isFlipOpened(Landroid/content/Context;)Z

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    if-eqz v4, :cond_19

    .line 517
    .line 518
    :cond_18
    new-instance v4, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 519
    .line 520
    const-string v5, "FAFS"

    .line 521
    .line 522
    invoke-direct {v4, v0, v1, v5, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p1, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 526
    .line 527
    .line 528
    :cond_19
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 533
    .line 534
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    .line 539
    .line 540
    const-string v4, "SemFace"

    .line 541
    .line 542
    new-instance v5, Ljava/util/Properties;

    .line 543
    .line 544
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 545
    .line 546
    .line 547
    const-string/jumbo v6, "face_enrolled_position_"

    .line 548
    .line 549
    .line 550
    const-string v9, ".xml"

    .line 551
    .line 552
    invoke-static {v3, v6, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    const/4 v6, 0x0

    .line 557
    :try_start_4
    new-instance v9, Ljava/io/FileInputStream;

    .line 558
    .line 559
    new-instance v10, Ljava/io/File;

    .line 560
    .line 561
    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 562
    .line 563
    .line 564
    move-result-object v11

    .line 565
    invoke-direct {v10, v11, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 569
    .line 570
    .line 571
    :try_start_5
    invoke-virtual {v5, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 572
    .line 573
    .line 574
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 575
    .line 576
    .line 577
    goto :goto_9

    .line 578
    :catch_0
    move-exception v3

    .line 579
    :goto_8
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .line 585
    .line 586
    :cond_1a
    :goto_9
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    invoke-virtual {v5, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    goto :goto_c

    .line 607
    :catchall_2
    move-object v6, v9

    .line 608
    goto :goto_b

    .line 609
    :catch_1
    move-exception v3

    .line 610
    move-object v6, v9

    .line 611
    goto :goto_a

    .line 612
    :catch_2
    move-exception v3

    .line 613
    :goto_a
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 618
    .line 619
    .line 620
    if-eqz v6, :cond_1a

    .line 621
    .line 622
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 623
    .line 624
    .line 625
    goto :goto_9

    .line 626
    :catch_3
    move-exception v3

    .line 627
    goto :goto_8

    .line 628
    :catchall_3
    :goto_b
    if-eqz v6, :cond_1a

    .line 629
    .line 630
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 631
    .line 632
    .line 633
    goto :goto_9

    .line 634
    :catch_4
    move-exception v3

    .line 635
    goto :goto_8

    .line 636
    :goto_c
    iget-boolean v3, p1, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 637
    .line 638
    if-nez v3, :cond_1b

    .line 639
    .line 640
    goto :goto_d

    .line 641
    :cond_1b
    iget-object v3, p1, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 642
    .line 643
    monitor-enter v3

    .line 644
    :try_start_a
    iget-object p1, p1, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 645
    .line 646
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    check-cast p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 651
    .line 652
    if-eqz p1, :cond_1c

    .line 653
    .line 654
    new-instance v1, Landroid/content/Intent;

    .line 655
    .line 656
    const-string/jumbo v4, "com.samsung.android.intent.action.BIOMETRIC_EXTRA_INFO"

    .line 657
    .line 658
    .line 659
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    const-string v4, "action_type"

    .line 663
    .line 664
    const/16 v5, 0xb

    .line 665
    .line 666
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    .line 668
    .line 669
    const-string/jumbo v4, "match_id"

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    .line 674
    .line 675
    const-string/jumbo p2, "enrolled_position"

    .line 676
    .line 677
    .line 678
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    .line 680
    .line 681
    invoke-virtual {p1, v0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendBroadcastFaceInfo(Landroid/content/Context;Landroid/content/Intent;)V

    .line 682
    .line 683
    .line 684
    :cond_1c
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 685
    :goto_d
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 686
    .line 687
    .line 688
    move-result-object v4

    .line 689
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    .line 690
    .line 691
    .line 692
    move-result v5

    .line 693
    const-string v9, "M"

    .line 694
    .line 695
    const/4 v6, 0x0

    .line 696
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(IIJLjava/lang/String;)V

    .line 697
    .line 698
    .line 699
    :goto_e
    return-void

    .line 700
    :catchall_4
    move-exception p0

    .line 701
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 702
    throw p0

    .line 703
    :pswitch_data_0
    .packed-switch 0x186a2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    :pswitch_data_1
    .packed-switch 0x186a2
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final onPreAcquired(IIZ)I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "SemFace"

    .line 10
    .line 11
    const/16 v2, 0x16

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne p1, v3, :cond_1

    .line 15
    .line 16
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mInsufficient:I

    .line 17
    .line 18
    add-int/2addr v4, v3

    .line 19
    iput v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mInsufficient:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-ne p1, v2, :cond_2

    .line 23
    .line 24
    const/16 v4, 0x3fa

    .line 25
    .line 26
    if-ne p2, v4, :cond_2

    .line 27
    .line 28
    const-string/jumbo p1, "onPreAcquired: early stop"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEarlyStop:Z

    .line 35
    .line 36
    return v3

    .line 37
    :cond_2
    if-ne p1, v2, :cond_4

    .line 38
    .line 39
    const/16 v4, 0x3fb

    .line 40
    .line 41
    if-ne p2, v4, :cond_4

    .line 42
    .line 43
    const-string/jumbo p1, "onPreAcquired: no match max count"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendFailed()V

    .line 54
    .line 55
    .line 56
    return v3

    .line 57
    :cond_3
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    .line 58
    .line 59
    add-int/2addr p1, v3

    .line 60
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    .line 61
    .line 62
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticateResult:Z

    .line 63
    .line 64
    return v3

    .line 65
    :cond_4
    if-ne p1, v2, :cond_5

    .line 66
    .line 67
    const/16 v4, 0x3fe

    .line 68
    .line 69
    if-ne p2, v4, :cond_5

    .line 70
    .line 71
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBacklight:I

    .line 72
    .line 73
    add-int/2addr p1, v3

    .line 74
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBacklight:I

    .line 75
    .line 76
    return v3

    .line 77
    :cond_5
    if-ne p1, v2, :cond_6

    .line 78
    .line 79
    const/16 v4, 0x3ff

    .line 80
    .line 81
    if-ne p2, v4, :cond_6

    .line 82
    .line 83
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMotion:I

    .line 84
    .line 85
    add-int/2addr p1, v3

    .line 86
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMotion:I

    .line 87
    .line 88
    return v3

    .line 89
    :cond_6
    :goto_0
    const-string v4, ")"

    .line 90
    .line 91
    const-string v5, ", "

    .line 92
    .line 93
    if-eqz p3, :cond_8

    .line 94
    .line 95
    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    .line 96
    .line 97
    const-wide/16 v8, -0x1

    .line 98
    .line 99
    cmp-long p3, v6, v8

    .line 100
    .line 101
    if-eqz p3, :cond_8

    .line 102
    .line 103
    packed-switch p1, :pswitch_data_0

    .line 104
    .line 105
    .line 106
    :pswitch_0
    goto :goto_1

    .line 107
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    .line 108
    .line 109
    .line 110
    :goto_1
    :pswitch_2
    move p3, v1

    .line 111
    goto :goto_2

    .line 112
    :pswitch_3
    move p3, v3

    .line 113
    goto :goto_2

    .line 114
    :pswitch_4
    sget-boolean p3, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    .line 115
    .line 116
    xor-int/2addr p3, v3

    .line 117
    :goto_2
    if-eqz p3, :cond_8

    .line 118
    .line 119
    const-wide/16 v10, 0xbb8

    .line 120
    .line 121
    add-long/2addr v6, v10

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v10

    .line 126
    cmp-long p3, v6, v10

    .line 127
    .line 128
    if-lez p3, :cond_7

    .line 129
    .line 130
    const-string/jumbo p0, "onPreAcquired: no face guide event skip ("

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p2, p0, v5, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    return v3

    .line 141
    :cond_7
    iput-wide v8, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    .line 142
    .line 143
    :cond_8
    iget p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    .line 144
    .line 145
    const/4 v6, 0x2

    .line 146
    const-string/jumbo v7, "onAcquired: upBrightnessMax"

    .line 147
    .line 148
    .line 149
    const/16 v8, 0x3f7

    .line 150
    .line 151
    if-ne p3, v6, :cond_a

    .line 152
    .line 153
    if-ne p1, v2, :cond_a

    .line 154
    .line 155
    if-ne p2, v8, :cond_a

    .line 156
    .line 157
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-static {p3}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    iget-boolean v6, p3, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsReadyToSetMaxBrightness:Z

    .line 164
    .line 165
    if-eqz v6, :cond_9

    .line 166
    .line 167
    iget v6, p3, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    .line 168
    .line 169
    invoke-virtual {p3, v6}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->setBrightness(I)V

    .line 170
    .line 171
    .line 172
    iput-boolean v1, p3, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsReadyToSetMaxBrightness:Z

    .line 173
    .line 174
    :cond_9
    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    iget p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    .line 178
    .line 179
    add-int/2addr p3, v3

    .line 180
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_a
    if-ne p3, v3, :cond_d

    .line 184
    .line 185
    if-ne p1, v2, :cond_b

    .line 186
    .line 187
    if-eq p2, v8, :cond_c

    .line 188
    .line 189
    :cond_b
    const/4 p3, 0x3

    .line 190
    if-ne p1, p3, :cond_d

    .line 191
    .line 192
    :cond_c
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsCheckedTooDark:Z

    .line 193
    .line 194
    iget p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    .line 195
    .line 196
    add-int/2addr p3, v3

    .line 197
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    .line 198
    .line 199
    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :cond_d
    :goto_3
    if-eq p1, v2, :cond_e

    .line 203
    .line 204
    iget p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredInfo:I

    .line 205
    .line 206
    if-eq p1, p3, :cond_f

    .line 207
    .line 208
    :cond_e
    if-ne p1, v2, :cond_10

    .line 209
    .line 210
    iget p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredVendorInfo:I

    .line 211
    .line 212
    if-ne p2, p3, :cond_10

    .line 213
    .line 214
    :cond_f
    iget p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSkipAcquiredEventCount:I

    .line 215
    .line 216
    add-int/2addr p3, v3

    .line 217
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSkipAcquiredEventCount:I

    .line 218
    .line 219
    const/16 v2, 0x1e

    .line 220
    .line 221
    if-ge p3, v2, :cond_10

    .line 222
    .line 223
    return v3

    .line 224
    :cond_10
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSkipAcquiredEventCount:I

    .line 225
    .line 226
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredInfo:I

    .line 227
    .line 228
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredVendorInfo:I

    .line 229
    .line 230
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 231
    .line 232
    if-nez p0, :cond_11

    .line 233
    .line 234
    const-string/jumbo p0, "onPreAcquired: skip ("

    .line 235
    .line 236
    .line 237
    const-string p3, ") after stop()"

    .line 238
    .line 239
    invoke-static {p1, p2, p0, v5, p3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    return v3

    .line 247
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string/jumbo p3, "onAcquired: "

    .line 250
    .line 251
    .line 252
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    sget-boolean p3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 259
    .line 260
    const-string v2, ""

    .line 261
    .line 262
    const-string v3, "("

    .line 263
    .line 264
    if-eqz p3, :cond_12

    .line 265
    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-static {p1}, Landroid/hardware/face/FaceManager;->getAcquiredName(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    goto :goto_4

    .line 286
    :cond_12
    move-object p1, v2

    .line 287
    :goto_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    if-eqz p3, :cond_13

    .line 297
    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-static {p2}, Landroid/hardware/face/FaceManager;->getAcquiredName(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    :cond_13
    invoke-static {p0, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return v1

    .line 321
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :pswitch_data_1
    .packed-switch 0x3ee
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final releaseDVFS()V
    .locals 2

    .line 1
    const-string v0, "SemFace"

    .line 2
    .line 3
    const-string/jumbo v1, "releaseDVFS"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final releaseSurfaceHandlesIfNeeded()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 2
    .line 3
    const-string v1, "SemFace"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v0, "mHwPreviewHandle is null even though mPreviewSurface is not null."

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    :try_start_0
    const-string v0, "Closing mHwPreviewHandle"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, v0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    .line 32
    .line 33
    array-length v3, v0

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_0
    if-ge v4, v3, :cond_2

    .line 36
    .line 37
    aget-object v5, v0, v4

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v3, "Failed to close mPreviewSurface"

    .line 49
    .line 50
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_2
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOsPreviewHandle:Landroid/os/NativeHandle;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    const-string v0, "Releasing mOsPreviewHandle"

    .line 60
    .line 61
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOsPreviewHandle:Landroid/os/NativeHandle;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->releaseSurfaceHandle(Landroid/os/NativeHandle;)V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOsPreviewHandle:Landroid/os/NativeHandle;

    .line 70
    .line 71
    :cond_4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    const-string v0, "Releasing mPreviewSurface"

    .line 76
    .line 77
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 83
    .line 84
    .line 85
    :cond_5
    return-void
.end method

.method public final declared-synchronized releaseWakeLock(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "releaseWakeLock : "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const-string v1, "SemFace"

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit p0

    .line 56
    throw p1
.end method

.method public final restoreBrightness()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isBrightnessEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsSetBrightness:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsSetBrightness:Z

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z

    .line 38
    .line 39
    const/4 v3, -0x1

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mPowerManager:Landroid/os/PowerManager;

    .line 43
    .line 44
    invoke-virtual {p0, v3, v3}, Landroid/os/PowerManager;->semSetAutoBrightnessLimit(II)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 49
    .line 50
    invoke-virtual {p0, v1, v3, v0}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IIZ)V

    .line 51
    .line 52
    .line 53
    :goto_0
    const-string/jumbo p0, "restoreBrightness, "

    .line 54
    .line 55
    .line 56
    const-string v0, "SemFaceBrightManager"

    .line 57
    .line 58
    invoke-static {v1, p0, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_1
    return-void
.end method

.method public final semConnectSession(Landroid/hardware/biometrics/face/IFace;)V
    .locals 7

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    const-string/jumbo v1, "semConnectSession ISession = "

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "semConnectSession ISehSession = "

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "semConnectSession ISehFace = "

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "semConnectSession IFace = "

    .line 13
    .line 14
    .line 15
    const-string v5, "SemFace"

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const-string/jumbo p0, "semConnectSession daemon is NULL!!"

    .line 20
    .line 21
    .line 22
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 27
    .line 28
    if-nez v6, :cond_1

    .line 29
    .line 30
    const-string/jumbo p0, "semConnectSession mISessionCallback is NULL!! not set yet"

    .line 31
    .line 32
    .line 33
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Landroid/hardware/biometrics/face/IFace;->getInterfaceVersion()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Landroid/hardware/biometrics/face/IFace;->asBinder()Landroid/os/IBinder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget v4, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub;->$r8$clinit:I

    .line 71
    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sget-object v4, Lvendor/samsung/hardware/biometrics/face/ISehFace;->DESCRIPTOR:Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {p1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    instance-of v6, v4, Lvendor/samsung/hardware/biometrics/face/ISehFace;

    .line 85
    .line 86
    if-eqz v6, :cond_3

    .line 87
    .line 88
    move-object p1, v4

    .line 89
    check-cast p1, Lvendor/samsung/hardware/biometrics/face/ISehFace;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance v4, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    const/4 v6, -0x1

    .line 98
    iput v6, v4, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->mCachedVersion:I

    .line 99
    .line 100
    iput-object p1, v4, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 101
    .line 102
    move-object p1, v4

    .line 103
    :goto_0
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    .line 104
    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    .line 111
    .line 112
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    .line 119
    .line 120
    check-cast v0, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;

    .line 121
    .line 122
    invoke-virtual {v0}, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->getInterfaceVersion()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    .line 137
    .line 138
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 139
    .line 140
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    .line 141
    .line 142
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 143
    .line 144
    check-cast p1, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;

    .line 145
    .line 146
    invoke-virtual {p1, v0, v3, v4}, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 151
    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 170
    .line 171
    check-cast p1, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 172
    .line 173
    iget-object p1, p1, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 174
    .line 175
    invoke-interface {p1}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p1}, Landroid/hardware/biometrics/face/ISession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/ISession;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 184
    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    .line 203
    .line 204
    check-cast p1, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;

    .line 205
    .line 206
    iget-object p1, p1, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 207
    .line 208
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 209
    .line 210
    const/4 v1, 0x0

    .line 211
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 215
    .line 216
    check-cast p1, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 217
    .line 218
    iget-object p1, p1, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 219
    .line 220
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 221
    .line 222
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 226
    .line 227
    invoke-interface {p1}, Landroid/hardware/biometrics/face/ISession;->asBinder()Landroid/os/IBinder;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 232
    .line 233
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 234
    .line 235
    .line 236
    const-string/jumbo p1, "semConnectSession end"

    .line 237
    .line 238
    .line 239
    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :catch_0
    move-exception p1

    .line 244
    const-string/jumbo v0, "semConnectSession Exception : "

    .line 245
    .line 246
    .line 247
    invoke-static {v5, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .line 249
    .line 250
    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsResetting:Z

    .line 252
    .line 253
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->binderDied()V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 259
    .line 260
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;

    .line 261
    .line 262
    const/4 v1, 0x2

    .line 263
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    .line 268
    .line 269
    :goto_1
    return-void
.end method

.method public final sendAcquired(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string/jumbo p1, "sendAcquired - not AcquisitionClient: "

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "SemFace"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 29
    .line 30
    const/16 v0, 0x16

    .line 31
    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final sendError(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string/jumbo p1, "sendError - not AcquisitionClient: "

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "SemFace"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final sendFailed()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 8
    .line 9
    const-string v1, "SemFace"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string/jumbo v0, "sendFailed - not AcquisitionClient: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 29
    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string/jumbo v0, "sendFailed : Unable to notify listener, finishing"

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendSucceeded(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 8
    .line 9
    const-string v2, "SemFace"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string/jumbo p1, "sendSuccess - not AcquisitionClient: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 29
    .line 30
    :try_start_0
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v1, Landroid/hardware/face/Face;

    .line 37
    .line 38
    const-string v3, ""

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    invoke-direct {v1, v3, v4, v5, v6}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-interface {v0, v1, p0, v3, p1}, Landroid/hardware/face/IFaceServiceReceiver;->onSemAuthenticationSucceededWithBundle(Landroid/hardware/face/Face;IZLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string/jumbo p1, "sendSucceeded : Unable to notify listener, finishing"

    .line 53
    .line 54
    .line 55
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public setISession(Landroid/hardware/biometrics/face/ISession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 2
    .line 3
    return-void
.end method

.method public final declared-synchronized setWakeLock(IZ)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 5
    .line 6
    const-string v0, "SemFace"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p2, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 19
    .line 20
    const-string v0, "SemFace"

    .line 21
    .line 22
    const v1, 0x1000000a

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 30
    .line 31
    :goto_0
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    const-string p2, "SemFace"

    .line 50
    .line 51
    const-string/jumbo v0, "setWakeLock"

    .line 52
    .line 53
    .line 54
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 58
    .line 59
    int-to-long v0, p1

    .line 60
    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :cond_1
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit p0

    .line 66
    throw p1
.end method

.method public final startBrightness()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isBrightnessEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_12

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    .line 14
    .line 15
    const-string v1, "SemFaceBrightManager"

    .line 16
    .line 17
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mPowerManager:Landroid/os/PowerManager;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    float-to-int v2, v2

    .line 25
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x5

    .line 32
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    .line 34
    .line 35
    iput-boolean v3, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsReadyToSetMaxBrightness:Z

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    :try_start_0
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v8}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_1

    .line 45
    .line 46
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    const-string/jumbo v9, "sub_screen_brightness_mode"

    .line 53
    .line 54
    .line 55
    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-ne v8, v7, :cond_0

    .line 60
    .line 61
    move v8, v7

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move v8, v3

    .line 64
    :goto_0
    iput-boolean v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :catch_0
    move-exception v8

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    const-string/jumbo v9, "screen_brightness_mode"

    .line 76
    .line 77
    .line 78
    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-ne v8, v7, :cond_2

    .line 83
    .line 84
    move v8, v7

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v8, v3

    .line 87
    :goto_1
    iput-boolean v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :goto_2
    const-string/jumbo v9, "startBrightness : "

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .line 95
    .line 96
    :goto_3
    iget v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    .line 97
    .line 98
    const/4 v9, -0x1

    .line 99
    if-ne v8, v9, :cond_4

    .line 100
    .line 101
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 102
    .line 103
    const/high16 v9, 0x42580000    # 54.0f

    .line 104
    .line 105
    invoke-virtual {v8, v9}, Landroid/hardware/display/DisplayManager;->convertToBrightness(F)I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    iget-object v9, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 110
    .line 111
    const/high16 v10, 0x429a0000    # 77.0f

    .line 112
    .line 113
    invoke-virtual {v9, v10}, Landroid/hardware/display/DisplayManager;->convertToBrightness(F)I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 118
    .line 119
    const/high16 v11, 0x42c80000    # 100.0f

    .line 120
    .line 121
    invoke-virtual {v10, v11}, Landroid/hardware/display/DisplayManager;->convertToBrightness(F)I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-lez v8, :cond_3

    .line 126
    .line 127
    if-lez v9, :cond_3

    .line 128
    .line 129
    if-lez v10, :cond_3

    .line 130
    .line 131
    iput v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    .line 132
    .line 133
    iput v9, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUp:I

    .line 134
    .line 135
    iput v10, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMax:I

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_3
    const/16 v8, 0x46

    .line 139
    .line 140
    iput v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    .line 141
    .line 142
    const/16 v8, 0x64

    .line 143
    .line 144
    iput v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUp:I

    .line 145
    .line 146
    const/16 v8, 0x82

    .line 147
    .line 148
    iput v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMax:I

    .line 149
    .line 150
    :cond_4
    :goto_4
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 151
    .line 152
    const-string v9, ", "

    .line 153
    .line 154
    if-nez v8, :cond_5

    .line 155
    .line 156
    const-string/jumbo v3, "mWallpaperManager is null"

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    :goto_5
    move v3, v7

    .line 163
    goto :goto_8

    .line 164
    :cond_5
    invoke-virtual {v8, v5}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    if-nez v8, :cond_6

    .line 169
    .line 170
    const-string/jumbo v3, "colors is null"

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_6
    const-wide/16 v10, 0x200

    .line 178
    .line 179
    invoke-virtual {v8, v10, v11}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    const-wide/16 v11, 0x20

    .line 184
    .line 185
    invoke-virtual {v8, v11, v12}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    const-wide/16 v12, 0x40

    .line 190
    .line 191
    invoke-virtual {v8, v12, v13}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    const-wide/16 v13, 0x80

    .line 196
    .line 197
    invoke-virtual {v8, v13, v14}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    if-eqz v10, :cond_a

    .line 202
    .line 203
    if-eqz v11, :cond_a

    .line 204
    .line 205
    if-eqz v12, :cond_a

    .line 206
    .line 207
    if-nez v8, :cond_7

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_7
    invoke-virtual {v10}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    invoke-virtual {v11}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    invoke-virtual {v12}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    invoke-virtual {v8}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-eq v10, v7, :cond_9

    .line 227
    .line 228
    if-eq v11, v7, :cond_9

    .line 229
    .line 230
    if-eq v12, v7, :cond_9

    .line 231
    .line 232
    if-ne v8, v7, :cond_8

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_8
    move v3, v7

    .line 236
    :cond_9
    :goto_6
    const-string/jumbo v13, "isBlackWallpaper : "

    .line 237
    .line 238
    .line 239
    invoke-static {v10, v11, v13, v9, v9}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_a
    :goto_7
    const-string/jumbo v3, "items are null"

    .line 261
    .line 262
    .line 263
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :goto_8
    if-eqz v3, :cond_d

    .line 268
    .line 269
    iget v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    .line 270
    .line 271
    iget v10, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMax:I

    .line 272
    .line 273
    add-int/lit8 v11, v10, -0x14

    .line 274
    .line 275
    if-le v8, v11, :cond_b

    .line 276
    .line 277
    iput v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_b
    iput v11, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    .line 281
    .line 282
    :goto_9
    iget v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUp:I

    .line 283
    .line 284
    add-int/lit8 v11, v10, -0xa

    .line 285
    .line 286
    if-le v8, v11, :cond_c

    .line 287
    .line 288
    iput v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_c
    iput v11, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    .line 292
    .line 293
    :goto_a
    iput v10, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    .line 294
    .line 295
    goto :goto_b

    .line 296
    :cond_d
    iget v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    .line 297
    .line 298
    iput v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    .line 299
    .line 300
    iget v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUp:I

    .line 301
    .line 302
    iput v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    .line 303
    .line 304
    iget v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMax:I

    .line 305
    .line 306
    iput v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    .line 307
    .line 308
    :goto_b
    iget v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    .line 309
    .line 310
    div-int/2addr v8, v5

    .line 311
    iput v8, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessGuideLevel:I

    .line 312
    .line 313
    new-instance v8, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string/jumbo v10, "initBrightness : "

    .line 316
    .line 317
    .line 318
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget v10, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    .line 322
    .line 323
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    iget v10, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUp:I

    .line 330
    .line 331
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    iget v9, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMax:I

    .line 338
    .line 339
    const-string v10, " : "

    .line 340
    .line 341
    const-string v11, ", auto = "

    .line 342
    .line 343
    invoke-static {v9, v2, v10, v11, v8}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 344
    .line 345
    .line 346
    iget-boolean v9, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z

    .line 347
    .line 348
    const-string v10, ", blackWallpaper = "

    .line 349
    .line 350
    const-string v11, ", guide = "

    .line 351
    .line 352
    invoke-static {v8, v9, v10, v3, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget v3, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessGuideLevel:I

    .line 356
    .line 357
    invoke-static {v8, v3, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 358
    .line 359
    .line 360
    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z

    .line 361
    .line 362
    const-wide/16 v8, 0x7d0

    .line 363
    .line 364
    if-eqz v1, :cond_e

    .line 365
    .line 366
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->setBrightness(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 372
    .line 373
    .line 374
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessGuideLevel:I

    .line 375
    .line 376
    if-ge v2, v1, :cond_11

    .line 377
    .line 378
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->showNotificationIfNeed(I)V

    .line 379
    .line 380
    .line 381
    goto :goto_c

    .line 382
    :cond_e
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    .line 383
    .line 384
    if-ge v2, v1, :cond_10

    .line 385
    .line 386
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessGuideLevel:I

    .line 387
    .line 388
    if-ge v2, v1, :cond_f

    .line 389
    .line 390
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    .line 391
    .line 392
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->setBrightness(I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->showNotificationIfNeed(I)V

    .line 396
    .line 397
    .line 398
    :cond_f
    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 399
    .line 400
    .line 401
    goto :goto_c

    .line 402
    :cond_10
    iget p0, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    .line 403
    .line 404
    if-ge v2, p0, :cond_12

    .line 405
    .line 406
    const-wide/16 v1, 0x1f4

    .line 407
    .line 408
    invoke-virtual {v4, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 409
    .line 410
    .line 411
    :cond_11
    :goto_c
    iput-boolean v7, v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsSetBrightness:Z

    .line 412
    .line 413
    :cond_12
    return-void
.end method

.method public final startInactivityTimer(I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "startInactivityTimer : "

    .line 2
    .line 3
    .line 4
    const-string v1, "SemFace"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    int-to-long v1, p1

    .line 16
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final declared-synchronized startOperation(I)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string/jumbo v2, "startOperation: failed to get display, "

    .line 4
    .line 5
    .line 6
    const-string/jumbo v3, "enroll timeout set as : "

    .line 7
    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    const-string v4, "SemFace"

    .line 11
    .line 12
    const-string/jumbo v5, "startOperation S"

    .line 13
    .line 14
    .line 15
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 19
    .line 20
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    iput-wide v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mStartOperationTime:J

    .line 27
    .line 28
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 29
    .line 30
    iput-wide v4, v6, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceStartTime:J

    .line 31
    .line 32
    const v4, 0xea60

    .line 33
    .line 34
    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    iput-wide v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    .line 42
    .line 43
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v5}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/16 v4, 0x7530

    .line 53
    .line 54
    :goto_0
    const-string v5, "SemFace"

    .line 55
    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startInactivityTimer(I)V

    .line 72
    .line 73
    .line 74
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 75
    .line 76
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    const-string v11, "Biometrics_FaceService"

    .line 87
    .line 88
    const/16 v7, 0x1a

    .line 89
    .line 90
    const/4 v10, 0x0

    .line 91
    const/4 v12, 0x0

    .line 92
    invoke-virtual/range {v6 .. v12}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_7

    .line 102
    .line 103
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    iget v3, v3, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mHashID:I

    .line 108
    .line 109
    const-string v6, "E"

    .line 110
    .line 111
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 112
    .line 113
    invoke-virtual {v7}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    iget-object v7, v7, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStart(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :catchall_0
    move-exception p1

    .line 125
    goto/16 :goto_7

    .line 126
    .line 127
    :cond_1
    const/4 v3, 0x2

    .line 128
    if-ne p1, v3, :cond_6

    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget-object v5, v3, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mPowerManager:Landroid/os/PowerManager;

    .line 137
    .line 138
    invoke-virtual {v5, v1}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    iget v3, v3, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    .line 143
    .line 144
    int-to-float v3, v3

    .line 145
    cmpg-float v3, v5, v3

    .line 146
    .line 147
    if-gez v3, :cond_2

    .line 148
    .line 149
    const/16 v3, 0x1388

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_2
    const/16 v3, 0xfa0

    .line 153
    .line 154
    :goto_1
    sget-boolean v5, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mNeedtoAuthenticateExt:Z

    .line 155
    .line 156
    if-eqz v5, :cond_4

    .line 157
    .line 158
    sget-object v3, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mSurface:Landroid/view/Surface;

    .line 159
    .line 160
    iput-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 161
    .line 162
    const/4 v5, 0x0

    .line 163
    sput-object v5, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mSurface:Landroid/view/Surface;

    .line 164
    .line 165
    sput-boolean v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mNeedtoAuthenticateExt:Z

    .line 166
    .line 167
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 168
    .line 169
    const-string v6, "SemFace"

    .line 170
    .line 171
    if-eqz v3, :cond_3

    .line 172
    .line 173
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/FaceService;->acquireSurfaceHandle(Landroid/view/Surface;)Landroid/os/NativeHandle;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    iput-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOsPreviewHandle:Landroid/os/NativeHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .line 179
    :try_start_1
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlNativeHandleUtils;->dup(Landroid/os/NativeHandle;)Landroid/hardware/common/NativeHandle;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    iput-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 184
    .line 185
    const-string v3, "Obtained handles for the preview surface."

    .line 186
    .line 187
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :catch_0
    move-exception v3

    .line 192
    :try_start_2
    iput-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 193
    .line 194
    const-string v5, "Failed to dup mOsPreviewHandle"

    .line 195
    .line 196
    invoke-static {v6, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .line 198
    .line 199
    :cond_3
    :goto_2
    const v3, 0x927c0

    .line 200
    .line 201
    .line 202
    :cond_4
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 203
    .line 204
    iget-boolean v5, v5, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    .line 205
    .line 206
    if-eqz v5, :cond_5

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_5
    move v4, v3

    .line 210
    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startInactivityTimer(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startBrightness()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isBrightnessEnable()Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    new-array v5, v0, [B

    .line 221
    .line 222
    aput-byte v3, v5, v1

    .line 223
    .line 224
    invoke-virtual {p0, v5}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonSetFaceTag([B)V

    .line 225
    .line 226
    .line 227
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 228
    .line 229
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    if-eqz v3, :cond_7

    .line 234
    .line 235
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    iget v3, v3, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mHashID:I

    .line 240
    .line 241
    const-string v6, "A"

    .line 242
    .line 243
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 244
    .line 245
    invoke-virtual {v7}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    iget-object v7, v7, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStart(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_6
    const/16 v4, 0x1770

    .line 256
    .line 257
    :cond_7
    :goto_4
    invoke-virtual {p0, v4, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->acquireDVFS(II)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    if-eqz p1, :cond_8

    .line 265
    .line 266
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 267
    .line 268
    invoke-static {v3, p1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    if-eqz p1, :cond_8

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_8
    move v0, v1

    .line 276
    :goto_5
    add-int/lit16 v4, v4, 0xbb8

    .line 277
    .line 278
    invoke-virtual {p0, v4, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->setWakeLock(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    .line 280
    .line 281
    :try_start_3
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mLastRotation:I
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :catch_1
    move-exception p1

    .line 295
    :try_start_4
    const-string v0, "SemFace"

    .line 296
    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    :goto_6
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mLastRotation:I

    .line 317
    .line 318
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonSetRotation(I)V

    .line 319
    .line 320
    .line 321
    const/4 p1, -0x1

    .line 322
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredInfo:I

    .line 323
    .line 324
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredVendorInfo:I

    .line 325
    .line 326
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSkipAcquiredEventCount:I

    .line 327
    .line 328
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsCheckedTooDark:Z

    .line 329
    .line 330
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticateResult:Z

    .line 331
    .line 332
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    .line 333
    .line 334
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mInsufficient:I

    .line 335
    .line 336
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBacklight:I

    .line 337
    .line 338
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMotion:I

    .line 339
    .line 340
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEarlyStop:Z

    .line 341
    .line 342
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    .line 343
    .line 344
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsTimeout:Z

    .line 345
    .line 346
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mDaemonIsCancelled:Z

    .line 347
    .line 348
    const-string p1, "SemFace"

    .line 349
    .line 350
    const-string/jumbo v0, "startOperation E"

    .line 351
    .line 352
    .line 353
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 357
    .line 358
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;

    .line 359
    .line 360
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    .line 365
    .line 366
    monitor-exit p0

    .line 367
    return-void

    .line 368
    :goto_7
    monitor-exit p0

    .line 369
    throw p1
.end method

.method public final declared-synchronized stopOperation()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "SemFace"

    .line 3
    .line 4
    const-string/jumbo v1, "stopOperation S"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "SemFace"

    .line 15
    .line 16
    const-string/jumbo v1, "stopOperation E : skip"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-string v5, "Biometrics_FaceService"

    .line 45
    .line 46
    const/16 v6, 0x1a

    .line 47
    .line 48
    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->releaseWakeLock(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v3, 0x2

    .line 56
    if-ne v0, v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->releaseWakeLock(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->restoreBrightness()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->releaseDVFS()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    .line 71
    .line 72
    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    .line 74
    .line 75
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 76
    .line 77
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEnrollPausing:Z

    .line 78
    .line 79
    const-wide/16 v0, -0x1

    .line 80
    .line 81
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 85
    .line 86
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->releaseSurfaceHandlesIfNeeded()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 96
    .line 97
    :cond_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mMemoryFileForAuthPreviewResult:Landroid/os/MemoryFile;

    .line 105
    .line 106
    :cond_4
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLmemoryFileForPreview:Landroid/os/MemoryFile;

    .line 107
    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLmemoryFileForPreview:Landroid/os/MemoryFile;

    .line 114
    .line 115
    :cond_5
    const-string v0, "SemFace"

    .line 116
    .line 117
    const-string/jumbo v1, "stopOperation E"

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 124
    .line 125
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;

    .line 126
    .line 127
    const/4 v2, 0x3

    .line 128
    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    .line 134
    monitor-exit p0

    .line 135
    return-void

    .line 136
    :goto_1
    monitor-exit p0

    .line 137
    throw v0
.end method
