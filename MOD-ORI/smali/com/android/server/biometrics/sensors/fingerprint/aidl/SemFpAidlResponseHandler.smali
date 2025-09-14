.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;
.super Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public final mContext:Landroid/content/Context;

.field public final mHalCallbackEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

.field public final mLockoutHalImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field public final mProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorId:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mSensorId:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mUserId:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mHalCallbackEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "41a730a7a6b5aa9cebebce70ee5b5e509b0af6fb"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public final handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 2
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;J)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 5
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAcquired(BI)V
    .locals 3

    const/16 v0, 0x8

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    :goto_0
    move v0, v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    if-ne p1, v1, :cond_7

    goto :goto_1

    :cond_7
    if-ne p1, v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0x9

    if-ne p1, v1, :cond_9

    goto :goto_2

    :cond_9
    const/16 v2, 0xa

    if-ne p1, v2, :cond_a

    goto :goto_1

    :cond_a
    const/16 v2, 0xb

    if-ne p1, v2, :cond_b

    goto :goto_0

    :cond_b
    const/16 v1, 0xc

    if-ne p1, v1, :cond_c

    goto :goto_2

    :cond_c
    const/16 v1, 0xe

    if-ne p1, v1, :cond_d

    goto :goto_1

    .line 1
    :cond_d
    :goto_2
    invoke-virtual {p0, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAcquired(II)V

    return-void
.end method

.method public final onAcquired(II)V
    .locals 8

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleAcquired: acquiredInfo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", vendor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FingerprintService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isOpticalType()Z

    move-result v3

    const/16 v4, 0x2714

    const/4 v5, 0x6

    if-eqz v3, :cond_1

    if-ne p1, v5, :cond_1

    if-eq p2, v4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isOpticalType()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne p1, v5, :cond_2

    const v3, 0x11171

    if-ne p2, v3, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, p2

    :goto_1
    if-eq p1, v5, :cond_3

    goto :goto_2

    :cond_3
    const/16 v3, 0x4e21

    if-eq v2, v3, :cond_6

    const/16 v3, 0x4e22

    if-eq v2, v3, :cond_6

    const/16 v3, 0x7531

    if-eq v2, v3, :cond_6

    const/16 v3, 0x7532

    if-eq v2, v3, :cond_6

    :goto_2
    if-eq p1, v5, :cond_4

    goto :goto_3

    :cond_4
    const/16 v3, 0x2718

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2719

    if-eq v2, v3, :cond_5

    .line 5
    :goto_3
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;II)V

    .line 6
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 7
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 8
    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    const-class v3, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda11;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v2, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;III)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;J)V

    return-void

    .line 10
    :cond_5
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda9;-><init>(I)V

    const-wide/16 v4, 0x0

    const-class v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v3

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;J)V

    return-void

    .line 11
    :cond_6
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;I)V

    .line 12
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 13
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 6

    .line 1
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;I)V

    .line 5
    .line 6
    .line 7
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-direct {v3, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;I)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    const-class v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;J)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 22
    .line 23
    iget-boolean v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 24
    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->isInteractive()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_3

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnAuthenticated(Z)V

    .line 39
    .line 40
    .line 41
    :cond_0
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 46
    .line 47
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 50
    .line 51
    iget-boolean v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mIsSupportHwLightSource:Z

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mRunnableDisableFunctionForLightSource:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mRunnableRestoreFunctionForLightSource:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 70
    .line 71
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    const-wide/16 v1, 0xa

    .line 75
    .line 76
    :cond_3
    move-wide v7, v1

    .line 77
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda4;

    .line 78
    .line 79
    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 80
    .line 81
    .line 82
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;

    .line 83
    .line 84
    const/4 p1, 0x2

    .line 85
    invoke-direct {v6, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;I)V

    .line 86
    .line 87
    .line 88
    const-class v4, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 89
    .line 90
    move-object v3, p0

    .line 91
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;J)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final onAuthenticatorIdInvalidated(J)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;-><init>(JI)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onAuthenticatorIdRetrieved(J)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;-><init>(JI)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onChallengeGenerated(J)V
    .locals 6

    .line 1
    const-class v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;

    .line 2
    .line 3
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;JI)V

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onChallengeRevoked(J)V
    .locals 6

    .line 1
    const-class v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;

    .line 2
    .line 3
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;JI)V

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onEnrollmentProgress(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onEnrollmentProgress$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler(II)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onEnrollmentProgress$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v3, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 11
    .line 12
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mSensorId:I

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getUniqueName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 29
    .line 30
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mSensorId:I

    .line 31
    .line 32
    int-to-long v5, v1

    .line 33
    move-object v1, v0

    .line 34
    move v4, p1

    .line 35
    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 36
    .line 37
    .line 38
    const-class p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

    .line 39
    .line 40
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    .line 41
    .line 42
    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 43
    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onEnrollmentsEnumerated([I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onEnrollmentsEnumerated: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    array-length v1, p1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "FingerprintService"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onEnrollmentsEnumerated$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler([I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onEnrollmentsEnumerated$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler([I)V
    .locals 9

    .line 1
    array-length v0, p1

    .line 2
    const-class v1, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v3, p1

    .line 9
    if-ge v0, v3, :cond_1

    .line 10
    .line 11
    aget v3, p1, v0

    .line 12
    .line 13
    array-length v4, p1

    .line 14
    sub-int/2addr v4, v0

    .line 15
    add-int/lit8 v4, v4, -0x1

    .line 16
    .line 17
    new-instance v5, Landroid/hardware/fingerprint/Fingerprint;

    .line 18
    .line 19
    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mSensorId:I

    .line 20
    .line 21
    int-to-long v6, v6

    .line 22
    const-string v8, ""

    .line 23
    .line 24
    invoke-direct {v5, v8, v3, v6, v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    invoke-direct {v3, v5, v4, v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;-><init>(Landroid/hardware/fingerprint/Fingerprint;II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    invoke-direct {p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final onEnrollmentsRemoved([I)V
    .locals 9

    .line 1
    array-length v0, p1

    .line 2
    const-class v1, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v3, p1

    .line 9
    if-ge v0, v3, :cond_1

    .line 10
    .line 11
    aget v3, p1, v0

    .line 12
    .line 13
    array-length v4, p1

    .line 14
    sub-int/2addr v4, v0

    .line 15
    add-int/lit8 v4, v4, -0x1

    .line 16
    .line 17
    new-instance v5, Landroid/hardware/fingerprint/Fingerprint;

    .line 18
    .line 19
    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mSensorId:I

    .line 20
    .line 21
    int-to-long v6, v6

    .line 22
    const-string v8, ""

    .line 23
    .line 24
    invoke-direct {v5, v8, v3, v6, v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-direct {v3, v5, v4, v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;-><init>(Landroid/hardware/fingerprint/Fingerprint;II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-direct {p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final onError(BI)V
    .locals 7

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-ne p1, v1, :cond_1

    .line 8
    .line 9
    :goto_0
    move v0, v1

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    const/4 v1, 0x2

    .line 12
    if-ne p1, v1, :cond_2

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_2
    const/4 v1, 0x3

    .line 16
    if-ne p1, v1, :cond_3

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_3
    const/4 v1, 0x4

    .line 20
    if-ne p1, v1, :cond_4

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_4
    const/4 v1, 0x5

    .line 24
    if-ne p1, v1, :cond_5

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_5
    const/4 v1, 0x6

    .line 28
    if-ne p1, v1, :cond_6

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_6
    const/4 v1, 0x7

    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    if-ne p1, v1, :cond_7

    .line 35
    .line 36
    move v0, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_7
    if-ne p1, v2, :cond_8

    .line 39
    .line 40
    const/16 v0, 0x12

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_8
    const/16 v1, 0x9

    .line 44
    .line 45
    if-ne p1, v1, :cond_9

    .line 46
    .line 47
    const/16 v0, 0x13

    .line 48
    .line 49
    :cond_9
    :goto_1
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda11;

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    invoke-direct {v3, p0, v0, p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;III)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v5, 0x0

    .line 56
    .line 57
    const-class v2, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    move-object v1, p0

    .line 61
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;J)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final onInteractionDetected()V
    .locals 2

    .line 1
    const-string v0, "FingerprintService"

    .line 2
    .line 3
    const-string/jumbo v1, "onInteractionDetected"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onInteractionDetected$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onInteractionDetected$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onLockoutCleared()V
    .locals 8

    .line 1
    const-string v0, "AidlResponseHandler"

    .line 2
    .line 3
    const-string/jumbo v1, "onLockoutCleared"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-class v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    .line 10
    .line 11
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {v4, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;I)V

    .line 15
    .line 16
    .line 17
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {v5, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;I)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onLockoutCleared$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onLockoutCleared$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onLockoutPermanent()V
    .locals 2

    .line 1
    const-string v0, "AidlResponseHandler"

    .line 2
    .line 3
    const-string/jumbo v1, "onLockoutPermanent"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onLockoutPermanent$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onLockoutPermanent$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-class v2, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 9
    .line 10
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onLockoutTimed(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onLockoutTimed: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "AidlResponseHandler"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onLockoutTimed$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler(J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onLockoutTimed$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler(J)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;-><init>(JI)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const-class p2, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 9
    .line 10
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onSessionClosed()V
    .locals 2

    .line 1
    const-string v0, "FingerprintService"

    .line 2
    .line 3
    const-string/jumbo v1, "onSessionClosed"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onSessionClosed$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onSessionClosed$com$android$server$biometrics$sensors$fingerprint$aidl$AidlResponseHandler()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
