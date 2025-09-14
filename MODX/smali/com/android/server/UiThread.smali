.class public final Lcom/android/server/UiThread;
.super Lcom/android/server/ServiceThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sInstance:Lcom/android/server/UiThread;


# direct methods
.method public static dispose()V
    .locals 6

    .line 1
    const-class v0, Lcom/android/server/UiThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

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
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    .line 18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v3, Lcom/android/server/UiThread$$ExternalSyntheticLambda0;

    .line 23
    invoke-direct {v3, v2}, Lcom/android/server/UiThread$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiThread;)V

    .line 26
    const-wide/16 v4, 0x0

    .line 28
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 31
    const/4 v1, 0x0

    .line 32
    sput-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v1
.end method

.method public static ensureThreadLocked()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/UiThread;

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "android.ui"

    .line 10
    const/4 v3, -0x2

    .line 11
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 14
    sput-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 19
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

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
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/android/server/ServiceThread;->makeSharedHandler(Landroid/os/Looper;)Landroid/os/Handler;

    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    .line 50
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/UiThread;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/UiThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

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
    const-class v0, Lcom/android/server/UiThread;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 7
    sget-object v1, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

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


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 7
    if-eqz v1, :cond_0

    .line 9
    const/16 v1, 0xa

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x5

    .line 13
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroup(II)V

    .line 16
    invoke-super {p0}, Lcom/android/server/ServiceThread;->run()V

    .line 19
    return-void
.end method
