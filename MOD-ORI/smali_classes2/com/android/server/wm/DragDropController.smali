.class public final Lcom/android/server/wm/DragDropController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Ljava/util/concurrent/atomic/AtomicReference;

.field public mDragSourceTask:Lcom/android/server/wm/Task;

.field public mDragState:Lcom/android/server/wm/DragState;

.field public mGlobalDragListener:Landroid/window/IGlobalDragListener;

.field public final mGlobalDragListenerDeathRecipient:Lcom/android/server/wm/DragDropController$1;

.field public final mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mUpdateTaskVisibilityAfterDragClosed:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/wm/DragDropController;->mUpdateTaskVisibilityAfterDragClosed:Z

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/wm/DragDropController$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/wm/DragDropController$1;-><init>(Lcom/android/server/wm/DragDropController;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListenerDeathRecipient:Lcom/android/server/wm/DragDropController$1;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/wm/DragDropController$2;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/wm/DragDropController$DragHandler;

    .line 29
    .line 30
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DragDropController$DragHandler;-><init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .locals 3

    .line 1
    const-string v0, "WindowManager"

    .line 2
    .line 3
    const-string v1, "cancelDragAndDrop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 24
    .line 25
    .line 26
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 32
    .line 33
    if-ne v2, p1, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 37
    .line 38
    invoke-virtual {v1, p2}, Lcom/android/server/wm/DragState;->cancelDragLocked(Z)V

    .line 39
    .line 40
    .line 41
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :catchall_1
    move-exception p1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    :try_start_3
    const-string p1, "WindowManager"

    .line 62
    .line 63
    const-string p2, "cancelDragAndDrop() does not match prepareDrag()"

    .line 64
    .line 65
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string p2, "cancelDragAndDrop() does not match prepareDrag()"

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_1
    const-string p1, "WindowManager"

    .line 77
    .line 78
    const-string p2, "cancelDragAndDrop() without prepareDrag()"

    .line 79
    .line 80
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string p2, "cancelDragAndDrop() without prepareDrag()"

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 93
    .line 94
    .line 95
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public final dpToPixel(I)F
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 15
    .line 16
    int-to-float p0, p0

    .line 17
    const/high16 v0, 0x43200000    # 160.0f

    .line 18
    .line 19
    div-float/2addr p0, v0

    .line 20
    mul-float/2addr p0, p1

    .line 21
    return p0
.end method

.method public final dragDropActiveLocked()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public dragSurfaceRelinquishedToDropTarget()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final dropForAccessibility(Landroid/view/IWindow;FF)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

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
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v2, "accessibility"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    return v3

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 40
    .line 41
    iget v2, v2, Lcom/android/server/wm/DragState;->mFlags:I

    .line 42
    .line 43
    and-int/lit16 v2, v2, 0x400

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 66
    .line 67
    .line 68
    return v3

    .line 69
    :cond_1
    :try_start_2
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 72
    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLock(Landroid/os/IBinder;FF)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 79
    .line 80
    .line 81
    return p0

    .line 82
    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 84
    .line 85
    .line 86
    return v3

    .line 87
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleDragEvent()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->notifyDownEventLocked()V

    .line 31
    .line 32
    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_2
    :goto_2
    return-void
.end method

.method public final handleMotionEvent(ZFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

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
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 25
    .line 26
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyLocationToEavesdropDragEventWindowLocked(FF)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->updateDragSurfaceLocked(ZFF)V

    .line 32
    .line 33
    .line 34
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 4
    .line 5
    and-int/lit16 v1, v0, 0x1100

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    move v1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v3

    .line 14
    :goto_0
    and-int/lit16 v0, v0, 0x2000

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v0, v3

    .line 21
    :goto_1
    invoke-static {}, Lcom/android/window/flags/Flags;->delegateUnhandledDrags()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const-string v5, ")"

    .line 26
    .line 27
    const-string v6, "WindowManager"

    .line 28
    .line 29
    if-eqz v4, :cond_6

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    .line 32
    .line 33
    if-eqz v4, :cond_6

    .line 34
    .line 35
    if-eqz v0, :cond_6

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    goto :goto_6

    .line 40
    :cond_2
    new-instance v0, Ljava/util/Random;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const-wide/16 v7, 0x20

    .line 50
    .line 51
    const-string v1, "DragDropController#notifyUnhandledDrop"

    .line 52
    .line 53
    invoke-static {v7, v8, v1, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const-string v1, "Sending DROP to unhandled listener ("

    .line 57
    .line 58
    invoke-static {v1, p2, v5, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    iget-object p2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    const/4 v4, 0x4

    .line 65
    invoke-virtual {p2, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-wide/16 v4, 0x1388

    .line 73
    .line 74
    invoke-virtual {p2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 75
    .line 76
    .line 77
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    .line 78
    .line 79
    if-eqz p2, :cond_5

    .line 80
    .line 81
    if-nez p3, :cond_3

    .line 82
    .line 83
    move p2, v3

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    :goto_2
    const/4 p3, -0x1

    .line 90
    if-eq p2, p3, :cond_4

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    move p2, v3

    .line 94
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/DragEvent;->setDisplayId(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :catch_0
    move-exception p0

    .line 99
    goto :goto_5

    .line 100
    :cond_5
    :goto_4
    iget-object p2, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    .line 101
    .line 102
    new-instance p3, Lcom/android/server/wm/DragDropController$3;

    .line 103
    .line 104
    invoke-direct {p3, p0, v0}, Lcom/android/server/wm/DragDropController$3;-><init>(Lcom/android/server/wm/DragDropController;I)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p2, p1, p3}, Landroid/window/IGlobalDragListener;->onUnhandledDrop(Landroid/view/DragEvent;Landroid/window/IUnhandledDragCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    return v2

    .line 111
    :goto_5
    const-string p1, "Failed to call global drag listener for unhandled drop"

    .line 112
    .line 113
    invoke-static {v6, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    return v3

    .line 117
    :cond_6
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string p2, "Skipping unhandled listener (listener="

    .line 120
    .line 121
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p2, ", flags="

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 135
    .line 136
    iget p0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 137
    .line 138
    invoke-static {p1, p0, v5, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v3
.end method

.method public onUnhandledDropCallback(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final performDragWithArea(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;Landroid/graphics/RectF;)Landroid/os/IBinder;
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v7, p14

    .line 1
    const-string v1, "Bad requesting window "

    const-string v6, "[TWODND] Set DragSourceTask="

    const-string v5, "Calling task to hide="

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "perform drag: win="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " surface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " touch("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ") thumb center("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 5
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :try_start_0
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 7
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    const/4 v14, 0x0

    if-eqz v2, :cond_2

    .line 8
    :try_start_2
    const-string v0, "WindowManager"

    const-string v1, "Drag already in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v10, :cond_1

    .line 9
    :try_start_3
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 10
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/SurfaceControl$Transaction;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :try_start_4
    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 12
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 13
    :try_start_5
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v18, v3

    goto/16 :goto_16

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_0

    .line 14
    :try_start_6
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2

    :cond_1
    :goto_1
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v14

    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    move-object v2, v10

    goto/16 :goto_13

    .line 16
    :cond_2
    :try_start_8
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v13, 0x0

    invoke-virtual {v2, v14, v0, v13}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    if-eqz v2, :cond_3

    .line 17
    :try_start_9
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v16

    if-nez v16, :cond_4

    :cond_3
    move-object/from16 v18, v3

    move-object v2, v14

    goto/16 :goto_f

    .line 18
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    if-nez v1, :cond_6

    .line 19
    :try_start_a
    const-string v0, "WindowManager"

    const-string v1, "display content is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v10, :cond_1

    .line 20
    :try_start_b
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 21
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/SurfaceControl$Transaction;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 22
    :try_start_c
    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 23
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 24
    :try_start_d
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_5

    .line 25
    :try_start_e
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object v1, v0

    :try_start_f
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 26
    :cond_6
    :try_start_10
    iget-boolean v14, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-eqz v14, :cond_7

    .line 27
    :try_start_11
    iget-object v14, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    if-eqz v13, :cond_7

    .line 28
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    and-int/lit16 v14, v9, 0x200

    if-nez v14, :cond_8

    const v14, 0x3f350481    # 0.7071f

    goto :goto_4

    :cond_8
    const/high16 v14, 0x3f800000    # 1.0f

    .line 29
    :goto_4
    :try_start_12
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 30
    new-instance v17, Landroid/os/Binder;

    invoke-direct/range {v17 .. v17}, Landroid/os/Binder;-><init>()V

    .line 31
    new-instance v10, Lcom/android/server/wm/DragState;

    move-object/from16 v18, v2

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    move-object v11, v1

    move-object v1, v10

    move-object/from16 v12, v18

    move-object/from16 v18, v3

    move-object/from16 v3, p0

    move-object/from16 v19, v13

    move-object v13, v4

    move-object/from16 v4, v17

    move-object/from16 v20, v5

    move-object/from16 v5, p5

    move-object/from16 v21, v6

    move/from16 v6, p4

    move-object v7, v0

    :try_start_13
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-object v10, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    move/from16 v0, p1

    .line 32
    :try_start_14
    iput v0, v10, Lcom/android/server/wm/DragState;->mPid:I

    move/from16 v0, p2

    .line 33
    iput v0, v10, Lcom/android/server/wm/DragState;->mUid:I

    .line 34
    iput v14, v10, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 35
    iget v0, v12, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v0, v10, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 36
    iput-object v13, v10, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 37
    iput-object v11, v10, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 38
    iput-object v15, v10, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    and-int/lit16 v0, v9, 0x4000

    const/4 v1, -0x1

    if-nez v0, :cond_9

    goto :goto_5

    .line 39
    :cond_9
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_b

    .line 40
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v0, :cond_a

    goto :goto_5

    .line 41
    :cond_a
    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 42
    :cond_b
    :goto_5
    iput v1, v10, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    .line 43
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v2, v2, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, v8, Lcom/android/server/wm/DragDropController;->mUpdateTaskVisibilityAfterDragClosed:Z

    const/4 v1, 0x1

    if-eqz v19, :cond_c

    and-int/lit16 v0, v9, 0x100

    if-eqz v0, :cond_c

    .line 45
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput-boolean v1, v3, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    .line 47
    iput-object v3, v8, Lcom/android/server/wm/DragDropController;->mDragSourceTask:Lcom/android/server/wm/Task;

    goto :goto_6

    :catchall_6
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_13

    .line 48
    :cond_c
    :goto_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_DND_OBJECT_CAPTURE:Z

    if-eqz v0, :cond_d

    const/high16 v0, 0x400000

    and-int/2addr v0, v9

    if-eqz v0, :cond_d

    move-object/from16 v0, p14

    if-eqz v0, :cond_d

    .line 49
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean v1, v2, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    .line 50
    iput-object v0, v2, Lcom/android/server/wm/DragState;->mObjectCaptureRect:Landroid/graphics/RectF;

    :cond_d
    and-int/lit16 v0, v9, 0x400

    if-nez v0, :cond_1a

    .line 51
    iget-object v0, v11, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 52
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v3, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, v12, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0, v4, v5}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 53
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 54
    iget-object v3, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 55
    iput-object v3, v2, Lcom/android/server/wm/DragState;->mCallingPackageName:Ljava/lang/String;

    const/high16 v2, 0x200000

    and-int/2addr v2, v9

    if-eqz v2, :cond_f

    if-eqz v15, :cond_f

    .line 56
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 57
    invoke-virtual/range {p13 .. p13}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ClipDescription;->setDragFromRecent(Z)V

    .line 58
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean v1, v2, Lcom/android/server/wm/DragState;->mDragInProgressByRecents:Z

    goto :goto_7

    .line 59
    :cond_e
    invoke-virtual/range {p13 .. p13}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->setDragFromRecent(Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 60
    :cond_f
    :goto_7
    :try_start_15
    monitor-exit v18
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 61
    :try_start_17
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception v0

    goto/16 :goto_17

    :catch_0
    move-exception v0

    .line 62
    :try_start_18
    const-string v2, "WindowManager"

    const-string v3, "Exception thrown while waiting for touch focus transfer"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 63
    :goto_8
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-nez v0, :cond_10

    .line 64
    :try_start_19
    const-string v0, "WindowManager"

    const-string v1, "Unable to transfer touch focus"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v3, 0x0

    .line 66
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    .line 67
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    return-object v4

    :catchall_8
    move-exception v0

    goto/16 :goto_d

    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 69
    :try_start_1a
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    move/from16 v6, p9

    move/from16 v7, p10

    move-object v9, v11

    .line 70
    invoke-virtual {v0, v6, v7}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    const/16 v0, 0x2002

    move/from16 v10, p6

    and-int/2addr v10, v0

    if-ne v10, v0, :cond_13

    .line 71
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v10, p7

    iput v10, v0, Lcom/android/server/wm/DragState;->mDeviceId:I

    move/from16 v11, p8

    .line 72
    iput v11, v0, Lcom/android/server/wm/DragState;->mPointerId:I

    .line 73
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget-object v12, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/16 v14, 0x3fd

    .line 74
    invoke-static {v12, v14}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v12

    iget-object v14, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v3, v14, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 75
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 76
    iget-object v14, v14, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v14, :cond_12

    iget-object v14, v14, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    if-nez v14, :cond_11

    goto :goto_9

    .line 77
    :cond_11
    invoke-virtual {v14}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v14

    move-object v4, v14

    :cond_12
    :goto_9
    move-object/from16 p1, v0

    move-object/from16 p2, v12

    move/from16 p3, v3

    move/from16 p4, p7

    move/from16 p5, p8

    move-object/from16 p6, v4

    .line 78
    invoke-virtual/range {p1 .. p6}, Landroid/hardware/input/InputManagerGlobal;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    .line 79
    :cond_13
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v3, p11

    const/4 v4, 0x0

    iput v3, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    move/from16 v10, p12

    .line 80
    iput v10, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 81
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    if-eqz v0, :cond_15

    if-eqz v15, :cond_15

    .line 82
    const-string v11, "WindowManager"

    invoke-virtual/range {p13 .. p13}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ClipDescription;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual/range {p13 .. p13}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v11

    const-string v12, "image/*"

    invoke-virtual {v11, v12}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 84
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v4, v11, Lcom/android/server/wm/DragState;->mMimeType:I

    goto :goto_a

    .line 85
    :cond_14
    invoke-virtual/range {p13 .. p13}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    const-string/jumbo v11, "text/*"

    invoke-virtual {v4, v11}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 86
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v1, v4, Lcom/android/server/wm/DragState;->mMimeType:I

    .line 87
    :cond_15
    :goto_a
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v4, v4, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 88
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 89
    iget-object v11, v9, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v11, :cond_17

    sub-float v3, v6, v3

    .line 90
    iget v12, v11, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v12

    iget v14, v11, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v3, v14

    float-to-int v3, v3

    sub-float v10, v7, v10

    mul-float/2addr v10, v12

    .line 91
    iget v12, v11, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v10, v12

    float-to-int v10, v10

    int-to-float v3, v3

    int-to-float v10, v10

    .line 92
    invoke-virtual {v4, v5, v3, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 93
    iget v3, v11, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v4, v5, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_b

    :cond_16
    if-eqz v0, :cond_17

    sub-float v3, v6, v3

    sub-float v10, v7, v10

    .line 94
    invoke-virtual {v4, v5, v3, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 95
    :cond_17
    :goto_b
    iget-object v3, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v3, v3, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    invoke-virtual {v4, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 96
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 97
    iget-object v3, v9, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 98
    invoke-virtual {v4, v5, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_18

    .line 99
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 100
    :cond_18
    iget-object v3, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3, v1, v6, v7}, Lcom/android/server/wm/DragState;->updateDragSurfaceLocked(ZFF)V

    if-eqz v0, :cond_19

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->handleDragEvent()V

    .line 102
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 103
    :goto_c
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v13

    .line 104
    :goto_d
    :try_start_1c
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :catchall_9
    move-exception v0

    goto/16 :goto_16

    :cond_1a
    move/from16 v6, p9

    move/from16 v7, p10

    move-object v0, v12

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 105
    :try_start_1e
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 106
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 107
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    const v3, 0xea60

    const/4 v5, 0x4

    .line 108
    invoke-virtual {v1, v3, v5}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    int-to-long v5, v1

    .line 109
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 110
    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 111
    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 112
    :try_start_1f
    monitor-exit v18
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 113
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_c

    :catchall_a
    move-exception v0

    goto :goto_13

    :catchall_b
    move-exception v0

    :goto_e
    move-object/from16 v2, p5

    goto :goto_13

    :catchall_c
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_e

    .line 114
    :goto_f
    :try_start_20
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    move-object/from16 v1, p5

    if-eqz v1, :cond_1c

    .line 115
    :try_start_21
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 116
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/SurfaceControl$Transaction;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 117
    :try_start_22
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 118
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    .line 119
    :try_start_23
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    goto :goto_11

    :catchall_d
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_1b

    .line 120
    :try_start_24
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v0

    move-object v2, v0

    :try_start_25
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_10
    throw v1

    :cond_1c
    :goto_11
    monitor-exit v18
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    .line 121
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v2

    :catchall_f
    move-exception v0

    move-object/from16 v1, p5

    :goto_12
    move-object v2, v1

    goto :goto_13

    :catchall_10
    move-exception v0

    move-object/from16 v18, v3

    move-object v1, v10

    goto :goto_12

    :goto_13
    if-eqz v2, :cond_1e

    .line 122
    :try_start_26
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 123
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    .line 124
    :try_start_27
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 125
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    .line 126
    :try_start_28
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    goto :goto_15

    :catchall_11
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_1d

    .line 127
    :try_start_29
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    goto :goto_14

    :catchall_12
    move-exception v0

    move-object v1, v0

    :try_start_2a
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_14
    throw v2

    .line 128
    :cond_1e
    :goto_15
    throw v0

    .line 129
    :goto_16
    monitor-exit v18
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    .line 130
    :goto_17
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    throw v0
.end method

.method public final reportDropResult(Landroid/view/IWindow;Z)V
    .locals 7

    .line 1
    const-string v0, "Bad result-reporting window "

    .line 2
    .line 3
    const-string v1, "Invalid drop-result claim by "

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "WindowManager"

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v5, "Drop result="

    .line 14
    .line 15
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v5, " reported by "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 50
    .line 51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 52
    .line 53
    .line 54
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 56
    .line 57
    if-nez v4, :cond_0

    .line 58
    .line 59
    const-string p1, "WindowManager"

    .line 60
    .line 61
    const-string p2, "Drop result given but no drag in progress"

    .line 62
    .line 63
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :cond_0
    :try_start_2
    iget-object v4, v4, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 86
    .line 87
    if-ne v4, v2, :cond_7

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    .line 90
    .line 91
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const/4 v5, 0x0

    .line 96
    invoke-virtual {v1, v5, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const/4 v6, 0x0

    .line 109
    invoke-virtual {v1, v6, v4, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-nez v1, :cond_1

    .line 114
    .line 115
    const-string p2, "WindowManager"

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    monitor-exit v3

    .line 133
    goto :goto_0

    .line 134
    :cond_1
    if-nez p2, :cond_2

    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    .line 139
    .line 140
    const-string/jumbo v0, "window-drop"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/DragDropController;->notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_2

    .line 148
    .line 149
    monitor-exit v3

    .line 150
    goto :goto_0

    .line 151
    :cond_2
    const/4 p1, 0x1

    .line 152
    if-eqz p2, :cond_3

    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {v1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_3

    .line 164
    .line 165
    move v0, p1

    .line 166
    goto :goto_1

    .line 167
    :cond_3
    move v0, v5

    .line 168
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 169
    .line 170
    iget-object v4, v4, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 171
    .line 172
    invoke-interface {v4, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    xor-int/2addr p1, v2

    .line 177
    if-eqz p2, :cond_5

    .line 178
    .line 179
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 180
    .line 181
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 182
    .line 183
    const/high16 v6, -0x80000000

    .line 184
    .line 185
    and-int/2addr v4, v6

    .line 186
    if-eqz v4, :cond_4

    .line 187
    .line 188
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 189
    .line 190
    and-int/lit8 v4, v4, 0x10

    .line 191
    .line 192
    if-eqz v4, :cond_4

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 196
    .line 197
    iget-boolean v4, v4, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    .line 198
    .line 199
    if-eqz v4, :cond_5

    .line 200
    .line 201
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 202
    .line 203
    const/16 v4, 0x7e8

    .line 204
    .line 205
    if-ne v2, v4, :cond_5

    .line 206
    .line 207
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 208
    .line 209
    iget v2, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 210
    .line 211
    and-int/lit16 v2, v2, -0x801

    .line 212
    .line 213
    iput v2, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_5
    move v5, v0

    .line 217
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 218
    .line 219
    invoke-virtual {v0, p2, v5}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {}, Lcom/android/window/flags/Flags;->delegateUnhandledDrags()Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_6

    .line 231
    .line 232
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    .line 234
    if-eqz v1, :cond_6

    .line 235
    .line 236
    if-eqz v0, :cond_6

    .line 237
    .line 238
    if-eqz p2, :cond_6

    .line 239
    .line 240
    if-eqz p1, :cond_6

    .line 241
    .line 242
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-interface {v1, p1}, Landroid/window/IGlobalDragListener;->onCrossWindowDrop(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :catch_0
    move-exception p1

    .line 251
    :try_start_4
    const-string p2, "WindowManager"

    .line 252
    .line 253
    const-string v0, "Failed to call global drag listener for cross-window drop"

    .line 254
    .line 255
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .line 257
    .line 258
    :cond_6
    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 259
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 260
    .line 261
    .line 262
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 263
    .line 264
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 269
    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :catchall_1
    move-exception p1

    .line 275
    goto :goto_6

    .line 276
    :cond_7
    :try_start_6
    const-string p2, "WindowManager"

    .line 277
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 294
    .line 295
    const-string/jumbo p2, "reportDropResult() by non-recipient"

    .line 296
    .line 297
    .line 298
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :goto_5
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 303
    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 304
    .line 305
    .line 306
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 307
    :goto_6
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 308
    .line 309
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 314
    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    throw p1
.end method

.method public final setGlobalDragListener(Landroid/window/IGlobalDragListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListenerDeathRecipient:Lcom/android/server/wm/DragDropController$1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    .line 15
    .line 16
    invoke-interface {v0}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    .line 34
    .line 35
    invoke-interface {p1}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method
