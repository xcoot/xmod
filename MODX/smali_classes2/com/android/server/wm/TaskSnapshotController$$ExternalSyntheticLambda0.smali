.class public final synthetic Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskSnapshotController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 19
    .line 20
    .line 21
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    .line 25
    check-cast p0, Lcom/android/server/display/DisplayPowerController$4;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$4;->onScreenOff()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_0

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    :goto_0
    check-cast p0, Lcom/android/server/display/DisplayPowerController$4;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$4;->onScreenOff()V

    .line 42
    .line 43
    .line 44
    throw v0
.end method
