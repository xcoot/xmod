.class public final Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;
.super Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRecordingCallbackController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

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
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->setRecordedWindowContainer(Landroid/media/projection/MediaProjectionInfo;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v3, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;

    .line 26
    .line 27
    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/util/ArraySet;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ScreenRecordingCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;

    .line 22
    .line 23
    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/util/ArraySet;)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    .line 36
    .line 37
    monitor-exit p1
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
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    throw p0
.end method
