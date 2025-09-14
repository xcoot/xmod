.class public final Lcom/android/server/AppSchedulingModuleThread;
.super Landroid/os/HandlerThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Ljava/util/concurrent/Executor;

.field public static sInstance:Lcom/android/server/AppSchedulingModuleThread;


# direct methods
.method public static ensureThreadLocked()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/AppSchedulingModuleThread;

    .line 7
    const-string v1, "appscheduling.default"

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 13
    sput-object v0, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    sget-object v0, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    .line 20
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    move-result-object v0

    .line 24
    const-wide/32 v1, 0x80000

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 30
    const-wide/16 v1, 0x2710

    .line 32
    const-wide/16 v3, 0x7530

    .line 34
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    .line 39
    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    .line 41
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    sput-object v0, Lcom/android/server/AppSchedulingModuleThread;->sHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 52
    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sHandler:Landroid/os/Handler;

    .line 54
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 57
    sput-object v0, Lcom/android/server/AppSchedulingModuleThread;->sHandlerExecutor:Ljava/util/concurrent/Executor;

    .line 59
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/AppSchedulingModuleThread;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/AppSchedulingModuleThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

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

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/AppSchedulingModuleThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sHandlerExecutor:Ljava/util/concurrent/Executor;

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
    const-class v0, Lcom/android/server/AppSchedulingModuleThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sHandler:Landroid/os/Handler;

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
