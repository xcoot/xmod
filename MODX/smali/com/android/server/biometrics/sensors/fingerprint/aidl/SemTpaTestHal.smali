.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;
.super Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;


# instance fields
.field public mActionDelayLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mAuthenticatorID:Landroid/util/SparseLongArray;

.field public mChallenge:J

.field public final mContext:Landroid/content/Context;

.field public mCurrentEnrollmentId:I

.field final mEnrolledIds:Ljava/util/Set;

.field public mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

.field public final mSehFingerprint:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;

.field public mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

.field mThread:Lcom/android/server/ServiceThread;

.field public mTspDelayLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-direct {p1, v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;-><init>(ILcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;)V

    .line 12
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 14
    new-instance p1, Ljava/util/HashSet;

    .line 16
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    .line 21
    new-instance p1, Landroid/util/SparseLongArray;

    .line 23
    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    .line 28
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;

    .line 30
    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mSehFingerprint:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;

    .line 35
    return-void
.end method


# virtual methods
.method public final createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;
    .locals 3

    .line 1
    const-string/jumbo v0, "createSession, sensorId: "

    .line 4
    const-string v1, " userId: "

    .line 6
    const-string/jumbo v2, "fingerprint.aidl.SemTpaTestHal"

    .line 9
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 14
    if-nez p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 18
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->initActions()V

    .line 21
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mSehFingerprint:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;

    .line 23
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 25
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 28
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 30
    const/4 v0, 0x6

    .line 31
    const v1, 0x186c8

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 39
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 44
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 47
    :cond_0
    new-instance p1, Lcom/android/server/ServiceThread;

    .line 49
    const/4 v0, 0x1

    .line 50
    const/4 v1, -0x2

    .line 51
    invoke-direct {p1, v1, v2, v0}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 54
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 56
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 59
    :cond_1
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 61
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 63
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 66
    move-result-object p1

    .line 67
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    .line 69
    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V

    .line 72
    return-object v0
.end method

.method public final deliverAcquiredEvent(II)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 3
    const/16 v0, 0x8

    .line 5
    if-ne p1, v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_2

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-nez p1, :cond_1

    .line 12
    :goto_0
    move v0, v1

    .line 13
    goto :goto_2

    .line 14
    :cond_1
    const/4 v2, 0x2

    .line 15
    if-ne p1, v1, :cond_2

    .line 17
    :goto_1
    move v0, v2

    .line 18
    goto :goto_2

    .line 19
    :cond_2
    const/4 v1, 0x3

    .line 20
    if-ne p1, v2, :cond_3

    .line 22
    goto :goto_0

    .line 23
    :cond_3
    const/4 v2, 0x4

    .line 24
    if-ne p1, v1, :cond_4

    .line 26
    goto :goto_1

    .line 27
    :cond_4
    const/4 v1, 0x5

    .line 28
    if-ne p1, v2, :cond_5

    .line 30
    goto :goto_0

    .line 31
    :cond_5
    const/4 v2, 0x6

    .line 32
    if-ne p1, v1, :cond_6

    .line 34
    goto :goto_1

    .line 35
    :cond_6
    const/4 v1, 0x7

    .line 36
    if-ne p1, v2, :cond_7

    .line 38
    goto :goto_0

    .line 39
    :cond_7
    if-ne p1, v1, :cond_8

    .line 41
    goto :goto_2

    .line 42
    :cond_8
    const/16 v1, 0xa

    .line 44
    if-ne p1, v1, :cond_9

    .line 46
    goto :goto_0

    .line 47
    :cond_9
    const/16 v1, 0x9

    .line 49
    if-ne p1, v1, :cond_a

    .line 51
    const/16 v0, 0xb

    .line 53
    :cond_a
    :goto_2
    invoke-interface {p0, v0, p2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAcquired(BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_3

    .line 57
    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :goto_3
    return-void
.end method

.method public final deliverAuthenticationResult(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/16 p1, 0x8

    .line 11
    const/16 v0, 0x3ec

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->deliverErrorEvent(II)V

    .line 16
    return-void

    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 21
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    .line 23
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/Integer;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result p0

    .line 37
    const/16 v0, 0x45

    .line 39
    new-array v0, v0, [B

    .line 41
    invoke-static {v0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p1, p0, v0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 53
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticationFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_1

    .line 57
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    :goto_1
    return-void
.end method

.method public final deliverEnrollResult(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mCurrentEnrollmentId:I

    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentProgress(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_0
    return-void
.end method

.method public final deliverErrorEvent(II)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 3
    const/16 v0, 0x11

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ne p1, v0, :cond_0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_1

    .line 12
    :goto_0
    move v1, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 v0, 0x2

    .line 15
    if-ne p1, v0, :cond_2

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p1, v0, :cond_3

    .line 21
    goto :goto_0

    .line 22
    :cond_3
    const/4 v0, 0x4

    .line 23
    if-ne p1, v0, :cond_4

    .line 25
    goto :goto_0

    .line 26
    :cond_4
    const/4 v0, 0x5

    .line 27
    if-ne p1, v0, :cond_5

    .line 29
    goto :goto_0

    .line 30
    :cond_5
    const/4 v0, 0x6

    .line 31
    if-ne p1, v0, :cond_6

    .line 33
    goto :goto_0

    .line 34
    :cond_6
    const/16 v0, 0x8

    .line 36
    if-ne p1, v0, :cond_7

    .line 38
    const/4 v1, 0x7

    .line 39
    goto :goto_1

    .line 40
    :cond_7
    const/16 v2, 0x12

    .line 42
    if-ne p1, v2, :cond_8

    .line 44
    goto :goto_0

    .line 45
    :cond_8
    :goto_1
    invoke-interface {p0, v1, p2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onError(BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :goto_2
    return-void
.end method

.method public final deliverTspEvent(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string/jumbo v1, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    const/4 v1, 0x2

    .line 10
    const-string/jumbo v2, "info"

    .line 13
    if-ne p1, v1, :cond_0

    .line 15
    const/16 p1, 0xf

    .line 17
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    if-ne p1, v1, :cond_1

    .line 24
    const/16 p1, 0x10

    .line 26
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :goto_1
    return-void
.end method

.method public injectTestHalHelper(Lcom/android/server/biometrics/sensors/SemTestHalHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 3
    return-void
.end method
