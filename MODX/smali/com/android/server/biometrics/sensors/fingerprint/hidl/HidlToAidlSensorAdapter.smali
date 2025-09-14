.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;
.super Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public final mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public mCurrentUserId:I

.field public mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

.field public final mInternalCleanupRunnable:Ljava/lang/Runnable;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

.field public mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

.field public final mUserStartedCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/SensorProps;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/lang/Runnable;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;)V
    .locals 7

    .line 1
    move-object v6, p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    move-object v1, p4

    .line 8
    move v2, p7

    .line 9
    invoke-static {p4, v0, p7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getFingerprintSensorPropertiesInternal(Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/util/List;Z)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 12
    move-result-object v4

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p2

    .line 16
    move-object v3, p3

    .line 17
    move-object v5, p6

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 21
    const/16 v0, -0x2710

    .line 23
    iput v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 25
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 30
    iput-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;

    .line 32
    move-object v0, p5

    .line 33
    iput-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 35
    move-object v0, p8

    .line 36
    iput-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mInternalCleanupRunnable:Ljava/lang/Runnable;

    .line 38
    move-object/from16 v0, p9

    .line 40
    iput-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 42
    move-object/from16 v0, p10

    .line 44
    iput-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 46
    if-nez p11, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;

    .line 50
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object/from16 v0, p11

    .line 56
    :goto_0
    iput-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 58
    return-void
.end method


# virtual methods
.method public final generateEvent()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const/4 v0, 0x7

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 8
    const v1, 0x11171

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAcquired(BI)V

    .line 14
    :cond_0
    return-void
.end method

.method public final getCurrentSessionUserId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mUserId:I

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public getDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 3

    .line 1
    const-string v0, "HidlToAidlSensorAdapter"

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 5
    iget-boolean v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    .line 7
    if-eqz v2, :cond_1

    .line 9
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 15
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 17
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 19
    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 21
    invoke-direct {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    .line 24
    goto :goto_4

    .line 25
    :cond_0
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 27
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 29
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 31
    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;-><init>(Landroid/content/Context;IZ)V

    .line 37
    goto :goto_4

    .line 38
    :cond_1
    iget-boolean v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    .line 40
    if-eqz v1, :cond_2

    .line 42
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 44
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 46
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 48
    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;-><init>(Landroid/content/Context;IZ)V

    .line 54
    return-object v0

    .line 55
    :cond_2
    :try_start_0
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    .line 57
    if-eqz p0, :cond_3

    .line 59
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 62
    move-result-object p0

    .line 63
    :goto_0
    move-object v0, p0

    .line 64
    goto :goto_4

    .line 65
    :catch_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :catch_1
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-static {}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->getService()Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    .line 72
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :goto_1
    const-string v1, "NoSuchElementException"

    .line 76
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    goto :goto_3

    .line 80
    :goto_2
    const-string v1, "Failed to get fingerprint HAL"

    .line 82
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :goto_3
    const/4 v0, 0x0

    .line 86
    :goto_4
    return-object v0
.end method

.method public final getFingerprintUpdateActiveUserClient(IZ)Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;
    .locals 13

    .line 1
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 5
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;

    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;I)V

    .line 11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 13
    iget v4, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 15
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 18
    move-result-object v5

    .line 19
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;

    .line 21
    const/4 v0, 0x4

    .line 22
    invoke-direct {v7, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;I)V

    .line 25
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 27
    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 29
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 32
    move-result-object v0

    .line 33
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {v0, v3, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 42
    move-result v0

    .line 43
    xor-int/lit8 v8, v0, 0x1

    .line 45
    iget-object v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 47
    iget-object v11, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;

    .line 49
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 51
    move-object v0, v12

    .line 52
    move v3, p1

    .line 53
    move v10, p2

    .line 54
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;ZLjava/util/Map;ZLcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V

    .line 57
    return-object v12
.end method

.method public final declared-synchronized getIBiometricsFingerprint()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 14
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 16
    iget-boolean v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    if-eqz v1, :cond_1

    .line 20
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :cond_1
    if-nez v0, :cond_2

    .line 24
    :try_start_2
    const-string v0, "HidlToAidlSensorAdapter"

    .line 26
    const-string v1, "Fingerprint HAL not available"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    monitor-exit p0

    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    .line 39
    move-result-object v0

    .line 40
    const-wide/16 v1, 0x0

    .line 42
    invoke-interface {v0, p0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 45
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda1;

    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;I)V

    .line 51
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mInternalCleanupRunnable:Ljava/lang/Runnable;

    .line 58
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 61
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    monitor-exit p0

    .line 64
    return-object v0

    .line 65
    :goto_0
    monitor-exit p0

    .line 66
    throw v0
.end method

.method public final getLockoutTracker(Z)Lcom/android/server/biometrics/sensors/LockoutTracker;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 7
    return-object p0
.end method

.method public final declared-synchronized getSession()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v2, :cond_0

    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 18
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;

    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-direct {v2, v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;I)V

    .line 24
    iget v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 26
    new-instance v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 28
    iget-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 30
    iget-object v6, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 32
    iget-object v14, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 34
    iget v7, v14, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 36
    iget v8, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 38
    iget-object v9, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 40
    iget-object v10, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 42
    iget-object v11, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 44
    iget-object v12, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 46
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 48
    iget-object v13, v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 50
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

    .line 52
    move-object/from16 v16, v4

    .line 54
    move-object v4, v15

    .line 55
    move-object/from16 v17, v14

    .line 57
    move-object/from16 v14, v16

    .line 59
    move-object/from16 v18, v15

    .line 61
    move-object/from16 v15, v17

    .line 63
    invoke-direct/range {v4 .. v15}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 66
    move-object/from16 v4, v18

    .line 68
    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;ILcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V

    .line 71
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    .line 74
    return-object v0

    .line 75
    :goto_0
    monitor-exit p0

    .line 76
    throw v0
.end method

.method public getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mUserId:I

    .line 7
    if-ne v0, p1, :cond_0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final handleOnLockoutReset(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mUserId:I

    .line 7
    if-ne v0, p1, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 11
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onLockoutCleared()V

    .line 14
    :cond_0
    return-void
.end method

.method public handleUserChanged(I)V
    .locals 2

    .line 1
    const-string v0, "User changed. Current user for fingerprint sensor is "

    .line 3
    const-string v1, "HidlToAidlSensorAdapter"

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 11
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 13
    return-void
.end method

.method public injectDaemon(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 3
    return-void
.end method

.method public final isHardwareDetected(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getIBiometricsFingerprint()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final onBinderDied()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->onBinderDied()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 7
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 9
    const/16 v0, -0x2710

    .line 11
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 13
    return-void
.end method

.method public final serviceDied(J)V
    .locals 0

    .line 1
    const-string p1, "HidlToAidlSensorAdapter"

    .line 3
    const-string p2, "Fingerprint HAL died."

    .line 5
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->binderDied()V

    .line 13
    return-void
.end method

.method public final setTestHalEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 7
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 9
    return-void
.end method

.method public final setTpaHalEnabled()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 4
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 6
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda1;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;I)V

    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mHandler:Landroid/os/Handler;

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void
.end method
