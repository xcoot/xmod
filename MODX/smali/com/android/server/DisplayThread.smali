.class public final Lcom/android/server/DisplayThread;
.super Lcom/android/server/ServiceThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sInstance:Lcom/android/server/DisplayThread;


# direct methods
.method public static dispose()V
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/DisplayThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lcom/android/server/DisplayThread$$ExternalSyntheticLambda0;

    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v3, 0x0

    .line 23
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 26
    const/4 v1, 0x0

    .line 27
    sput-object v1, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1
.end method

.method public static ensureThreadLocked()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/DisplayThread;

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "android.display"

    .line 10
    const/4 v3, -0x3

    .line 11
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 14
    sput-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 19
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    move-result-object v0

    .line 25
    const-wide/32 v1, 0x80000

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 31
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    .line 33
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/android/server/ServiceThread;->makeSharedHandler(Landroid/os/Looper;)Landroid/os/Handler;

    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/server/DisplayThread;->sHandler:Landroid/os/Handler;

    .line 43
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/DisplayThread;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/DisplayThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/DisplayThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    .line 9
    monitor-exit v0

    .line 10
    return-object v1

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/DisplayThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/DisplayThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/DisplayThread;->sHandler:Landroid/os/Handler;

    .line 9
    monitor-exit v0

    .line 10
    return-object v1

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method
