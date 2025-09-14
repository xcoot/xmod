.class Lcom/android/server/spay/PaymentTZNative;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mIsLoaded:Z

.field public mMOPTZNativePtr_:J

.field public mProcessName:Ljava/lang/String;

.field public mRecvBufSize:I

.field public mRootName:Ljava/lang/String;

.field public mSendBufSize:I

.field public mTAId:I

.field public mTATechnology:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method private native nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z
.end method


# virtual methods
.method public final loadTA(Landroid/content/Context;IJJ)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    move-wide/from16 v3, p5

    .line 6
    .line 7
    iget-wide v5, v0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 8
    .line 9
    const-wide/16 v12, 0x0

    .line 10
    .line 11
    cmp-long v5, v5, v12

    .line 12
    .line 13
    const/4 v14, 0x1

    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    const-string v0, "PaymentManagerService"

    .line 17
    .line 18
    const-string v1, "PaymentTZNative::loadTA called for TA that is already loaded. Call Ignored"

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v14

    .line 24
    :cond_0
    const-wide/32 v5, 0x7fffffff

    .line 25
    .line 26
    .line 27
    cmp-long v7, v1, v5

    .line 28
    .line 29
    const/4 v15, 0x0

    .line 30
    if-gtz v7, :cond_4

    .line 31
    .line 32
    cmp-long v5, v3, v5

    .line 33
    .line 34
    if-lez v5, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    long-to-int v5, v1

    .line 38
    long-to-int v6, v3

    .line 39
    iget v7, v0, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    .line 40
    .line 41
    iget v8, v0, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    .line 42
    .line 43
    iget v9, v0, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    .line 44
    .line 45
    iget-object v10, v0, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v11, v0, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v4, v0, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    .line 50
    .line 51
    move-object/from16 v1, p0

    .line 52
    .line 53
    move-object/from16 v2, p1

    .line 54
    .line 55
    move/from16 v3, p2

    .line 56
    .line 57
    move-object/from16 v16, v4

    .line 58
    .line 59
    move v4, v5

    .line 60
    move v5, v6

    .line 61
    move v6, v7

    .line 62
    move v7, v8

    .line 63
    move v8, v9

    .line 64
    move-object v9, v10

    .line 65
    move-object v10, v11

    .line 66
    move-object/from16 v11, v16

    .line 67
    .line 68
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/spay/PaymentTZNative;->nativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    iput-wide v1, v0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 73
    .line 74
    cmp-long v1, v1, v12

    .line 75
    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    const-string v0, "PaymentManagerService"

    .line 79
    .line 80
    const-string v1, "Error: nativeCreateTLCommunicationContext failed"

    .line 81
    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v15

    .line 86
    :cond_2
    const-class v1, Lcom/android/server/spay/PaymentTZNative;

    .line 87
    .line 88
    monitor-enter v1

    .line 89
    :try_start_0
    iput-boolean v14, v0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 90
    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget-boolean v1, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    const-string v1, "PaymentManagerService"

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v3, "PaymentTZNative::loadTA: mMOPTZNativePtr_ = "

    .line 101
    .line 102
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-wide v3, v0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 106
    .line 107
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_3
    return v14

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw v0

    .line 121
    :cond_4
    :goto_0
    const-string v0, "PaymentManagerService"

    .line 122
    .line 123
    const-string v1, "SpayFw_loadTA: cannot get ta offset or size"

    .line 124
    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    return v15
.end method

.method public native nativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeDestroyTLCommunicationContext()V
.end method

.method public final processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "PaymentManagerService"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "PaymentTZNative::processTACommand: request = "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "; mMOPTZNativePtr_ = "

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-wide v2, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance v0, Landroid/spay/TACommandResponse;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/spay/TACommandResponse;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/server/spay/PaymentTZNative;->nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    const-string p0, "PaymentTZNative::processTACommand: Error: nativeProcessTACommand returned failure"

    .line 46
    .line 47
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_1
    return-object v0
.end method

.method public final unloadTA()V
    .locals 6

    .line 1
    const-string v0, "PaymentTZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    .line 2
    .line 3
    const-class v1, Lcom/android/server/spay/PaymentTZNative;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    cmp-long v2, v2, v4

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 21
    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {p0}, Lcom/android/server/spay/PaymentTZNative;->nativeDestroyTLCommunicationContext()V

    .line 24
    .line 25
    .line 26
    iput-wide v4, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 27
    .line 28
    sget-boolean p0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    const-string p0, "PaymentManagerService"

    .line 33
    .line 34
    const-string v0, "PaymentTZNative::unloadTA called"

    .line 35
    .line 36
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "PaymentManagerService"

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-boolean p0, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 50
    .line 51
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p0
.end method
