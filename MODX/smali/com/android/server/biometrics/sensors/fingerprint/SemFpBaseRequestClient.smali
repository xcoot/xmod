.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCommand:I

.field public final mInputBuffer:[B

.field public final mIsAsyncOperation:Z

.field public final mOutputBuffer:[B

.field public final mParam:I

.field public mRequestResult:I

.field public final mUseScheduler:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V
    .locals 14

    .line 1
    move-object v12, p0

    .line 2
    move-object/from16 v13, p12

    .line 4
    new-instance v9, Lcom/android/server/biometrics/log/BiometricLogger;

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, v9

    .line 11
    move-object v1, p1

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    move-object v0, p0

    .line 18
    move-object/from16 v2, p3

    .line 20
    move-object/from16 v3, p4

    .line 22
    move-object/from16 v4, p5

    .line 24
    move/from16 v5, p7

    .line 26
    move-object/from16 v6, p8

    .line 28
    move/from16 v8, p6

    .line 30
    move-object/from16 v10, p2

    .line 32
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 35
    move/from16 v0, p9

    .line 37
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mUseScheduler:Z

    .line 39
    move/from16 v0, p10

    .line 41
    iput v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mCommand:I

    .line 43
    move/from16 v0, p11

    .line 45
    iput v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mParam:I

    .line 47
    const/4 v0, -0x1

    .line 48
    iput v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    .line 50
    move-object/from16 v0, p13

    .line 52
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mOutputBuffer:[B

    .line 54
    if-eqz p5, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mIsAsyncOperation:Z

    .line 59
    :cond_0
    if-eqz v13, :cond_2

    .line 61
    array-length v0, v13

    .line 62
    if-nez v0, :cond_1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual/range {p12 .. p12}, [B->clone()Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    check-cast v0, [B

    .line 71
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mInputBuffer:[B

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 75
    new-array v0, v0, [B

    .line 77
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mInputBuffer:[B

    .line 79
    :goto_1
    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public interruptsPrecedingClients()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mCommand:I

    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p0, v0, :cond_0

    .line 6
    const/4 v0, 0x4

    .line 7
    if-eq p0, v0, :cond_0

    .line 9
    const/4 v0, 0x5

    .line 10
    if-eq p0, v0, :cond_0

    .line 12
    const/4 v0, 0x7

    .line 13
    if-eq p0, v0, :cond_0

    .line 15
    const/16 v0, 0x9

    .line 17
    if-eq p0, v0, :cond_0

    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    return p0
.end method

.method public onRequestResult(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0, p1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;->onResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    const-string v0, "FingerprintRequestClient"

    .line 17
    const-string v1, "Failed to invoke sendEvent with onRequestResult"

    .line 19
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public setRequestResultForTest(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    .line 3
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startHalOperation()V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v2, "request["

    .line 16
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mCommand:I

    .line 21
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "] FP_FINISH ("

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    move-result-wide v2

    .line 33
    sub-long/2addr v2, v0

    .line 34
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v0, "ms) RESULT: "

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    .line 45
    const-string v1, "FingerprintRequestClient"

    .line 47
    invoke-static {p1, v0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 50
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    .line 52
    if-ltz p1, :cond_0

    .line 54
    const/4 p1, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mUseScheduler:Z

    .line 59
    if-eqz v0, :cond_1

    .line 61
    if-eqz p1, :cond_1

    .line 63
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mIsAsyncOperation:Z

    .line 65
    if-nez v0, :cond_2

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 69
    invoke-interface {v0, p0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 72
    :cond_2
    return-void
.end method

.method public final startHalOperation()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 12
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 14
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 16
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mLazySehFingerprint:Ljava/util/function/Function;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    move-object v2, v0

    .line 29
    check-cast v2, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    .line 34
    if-eqz v1, :cond_1

    .line 36
    move-object v2, v0

    .line 37
    check-cast v2, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 40
    if-nez v2, :cond_3

    .line 42
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mUseScheduler:Z

    .line 44
    if-eqz v1, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->unableToStart()V

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    :try_start_0
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 55
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mCommand:I

    .line 57
    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mParam:I

    .line 59
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mInputBuffer:[B

    .line 61
    if-eqz v5, :cond_4

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    new-array v5, v0, [B

    .line 66
    :goto_1
    invoke-interface {v2, v1, v3, v4, v5}, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->sehRequest(III[B)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_5

    .line 72
    return-void

    .line 73
    :cond_5
    iget v2, v1, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    .line 75
    iput v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    .line 77
    if-nez v2, :cond_8

    .line 79
    iget-object v1, v1, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->data:[B

    .line 81
    if-eqz v1, :cond_8

    .line 83
    array-length v2, v1

    .line 84
    if-nez v2, :cond_6

    .line 86
    goto :goto_2

    .line 87
    :cond_6
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mOutputBuffer:[B

    .line 89
    if-eqz v2, :cond_8

    .line 91
    array-length v3, v2

    .line 92
    if-nez v3, :cond_7

    .line 94
    goto :goto_2

    .line 95
    :cond_7
    array-length v3, v1

    .line 96
    array-length v2, v2

    .line 97
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 100
    move-result v2

    .line 101
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mOutputBuffer:[B

    .line 103
    invoke-static {v1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iput v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_2

    .line 109
    :catch_0
    move-exception p0

    .line 110
    const-string v0, "FingerprintRequestClient"

    .line 112
    const-string v1, "Remote exception"

    .line 114
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    :cond_8
    :goto_2
    return-void
.end method

.method public final startWithoutScheduler()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mUseScheduler:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$1;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 13
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    .line 15
    return p0

    .line 16
    :cond_0
    const-string p0, "FingerprintRequestClient"

    .line 18
    const-string/jumbo v0, "startWithoutScheduler: It must be started by the scheduler!!"

    .line 21
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    const-string/jumbo v0, "useScheduler option is set"

    .line 29
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method

.method public final unableToStart()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->mRequestResult:I

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 10
    return-void
.end method
