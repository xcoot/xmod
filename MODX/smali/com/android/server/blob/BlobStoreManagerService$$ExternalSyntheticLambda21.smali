.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/android/server/blob/BlobStoreSession;

    .line 3
    const-string p0, "Digest of the data ("

    .line 5
    iget-object v0, p1, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p1, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v2, p1, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 14
    iget-object v2, v2, Landroid/app/blob/BlobHandle;->digest:[B

    .line 16
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const/4 p0, 0x4

    .line 23
    iput p0, p1, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    const-string v1, "BlobStore"

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object p0, p1, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B

    .line 37
    if-nez p0, :cond_1

    .line 39
    const-string/jumbo p0, "null"

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p0}, Landroid/app/blob/BlobHandle;->safeDigest([B)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string p0, ") didn\'t match the given BlobHandle.digest ("

    .line 52
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object p0, p1, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 57
    iget-object p0, p0, Landroid/app/blob/BlobHandle;->digest:[B

    .line 59
    invoke-static {p0}, Landroid/app/blob/BlobHandle;->safeDigest([B)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string p0, ")"

    .line 68
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 p0, 0x5

    .line 79
    iput p0, p1, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 81
    iget v2, p1, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 83
    iget-wide v3, p1, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 85
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    .line 88
    move-result-wide v5

    .line 89
    const/4 v7, 0x3

    .line 90
    const/16 v1, 0x12a

    .line 92
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 95
    const/4 p0, 0x1

    .line 96
    invoke-virtual {p1, p0}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    .line 99
    :goto_1
    iget-object p0, p1, Lcom/android/server/blob/BlobStoreSession;->mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    .line 101
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 103
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener$$ExternalSyntheticLambda0;

    .line 107
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {v2, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 113
    move-result-object p0

    .line 114
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 123
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p0
.end method
