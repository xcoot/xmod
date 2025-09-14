.class public final synthetic Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SnapshotController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Lcom/android/server/wm/Transition$ChangeInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SnapshotController;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/SnapshotController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/SnapshotController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 15
    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 19
    .line 20
    iput-object p0, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    :try_start_2
    iput-object p0, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 27
    .line 28
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    move-exception v1

    .line 36
    :try_start_3
    iput-object p0, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 37
    .line 38
    throw v1

    .line 39
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    throw p0
.end method
