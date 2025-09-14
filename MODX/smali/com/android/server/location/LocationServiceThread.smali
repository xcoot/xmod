.class public final Lcom/android/server/location/LocationServiceThread;
.super Lcom/android/server/ServiceThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field public static sInstance:Lcom/android/server/location/LocationServiceThread;


# direct methods
.method public static declared-synchronized ensureThreadLocked()V
    .locals 6

    .line 1
    const-class v0, Lcom/android/server/location/LocationServiceThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/location/LocationServiceThread;

    .line 10
    const-string v2, "LocationProviderManagerThread"

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 17
    sput-object v1, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    .line 19
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 22
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    .line 24
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 27
    move-result-object v1

    .line 28
    const-wide/32 v2, 0x80000

    .line 31
    invoke-virtual {v1, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    .line 34
    const-wide/16 v2, 0x64

    .line 36
    const-wide/16 v4, 0xc8

    .line 38
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 41
    new-instance v1, Landroid/os/Handler;

    .line 43
    sget-object v2, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    .line 45
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    sput-object v1, Lcom/android/server/location/LocationServiceThread;->sHandler:Landroid/os/Handler;

    .line 54
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 56
    sget-object v2, Lcom/android/server/location/LocationServiceThread;->sHandler:Landroid/os/Handler;

    .line 58
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 61
    sput-object v1, Lcom/android/server/location/LocationServiceThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v0

    .line 69
    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/location/LocationServiceThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

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
    const-class v0, Lcom/android/server/location/LocationServiceThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sHandler:Landroid/os/Handler;

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
