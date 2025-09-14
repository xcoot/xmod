.class public final Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field public final mContext:Landroid/content/Context;

.field public final mEnrollmentIds:Ljava/util/Set;

.field public final mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final mRandom:Ljava/util/Random;

.field public final mReceiver:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;

.field public final mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mReceiver:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 20
    .line 21
    new-instance p1, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 27
    .line 28
    new-instance p1, Ljava/util/Random;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

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
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string/jumbo p0, "face/aidl/BiometricTestSessionImpl"

    .line 24
    .line 25
    .line 26
    const-string p1, "No faces, returning"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/hardware/face/Face;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 50
    .line 51
    const/16 p1, 0x45

    .line 52
    .line 53
    new-array p1, p1, [B

    .line 54
    .line 55
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 60
    .line 61
    .line 62
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
    const-string/jumbo v1, "face/aidl/BiometricTestSessionImpl"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final finishEnroll(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->finishEnroll_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v1, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v1, Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentProgress(II)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final notifyAcquired(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyAcquired_enforcePermission()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/biometrics/face/BaseFrame;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/hardware/biometrics/face/BaseFrame;-><init>()V

    .line 7
    .line 8
    .line 9
    int-to-byte p2, p2

    .line 10
    iput-byte p2, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    instance-of p2, p2, Lcom/android/server/biometrics/sensors/EnrollClient;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    new-instance p2, Landroid/hardware/biometrics/face/EnrollmentFrame;

    .line 25
    .line 26
    invoke-direct {p2}, Landroid/hardware/biometrics/face/EnrollmentFrame;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p2, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p2, Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 44
    .line 45
    invoke-direct {p2}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p2, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 57
    .line 58
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method public final notifyError(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyError_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 11
    .line 12
    int-to-byte p1, p2

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onError(BI)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final notifyVendorAcquired(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyVendorAcquired_enforcePermission()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/biometrics/face/BaseFrame;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/hardware/biometrics/face/BaseFrame;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x17

    .line 10
    .line 11
    iput-byte v1, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 12
    .line 13
    iput p2, v0, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 14
    .line 15
    new-instance p2, Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 16
    .line 17
    invoke-direct {p2}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p2, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 29
    .line 30
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final notifyVendorError(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyVendorError_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 11
    .line 12
    const/4 p1, 0x7

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onError(BI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final rejectAuthentication(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->rejectAuthentication_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFailed()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setTestHalEnabled(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->setTestHalEnabled_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x1f4

    .line 5
    .line 6
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    const-string/jumbo v1, "face/aidl/BiometricTestSessionImpl"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v2, "exception"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 21
    .line 22
    iput-boolean p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final startEnroll(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/ITestSession$Stub;->startEnroll_enforcePermission()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 7
    .line 8
    iget v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 9
    .line 10
    new-instance v4, Landroid/os/Binder;

    .line 11
    .line 12
    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/16 v3, 0x45

    .line 16
    .line 17
    new-array v6, v3, [B

    .line 18
    .line 19
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mReceiver:Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const/4 v0, 0x0

    .line 28
    new-array v10, v0, [I

    .line 29
    .line 30
    new-instance v0, Landroid/hardware/face/FaceEnrollOptions$Builder;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/hardware/face/FaceEnrollOptions$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/hardware/face/FaceEnrollOptions$Builder;->build()Landroid/hardware/face/FaceEnrollOptions;

    .line 36
    .line 37
    .line 38
    move-result-object v13

    .line 39
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    iget-object v14, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    new-instance v15, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    const/4 v12, 0x0

    .line 51
    move-object v0, v15

    .line 52
    move/from16 v3, p1

    .line 53
    .line 54
    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method
