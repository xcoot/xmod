.class public final Lcom/android/server/wm/RemoteDisplayChangeController$1;
.super Landroid/view/IDisplayChangeWindowCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

.field public final synthetic val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RemoteDisplayChangeController;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/IDisplayChangeWindowCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final continueDisplayChange(Landroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/RemoteDisplayChangeController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    .line 16
    .line 17
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/wm/RemoteDisplayChangeController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    .line 39
    .line 40
    new-instance v3, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    invoke-direct {v3, p0, v2, p1}, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RemoteDisplayChangeController$1;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;Landroid/window/WindowContainerTransaction;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 55
    .line 56
    .line 57
    throw p0
.end method
