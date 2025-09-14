.class public final Lcom/android/server/wm/TaskOrganizerController;
.super Landroid/window/ITaskOrganizerController$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskOrganizerStates:Landroid/util/ArrayMap;

.field public final mTaskOrganizers:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/window/ITaskOrganizerController$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 30
    .line 31
    return-void
.end method

.method public static applyStartingWindowAnimation(Lcom/android/server/wm/WindowState;)Landroid/view/SurfaceControl;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "applyStartingWindowAnimation, window="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", caller="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "TaskOrganizerController"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    const/16 v4, 0x80

    .line 44
    .line 45
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "Cannot start starting window animation, the window "

    .line 57
    .line 58
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p0, " was removed"

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x0

    .line 77
    return-object p0

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 79
    .line 80
    iget v1, p0, Landroid/graphics/Point;->x:I

    .line 81
    .line 82
    int-to-float v1, v1

    .line 83
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 84
    .line 85
    int-to-float p0, p0

    .line 86
    invoke-virtual {v0, v2, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 87
    .line 88
    .line 89
    return-object v2
.end method

.method public static onTaskVanishedInternal(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)V
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "TaskOrganizerController"

    .line 4
    .line 5
    const-string p1, "cannot send onTaskVanished because organizer state is not present for this organizer"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    sub-int/2addr v1, v2

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ltz v1, :cond_2

    .line 23
    .line 24
    iget-object v4, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 31
    .line 32
    iget v5, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 33
    .line 34
    iget-object v6, v4, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    .line 35
    .line 36
    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    .line 37
    .line 38
    if-ne v5, v6, :cond_1

    .line 39
    .line 40
    iget-object v5, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget v4, v4, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    .line 46
    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    move v3, v2

    .line 50
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    if-eqz v3, :cond_3

    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    new-instance v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 61
    .line 62
    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(ILcom/android/server/wm/Task;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static resetStashedFreeform(Lcom/android/server/wm/Task;Z)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 8
    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput v1, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 25
    .line 26
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 27
    .line 28
    invoke-interface {v0, p0, p1}, Landroid/window/ITaskOrganizer;->resetStashedFreeform(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "TaskOrganizerController"

    .line 34
    .line 35
    const-string v0, "Exception sending resetStashedFreeform callback"

    .line 36
    .line 37
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p3, :cond_2

    .line 25
    .line 26
    iput p3, p1, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    .line 27
    .line 28
    :cond_2
    iput-object p4, p1, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 31
    .line 32
    iput-object p2, p1, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;

    .line 33
    .line 34
    :try_start_0
    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    const-string p1, "TaskOrganizerController"

    .line 41
    .line 42
    const-string p2, "Exception sending onTaskStart callback"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return v1
.end method

.method public createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;)Lcom/android/server/wm/Task;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskOrganizerController;->createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;ZI)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;ZI)Lcom/android/server/wm/Task;
    .locals 13

    move v0, p2

    .line 15
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    move-object v1, p1

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v3, v3

    int-to-long v5, v0

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, 0x757eae26280037d0L    # 9.213305648872434E257

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 16
    :goto_0
    new-instance v3, Lcom/android/server/wm/Task$Builder;

    move-object v4, p0

    iget-object v4, v4, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v3, v4}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 17
    iput v0, v3, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 19
    iput-object v0, v3, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    .line 20
    iput-boolean v2, v3, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    .line 21
    iput-boolean v2, v3, Lcom/android/server/wm/Task$Builder;->mDeferTaskAppear:Z

    move-object/from16 v0, p3

    .line 22
    iput-object v0, v3, Lcom/android/server/wm/Task$Builder;->mLaunchCookie:Landroid/os/IBinder;

    .line 23
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 24
    iput-object v0, v3, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    move/from16 v0, p4

    .line 25
    iput-boolean v0, v3, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    move/from16 v0, p5

    .line 26
    iput v0, v3, Lcom/android/server/wm/Task$Builder;->mStageType:I

    .line 27
    invoke-virtual {v3}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    return-object v0
