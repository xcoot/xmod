.class public final Lcom/android/server/wm/TaskFragmentOrganizerController;
.super Landroid/window/ITaskFragmentOrganizerController$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

.field public final mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

.field public final mTmpTaskSet:Landroid/util/ArraySet;

.field public final mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowOrganizerController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/window/ITaskFragmentOrganizerController$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTmpTaskSet:Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-object v0, p1

    .line 29
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 36
    .line 37
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-object p1, p2

    .line 41
    check-cast p1, Lcom/android/server/wm/WindowOrganizerController;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final applyTransaction(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isValidTransaction(Landroid/window/WindowContainerTransaction;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskFragmentTransactionLocked(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getPendingTaskFragmentEvent(Lcom/android/server/wm/TaskFragment;I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v14, v1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 14
    .line 15
    invoke-virtual {v0, v14}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 16
    .line 17
    .line 18
    move-result-object v15

    .line 19
    new-instance v13, Landroid/window/TaskFragmentTransaction;

    .line 20
    .line 21
    invoke-direct {v13}, Landroid/window/TaskFragmentTransaction;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 25
    .line 26
    .line 27
    move-result-object v12

    .line 28
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    const/16 v16, 0x0

    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    move-object v3, v1

    .line 43
    move-object v5, v14

    .line 44
    move-object/from16 v17, v14

    .line 45
    .line 46
    move-object v14, v13

    .line 47
    move/from16 v13, v16

    .line 48
    .line 49
    invoke-direct/range {v3 .. v13}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->prepareChange(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/TaskFragmentTransaction$Change;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v14, v1}, Landroid/window/TaskFragmentTransaction;->addChange(Landroid/window/TaskFragmentTransaction$Change;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->prepareChange(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/TaskFragmentTransaction$Change;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v14, v1}, Landroid/window/TaskFragmentTransaction;->addChange(Landroid/window/TaskFragmentTransaction$Change;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v15, v14}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->dispatchTransaction(Landroid/window/TaskFragmentTransaction;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-interface/range {v17 .. v17}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public getAppThread(II)Landroid/app/IApplicationThread;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 12
    .line 13
    if-ne v0, p2, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    if-eqz p0, :cond_1

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Cannot find process for pid="

    .line 25
    .line 26
    const-string v1, " uid="

    .line 27
    .line 28
    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final getPendingTaskFragmentEvent(Lcom/android/server/wm/TaskFragment;I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 30
    .line 31
    if-ne p1, v2, :cond_0

    .line 32
    .line 33
    iget v2, v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    .line 34
    .line 35
    if-ne p2, v2, :cond_0

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public final isActivityEmbedded(Landroid/os/IBinder;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedWithBoundsOverride()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    .line 30
    .line 31
    return v0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final isSupportActivityEmbedded(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/MultiTaskingController;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 21
    .line 22
    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final isSystemOrganizer(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mIsSystemOrganizer:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final isValidTransaction(Landroid/window/WindowContainerTransaction;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p1, "Caller organizer="

    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " is no longer registered"

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "TaskFragmentOrganizerController"

    .line 54
    .line 55
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return v1
.end method

.method public final onActivityReparentedToTask(Lcom/android/server/wm/ActivityRecord;)V
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :goto_0
    move-object v4, v1

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Lcom/android/server/wm/TaskFragment;

    .line 11
    .line 12
    new-instance v2, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;-><init>([Lcom/android/server/wm/TaskFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aget-object v1, v1, v2

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v1, v1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-interface {v4}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    const-string p0, "TaskFragmentOrganizerController"

    .line 42
    .line 43
    const-string p1, "The last TaskFragmentOrganizer no longer exists"

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->mLastEmbeddedParentTfTokenBeforePip:Landroid/os/IBinder;

    .line 50
    .line 51
    new-instance v1, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    invoke-direct {v1, p1, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    move-object v10, v1

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    :goto_2
    move-object v10, v0

    .line 83
    :goto_3
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 84
    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v12, 0x0

    .line 87
    const/4 v3, 0x5

    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v8, 0x0

    .line 91
    move-object v2, v0

    .line 92
    move-object v9, p1

    .line 93
    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isValidTransaction(Landroid/window/WindowContainerTransaction;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p2, p3, p4, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-interface {p2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    move-object v2, p0

    .line 37
    check-cast v2, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 38
    .line 39
    :cond_1
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTransactionFinished(Landroid/os/IBinder;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, v2, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mInFlightTransactions:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/android/server/wm/Transition$ReadyCondition;

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 55
    .line 56
    .line 57
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public final prepareChange(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/TaskFragmentTransaction$Change;
    .locals 14

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    iget v3, p1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    .line 23
    .line 24
    iget-object v4, p1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 25
    .line 26
    if-eqz v3, :cond_1d

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    const/4 v6, 0x0

    .line 30
    if-eq v3, v2, :cond_19

    .line 31
    .line 32
    const/4 v7, 0x2

    .line 33
    if-eq v3, v7, :cond_16

    .line 34
    .line 35
    const/4 v7, 0x4

    .line 36
    if-eq v3, v5, :cond_f

    .line 37
    .line 38
    const/4 v5, 0x5

    .line 39
    if-eq v3, v7, :cond_c

    .line 40
    .line 41
    if-ne v3, v5, :cond_b

    .line 42
    .line 43
    iget-object v3, p1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 44
    .line 45
    iget-object v4, p1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mActivity:Lcom/android/server/wm/ActivityRecord;

    .line 46
    .line 47
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 48
    .line 49
    const-string v7, "Reparent activity="

    .line 50
    .line 51
    const-string v8, "TaskFragmentOrganizerController"

    .line 52
    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, " is finishing"

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 80
    .line 81
    if-eqz v5, :cond_9

    .line 82
    .line 83
    iget v9, v5, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 84
    .line 85
    iget v10, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    .line 86
    .line 87
    if-eq v9, v10, :cond_2

    .line 88
    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :cond_2
    invoke-virtual {v5, v10, v4}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(ILcom/android/server/wm/ActivityRecord;)I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_3

    .line 96
    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " is not allowed to be embedded."

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto/16 :goto_3

    .line 120
    .line 121
    :cond_3
    iget v9, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    .line 122
    .line 123
    invoke-virtual {v5, v9, v4}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(ILcom/android/server/wm/ActivityRecord;)Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-nez v9, :cond_5

    .line 128
    .line 129
    invoke-static {}, Lcom/android/window/flags/Flags;->untrustedEmbeddingStateSharing()Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-nez v9, :cond_4

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->mAllowUntrustedEmbeddingStateSharing:Z

    .line 137
    .line 138
    :goto_0
    if-nez v6, :cond_5

    .line 139
    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string p1, " is not allowed to be shared with untrusted host."

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    goto/16 :goto_3

    .line 163
    .line 164
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    iget v6, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerPid:I

    .line 169
    .line 170
    if-ne v0, v6, :cond_6

    .line 171
    .line 172
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iget v6, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    .line 177
    .line 178
    if-ne v0, v6, :cond_6

    .line 179
    .line 180
    iget-object v0, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_6
    new-instance v0, Landroid/os/Binder;

    .line 184
    .line 185
    const-string v6, "TemporaryActivityToken"

    .line 186
    .line 187
    invoke-direct {v0, v6}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v6, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    .line 191
    .line 192
    check-cast v6, Ljava/util/WeakHashMap;

    .line 193
    .line 194
    invoke-virtual {v6, v0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    new-instance v6, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda1;

    .line 198
    .line 199
    invoke-direct {v6, p0, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Landroid/os/IBinder;)V

    .line 200
    .line 201
    .line 202
    iget-object v7, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 203
    .line 204
    iget-object v7, v7, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 205
    .line 206
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 207
    .line 208
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 209
    .line 210
    const-wide/16 v8, 0x1388

    .line 211
    .line 212
    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    .line 214
    .line 215
    :goto_1
    aget-boolean v1, v1, v2

    .line 216
    .line 217
    if-eqz v1, :cond_7

    .line 218
    .line 219
    iget-object v1, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 220
    .line 221
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    iget v2, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 226
    .line 227
    int-to-long v6, v2

    .line 228
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 229
    .line 230
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    const/4 v12, 0x0

    .line 239
    const-wide v9, -0x6d8a8354e031c2c7L    # -9.51083566816062E-220

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    const/4 v11, 0x4

    .line 245
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_7
    new-instance v1, Landroid/window/TaskFragmentTransaction$Change;

    .line 249
    .line 250
    const/4 v2, 0x6

    .line 251
    invoke-direct {v1, v2}, Landroid/window/TaskFragmentTransaction$Change;-><init>(I)V

    .line 252
    .line 253
    .line 254
    iget v2, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Landroid/window/TaskFragmentTransaction$Change;->setTaskId(I)Landroid/window/TaskFragmentTransaction$Change;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 261
    .line 262
    new-instance v4, Landroid/content/Intent;

    .line 263
    .line 264
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v1, v2}, Landroid/window/TaskFragmentTransaction$Change;->setActivityIntent(Landroid/content/Intent;)Landroid/window/TaskFragmentTransaction$Change;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1, v0}, Landroid/window/TaskFragmentTransaction$Change;->setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    if-eqz v3, :cond_8

    .line 300
    .line 301
    invoke-virtual {v0, v3}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    .line 302
    .line 303
    .line 304
    :cond_8
    invoke-static {}, Lcom/android/window/flags/Flags;->fixPipRestoreToOverlay()Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_a

    .line 309
    .line 310
    iget-object p1, p1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mOtherActivity:Lcom/android/server/wm/ActivityRecord;

    .line 311
    .line 312
    if-eqz p1, :cond_a

    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    iget v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerPid:I

    .line 319
    .line 320
    if-ne v1, v2, :cond_a

    .line 321
    .line 322
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    iget p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    .line 327
    .line 328
    if-ne v1, p0, :cond_a

    .line 329
    .line 330
    iget-object p0, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 331
    .line 332
    invoke-virtual {v0, p0}, Landroid/window/TaskFragmentTransaction$Change;->setOtherActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    .line 333
    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_9
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-object p1, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 342
    .line 343
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string p1, " is not in a task belong to the organizer app."

    .line 347
    .line 348
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    :cond_a
    :goto_3
    return-object v0

    .line 359
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 360
    .line 361
    const-string p1, "Unknown TaskFragmentEvent="

    .line 362
    .line 363
    invoke-static {v3, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw p0

    .line 371
    :cond_c
    iget-object p0, p1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 372
    .line 373
    iget-object v3, p1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mException:Ljava/lang/Throwable;

    .line 374
    .line 375
    aget-boolean v1, v1, v2

    .line 376
    .line 377
    if-eqz v1, :cond_d

    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 388
    .line 389
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    const/4 v9, 0x0

    .line 394
    const/4 v10, 0x0

    .line 395
    const-wide v7, 0x59dc0e39c3fa3521L    # 7.418520520158507E124

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    :cond_d
    if-eqz v4, :cond_e

    .line 404
    .line 405
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    :cond_e
    iget p1, p1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mOpType:I

    .line 410
    .line 411
    invoke-static {v3, v0, p1}, Landroid/window/TaskFragmentOrganizer;->putErrorInfoInBundle(Ljava/lang/Throwable;Landroid/window/TaskFragmentInfo;I)Landroid/os/Bundle;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    new-instance v0, Landroid/window/TaskFragmentTransaction$Change;

    .line 416
    .line 417
    invoke-direct {v0, v5}, Landroid/window/TaskFragmentTransaction$Change;-><init>(I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, p0}, Landroid/window/TaskFragmentTransaction$Change;->setErrorCallbackToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentTransaction$Change;->setErrorBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentTransaction$Change;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    return-object p0

    .line 429
    :cond_f
    iget-object p1, p1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTask:Lcom/android/server/wm/Task;

    .line 430
    .line 431
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 432
    .line 433
    new-instance v4, Landroid/window/TaskFragmentParentInfo;

    .line 434
    .line 435
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 436
    .line 437
    .line 438
    move-result-object v9

    .line 439
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 440
    .line 441
    .line 442
    move-result v10

    .line 443
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 444
    .line 445
    .line 446
    move-result v11

    .line 447
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    sub-int/2addr v5, v2

    .line 452
    :goto_4
    if-ltz v5, :cond_11

    .line 453
    .line 454
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    if-eqz v8, :cond_10

    .line 463
    .line 464
    iget-boolean v8, v8, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 465
    .line 466
    if-nez v8, :cond_10

    .line 467
    .line 468
    move v12, v2

    .line 469
    goto :goto_5

    .line 470
    :cond_10
    add-int/lit8 v5, v5, -0x1

    .line 471
    .line 472
    goto :goto_4

    .line 473
    :cond_11
    move v12, v6

    .line 474
    :goto_5
    iget-object v5, p1, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 475
    .line 476
    if-eqz v5, :cond_12

    .line 477
    .line 478
    iget-object v5, v5, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    .line 479
    .line 480
    move-object v13, v5

    .line 481
    goto :goto_6

    .line 482
    :cond_12
    move-object v13, v0

    .line 483
    :goto_6
    move-object v8, v4

    .line 484
    invoke-direct/range {v8 .. v13}, Landroid/window/TaskFragmentParentInfo;-><init>(Landroid/content/res/Configuration;IZZLandroid/view/SurfaceControl;)V

    .line 485
    .line 486
    .line 487
    iget-object v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentInfos:Landroid/util/SparseArray;

    .line 488
    .line 489
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    check-cast v5, Landroid/window/TaskFragmentParentInfo;

    .line 494
    .line 495
    if-eqz v5, :cond_13

    .line 496
    .line 497
    invoke-virtual {v5}, Landroid/window/TaskFragmentParentInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    goto :goto_7

    .line 502
    :cond_13
    move-object v6, v0

    .line 503
    :goto_7
    invoke-virtual {v4, v5}, Landroid/window/TaskFragmentParentInfo;->equalsForTaskFragmentOrganizer(Landroid/window/TaskFragmentParentInfo;)Z

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    if-eqz v5, :cond_14

    .line 508
    .line 509
    invoke-virtual {v4}, Landroid/window/TaskFragmentParentInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    invoke-static {v5, v6}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    if-eqz v5, :cond_14

    .line 518
    .line 519
    goto :goto_8

    .line 520
    :cond_14
    aget-boolean v0, v1, v2

    .line 521
    .line 522
    if-eqz v0, :cond_15

    .line 523
    .line 524
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    int-to-long v0, v3

    .line 533
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 534
    .line 535
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v13

    .line 543
    const/4 v12, 0x0

    .line 544
    const-wide v9, 0x457d4174c76c3bf3L    # 5.65887308519196E26

    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    const/4 v11, 0x4

    .line 550
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    :cond_15
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentInfos:Landroid/util/SparseArray;

    .line 554
    .line 555
    new-instance p1, Landroid/window/TaskFragmentParentInfo;

    .line 556
    .line 557
    invoke-direct {p1, v4}, Landroid/window/TaskFragmentParentInfo;-><init>(Landroid/window/TaskFragmentParentInfo;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    new-instance p0, Landroid/window/TaskFragmentTransaction$Change;

    .line 564
    .line 565
    invoke-direct {p0, v7}, Landroid/window/TaskFragmentTransaction$Change;-><init>(I)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p0, v3}, Landroid/window/TaskFragmentTransaction$Change;->setTaskId(I)Landroid/window/TaskFragmentTransaction$Change;

    .line 569
    .line 570
    .line 571
    move-result-object p0

    .line 572
    invoke-virtual {p0, v4}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentParentInfo(Landroid/window/TaskFragmentParentInfo;)Landroid/window/TaskFragmentTransaction$Change;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    :goto_8
    return-object v0

    .line 577
    :cond_16
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    .line 582
    .line 583
    check-cast v3, Ljava/util/WeakHashMap;

    .line 584
    .line 585
    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    check-cast v3, Landroid/window/TaskFragmentInfo;

    .line 590
    .line 591
    invoke-virtual {p1, v3}, Landroid/window/TaskFragmentInfo;->equalsForTaskFragmentOrganizer(Landroid/window/TaskFragmentInfo;)Z

    .line 592
    .line 593
    .line 594
    move-result v5

    .line 595
    if-eqz v5, :cond_17

    .line 596
    .line 597
    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 598
    .line 599
    .line 600
    move-result-object v5

    .line 601
    invoke-virtual {v3}, Landroid/window/TaskFragmentInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    invoke-static {v5, v3}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    if-eqz v3, :cond_17

    .line 610
    .line 611
    goto :goto_9

    .line 612
    :cond_17
    aget-boolean v0, v1, v2

    .line 613
    .line 614
    if-eqz v0, :cond_18

    .line 615
    .line 616
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 625
    .line 626
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v13

    .line 630
    const/4 v11, 0x0

    .line 631
    const/4 v12, 0x0

    .line 632
    const-wide v9, 0x2db8bf8f1d73388aL    # 1.9438657186000612E-88

    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    .line 641
    .line 642
    check-cast p0, Ljava/util/WeakHashMap;

    .line 643
    .line 644
    invoke-virtual {p0, v4, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    new-instance p0, Landroid/window/TaskFragmentTransaction$Change;

    .line 648
    .line 649
    invoke-direct {p0, v7}, Landroid/window/TaskFragmentTransaction$Change;-><init>(I)V

    .line 650
    .line 651
    .line 652
    iget-object v0, v4, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 653
    .line 654
    invoke-virtual {p0, v0}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    .line 655
    .line 656
    .line 657
    move-result-object p0

    .line 658
    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentInfo(Landroid/window/TaskFragmentInfo;)Landroid/window/TaskFragmentTransaction$Change;

    .line 659
    .line 660
    .line 661
    move-result-object p0

    .line 662
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 663
    .line 664
    .line 665
    move-result-object p1

    .line 666
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 667
    .line 668
    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentTransaction$Change;->setTaskId(I)Landroid/window/TaskFragmentTransaction$Change;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    :goto_9
    return-object v0

    .line 673
    :cond_19
    aget-boolean p1, v1, v2

    .line 674
    .line 675
    if-eqz p1, :cond_1a

    .line 676
    .line 677
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object p1

    .line 681
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object p1

    .line 685
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 686
    .line 687
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v12

    .line 691
    const/4 v10, 0x0

    .line 692
    const/4 v11, 0x0

    .line 693
    const-wide v8, -0x31b638444f87c356L    # -1.3900660472693982E69

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    :cond_1a
    iput-boolean v6, v4, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    .line 702
    .line 703
    iget-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    .line 704
    .line 705
    check-cast p1, Ljava/util/WeakHashMap;

    .line 706
    .line 707
    invoke-virtual {p1, v4}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    iget-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTaskFragmentTaskIds:Ljava/util/Map;

    .line 711
    .line 712
    check-cast p1, Ljava/util/WeakHashMap;

    .line 713
    .line 714
    invoke-virtual {p1, v4}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result p1

    .line 718
    if-eqz p1, :cond_1b

    .line 719
    .line 720
    iget-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTaskFragmentTaskIds:Ljava/util/Map;

    .line 721
    .line 722
    check-cast p1, Ljava/util/WeakHashMap;

    .line 723
    .line 724
    invoke-virtual {p1, v4}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object p1

    .line 728
    check-cast p1, Ljava/lang/Integer;

    .line 729
    .line 730
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTaskFragmentTaskIds:Ljava/util/Map;

    .line 735
    .line 736
    check-cast v1, Ljava/util/WeakHashMap;

    .line 737
    .line 738
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->containsValue(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result p1

    .line 742
    if-nez p1, :cond_1c

    .line 743
    .line 744
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentInfos:Landroid/util/SparseArray;

    .line 745
    .line 746
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 747
    .line 748
    .line 749
    goto :goto_a

    .line 750
    :cond_1b
    const/4 v0, -0x1

    .line 751
    :cond_1c
    :goto_a
    new-instance p0, Landroid/window/TaskFragmentTransaction$Change;

    .line 752
    .line 753
    invoke-direct {p0, v5}, Landroid/window/TaskFragmentTransaction$Change;-><init>(I)V

    .line 754
    .line 755
    .line 756
    iget-object p1, v4, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 757
    .line 758
    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    .line 759
    .line 760
    .line 761
    move-result-object p0

    .line 762
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    .line 763
    .line 764
    .line 765
    move-result-object p1

    .line 766
    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentInfo(Landroid/window/TaskFragmentInfo;)Landroid/window/TaskFragmentTransaction$Change;

    .line 767
    .line 768
    .line 769
    move-result-object p0

    .line 770
    invoke-virtual {p0, v0}, Landroid/window/TaskFragmentTransaction$Change;->setTaskId(I)Landroid/window/TaskFragmentTransaction$Change;

    .line 771
    .line 772
    .line 773
    move-result-object p0

    .line 774
    return-object p0

    .line 775
    :cond_1d
    aget-boolean p1, v1, v2

    .line 776
    .line 777
    if-eqz p1, :cond_1e

    .line 778
    .line 779
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object p1

    .line 783
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object p1

    .line 787
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 788
    .line 789
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v10

    .line 793
    const/4 v8, 0x0

    .line 794
    const/4 v9, 0x0

    .line 795
    const-wide v6, -0x26fa11ed21b4cf72L    # -7.07858454045048E120

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 801
    .line 802
    .line 803
    :cond_1e
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    .line 804
    .line 805
    .line 806
    move-result-object p1

    .line 807
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 812
    .line 813
    iput-boolean v2, v4, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    .line 814
    .line 815
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    .line 816
    .line 817
    check-cast v1, Ljava/util/WeakHashMap;

    .line 818
    .line 819
    invoke-virtual {v1, v4, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTaskFragmentTaskIds:Ljava/util/Map;

    .line 823
    .line 824
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    check-cast v1, Ljava/util/WeakHashMap;

    .line 829
    .line 830
    invoke-virtual {v1, v4, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    new-instance v1, Landroid/window/TaskFragmentTransaction$Change;

    .line 834
    .line 835
    invoke-direct {v1, v2}, Landroid/window/TaskFragmentTransaction$Change;-><init>(I)V

    .line 836
    .line 837
    .line 838
    iget-object v2, v4, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 839
    .line 840
    invoke-virtual {v1, v2}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    invoke-virtual {v1, p1}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentInfo(Landroid/window/TaskFragmentInfo;)Landroid/window/TaskFragmentTransaction$Change;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    invoke-virtual {p1, v0}, Landroid/window/TaskFragmentTransaction$Change;->setTaskId(I)Landroid/window/TaskFragmentTransaction$Change;

    .line 849
    .line 850
    .line 851
    move-result-object p1

    .line 852
    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mIsSystemOrganizer:Z

    .line 853
    .line 854
    if-eqz p0, :cond_1f

    .line 855
    .line 856
    iget-object p0, v4, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 857
    .line 858
    invoke-virtual {p1, p0}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentSurfaceControl(Landroid/view/SurfaceControl;)Landroid/window/TaskFragmentTransaction$Change;

    .line 859
    .line 860
    .line 861
    :cond_1f
    return-object p1
.end method

.method public final registerOrganizer(Landroid/window/ITaskFragmentOrganizer;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/android/window/flags/Flags;->taskFragmentSystemOrganizerFlag()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    move v6, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    move v6, v1

    .line 16
    :goto_0
    const-string v1, "Cannot register from invalid pid: "

    .line 17
    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    const-string/jumbo v3, "registerSystemOrganizer()"

    .line 21
    .line 22
    .line 23
    invoke-static {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    iget-object v7, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 35
    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 37
    .line 38
    .line 39
    monitor-enter v7

    .line 40
    :try_start_0
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 41
    .line 42
    aget-boolean v2, v3, v2

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    int-to-long v8, v5

    .line 55
    int-to-long v10, v4

    .line 56
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 57
    .line 58
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    filled-new-array {v2, v3, v8}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v17

    .line 70
    const/16 v16, 0x0

    .line 71
    .line 72
    const-wide v13, 0x30b4e7aef22a3475L    # 4.621803974599916E-74

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    const/16 v15, 0x14

    .line 78
    .line 79
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 86
    .line 87
    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_4

    .line 96
    .line 97
    if-lez v4, :cond_3

    .line 98
    .line 99
    iget-object v8, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 100
    .line 101
    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    new-instance v10, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 106
    .line 107
    move-object v1, v10

    .line 108
    move-object/from16 v2, p0

    .line 109
    .line 110
    move-object/from16 v3, p1

    .line 111
    .line 112
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;-><init>(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;IIZ)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 119
    .line 120
    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 156
    .line 157
    const-string v1, "Replacing existing organizer currently unsupported"

    .line 158
    .line 159
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 165
    .line 166
    .line 167
    throw v0
.end method

.method public final registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;Landroid/view/RemoteAnimationDefinition;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "The organizer has already registered remote animations="

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget-object v5, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 18
    .line 19
    .line 20
    monitor-enter v5

    .line 21
    :try_start_0
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    aget-boolean v6, v6, v7

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    int-to-long v7, v4

    .line 37
    int-to-long v9, v3

    .line 38
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 39
    .line 40
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v16

    .line 52
    const-wide v12, 0x126d444cc0b531d9L    # 6.477215716303434E-220

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const/16 v14, 0x14

    .line 58
    .line 59
    const/4 v15, 0x0

    .line 60
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    iget-object v0, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v6, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 81
    .line 82
    if-nez v6, :cond_1

    .line 83
    .line 84
    invoke-virtual {v1, v3, v4}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 85
    .line 86
    .line 87
    iput-object v1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 88
    .line 89
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 102
    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v1

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    const-string v1, "The organizer hasn\'t been registered."

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 124
    .line 125
    .line 126
    throw v0
.end method

.method public final removeOrganizer(Landroid/window/ITaskFragmentOrganizer;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p0, "TaskFragmentOrganizerController"

    .line 16
    .line 17
    const-string p1, "The organizer has already been removed."

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    sub-int/2addr v1, v2

    .line 40
    const/4 v3, 0x0

    .line 41
    move v4, v3

    .line 42
    :goto_0
    const/4 v5, 0x0

    .line 43
    if-ltz v1, :cond_2

    .line 44
    .line 45
    iget-object v6, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Lcom/android/server/wm/TaskFragment;

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    move v4, v2

    .line 60
    :cond_1
    iput-object v5, v6, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 61
    .line 62
    add-int/lit8 v1, v1, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 72
    .line 73
    if-eqz v4, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_5

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_5

    .line 86
    .line 87
    iget-object v4, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/android/server/wm/TaskFragment;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-eqz v4, :cond_3

    .line 100
    .line 101
    new-instance v6, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda0;

    .line 102
    .line 103
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    if-eqz v6, :cond_3

    .line 111
    .line 112
    move v6, v2

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    move v6, v3

    .line 115
    :goto_1
    const/4 v7, 0x2

    .line 116
    invoke-virtual {v1, v7, v3}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    if-eqz v6, :cond_4

    .line 121
    .line 122
    move-object v4, v5

    .line 123
    :cond_4
    invoke-virtual {v1, v7, v4, v5, v5}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 124
    .line 125
    .line 126
    :cond_5
    iget-object v1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 127
    .line 128
    iget-object v1, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 131
    .line 132
    .line 133
    :goto_2
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_6

    .line 140
    .line 141
    iget-object v1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lcom/android/server/wm/TaskFragment;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    goto :goto_6

    .line 155
    :cond_6
    iget-object v1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 156
    .line 157
    iget-object v1, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mDeferredTransitions:Landroid/util/ArrayMap;

    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    sub-int/2addr v1, v2

    .line 169
    :goto_3
    if-ltz v1, :cond_7

    .line 170
    .line 171
    iget-object v4, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mDeferredTransitions:Landroid/util/ArrayMap;

    .line 172
    .line 173
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Landroid/os/IBinder;

    .line 178
    .line 179
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTransactionFinished(Landroid/os/IBinder;)V

    .line 180
    .line 181
    .line 182
    add-int/lit8 v1, v1, -0x1

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mInFlightTransactions:Landroid/util/ArrayMap;

    .line 186
    .line 187
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    sub-int/2addr v1, v2

    .line 192
    :goto_4
    if-ltz v1, :cond_9

    .line 193
    .line 194
    iget-object v2, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mInFlightTransactions:Landroid/util/ArrayMap;

    .line 195
    .line 196
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Lcom/android/server/wm/Transition$ReadyCondition;

    .line 201
    .line 202
    const-string v4, "disposed("

    .line 203
    .line 204
    const-string v5, ")"

    .line 205
    .line 206
    invoke-static {v4, p2, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    iget-boolean v5, v2, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    .line 211
    .line 212
    if-eqz v5, :cond_8

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_8
    iput-object v4, v2, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v2}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 218
    .line 219
    .line 220
    :goto_5
    add-int/lit8 v1, v1, -0x1

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_9
    iget-object p2, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 224
    .line 225
    invoke-interface {p2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-interface {p2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 230
    .line 231
    .line 232
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 233
    .line 234
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :goto_6
    iget-object p1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 243
    .line 244
    iget-object p1, p1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 247
    .line 248
    .line 249
    throw p0
.end method

.method public final unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-long v2, v2

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    :try_start_0
    iget-object v6, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 19
    .line 20
    .line 21
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 23
    .line 24
    const/4 v8, 0x1

    .line 25
    aget-boolean v7, v7, v8

    .line 26
    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    int-to-long v8, v1

    .line 38
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 39
    .line 40
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    filled-new-array {v7, v1, v2}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    const-wide v11, -0x5e0e610652dbce99L

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const/16 v13, 0x14

    .line 58
    .line 59
    const/4 v14, 0x0

    .line 60
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    const-string/jumbo v1, "unregistered"

    .line 67
    .line 68
    .line 69
    move-object/from16 v2, p1

    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->removeOrganizer(Landroid/window/ITaskFragmentOrganizer;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    .line 77
    .line 78
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    goto :goto_2

    .line 84
    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 86
    .line 87
    .line 88
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 89
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw v0
.end method

.method public final unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;)V
    .locals 13

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-long v1, v1

    .line 10
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v3

    .line 16
    :try_start_0
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    aget-boolean v4, v4, v5

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    int-to-long v5, v0

    .line 32
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    filled-new-array {v4, v0, v1}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v12

    .line 46
    const-wide v8, -0x23085545529bc887L    # -7.045950413716032E139

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const/16 v10, 0x14

    .line 52
    .line 53
    const/4 v11, 0x0

    .line 54
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 71
    .line 72
    if-nez p0, :cond_1

    .line 73
    .line 74
    const-string p0, "TaskFragmentOrganizerController"

    .line 75
    .line 76
    const-string p1, "The organizer hasn\'t been registered."

    .line 77
    .line 78
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    const/4 p1, 0x0

    .line 87
    :try_start_1
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 88
    .line 89
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "TaskFragmentOrganizer has not been registered. Organizer="

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method
