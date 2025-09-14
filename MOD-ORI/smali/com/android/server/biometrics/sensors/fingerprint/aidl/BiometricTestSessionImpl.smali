.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field public final mContext:Landroid/content/Context;

.field public final mEnrollmentIds:Ljava/util/Set;

.field public final mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final mRandom:Ljava/util/Random;

.field public final mReceiver:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;

.field public final mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mReceiver:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 20
    .line 21
    new-instance p1, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 27
    .line 28
    new-instance p1, Ljava/util/Random;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final acceptAuthentication(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->acceptAuthentication_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/biometrics/Flags;->useVhalForTesting()Z

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string/jumbo p0, "fp/aidl/BiometricTestSessionImpl"

    .line 31
    .line 32
    .line 33
    const-string p1, "No fingerprints, returning"

    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 57
    .line 58
    const/16 p1, 0x45

    .line 59
    .line 60
    new-array p1, p1, [B

    .line 61
    .line 62
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final cleanupInternalState(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->cleanupInternalState_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "cleanupInternalState: "

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "fp/aidl/BiometricTestSessionImpl"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/biometrics/Flags;->useVhalForTesting()Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 22
    .line 23
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$2;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final finishEnroll(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->finishEnroll_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/biometrics/Flags;->useVhalForTesting()Z

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "finishEnroll(): useVhalForTesting=false"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "fp/aidl/BiometricTestSessionImpl"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/biometrics/Flags;->useVhalForTesting()Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v1, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v1, Ljava/util/HashSet;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onEnrollmentProgress(II)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final notifyAcquired(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyAcquired_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 11
    .line 12
    int-to-byte p1, p2

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAcquired(BI)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final notifyError(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyError_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 11
    .line 12
    int-to-byte p1, p2

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onError(BI)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final notifyVendorAcquired(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyAcquired_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 11
    .line 12
    const/4 p1, 0x7

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAcquired(BI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final notifyVendorError(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyVendorError_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 11
    .line 12
    const/4 p1, 0x7

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onError(BI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final rejectAuthentication(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->rejectAuthentication_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/biometrics/Flags;->useVhalForTesting()Z

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAuthenticationFailed()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setTestHalEnabled(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->setTestHalEnabled_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v2, "setTestHalEnabled(): useVhalForTesting=false mTestHalEnabled="

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/android/server/biometrics/Flags;->useVhalForTesting()Z

    .line 33
    .line 34
    .line 35
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, " changed="

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-static {}, Lcom/android/server/biometrics/Flags;->useVhalForTesting()Z

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final startEnroll(I)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->startEnroll_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 5
    .line 6
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 7
    .line 8
    new-instance v3, Landroid/os/Binder;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 11
    .line 12
    .line 13
    const/16 v0, 0x45

    .line 14
    .line 15
    new-array v8, v0, [B

    .line 16
    .line 17
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mReceiver:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    new-instance p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;

    .line 26
    .line 27
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintEnrollOptions;

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    iget-object p0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    iget-object p0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;

    .line 43
    .line 44
    const/4 v10, 0x2

    .line 45
    move-object v0, v12

    .line 46
    move v7, p1

    .line 47
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;I[BLjava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method
