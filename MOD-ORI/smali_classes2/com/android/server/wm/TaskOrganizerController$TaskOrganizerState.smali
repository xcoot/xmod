.class Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

.field public final mOrganizedTasks:Ljava/util/ArrayList;

.field public final mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

.field public final mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/wm/TaskOrganizerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 14
    .line 15
    invoke-direct {v0, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;-><init>(Landroid/window/ITaskOrganizer;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    .line 21
    .line 22
    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    .line 26
    .line 27
    new-instance p1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;-><init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    .line 33
    .line 34
    :try_start_0
    invoke-interface {p2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-interface {p1, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    const-string p1, "TaskOrganizerController"

    .line 44
    .line 45
    const-string p2, "TaskOrganizer failed to register death recipient"

    .line 46
    .line 47
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    iput p3, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mUid:I

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 8
    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_3

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/wm/Task;

    .line 28
    .line 29
    iget-boolean v4, v1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    .line 38
    .line 39
    .line 40
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    iget-boolean v3, v1, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    .line 49
    .line 50
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->removeTask(Lcom/android/server/wm/Task;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-static {p0, v1}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanishedInternal(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    .line 61
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 62
    .line 63
    iget-object v3, v3, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    iget-object v3, v1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 72
    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 76
    .line 77
    if-eqz v3, :cond_0

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 84
    .line 85
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 94
    .line 95
    .line 96
    iget-object p0, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 97
    .line 98
    iget-object v0, v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 99
    .line 100
    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public getDeathRecipient()Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPendingEventsQueue()Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method public final removeTask(Lcom/android/server/wm/Task;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    .line 9
    .line 10
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->mRemoving:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->syncNextBuffer()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->mIsPipReparetingToLastParent:Z

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget v1, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 47
    .line 48
    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mSyncIdForReparentSurfaceControl:I

    .line 49
    .line 50
    if-ne v1, v2, :cond_1

    .line 51
    .line 52
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v2, "removeTask: skip to migrate, t="

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "TaskOrganizerController"

    .line 68
    .line 69
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 81
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 82
    .line 83
    :cond_3
    if-eqz p2, :cond_4

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 86
    .line 87
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    .line 90
    .line 91
    .line 92
    :cond_4
    return v0
.end method
