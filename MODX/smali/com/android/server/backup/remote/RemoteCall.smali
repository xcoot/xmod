.class public final Lcom/android/server/backup/remote/RemoteCall;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallable:Lcom/android/server/backup/remote/RemoteCallable;

.field public final mFuture:Ljava/util/concurrent/CompletableFuture;

.field public final mTimeoutMs:J


# direct methods
.method public constructor <init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/backup/remote/RemoteCall;->mCallable:Lcom/android/server/backup/remote/RemoteCallable;

    .line 6
    iput-wide p3, p0, Lcom/android/server/backup/remote/RemoteCall;->mTimeoutMs:J

    .line 8
    new-instance p2, Ljava/util/concurrent/CompletableFuture;

    .line 10
    invoke-direct {p2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    sget-object p0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    .line 19
    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public final call()Lcom/android/server/backup/remote/RemoteResult;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 11
    const-string v1, "Can\'t call call() on main thread"

    .line 13
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 24
    iget-wide v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mTimeoutMs:J

    .line 26
    const-wide/16 v2, 0x0

    .line 28
    cmp-long v2, v0, v2

    .line 30
    if-nez v2, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 34
    sget-object v1, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 43
    move-result-object v2

    .line 44
    new-instance v3, Lcom/android/server/backup/remote/RemoteCall$$ExternalSyntheticLambda0;

    .line 46
    invoke-direct {v3, p0}, Lcom/android/server/backup/remote/RemoteCall$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/remote/RemoteCall;)V

    .line 49
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    new-instance v0, Lcom/android/server/backup/remote/FutureBackupCallback;

    .line 54
    iget-object v1, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 56
    invoke-direct {v0, v1}, Lcom/android/server/backup/remote/FutureBackupCallback;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 59
    iget-object v1, p0, Lcom/android/server/backup/remote/RemoteCall;->mCallable:Lcom/android/server/backup/remote/RemoteCallable;

    .line 61
    invoke-interface {v1, v0}, Lcom/android/server/backup/remote/RemoteCallable;->call(Lcom/android/server/backup/remote/FutureBackupCallback;)V

    .line 64
    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 66
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Lcom/android/server/backup/remote/RemoteResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object p0

    .line 73
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 75
    const-string v0, "Future unexpectedly completed with an exception"

    .line 77
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0

    .line 81
    :catch_1
    sget-object p0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    .line 83
    return-object p0
.end method
