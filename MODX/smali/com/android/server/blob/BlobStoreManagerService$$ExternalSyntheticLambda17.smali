.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/blob/BlobStoreManagerService$Stub;

    .line 10
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Landroid/os/RemoteCallback;

    .line 14
    iget-object v0, v0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 16
    iget-object v0, v0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 18
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda2;

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v2, p0}, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 42
    check-cast v0, Lcom/android/server/blob/BlobStoreManagerService$Stub;

    .line 44
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Object;

    .line 46
    check-cast p0, Landroid/os/RemoteCallback;

    .line 48
    iget-object v1, v0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 50
    iget-object v1, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 52
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;

    .line 54
    const/4 v3, 0x2

    .line 55
    invoke-direct {v2, v3, v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 64
    check-cast v0, Lcom/android/server/blob/BlobStoreManagerService;

    .line 66
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Object;

    .line 68
    check-cast p0, Lcom/android/server/blob/BlobStoreSession;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    const-string/jumbo v1, "computeBlobDigest-i"

    .line 79
    const-wide/32 v2, 0x80000

    .line 82
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    iget-wide v5, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 89
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "-l"

    .line 94
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 104
    move-result-wide v5

    .line 105
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    .line 118
    move-result-object v1

    .line 119
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 121
    iget-object v4, v4, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    .line 123
    invoke-static {v1, v4}, Landroid/os/FileUtils;->digest(Ljava/io/File;Ljava/lang/String;)[B

    .line 126
    move-result-object v1

    .line 127
    iput-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 132
    goto :goto_1

    .line 133
    :catchall_0
    move-exception p0

    .line 134
    goto :goto_2

    .line 135
    :catch_0
    move-exception v1

    .line 136
    :try_start_1
    const-string v4, "BlobStore"

    .line 138
    const-string v5, "Error computing the digest"

    .line 140
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    goto :goto_0

    .line 144
    :goto_1
    iget-object v0, v0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda21;

    .line 148
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 154
    move-result-object p0

    .line 155
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void

    .line 163
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 166
    throw p0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
