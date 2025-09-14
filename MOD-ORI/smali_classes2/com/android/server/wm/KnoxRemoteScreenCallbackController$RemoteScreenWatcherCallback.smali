.class public final Lcom/android/server/wm/KnoxRemoteScreenCallbackController$RemoteScreenWatcherCallback;
.super Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/KnoxRemoteScreenCallbackController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KnoxRemoteScreenCallbackController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$RemoteScreenWatcherCallback;->this$0:Lcom/android/server/wm/KnoxRemoteScreenCallbackController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRemoteScreenStart()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$RemoteScreenWatcherCallback;->this$0:Lcom/android/server/wm/KnoxRemoteScreenCallbackController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

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
    iget-object v1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mRecordedWC:Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    new-instance v1, Landroid/util/ArraySet;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mRecordedWC:Lcom/android/server/wm/DisplayContent;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v4, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda2;

    .line 31
    .line 32
    invoke-direct {v4, p0, v1}, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/KnoxRemoteScreenCallbackController;Landroid/util/ArraySet;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/DisplayArea;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    .line 39
    .line 40
    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final onRemoteScreenStop()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$RemoteScreenWatcherCallback;->this$0:Lcom/android/server/wm/KnoxRemoteScreenCallbackController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

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
    new-instance v1, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mRecordedWC:Lcom/android/server/wm/DisplayContent;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v3, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda2;

    .line 22
    .line 23
    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/KnoxRemoteScreenCallbackController;Landroid/util/ArraySet;)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayArea;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mRecordedWC:Lcom/android/server/wm/DisplayContent;

    .line 36
    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    throw p0
.end method
