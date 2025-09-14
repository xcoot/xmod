.class public final Lcom/android/server/FgThread;
.super Lcom/android/server/ServiceThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field public static sInstance:Lcom/android/server/FgThread;


# direct methods
.method public static ensureThreadLocked()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/FgThread;

    .line 7
    const/4 v1, 0x1

    .line 8
    const-string v2, "android.fg"

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 14
    sput-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 19
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    move-result-object v0

    .line 25
    const-wide/32 v1, 0x80000

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 31
    const-wide/16 v1, 0x64

    .line 33
    const-wide/16 v3, 0xc8

    .line 35
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 38
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/android/server/ServiceThread;->makeSharedHandler(Landroid/os/Looper;)Landroid/os/Handler;

    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 52
    sget-object v1, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    .line 54
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 57
    sput-object v0, Lcom/android/server/FgThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 59
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/FgThread;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/FgThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

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
    const-class v0, Lcom/android/server/FgThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/FgThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

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
    const-class v0, Lcom/android/server/FgThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

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
