.class public final Lcom/android/server/wm/TaskPositioningController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mInputSurface:Landroid/view/SurfaceControl;

.field public mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

.field public final mTmpClipRect:Landroid/graphics/Rect;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final cleanUpTaskPositioner()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 10
    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    const-string p0, "TaskPositioner"

    .line 14
    .line 15
    const-string v0, "Task positioner not registered"

    .line 16
    .line 17
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p0, v0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 34
    .line 35
    if-ne v3, v2, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p0, v0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 53
    .line 54
    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, v0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 66
    .line 67
    .line 68
    iput-object v1, v0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 69
    .line 70
    iget-object p0, v0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 73
    .line 74
    .line 75
    iput-object v1, v0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 76
    .line 77
    iput-object v1, v0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 78
    .line 79
    iput-object v1, v0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 80
    .line 81
    const/4 p0, 0x1

    .line 82
    iput-boolean p0, v0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 83
    .line 84
    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 87
    .line 88
    invoke-virtual {v2, p0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 89
    .line 90
    .line 91
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    aget-boolean p0, p0, v2

    .line 95
    .line 96
    if-eqz p0, :cond_3

    .line 97
    .line 98
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 99
    .line 100
    const-wide v4, 0x4c08d69999673028L    # 1.948905228309005E58

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    const/4 v8, 0x0

    .line 108
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    iget-object p0, v0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->resume()V

    .line 116
    .line 117
    .line 118
    iput-object v1, v0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 119
    .line 120
    iget-object p0, v0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    .line 121
    .line 122
    if-eqz p0, :cond_4

    .line 123
    .line 124
    invoke-interface {p0, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_0
    return-void
.end method

.method public final finishTaskPositioning$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final startMovingTask(Landroid/view/IWindow;FF)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

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
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;FF)Ljava/util/concurrent/CompletableFuture;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    return v3

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 39
    .line 40
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 41
    .line 42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 43
    .line 44
    .line 45
    monitor-enter p2

    .line 46
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    .line 57
    .line 58
    .line 59
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x1

    .line 64
    return p0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    const-string p1, "WindowManager"

    .line 73
    .line 74
    const-string p2, "Exception thrown while waiting for startPositionLocked future"

    .line 75
    .line 76
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    return v3

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final startPositioningLocked(Lcom/android/server/wm/WindowState;FF)Ljava/util/concurrent/CompletableFuture;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "WindowManager"

    .line 6
    .line 7
    if-eqz v2, :cond_d

    .line 8
    .line 9
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v3, "startPositioningLocked: "

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " has no input channel,  probably being removed"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v3, "startPositioningLocked: Invalid display content "

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :cond_2
    iput-object v3, v1, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 81
    .line 82
    sget-object v4, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$1;

    .line 83
    .line 84
    if-nez v4, :cond_3

    .line 85
    .line 86
    new-instance v4, Lcom/android/server/wm/TaskPositioner$1;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 89
    .line 90
    .line 91
    sput-object v4, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$1;

    .line 92
    .line 93
    :cond_3
    sget-object v4, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$1;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    new-instance v4, Lcom/android/server/wm/TaskPositioner;

    .line 99
    .line 100
    iget-object v5, v1, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 101
    .line 102
    invoke-direct {v4, v5}, Lcom/android/server/wm/TaskPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 103
    .line 104
    .line 105
    iput-object v4, v1, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 106
    .line 107
    iget-object v5, v4, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    const-string v7, "TaskPositioner"

    .line 111
    .line 112
    if-eqz v5, :cond_4

    .line 113
    .line 114
    const-string v0, "Task positioner already registered"

    .line 115
    .line 116
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    invoke-static {v6}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :goto_0
    move-object v6, v0

    .line 124
    goto/16 :goto_5

    .line 125
    .line 126
    :cond_4
    iput-object v3, v4, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 127
    .line 128
    iget-object v5, v4, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 129
    .line 130
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 131
    .line 132
    invoke-virtual {v5, v7}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    iput-object v5, v4, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 137
    .line 138
    new-instance v5, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;

    .line 139
    .line 140
    iget-object v8, v4, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 141
    .line 142
    iget-object v9, v4, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 143
    .line 144
    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 145
    .line 146
    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    iget-object v10, v4, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 151
    .line 152
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 153
    .line 154
    iget-object v10, v10, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 155
    .line 156
    new-instance v11, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda0;

    .line 157
    .line 158
    invoke-direct {v11, v4}, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskPositioner;)V

    .line 159
    .line 160
    .line 161
    invoke-direct {v5, v8, v9, v10, v11}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V

    .line 162
    .line 163
    .line 164
    iput-object v5, v4, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 165
    .line 166
    new-instance v5, Landroid/view/InputApplicationHandle;

    .line 167
    .line 168
    new-instance v8, Landroid/os/Binder;

    .line 169
    .line 170
    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    .line 171
    .line 172
    .line 173
    sget v9, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    .line 174
    .line 175
    int-to-long v9, v9

    .line 176
    invoke-direct {v5, v8, v7, v9, v10}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 177
    .line 178
    .line 179
    iput-object v5, v4, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 180
    .line 181
    new-instance v5, Landroid/view/InputWindowHandle;

    .line 182
    .line 183
    iget-object v8, v4, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 184
    .line 185
    iget v11, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 186
    .line 187
    invoke-direct {v5, v8, v11}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 188
    .line 189
    .line 190
    iput-object v5, v4, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 191
    .line 192
    iput-object v7, v5, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 193
    .line 194
    iget-object v7, v4, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 195
    .line 196
    invoke-virtual {v7}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    iput-object v7, v5, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 201
    .line 202
    iget-object v5, v4, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 203
    .line 204
    const/16 v7, 0x7e0

    .line 205
    .line 206
    iput v7, v5, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 207
    .line 208
    iput-wide v9, v5, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 209
    .line 210
    sget v7, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 211
    .line 212
    iput v7, v5, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 213
    .line 214
    sget v7, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    .line 215
    .line 216
    iput v7, v5, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 217
    .line 218
    const/high16 v7, 0x3f800000    # 1.0f

    .line 219
    .line 220
    iput v7, v5, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 221
    .line 222
    const/4 v7, 0x4

    .line 223
    iput v7, v5, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 224
    .line 225
    iget-object v5, v5, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 226
    .line 227
    invoke-virtual {v5}, Landroid/graphics/Region;->setEmpty()V

    .line 228
    .line 229
    .line 230
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 231
    .line 232
    const/4 v7, 0x0

    .line 233
    aget-boolean v5, v5, v7

    .line 234
    .line 235
    if-eqz v5, :cond_5

    .line 236
    .line 237
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 238
    .line 239
    const/4 v12, 0x0

    .line 240
    const/4 v13, 0x0

    .line 241
    const-wide v9, 0x29bcc29f43373e2bL

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    const/4 v11, 0x0

    .line 247
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    :cond_5
    iget-object v5, v4, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 251
    .line 252
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 253
    .line 254
    iget v8, v5, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 255
    .line 256
    add-int/lit8 v8, v8, 0x1

    .line 257
    .line 258
    iput v8, v5, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 259
    .line 260
    iget-object v5, v4, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 261
    .line 262
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 263
    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 265
    .line 266
    .line 267
    move-result v8

    .line 268
    iget-object v9, v5, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 269
    .line 270
    if-eqz v9, :cond_c

    .line 271
    .line 272
    iget v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 273
    .line 274
    if-eq v9, v8, :cond_6

    .line 275
    .line 276
    goto/16 :goto_3

    .line 277
    .line 278
    :cond_6
    iget-object v9, v5, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 279
    .line 280
    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 281
    .line 282
    invoke-virtual {v10, v8}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    iget-object v10, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 287
    .line 288
    if-nez v10, :cond_7

    .line 289
    .line 290
    iget-object v10, v8, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    .line 291
    .line 292
    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    const-string v10, "Drag and Drop Input Consumer"

    .line 301
    .line 302
    invoke-virtual {v9, v10}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    const-string v10, "TaskPositioningController.showInputSurface"

    .line 307
    .line 308
    invoke-virtual {v9, v10}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    iget-object v10, v8, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 313
    .line 314
    invoke-virtual {v9, v10}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    iput-object v9, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 323
    .line 324
    goto :goto_1

    .line 325
    :cond_7
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_TASK_POSITIONER:Z

    .line 326
    .line 327
    if-eqz v9, :cond_8

    .line 328
    .line 329
    iget-object v9, v5, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 330
    .line 331
    iget-object v11, v8, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 332
    .line 333
    invoke-virtual {v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 334
    .line 335
    .line 336
    :cond_8
    :goto_1
    iget-object v9, v5, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 337
    .line 338
    if-eqz v9, :cond_9

    .line 339
    .line 340
    iget-object v9, v9, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 341
    .line 342
    goto :goto_2

    .line 343
    :cond_9
    move-object v9, v6

    .line 344
    :goto_2
    if-nez v9, :cond_a

    .line 345
    .line 346
    const-string v5, "Drag is in progress but there is no drag window handle."

    .line 347
    .line 348
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    invoke-static {v6}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    goto/16 :goto_4

    .line 356
    .line 357
    :cond_a
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 358
    .line 359
    new-instance v6, Landroid/graphics/Point;

    .line 360
    .line 361
    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, v5, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    .line 368
    .line 369
    iget v10, v6, Landroid/graphics/Point;->x:I

    .line 370
    .line 371
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 372
    .line 373
    invoke-virtual {v0, v7, v7, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 374
    .line 375
    .line 376
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 377
    .line 378
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    const v7, 0x7fffffff

    .line 386
    .line 387
    .line 388
    if-eqz v6, :cond_b

    .line 389
    .line 390
    iget-object v6, v5, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 391
    .line 392
    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 393
    .line 394
    if-eqz v6, :cond_b

    .line 395
    .line 396
    iget-object v8, v5, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 397
    .line 398
    iget-object v10, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 399
    .line 400
    invoke-virtual {v8, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    iget-object v10, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 405
    .line 406
    invoke-virtual {v8, v10, v9}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    iget-object v9, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 411
    .line 412
    invoke-virtual {v8, v9, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 413
    .line 414
    .line 415
    move-result-object v10

    .line 416
    iget-object v11, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 417
    .line 418
    iget v15, v6, Landroid/view/MagnificationSpec;->scale:F

    .line 419
    .line 420
    const/4 v13, 0x0

    .line 421
    const/4 v14, 0x0

    .line 422
    move v12, v15

    .line 423
    invoke-virtual/range {v10 .. v15}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    iget-object v8, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 428
    .line 429
    iget v9, v6, Landroid/view/MagnificationSpec;->offsetX:F

    .line 430
    .line 431
    iget v6, v6, Landroid/view/MagnificationSpec;->offsetY:F

    .line 432
    .line 433
    invoke-virtual {v7, v8, v9, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    iget-object v7, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 438
    .line 439
    iget-object v5, v5, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    .line 440
    .line 441
    invoke-virtual {v6, v7, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    new-instance v6, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda2;

    .line 446
    .line 447
    const/4 v7, 0x0

    .line 448
    invoke-direct {v6, v7, v0}, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Transaction;->addWindowInfosReportedListener(Ljava/lang/Runnable;)Landroid/view/SurfaceControl$Transaction;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 456
    .line 457
    .line 458
    goto :goto_4

    .line 459
    :cond_b
    iget-object v6, v5, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 460
    .line 461
    iget-object v8, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 462
    .line 463
    invoke-virtual {v6, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    iget-object v8, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 468
    .line 469
    invoke-virtual {v6, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    iget-object v8, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 474
    .line 475
    invoke-virtual {v6, v8, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    iget-object v7, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 480
    .line 481
    const/4 v8, 0x0

    .line 482
    invoke-virtual {v6, v7, v8, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 483
    .line 484
    .line 485
    move-result-object v6

    .line 486
    iget-object v7, v5, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 487
    .line 488
    iget-object v5, v5, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    .line 489
    .line 490
    invoke-virtual {v6, v7, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    new-instance v6, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda2;

    .line 495
    .line 496
    const/4 v7, 0x1

    .line 497
    invoke-direct {v6, v7, v0}, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Transaction;->addWindowInfosReportedListener(Ljava/lang/Runnable;)Landroid/view/SurfaceControl$Transaction;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 505
    .line 506
    .line 507
    goto :goto_4

    .line 508
    :cond_c
    :goto_3
    invoke-static {v6}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    :goto_4
    new-instance v5, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;

    .line 513
    .line 514
    invoke-direct {v5, v4, v3, v2}, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskPositioner;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0, v5}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    goto/16 :goto_0

    .line 522
    .line 523
    :goto_5
    new-instance v7, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;

    .line 524
    .line 525
    move-object v0, v7

    .line 526
    move-object/from16 v1, p0

    .line 527
    .line 528
    move-object/from16 v2, p1

    .line 529
    .line 530
    move/from16 v4, p2

    .line 531
    .line 532
    move/from16 v5, p3

    .line 533
    .line 534
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskPositioningController;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;FF)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    return-object v0

    .line 542
    :cond_d
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    const-string/jumbo v3, "startPositioningLocked: Bad window "

    .line 545
    .line 546
    .line 547
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 561
    .line 562
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    return-object v0
.end method
