.class public final Lcom/android/server/wm/Letterbox$DoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mWmService:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic this$0:Lcom/android/server/wm/Letterbox;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Letterbox;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->this$0:Lcom/android/server/wm/Letterbox;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->this$0:Lcom/android/server/wm/Letterbox;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->this$0:Lcom/android/server/wm/Letterbox;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    float-to-int v1, v1

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    float-to-int p1, p1

    .line 40
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->handleDoubleTap(II)V

    .line 41
    .line 42
    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->this$0:Lcom/android/server/wm/Letterbox;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mOnSingleTap:Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mOnSingleTap:Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method
