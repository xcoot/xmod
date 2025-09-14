.class public final Lcom/android/server/display/DisplayManagerService$5;
.super Ljava/util/TimerTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move v3, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v1

    .line 19
    :goto_0
    invoke-static {p0, v3}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    move v3, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v3, v1

    .line 35
    :goto_1
    invoke-static {p0, v3}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    .line 39
    .line 40
    const-class p0, Lcom/android/server/wm/SurfaceAnimationThread;

    .line 41
    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->ensureThreadLocked()V

    .line 44
    .line 45
    .line 46
    sget-object v3, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    .line 47
    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    move v1, v2

    .line 56
    :cond_2
    invoke-static {p0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw v0
.end method
