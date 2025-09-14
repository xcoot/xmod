.class public final Lcom/android/server/wm/KnoxRemoteScreenCallbackController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbacks:Landroid/util/ArrayMap;

.field public final mLastInvokedStateByUid:Landroid/util/ArrayMap;

.field public mRecordedWC:Lcom/android/server/wm/DisplayContent;

.field public mRemoteScreenWatcherCallbackRegistered:Z

.field public mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

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
    iput-object v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mRemoteScreenWatcherCallbackRegistered:Z

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

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
    iget-object v2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

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
    iget-object v2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

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
    iget-object v2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;

    .line 54
    .line 55
    iget v2, v2, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;->mUid:I

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
    iget-object v2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;

    .line 74
    .line 75
    iget-object v2, v2, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;->mCallback:Landroid/window/IScreenRecordingCallback;

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
    iget-object p0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 86
    .line 87
    new-instance p1, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda1;

    .line 88
    .line 89
    invoke-direct {p1, v1, p2}, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final unregister(Landroid/window/IScreenRecordingCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

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
    iget-object v1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;

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
    iget-object p1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

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
    iget-object p1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;

    .line 49
    .line 50
    iget p1, p1, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;->mUid:I

    .line 51
    .line 52
    iget v3, v1, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;->mUid:I

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
    iget-object p0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    .line 61
    .line 62
    iget p1, v1, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$Callback;->mUid:I

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
