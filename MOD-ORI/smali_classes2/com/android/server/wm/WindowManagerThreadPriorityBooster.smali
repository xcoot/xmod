.class public final Lcom/android/server/wm/WindowManagerThreadPriorityBooster;
.super Lcom/android/server/ThreadPriorityBooster;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAnimationThreadId:I

.field public mAppTransitionRunning:Z

.field public final mLock:Ljava/lang/Object;

.field public final mSurfaceAnimationThreadId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, -0x4

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/server/ThreadPriorityBooster;-><init>(II)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    .line 22
    .line 23
    sget-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    .line 24
    .line 25
    const-class v0, Lcom/android/server/wm/SurfaceAnimationThread;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->ensureThreadLocked()V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    .line 32
    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p0
.end method


# virtual methods
.method public final boost()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0}, Lcom/android/server/ThreadPriorityBooster;->boost()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0}, Lcom/android/server/ThreadPriorityBooster;->reset()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method
