.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;


# instance fields
.field public final mAuthenticatorID:Landroid/util/SparseLongArray;

.field public mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field public final mContext:Landroid/content/Context;

.field public mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public mCurrentEnrollmentId:I

.field public mCurrentUserID:I

.field public final mDeviceId:J

.field public final mEnrollmentIds:Ljava/util/Set;

.field public final mH:Landroid/os/Handler;

.field public final mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsTpaMode:Z

.field public final mRandom:Ljava/util/Random;

.field public final mRequestActionTable:Landroid/util/SparseIntArray;

.field public final mSehRequestOutput:Ljava/util/ArrayList;

.field public final mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

.field public final mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 17
    .line 18
    invoke-direct {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mSehRequestOutput:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance p1, Ljava/util/Random;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    .line 36
    .line 37
    new-instance v0, Landroid/util/SparseLongArray;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    .line 49
    .line 50
    new-instance p1, Landroid/util/SparseIntArray;

    .line 51
    .line 52
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 56
    .line 57
    new-instance v0, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    .line 63
    .line 64
    const-string/jumbo v0, "fingerprint.hidl.SehTestHal"

    .line 65
    .line 66
    .line 67
    if-eqz p3, :cond_0

    .line 68
    .line 69
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 75
    .line 76
    const/4 v2, 0x2

    .line 77
    invoke-direct {v1, v2, p1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;-><init>(ILcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 81
    .line 82
    new-instance p1, Lcom/android/server/ServiceThread;

    .line 83
    .line 84
    const/4 v1, -0x2

    .line 85
    const/4 v2, 0x1

    .line 86
    invoke-direct {p1, v1, v0, v2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    .line 97
    .line 98
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;

    .line 99
    .line 100
    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 108
    .line 109
    .line 110
    const/4 p0, 0x6

    .line 111
    const v1, 0x186c8

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    .line 116
    .line 117
    :goto_0
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 118
    .line 119
    if-eqz p0, :cond_1

    .line 120
    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string p1, "SehTestHal: constructed, "

    .line 124
    .line 125
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p1, ", "

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_1
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final authenticate(IJ)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const-string p2, "authenticateTPA: "

    .line 7
    .line 8
    const-string p3, ", "

    .line 9
    .line 10
    invoke-static {p1, p2, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    .line 15
    .line 16
    const-string/jumbo v0, "fingerprint.hidl.SehTestHal"

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p3, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    .line 23
    .line 24
    if-eq p2, p1, :cond_0

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 29
    .line 30
    iget-wide p2, p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mDelayAuthAction:J

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V

    .line 37
    .line 38
    .line 39
    const-wide/16 p0, 0x0

    .line 40
    .line 41
    cmp-long p0, p2, p0

    .line 42
    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    const-wide/16 p2, 0x258

    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    :goto_0
    return v1

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->authenticate(IJ)I

    .line 54
    .line 55
    .line 56
    return v1
.end method

.method public final cancel()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->cancel()I

    .line 27
    .line 28
    .line 29
    return v1
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final deliverErrorEvent(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onError(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    return-void
.end method

.method public final enroll(II[B)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const-string/jumbo p2, "enrollTPA: "

    .line 7
    .line 8
    .line 9
    const-string p3, ", "

    .line 10
    .line 11
    invoke-static {p1, p2, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    .line 16
    .line 17
    const-string/jumbo v0, "fingerprint.hidl.SehTestHal"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, p3, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    .line 24
    .line 25
    if-eq p2, p1, :cond_0

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    const/4 p3, 0x0

    .line 34
    invoke-direct {p2, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v2, 0x258

    .line 38
    .line 39
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    :goto_0
    return v1

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 44
    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->enroll(II[B)I

    .line 46
    .line 47
    .line 48
    return v1
.end method

.method public final enumerate()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->enumerate()I

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final getAuthenticatorId()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    .line 8
    .line 9
    check-cast v0, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->get(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    :goto_0
    return-wide v1

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    return-wide v1
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 1
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 18
    .line 19
    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    new-array v2, v0, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    new-array v0, v0, [B

    .line 16
    .line 17
    fill-array-data v0, :array_2

    .line 18
    .line 19
    .line 20
    filled-new-array {v1, v2, v0}, [[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 1
        0x21t
        0x35t
        0x57t
        -0x25t
        0x52t
        -0x4t
        -0xet
        -0x35t
        -0x56t
        0x19t
        -0x3ft
        -0x65t
        -0x45t
        -0x51t
        -0x7ct
        -0x1at
        -0x7t
        0x61t
        -0x2ft
        0x76t
        -0x32t
        0x54t
        0xft
        -0x4at
        -0x4bt
        0x4at
        -0x24t
        -0x4ft
        0x37t
        0x52t
        0xbt
        0x23t
    .end array-data

    .line 34
    .line 35
    :array_1
    .array-data 1
        0x1ft
        -0x43t
        -0x3ft
        -0x8t
        0x52t
        -0x8t
        -0x43t
        0x2et
        0x4at
        0x6ct
        0x5ct
        -0x4dt
        0xat
        -0x3et
        -0x49t
        -0x7at
        0x68t
        -0x37t
        -0x73t
        -0x32t
        0x11t
        -0x76t
        0x61t
        0x76t
        0x2dt
        0x40t
        0x34t
        -0x52t
        -0x7bt
        -0x61t
        0x43t
        -0x28t
    .end array-data

    :array_2
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string/jumbo v2, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

    .line 8
    .line 9
    .line 10
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 8

    .line 1
    const-string/jumbo p4, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    const-string v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string v2, "android.hidl.base@1.0::IBase"

    .line 13
    .line 14
    sparse-switch p1, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :sswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :sswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :sswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->getHashChain()Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Landroid/os/HwBlob;

    .line 72
    .line 73
    const/16 p2, 0x10

    .line 74
    .line 75
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    const-wide/16 v4, 0x8

    .line 83
    .line 84
    invoke-virtual {p1, v4, v5, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 85
    .line 86
    .line 87
    const-wide/16 v4, 0xc

    .line 88
    .line 89
    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 90
    .line 91
    .line 92
    new-instance p4, Landroid/os/HwBlob;

    .line 93
    .line 94
    mul-int/lit8 v2, p2, 0x20

    .line 95
    .line 96
    invoke-direct {p4, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 97
    .line 98
    .line 99
    :goto_0
    if-ge v3, p2, :cond_1

    .line 100
    .line 101
    mul-int/lit8 v2, v3, 0x20

    .line 102
    .line 103
    int-to-long v4, v2

    .line 104
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, [B

    .line 109
    .line 110
    if-eqz v2, :cond_0

    .line 111
    .line 112
    array-length v6, v2

    .line 113
    const/16 v7, 0x20

    .line 114
    .line 115
    if-ne v6, v7, :cond_0

    .line 116
    .line 117
    invoke-virtual {p4, v4, v5, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string p1, "Array element is not of the expected length"

    .line 126
    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_1
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :sswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :sswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :sswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->interfaceChain()Ljava/util/ArrayList;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :pswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 199
    .line 200
    .line 201
    move-result p4

    .line 202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    new-instance v0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;

    .line 207
    .line 208
    invoke-direct {v0, p3}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;-><init>(Landroid/os/HwParcel;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, p1, p4, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 220
    .line 221
    .line 222
    move-result-wide v0

    .line 223
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->authenticate(IJ)I

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->setActiveGroup(ILjava/lang/String;)I

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->remove(II)I

    .line 279
    .line 280
    .line 281
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_1

    .line 291
    .line 292
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->enumerate()I

    .line 296
    .line 297
    .line 298
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->cancel()I

    .line 313
    .line 314
    .line 315
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 322
    .line 323
    .line 324
    goto :goto_1

    .line 325
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->getAuthenticatorId()J

    .line 329
    .line 330
    .line 331
    move-result-wide p0

    .line 332
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p3, p0, p1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 339
    .line 340
    .line 341
    goto :goto_1

    .line 342
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->postEnroll()I

    .line 346
    .line 347
    .line 348
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 355
    .line 356
    .line 357
    goto :goto_1

    .line 358
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const/16 p1, 0x45

    .line 362
    .line 363
    new-array p4, p1, [B

    .line 364
    .line 365
    const-wide/16 v4, 0x45

    .line 366
    .line 367
    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v2, v0, v1, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 379
    .line 380
    .line 381
    move-result p2

    .line 382
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->enroll(II[B)I

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 393
    .line 394
    .line 395
    goto :goto_1

    .line 396
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->preEnroll()J

    .line 400
    .line 401
    .line 402
    move-result-wide p0

    .line 403
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p3, p0, p1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 410
    .line 411
    .line 412
    goto :goto_1

    .line 413
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    .line 425
    .line 426
    .line 427
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 428
    .line 429
    .line 430
    const-wide/16 p0, 0x1

    .line 431
    .line 432
    invoke-virtual {p3, p0, p1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 436
    .line 437
    .line 438
    :goto_1
    return-void

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1
    return-void
.end method

.method public final postEnroll()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    return v1
.end method

.method public final preEnroll()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    return-wide v0
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1
    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final remove(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->remove(II)I

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V
    .locals 2

    .line 1
    const-string/jumbo p3, "sehRequest: "

    .line 2
    .line 3
    .line 4
    const-string v0, ", "

    .line 5
    .line 6
    const-string/jumbo v1, "fingerprint.hidl.SehTestHal"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mSehRequestOutput:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-interface {p4, v0, p3}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;->onValues(Ljava/util/ArrayList;I)V

    .line 22
    .line 23
    .line 24
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mSehRequestOutput:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    const/16 p3, 0x16

    .line 30
    .line 31
    if-ne p1, p3, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    if-ne p2, p1, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 37
    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final setActiveGroup(ILjava/lang/String;)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 6
    .line 7
    const-wide/16 p0, 0x1

    .line 8
    .line 9
    return-wide p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint@Stub"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
