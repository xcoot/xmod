.class public final synthetic Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingBinder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingBinder;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingBinder;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingBinder;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    .line 14
    .line 15
    if-ne v2, p0, :cond_0

    .line 16
    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lcom/android/server/wm/MultiWindowEnableController;->setCornerGestureEnabled(Z)V

    .line 29
    .line 30
    .line 31
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    throw p0
.end method
