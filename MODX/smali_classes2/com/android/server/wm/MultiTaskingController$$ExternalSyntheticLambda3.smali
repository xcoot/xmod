.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/Task;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/MultiTaskingController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda3;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/MultiTaskingController;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    iget-boolean v5, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda3;->f$2:Z

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v6, -0x1

    .line 18
    const/4 v7, -0x1

    .line 19
    move-object v1, v2

    .line 20
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZII)Z

    .line 21
    .line 22
    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    throw v0
.end method
