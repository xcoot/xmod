.class public final Lcom/android/server/tv/TvInputManagerService$HardwareListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 7
    .line 8
    iget v2, v1, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 15
    .line 16
    check-cast v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 37
    .line 38
    iget-boolean v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 44
    .line 45
    iget v4, v3, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 46
    .line 47
    invoke-virtual {v3, v2, v4}, Lcom/android/server/tv/TvInputManagerService;->bindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-interface {v2, p1}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception v2

    .line 61
    :try_start_2
    const-string v3, "TvInputManagerService"

    .line 62
    .line 63
    const-string v4, "error in notifyHardwareAdded"

    .line 64
    .line 65
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 70
    .line 71
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0
.end method

.method public final onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 31
    .line 32
    iget v3, v2, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 33
    .line 34
    invoke-static {v2, v1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mremoveHardwareInputLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 38
    .line 39
    iget v2, v1, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 46
    .line 47
    check-cast v1, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 68
    .line 69
    iget-boolean v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .line 71
    if-nez v3, :cond_0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 75
    .line 76
    iget v4, v3, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 77
    .line 78
    invoke-virtual {v3, v2, v4}, Lcom/android/server/tv/TvInputManagerService;->bindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V

    .line 79
    .line 80
    .line 81
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 82
    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    invoke-interface {v3, p1}, Landroid/media/tv/ITvInputService;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_2

    .line 91
    :catch_0
    move-exception v2

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareDeviceRemovedBuffer:Ljava/util/List;

    .line 94
    .line 95
    check-cast v2, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :goto_1
    :try_start_4
    const-string v3, "TvInputManagerService"

    .line 102
    .line 103
    const-string v4, "error in notifyHardwareRemoved"

    .line 104
    .line 105
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 110
    .line 111
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    .line 114
    .line 115
    .line 116
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    return-void

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    :try_start_6
    throw p0

    .line 121
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 122
    throw p0
.end method

.method public final onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 7
    .line 8
    iget v2, v1, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 15
    .line 16
    check-cast v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 37
    .line 38
    iget-boolean v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 44
    .line 45
    iget v4, v3, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 46
    .line 47
    invoke-virtual {v3, v2, v4}, Lcom/android/server/tv/TvInputManagerService;->bindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-interface {v2, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception v2

    .line 61
    :try_start_2
    const-string v3, "TvInputManagerService"

    .line 62
    .line 63
    const-string v4, "error in notifyHdmiDeviceAdded"

    .line 64
    .line 65
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 70
    .line 71
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0
.end method

.method public final onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 31
    .line 32
    iget v3, v2, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 33
    .line 34
    invoke-static {v2, v1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mremoveHardwareInputLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 38
    .line 39
    iget v2, v1, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 46
    .line 47
    check-cast v1, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 68
    .line 69
    iget-boolean v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .line 71
    if-nez v3, :cond_0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 75
    .line 76
    iget v4, v3, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 77
    .line 78
    invoke-virtual {v3, v2, v4}, Lcom/android/server/tv/TvInputManagerService;->bindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V

    .line 79
    .line 80
    .line 81
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 82
    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    invoke-interface {v3, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_2

    .line 91
    :catch_0
    move-exception v2

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceRemovedBuffer:Ljava/util/List;

    .line 94
    .line 95
    check-cast v2, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :goto_1
    :try_start_4
    const-string v3, "TvInputManagerService"

    .line 102
    .line 103
    const-string v4, "error in notifyHdmiDeviceRemoved"

    .line 104
    .line 105
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 110
    .line 111
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    .line 114
    .line 115
    .line 116
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    return-void

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    :try_start_6
    throw p0

    .line 121
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 122
    throw p0
.end method

.method public final onStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 9
    .line 10
    invoke-static {p0, p2, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$msetStateLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
