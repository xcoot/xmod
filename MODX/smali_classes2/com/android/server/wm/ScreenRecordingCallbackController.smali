.class public final Lcom/android/server/wm/ScreenRecordingCallbackController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbacks:Landroid/util/ArrayMap;

.field public final mLastInvokedStateByUid:Landroid/util/ArrayMap;

.field public mRecordedWC:Lcom/android/server/wm/WindowContainer;

.field public mWatcherCallbackRegistered:Z

.field public final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWatcherCallbackRegistered:Z

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final dispatchCallbacks(Landroid/util/ArraySet;Z)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ge v0, v2, :cond_3

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    .line 54
    .line 55
    iget v2, v2, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    .line 74
    .line 75
    iget-object v2, v2, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mCallback:Landroid/window/IScreenRecordingCallback;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 86
    .line 87
    new-instance p1, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda2;

    .line 88
    .line 89
    invoke-direct {p1, v1, p2}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "ScreenRecordingCallbackController:\n"

    .line 5
    .line 6
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 7
    .line 8
    .line 9
    const-string v1, "  Registered callbacks:\n"

    .line 10
    .line 11
    new-array v2, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 14
    .line 15
    .line 16
    move v1, v0

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    .line 38
    .line 39
    iget v3, v3, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "    callback=%s uid=%s\n"

    .line 50
    .line 51
    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v1, "  Last invoked states:\n"

    .line 58
    .line 59
    new-array v2, v0, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 62
    .line 63
    .line 64
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-ge v0, v1, :cond_1

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "    uid=%s isVisibleInScreenRecording=%s\n"

    .line 89
    .line 90
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 91
    .line 92
    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    return-void
.end method

.method public final ensureMediaProjectionWatcherCallbackRegistered()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWatcherCallbackRegistered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "media_projection"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    const/4 v3, 0x0

    .line 22
    :try_start_0
    new-instance v4, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;

    .line 23
    .line 24
    invoke-direct {v4, p0}, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v4}, Landroid/media/projection/IMediaProjectionManager;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWatcherCallbackRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_ERROR_enabled:[Z

    .line 41
    .line 42
    const/4 v4, 0x4

    .line 43
    aget-boolean v0, v0, v4

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 48
    .line 49
    const-string v8, "Failed to register MediaProjectionWatcherCallback"

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    const-wide v5, 0x40c38cb0e02b376aL    # 10009.381841089304

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :goto_1
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ScreenRecordingCallbackController;->setRecordedWindowContainer(Landroid/media/projection/MediaProjectionInfo;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void

    .line 68
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public final setRecordedWindowContainer(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda1;-><init>(Landroid/media/projection/MediaProjectionInfo;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    .line 34
    .line 35
    :goto_1
    return-void
.end method

.method public final unregister(Landroid/window/IScreenRecordingCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-interface {p1}, Landroid/window/IScreenRecordingCallback;->asBinder()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    monitor-exit v0
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
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    :try_start_1
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-ge v2, p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    .line 49
    .line 50
    iget p1, p1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    .line 51
    .line 52
    iget v3, v1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    .line 53
    .line 54
    if-ne p1, v3, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    .line 61
    .line 62
    iget p1, v1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    throw p0
.end method