.end method

.method public final createRootTask(IILandroid/os/IBinder;Z)V
    .locals 10

    .line 1
    const-string v0, "createRootTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-nez v5, :cond_1

    .line 5
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 p2, 0x4

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_0

    int-to-long p0, p1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, -0x1fbba92e0f95c2b2L    # -5.4540658974403305E155

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    const/4 v9, 0x0

    move-object v4, p0

    move v6, p2

    move-object v7, p3

    move v8, p4

    .line 8
    :try_start_2
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/TaskOrganizerController;->createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;ZI)Lcom/android/server/wm/Task;

    .line 9
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 11
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 12
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    throw p0
.end method

.method public final createStageRootTask(IIILandroid/os/IBinder;)V
    .locals 10

    .line 1
    const-string v0, "createStageRootTask()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 19
    .line 20
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 27
    .line 28
    const/4 p2, 0x4

    .line 29
    aget-boolean p0, p0, p2

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    int-to-long p0, p1

    .line 34
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 35
    .line 36
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const-wide v4, -0x3c0ef28af015c30fL    # -1.966027175290936E19

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    const/4 v8, 0x0

    .line 66
    move-object v4, p0

    .line 67
    move v6, p2

    .line 68
    move-object v7, p4

    .line 69
    move v9, p3

    .line 70
    :try_start_2
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/TaskOrganizerController;->createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;ZI)Lcom/android/server/wm/Task;

    .line 71
    .line 72
    .line 73
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 85
    .line 86
    .line 87
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 88
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public final deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .locals 14

    .line 1
    const-string v0, "Attempt to delete task not created by organizer task="

    .line 2
    .line 3
    const-string v1, "deleteRootTask()"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 15
    .line 16
    .line 17
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return v3

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-boolean v3, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    aget-boolean v0, v0, v3

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-long v4, v0

    .line 63
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    int-to-long v6, v0

    .line 68
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 69
    .line 70
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    const-wide v9, 0x5f4d1700cbd737a7L    # 1.1902807635953502E151

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    const/4 v11, 0x5

    .line 88
    const/4 v12, 0x0

    .line 89
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    const-string v0, "deleteRootTask"

    .line 93
    .line 94
    invoke-virtual {p1, v0, v3}, Lcom/android/server/wm/TaskFragment;->remove(Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    monitor-exit p0

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v3

    .line 117
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 119
    .line 120
    .line 121
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    :catchall_1
    move-exception p0

    .line 123
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    throw p0
.end method

.method public final dispatchPendingEvents()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    iget-object v0, v1, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ge v3, v0, :cond_13

    .line 23
    .line 24
    iget-object v0, v1, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 31
    .line 32
    iget-object v4, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    .line 33
    .line 34
    iget-object v0, v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_1
    iget-object v0, v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    move v6, v2

    .line 51
    :goto_1
    if-ge v6, v5, :cond_12

    .line 52
    .line 53
    iget-object v0, v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 60
    .line 61
    iget-object v7, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    .line 62
    .line 63
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 64
    .line 65
    const/4 v9, 0x1

    .line 66
    const-string v10, "TaskOrganizerController"

    .line 67
    .line 68
    iget-object v11, v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 69
    .line 70
    iget v12, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    .line 71
    .line 72
    if-eqz v12, :cond_c

    .line 73
    .line 74
    if-eq v12, v9, :cond_a

    .line 75
    .line 76
    const/4 v13, 0x2

    .line 77
    if-eq v12, v13, :cond_9

    .line 78
    .line 79
    const/4 v13, 0x3

    .line 80
    if-eq v12, v13, :cond_5

    .line 81
    .line 82
    const/4 v8, 0x4

    .line 83
    if-eq v12, v8, :cond_2

    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_2
    iget-object v8, v11, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 88
    .line 89
    iget v0, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mGestureFrom:I

    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-boolean v9, v7, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 95
    .line 96
    if-nez v9, :cond_3

    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-nez v9, :cond_4

    .line 105
    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_4
    :try_start_0
    iget-object v8, v8, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 109
    .line 110
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-interface {v8, v7, v0}, Landroid/window/ITaskOrganizer;->requestAffordanceAnim(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto/16 :goto_4

    .line 118
    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v7, "Exception sending onAffordanceAnim callback"

    .line 121
    .line 122
    invoke-static {v10, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    goto/16 :goto_4

    .line 126
    .line 127
    :cond_5
    iget-object v0, v11, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    aget-boolean v8, v8, v9

    .line 133
    .line 134
    if-eqz v8, :cond_6

    .line 135
    .line 136
    iget v8, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 137
    .line 138
    int-to-long v8, v8

    .line 139
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 140
    .line 141
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v16

    .line 149
    const/4 v14, 0x1

    .line 150
    const/4 v15, 0x0

    .line 151
    const-wide v12, -0x70693a71d2e6c7cfL

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    iget-boolean v8, v7, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 160
    .line 161
    if-nez v8, :cond_7

    .line 162
    .line 163
    goto/16 :goto_4

    .line 164
    .line 165
    :cond_7
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-nez v8, :cond_8

    .line 170
    .line 171
    goto/16 :goto_4

    .line 172
    .line 173
    :cond_8
    :try_start_1
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 174
    .line 175
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-interface {v0, v7}, Landroid/window/ITaskOrganizer;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    .line 181
    .line 182
    goto/16 :goto_4

    .line 183
    .line 184
    :catch_1
    move-exception v0

    .line 185
    const-string v7, "Exception sending onBackPressedOnTaskRoot callback"

    .line 186
    .line 187
    invoke-static {v10, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .line 189
    .line 190
    goto/16 :goto_4

    .line 191
    .line 192
    :cond_9
    iget-boolean v0, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    .line 193
    .line 194
    invoke-virtual {v4, v7, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_4

    .line 198
    .line 199
    :cond_a
    iget-object v0, v11, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    aget-boolean v8, v8, v9

    .line 205
    .line 206
    if-eqz v8, :cond_b

    .line 207
    .line 208
    iget v8, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 209
    .line 210
    int-to-long v8, v8

    .line 211
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 212
    .line 213
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v16

    .line 221
    const/4 v14, 0x1

    .line 222
    const/4 v15, 0x0

    .line 223
    const-wide v12, 0x5ab209fd1dac3e92L    # 7.815037482063368E128

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_b
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    :try_start_2
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 236
    .line 237
    invoke-interface {v0, v8}, Landroid/window/ITaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :catch_2
    move-exception v0

    .line 242
    const-string v8, "Exception sending onTaskVanished callback"

    .line 243
    .line 244
    invoke-static {v10, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .line 246
    .line 247
    :goto_2
    iget-object v0, v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    .line 248
    .line 249
    invoke-virtual {v0, v7}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_c
    iget-object v0, v7, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 254
    .line 255
    if-nez v0, :cond_d

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_d
    iget-boolean v0, v7, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    .line 259
    .line 260
    if-eqz v0, :cond_e

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_e
    iget-boolean v0, v7, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 264
    .line 265
    if-eqz v0, :cond_f

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_f
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 269
    .line 270
    if-eqz v0, :cond_11

    .line 271
    .line 272
    iget-boolean v0, v7, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 273
    .line 274
    if-eqz v0, :cond_11

    .line 275
    .line 276
    :goto_3
    iget-object v0, v11, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    aget-boolean v8, v8, v9

    .line 282
    .line 283
    if-eqz v8, :cond_10

    .line 284
    .line 285
    iget v8, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 286
    .line 287
    int-to-long v8, v8

    .line 288
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 289
    .line 290
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v16

    .line 298
    const/4 v14, 0x1

    .line 299
    const/4 v15, 0x0

    .line 300
    const-wide v12, -0x55c7feea6951c98aL

    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :cond_10
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    :try_start_3
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 313
    .line 314
    const-string v9, "TaskOrganizerController.onTaskAppeared"

    .line 315
    .line 316
    new-instance v11, Landroid/view/SurfaceControl;

    .line 317
    .line 318
    iget-object v7, v7, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 319
    .line 320
    invoke-direct {v11, v7, v9}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v0, v8, v11}, Landroid/window/ITaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 324
    .line 325
    .line 326
    goto :goto_4

    .line 327
    :catch_3
    move-exception v0

    .line 328
    const-string v7, "Exception sending onTaskAppeared callback"

    .line 329
    .line 330
    invoke-static {v10, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .line 332
    .line 333
    :cond_11
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :cond_12
    iget-object v0, v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 340
    .line 341
    .line 342
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :cond_13
    return-void
.end method

.method public final getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "Can\'t get children of "

    .line 2
    .line 3
    const-string v1, "getChildTasks()"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 15
    .line 16
    .line 17
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    if-eqz p1, :cond_6

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const-string p2, "TaskOrganizerController"

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, " because it is not valid."

    .line 42
    .line 43
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-object v4

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_3

    .line 63
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    const-string p1, "TaskOrganizerController"

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, " is not a task..."

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    monitor-exit p0

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 94
    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    const-string p1, "TaskOrganizerController"

    .line 98
    .line 99
    const-string p2, "Can only get children of root tasks created via createRootTask"

    .line 100
    .line 101
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    monitor-exit p0

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    add-int/lit8 v3, v3, -0x1

    .line 116
    .line 117
    :goto_1
    if-ltz v3, :cond_5

    .line 118
    .line 119
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-nez v4, :cond_3

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    if-eqz p2, :cond_4

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-static {p2, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-nez v5, :cond_4

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 155
    .line 156
    .line 157
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 162
    .line 163
    const-string p2, "Can\'t get children of null parent"

    .line 164
    .line 165
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 171
    .line 172
    .line 173
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 174
    :catchall_1
    move-exception p0

    .line 175
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    .line 177
    .line 178
    throw p0
.end method

.method public final getFreeformTaskOpacity(I)F
    .locals 6

    .line 1
    const-string v0, "Cannot find task #"

    .line 2
    .line 3
    const-string v1, "getFreeformTaskOpacity()"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 15
    .line 16
    .line 17
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {p0, p1, v5, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    const-string p0, "TaskOrganizerController"

    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    const/high16 p0, 0x3f800000    # 1.0f

    .line 55
    .line 56
    return p0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    :try_start_2
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mFreeformAlpha:F

    .line 60
    .line 61
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    return p0

    .line 69
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 71
    .line 72
    .line 73
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final getImeTarget(I)Landroid/window/WindowContainerToken;
    .locals 5

    .line 1
    const-string v0, "getImeTarget()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 p1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_4

    .line 39
    :cond_0
    const/4 v3, 0x0

    .line 40
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_6

    .line 45
    .line 46
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_1
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    monitor-exit v2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_5

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 72
    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    invoke-interface {p0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move-object p0, p1

    .line 81
    :goto_1
    if-eqz p0, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :cond_4
    if-eqz p1, :cond_5

    .line 88
    .line 89
    if-eq p1, v3, :cond_5

    .line 90
    .line 91
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :goto_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    return-object p0

    .line 105
    :cond_5
    :try_start_3
    iget-object p0, v3, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    monitor-exit v2

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    :goto_3
    monitor-exit v2

    .line 114
    goto :goto_0

    .line 115
    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 117
    .line 118
    .line 119
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final getRootTasks(I[I)Ljava/util/List;
    .locals 5

    .line 1
    const-string v0, "Display "

    .line 2
    .line 3
    const-string v1, "getRootTasks()"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 15
    .line 16
    .line 17
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-direct {v0, p1, v4, p2}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, " doesn\'t exist"

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 77
    .line 78
    .line 79
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public final getTaskOrganizer()Landroid/window/ITaskOrganizer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/window/ITaskOrganizer;

    .line 8
    .line 9
    return-object p0
.end method

.method public getTaskOrganizerPendingEvents(Landroid/os/IBinder;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    .line 10
    .line 11
    return-object p0
.end method

.method public getTaskOrganizerState(Landroid/os/IBinder;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 8
    .line 9
    return-object p0
.end method

.method public final handleInterceptBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    .line 12
    .line 13
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    move v2, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v2, v0

    .line 28
    :goto_0
    if-nez v2, :cond_1

    .line 29
    .line 30
    return v0

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 34
    .line 35
    invoke-interface {v3}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    const-string p0, "TaskOrganizerController"

    .line 50
    .line 51
    const-string p1, "cannot get handle BackPressedOnTaskRoot because organizerState is not present"

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return v0

    .line 57
    :cond_2
    invoke-static {v2, p1, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->-$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    return v0

    .line 64
    :cond_3
    const/4 v0, 0x3

    .line 65
    invoke-static {v2, p1, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->-$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-nez v3, :cond_4

    .line 70
    .line 71
    new-instance v3, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 72
    .line 73
    invoke-direct {v3, v0, p1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(ILcom/android/server/wm/Task;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    iget-object p1, v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object p1, v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 94
    .line 95
    .line 96
    return v1
.end method

.method public final isPinStateChangeable(I)Z
    .locals 5

    .line 1
    const-string v0, "isPinStateChangeable()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {p0, p1, v4, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    return v4

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/4 p1, 0x1

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformTaskPinningController:Lcom/android/server/wm/FreeformTaskPinningController;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_PINNING:Z

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/FreeformTaskPinningController;->mPinnedTask:Lcom/android/server/wm/Task;

    .line 65
    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    move v4, p1

    .line 69
    :cond_3
    :goto_0
    xor-int/lit8 p0, v4, 0x1

    .line 70
    .line 71
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    return p0

    .line 79
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    .line 82
    .line 83
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    :catchall_1
    move-exception p0

    .line 85
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public final onImmersiveModeChanged(Lcom/android/server/wm/Task;Z)V
    .locals 2

    .line 1
    const-string v0, "TaskOrganizerController"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    if-nez p0, :cond_1

    .line 19
    .line 20
    const-string/jumbo p0, "onImmersiveModeChanged: cannot find organizer"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 28
    .line 29
    invoke-interface {p0, p1, p2}, Landroid/window/ITaskOrganizer;->onImmersiveModeChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    const-string p1, "Exception sending onImmersiveModeChanged callback. "

    .line 34
    .line 35
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_2
    return-void
.end method

.method public final onSplitLayoutChangeRequested(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 26
    .line 27
    invoke-interface {p0, v0, p1}, Landroid/window/ITaskOrganizer;->onSplitLayoutChangeRequested(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string p1, "TaskOrganizerController"

    .line 33
    .line 34
    const-string v0, "Exception sending onSplitLayoutChangeRequested callback"

    .line 35
    .line 36
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/window/ITaskOrganizerController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string p1, "TaskOrganizerController"

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public final preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/window/ITaskOrganizer;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/window/ITaskOrganizer;->preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "TaskOrganizerController"

    .line 18
    .line 19
    const-string p2, "Exception sending preloadSplashScreenAppInfo callback"

    .line 20
    .line 21
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;
    .locals 5

    .line 1
    const-string/jumbo v0, "registerTaskOrganizer()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;

    .line 21
    .line 22
    invoke-direct {v4, p0, p1, v0, v3}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    .line 44
    .line 45
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TransitionController$Lock;->runWhenIdle(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 52
    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 54
    .line 55
    .line 56
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;->run()V

    .line 58
    .line 59
    .line 60
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    .line 63
    .line 64
    :goto_0
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 65
    .line 66
    invoke-direct {p0, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :catchall_1
    move-exception p1

    .line 74
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    .line 77
    .line 78
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final removeStartingWindow(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;ZZ)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p2, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :goto_0
    if-nez p2, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    new-instance p0, Landroid/window/StartingWindowRemovalInfo;

    .line 19
    .line 20
    invoke-direct {p0}, Landroid/window/StartingWindowRemovalInfo;-><init>()V

    .line 21
    .line 22
    .line 23
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 24
    .line 25
    iput v0, p0, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz p3, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    if-eqz p3, :cond_3

    .line 37
    .line 38
    iget-object p3, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 39
    .line 40
    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 41
    .line 42
    iget p3, p3, Landroid/view/DisplayInfo;->state:I

    .line 43
    .line 44
    if-ne p3, v0, :cond_3

    .line 45
    .line 46
    move p3, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move p3, v1

    .line 49
    :goto_1
    iput-boolean p3, p0, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    xor-int/2addr p3, v2

    .line 56
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/4 v4, 0x7

    .line 59
    invoke-direct {v3, v4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const/4 p1, 0x0

    .line 72
    :goto_2
    if-eqz p1, :cond_9

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz p4, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 81
    .line 82
    .line 83
    move-result p4

    .line 84
    if-eqz p4, :cond_5

    .line 85
    .line 86
    iget-object p4, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 87
    .line 88
    if-eqz p4, :cond_5

    .line 89
    .line 90
    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 91
    .line 92
    .line 93
    move-result p4

    .line 94
    if-eqz p4, :cond_5

    .line 95
    .line 96
    iput v0, p0, Landroid/window/StartingWindowRemovalInfo;->deferRemoveMode:I

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    iput v2, p0, Landroid/window/StartingWindowRemovalInfo;->deferRemoveMode:I

    .line 100
    .line 101
    :cond_6
    :goto_3
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    if-eqz p4, :cond_8

    .line 106
    .line 107
    iget-boolean v0, p4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_7
    iget-boolean v0, p0, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    .line 113
    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    if-eqz p3, :cond_9

    .line 117
    .line 118
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

    .line 123
    .line 124
    invoke-virtual {p1, p4}, Lcom/android/server/wm/AppCompatRoundedCorners;->getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    int-to-float p1, p1

    .line 129
    iput p1, p0, Landroid/window/StartingWindowRemovalInfo;->roundedCornerRadius:F

    .line 130
    .line 131
    invoke-static {p4}, Lcom/android/server/wm/TaskOrganizerController;->applyStartingWindowAnimation(Lcom/android/server/wm/WindowState;)Landroid/view/SurfaceControl;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Landroid/window/StartingWindowRemovalInfo;->windowAnimationLeash:Landroid/view/SurfaceControl;

    .line 136
    .line 137
    new-instance p1, Landroid/graphics/Rect;

    .line 138
    .line 139
    iget-object p3, p4, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 140
    .line 141
    iget-object p3, p3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 142
    .line 143
    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Landroid/window/StartingWindowRemovalInfo;->mainFrame:Landroid/graphics/Rect;

    .line 147
    .line 148
    iget-object p3, p4, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 149
    .line 150
    iget v0, p3, Landroid/graphics/Point;->x:I

    .line 151
    .line 152
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 153
    .line 154
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_8
    :goto_4
    iput-boolean v1, p0, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    .line 164
    .line 165
    :cond_9
    :goto_5
    :try_start_0
    invoke-interface {p2, p0}, Landroid/window/ITaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_6

    .line 169
    :catch_0
    move-exception p0

    .line 170
    const-string p1, "TaskOrganizerController"

    .line 171
    .line 172
    const-string p2, "Exception sending onStartTaskFinished callback"

    .line 173
    .line 174
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .line 176
    .line 177
    :goto_6
    return-void
.end method

.method public final restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    .locals 12

    .line 1
    const-string/jumbo v0, "restartTopActivityProcessIfVisible()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const-string p1, "TaskOrganizerController"

    .line 28
    .line 29
    const-string v2, "Could not resolve window from token"

    .line 30
    .line 31
    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    const-string p1, "TaskOrganizerController"

    .line 51
    .line 52
    const-string v2, "Could not resolve task from token"

    .line 53
    .line 54
    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    aget-boolean v2, v2, v3

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 67
    .line 68
    int-to-long v4, v2

    .line 69
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 70
    .line 71
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    const-wide v7, -0x7c0ff7ece6ec0f6L

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    const/4 v9, 0x1

    .line 85
    const/4 v10, 0x0

    .line 86
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {p1, v3, v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 96
    .line 97
    .line 98
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catchall_1
    move-exception p0

    .line 107
    goto :goto_2

    .line 108
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 110
    .line 111
    .line 112
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 113
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    throw p0
.end method

.method public final setFreeformTaskOpacity(IF)V
    .locals 6

    .line 1
    const-string/jumbo v0, "setFreeformTaskOpacity()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual {v3, p1, v5, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :try_start_2
    iput p2, p1, Lcom/android/server/wm/WindowContainer;->mFreeformAlpha:F

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 46
    .line 47
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 48
    .line 49
    .line 50
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    .line 63
    .line 64
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 65
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final setFreeformTaskSurfaceOverlappedWithNavi(Landroid/window/WindowContainerToken;Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setFreeformTaskSurfaceOverlappedWithNavi()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const-string p1, "TaskOrganizerController"

    .line 28
    .line 29
    const-string p2, "Could not resolve window from token"

    .line 30
    .line 31
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :try_start_2
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 49
    .line 50
    iget-boolean v2, p1, Lcom/android/server/wm/DisplayPolicy;->mFreeformTaskSurfaceOverlappingWithNavBar:Z

    .line 51
    .line 52
    if-eq p2, v2, :cond_2

    .line 53
    .line 54
    iput-boolean p2, p1, Lcom/android/server/wm/DisplayPolicy;->mFreeformTaskSurfaceOverlappingWithNavBar:Z

    .line 55
    .line 56
    iput-boolean p2, p1, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 57
    .line 58
    iget v2, p1, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 59
    .line 60
    const/high16 v3, 0x100000

    .line 61
    .line 62
    and-int/2addr v2, v3

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v2, 0x0

    .line 68
    :goto_0
    if-eq p2, v2, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 71
    .line 72
    .line 73
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 85
    .line 86
    .line 87
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 88
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public final setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    .locals 10

    .line 1
    const-string/jumbo v0, "setInterceptBackPressedOnTaskRoot()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    aget-boolean v3, v3, v4

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    const-wide v5, -0x3ba0bfb5c1b2ccd6L    # -2.3059265998119675E21

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const/4 v8, 0x0

    .line 41
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_3

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    const-string p0, "TaskOrganizerController"

    .line 58
    .line 59
    const-string p1, "Could not resolve window from token"

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    const-string p0, "TaskOrganizerController"

    .line 79
    .line 80
    const-string p1, "Could not resolve task from token"

    .line 81
    .line 82
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    monitor-exit v2

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    if-eqz p2, :cond_3

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    .line 90
    .line 91
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    .line 102
    .line 103
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 104
    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    goto :goto_4

    .line 122
    :goto_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 124
    .line 125
    .line 126
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    .line 129
    .line 130
    throw p0
.end method

.method public final togglePinTaskState(I)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "togglePinTaskState()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {p0, p1, v4, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return v4

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformPinned()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskDisplayArea;->stopFreeformTaskPinning(Lcom/android/server/wm/Task;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->startFreeformPinning()V

    .line 57
    .line 58
    .line 59
    :goto_0
    xor-int/lit8 p0, p1, 0x1

    .line 60
    .line 61
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    return p0

    .line 69
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 71
    .line 72
    .line 73
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "unregisterTaskOrganizer()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    :try_start_0
    new-instance v3, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TransitionController$Lock;->runWhenIdle(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 47
    .line 48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 49
    .line 50
    .line 51
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->run()V

    .line 53
    .line 54
    .line 55
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 66
    .line 67
    .line 68
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method
