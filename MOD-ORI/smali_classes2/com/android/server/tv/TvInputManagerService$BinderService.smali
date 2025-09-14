.class public final Lcom/android/server/tv/TvInputManagerService$BinderService;
.super Landroid/media/tv/ITvInputManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/tv/ITvInputManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;ILjava/lang/String;I)Landroid/media/tv/ITvInputHardware;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v2, "android.permission.TV_INPUT_HARDWARE"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "acquireTvInputHardware"

    .line 27
    .line 28
    move v4, p4

    .line 29
    invoke-static {v1, v2, v5, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    .line 35
    .line 36
    move-result-wide v9

    .line 37
    :try_start_0
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 40
    .line 41
    move v2, p1

    .line 42
    move-object v3, p2

    .line 43
    move-object v4, p3

    .line 44
    move-object/from16 v7, p5

    .line 45
    .line 46
    move/from16 v8, p6

    .line 47
    .line 48
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/tv/TvInputHardwareManager;->acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;IILjava/lang/String;I)Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public final addBlockedRating(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "addBlockedRating"

    .line 15
    .line 16
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    .line 36
    .line 37
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 42
    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object p2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_0

    .line 53
    .line 54
    iget-object p2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Lcom/android/server/tv/PersistentDataStore$1;

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public final addHardwareDevice(I)V
    .locals 5

    .line 1
    new-instance v0, Landroid/media/tv/TvInputHardwareInfo$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/tv/TvInputHardwareInfo$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->deviceId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/16 v0, 0x9

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/media/tv/TvInputHardwareInfo$Builder;->type(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/media/tv/TvInputHardwareInfo$Builder;->audioType(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "0"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->audioAddress(Ljava/lang/String;)Landroid/media/tv/TvInputHardwareInfo$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Landroid/media/tv/TvInputHardwareInfo$Builder;->hdmiPortId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->build()Landroid/media/tv/TvInputHardwareInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v1, 0x1

    .line 36
    new-array v2, v1, [Landroid/media/tv/TvStreamConfig;

    .line 37
    .line 38
    new-instance v3, Landroid/media/tv/TvStreamConfig$Builder;

    .line 39
    .line 40
    invoke-direct {v3}, Landroid/media/tv/TvStreamConfig$Builder;-><init>()V

    .line 41
    .line 42
    .line 43
    const/16 v4, 0x4a39

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/media/tv/TvStreamConfig$Builder;->streamId(I)Landroid/media/tv/TvStreamConfig$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3, v1}, Landroid/media/tv/TvStreamConfig$Builder;->generation(I)Landroid/media/tv/TvStreamConfig$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/16 v4, 0x258

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Landroid/media/tv/TvStreamConfig$Builder;->maxHeight(I)Landroid/media/tv/TvStreamConfig$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/16 v4, 0x320

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/media/tv/TvStreamConfig$Builder;->maxWidth(I)Landroid/media/tv/TvStreamConfig$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3, v1}, Landroid/media/tv/TvStreamConfig$Builder;->type(I)Landroid/media/tv/TvStreamConfig$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/media/tv/TvStreamConfig$Builder;->build()Landroid/media/tv/TvStreamConfig;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    aput-object v1, v2, v0

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 78
    .line 79
    invoke-virtual {p0, p1, v2}, Lcom/android/server/tv/TvInputHardwareManager;->onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    .locals 6

    .line 1
    const-string v0, "input not found for "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureCaptureTvInputPermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const-string v4, "captureFrame"

    .line 17
    .line 18
    invoke-static {v2, v3, v1, p4, v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p4

    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 32
    .line 33
    invoke-virtual {v4, p4}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    iget-object v4, p4, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    const-string p0, "TvInputManagerService"

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    return p0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :try_start_2
    iget-object v0, p4, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 71
    .line 72
    check-cast v0, Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 93
    .line 94
    iget-object v5, v4, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_1

    .line 101
    .line 102
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    .line 103
    .line 104
    if-eqz v4, :cond_1

    .line 105
    .line 106
    iget-object p4, p4, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 107
    .line 108
    check-cast p4, Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-virtual {p4, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    check-cast p4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 115
    .line 116
    iget-object p4, p4, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    const/4 p4, 0x0

    .line 120
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 124
    .line 125
    if-eqz p4, :cond_3

    .line 126
    .line 127
    move-object p1, p4

    .line 128
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    .line 129
    .line 130
    .line 131
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    .line 134
    .line 135
    return p0

    .line 136
    :catchall_1
    move-exception p0

    .line 137
    goto :goto_2

    .line 138
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 140
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    .line 142
    .line 143
    throw p0
.end method

.method public final createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "createOverlayView"

    .line 12
    .line 13
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 27
    .line 28
    invoke-static {p0, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ITvInputSession;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 40
    .line 41
    const-string p2, "error in createOverlayView"

    .line 42
    .line 43
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public final createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/content/AttributionSource;ZII)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move/from16 v8, p5

    .line 8
    .line 9
    move/from16 v2, p6

    .line 10
    .line 11
    const-string v3, "Failed to find input state for inputId="

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 18
    .line 19
    .line 20
    move-result v10

    .line 21
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    const-string v5, "createSession"

    .line 24
    .line 25
    invoke-static {v4, v10, v9, v2, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v14

    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v15

    .line 33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    :try_start_0
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 42
    .line 43
    iget-object v12, v4, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 46
    :try_start_1
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 47
    .line 48
    iget v5, v4, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    if-eq v2, v5, :cond_0

    .line 52
    .line 53
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 54
    .line 55
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v4, Ljava/util/HashSet;

    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_0

    .line 66
    .line 67
    if-nez p4, :cond_0

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {v7, v1, v6, v6, v8}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 75
    .line 76
    .line 77
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    move-object/from16 v17, v12

    .line 84
    .line 85
    move-wide/from16 v20, v15

    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :cond_0
    :try_start_2
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 90
    .line 91
    invoke-virtual {v2, v14}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    iget-object v2, v11, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    move-object v5, v2

    .line 102
    check-cast v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 103
    .line 104
    if-nez v5, :cond_1

    .line 105
    .line 106
    const-string v2, "TvInputManagerService"

    .line 107
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {v7, v1, v6, v6, v8}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 129
    .line 130
    .line 131
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_1
    :try_start_3
    iget-object v4, v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 137
    .line 138
    iget-object v2, v11, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 139
    .line 140
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v2, Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 151
    .line 152
    if-nez v2, :cond_2

    .line 153
    .line 154
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const-wide/16 v6, 0x0

    .line 163
    .line 164
    invoke-static {v2, v6, v7, v14}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 169
    .line 170
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 171
    .line 172
    iget-object v6, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 173
    .line 174
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-direct {v2, v6, v7, v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    .line 179
    .line 180
    .line 181
    iget-object v6, v11, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 182
    .line 183
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    check-cast v6, Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    :cond_2
    move-object v7, v2

    .line 193
    iget-boolean v2, v7, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    .line 194
    .line 195
    if-eqz v2, :cond_3

    .line 196
    .line 197
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    move-object/from16 v6, p1

    .line 203
    .line 204
    const/4 v0, 0x0

    .line 205
    invoke-static {v6, v1, v0, v0, v8}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 206
    .line 207
    .line 208
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_3
    move-object/from16 v6, p1

    .line 214
    .line 215
    :try_start_4
    new-instance v3, Landroid/os/Binder;

    .line 216
    .line 217
    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 218
    .line 219
    .line 220
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 221
    .line 222
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 223
    .line 224
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v17

    .line 228
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 229
    .line 230
    .line 231
    move-result-object v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    move-object/from16 v19, v1

    .line 233
    .line 234
    move-object v1, v2

    .line 235
    move-wide/from16 v20, v15

    .line 236
    .line 237
    move-object v15, v2

    .line 238
    move-object/from16 v2, v19

    .line 239
    .line 240
    move-object/from16 p2, v3

    .line 241
    .line 242
    move-object/from16 v16, v4

    .line 243
    .line 244
    move-object/from16 v4, v17

    .line 245
    .line 246
    move-object/from16 v22, v5

    .line 247
    .line 248
    move-object/from16 v5, v18

    .line 249
    .line 250
    move/from16 v6, p4

    .line 251
    .line 252
    move-object/from16 v23, v7

    .line 253
    .line 254
    move-object/from16 v7, p1

    .line 255
    .line 256
    move/from16 v8, p5

    .line 257
    .line 258
    move-object v0, v11

    .line 259
    move v11, v14

    .line 260
    move-object/from16 v17, v12

    .line 261
    .line 262
    move-object v12, v13

    .line 263
    move/from16 v18, v14

    .line 264
    .line 265
    move-object v14, v13

    .line 266
    move-object/from16 v13, p3

    .line 267
    .line 268
    :try_start_5
    invoke-direct/range {v1 .. v13}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIIILjava/lang/String;Landroid/content/AttributionSource;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 272
    .line 273
    check-cast v0, Ljava/util/HashMap;

    .line 274
    .line 275
    move-object/from16 v1, p2

    .line 276
    .line 277
    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-object/from16 v0, p0

    .line 281
    .line 282
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 283
    .line 284
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    .line 285
    .line 286
    check-cast v2, Ljava/util/HashMap;

    .line 287
    .line 288
    invoke-virtual {v2, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-object/from16 v2, v23

    .line 292
    .line 293
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 294
    .line 295
    check-cast v3, Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 301
    .line 302
    if-eqz v2, :cond_4

    .line 303
    .line 304
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 305
    .line 306
    move/from16 v4, v18

    .line 307
    .line 308
    invoke-static {v3, v2, v1, v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-nez v2, :cond_5

    .line 313
    .line 314
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 315
    .line 316
    invoke-virtual {v2, v4, v1}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(ILandroid/os/IBinder;)V

    .line 317
    .line 318
    .line 319
    goto :goto_0

    .line 320
    :catchall_1
    move-exception v0

    .line 321
    goto :goto_1

    .line 322
    :cond_4
    move/from16 v4, v18

    .line 323
    .line 324
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 325
    .line 326
    invoke-virtual/range {v16 .. v16}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v1, v4, v2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(ILandroid/content/ComponentName;)V

    .line 331
    .line 332
    .line 333
    :cond_5
    :goto_0
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 334
    .line 335
    const/4 v1, 0x1

    .line 336
    move-object/from16 v2, v22

    .line 337
    .line 338
    invoke-static {v0, v1, v15, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    .line 339
    .line 340
    .line 341
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 342
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 343
    .line 344
    .line 345
    return-void

    .line 346
    :goto_1
    :try_start_6
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 347
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 348
    :catchall_2
    move-exception v0

    .line 349
    goto :goto_2

    .line 350
    :catchall_3
    move-exception v0

    .line 351
    move-wide/from16 v20, v15

    .line 352
    .line 353
    :goto_2
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    .line 355
    .line 356
    throw v0
.end method

.method public final dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "dispatchSurfaceChanged"

    .line 12
    .line 13
    invoke-static {v1, v2, v0, p5, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 27
    .line 28
    invoke-virtual {v4, v0, p1, p5}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 49
    .line 50
    const/16 v0, 0x3e8

    .line 51
    .line 52
    invoke-static {p0, p1, v0, p5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {p0, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception p0

    .line 63
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 64
    .line 65
    const-string p2, "error in dispatchSurfaceChanged"

    .line 66
    .line 67
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    const-string p1, "User Ids (Current user: "

    .line 2
    .line 3
    new-instance p3, Lcom/android/internal/util/IndentingPrintWriter;

    .line 4
    .line 5
    const-string v0, "  "

    .line 6
    .line 7
    invoke-direct {p3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v1, "TvInputManagerService"

    .line 15
    .line 16
    invoke-static {v0, v1, p3}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    iget p1, p1, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, "):"

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    move v1, p1

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-ge v1, v2, :cond_1

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto/16 :goto_12

    .line 87
    .line 88
    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 89
    .line 90
    .line 91
    move v1, p1

    .line 92
    :goto_1
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-ge v1, v2, :cond_a

    .line 101
    .line 102
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 103
    .line 104
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 111
    .line 112
    invoke-virtual {v3, v2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v5, "UserState ("

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v2, "):"

    .line 130
    .line 131
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 142
    .line 143
    .line 144
    const-string v2, "inputMap: inputId -> TvInputState"

    .line 145
    .line 146
    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 150
    .line 151
    .line 152
    iget-object v2, v3, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_2

    .line 167
    .line 168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Ljava/util/Map$Entry;

    .line 173
    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v6, ": "

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_2
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 209
    .line 210
    .line 211
    const-string/jumbo v2, "packageSet:"

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 218
    .line 219
    .line 220
    iget-object v2, v3, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    .line 221
    .line 222
    check-cast v2, Ljava/util/HashSet;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    if-eqz v4, :cond_3

    .line 233
    .line 234
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_3
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 245
    .line 246
    .line 247
    const-string v2, "clientStateMap: ITvInputClient -> ClientState"

    .line 248
    .line 249
    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 253
    .line 254
    .line 255
    iget-object v2, v3, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    .line 256
    .line 257
    check-cast v2, Ljava/util/HashMap;

    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_5

    .line 272
    .line 273
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    check-cast v4, Ljava/util/Map$Entry;

    .line 278
    .line 279
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    check-cast v5, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 284
    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v4, ": "

    .line 298
    .line 299
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 313
    .line 314
    .line 315
    const-string/jumbo v4, "sessionTokens:"

    .line 316
    .line 317
    .line 318
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 322
    .line 323
    .line 324
    iget-object v4, v5, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    .line 325
    .line 326
    check-cast v4, Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    if-eqz v6, :cond_4

    .line 337
    .line 338
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    check-cast v6, Landroid/os/IBinder;

    .line 343
    .line 344
    new-instance v7, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    const-string v8, ""

    .line 350
    .line 351
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    invoke-virtual {p3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    goto :goto_5

    .line 365
    :cond_4
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 366
    .line 367
    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string v6, "clientTokens: "

    .line 374
    .line 375
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    iget-object v6, v5, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    .line 379
    .line 380
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    .line 395
    const-string/jumbo v6, "userId: "

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    iget v5, v5, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    .line 402
    .line 403
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 414
    .line 415
    .line 416
    goto/16 :goto_4

    .line 417
    .line 418
    :cond_5
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 419
    .line 420
    .line 421
    const-string/jumbo v2, "serviceStateMap: ComponentName -> ServiceState"

    .line 422
    .line 423
    .line 424
    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 428
    .line 429
    .line 430
    iget-object v2, v3, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 431
    .line 432
    check-cast v2, Ljava/util/HashMap;

    .line 433
    .line 434
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_7

    .line 447
    .line 448
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    check-cast v4, Ljava/util/Map$Entry;

    .line 453
    .line 454
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    check-cast v5, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 459
    .line 460
    new-instance v6, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v4, ": "

    .line 473
    .line 474
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 488
    .line 489
    .line 490
    const-string/jumbo v4, "sessionTokens:"

    .line 491
    .line 492
    .line 493
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 497
    .line 498
    .line 499
    iget-object v4, v5, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 500
    .line 501
    check-cast v4, Ljava/util/ArrayList;

    .line 502
    .line 503
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 508
    .line 509
    .line 510
    move-result v6

    .line 511
    if-eqz v6, :cond_6

    .line 512
    .line 513
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    check-cast v6, Landroid/os/IBinder;

    .line 518
    .line 519
    new-instance v7, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .line 523
    .line 524
    const-string v8, ""

    .line 525
    .line 526
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v6

    .line 536
    invoke-virtual {p3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    goto :goto_7

    .line 540
    :cond_6
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 541
    .line 542
    .line 543
    new-instance v4, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    const-string/jumbo v6, "service: "

    .line 549
    .line 550
    .line 551
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    iget-object v6, v5, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 555
    .line 556
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .line 570
    .line 571
    const-string v6, "callback: "

    .line 572
    .line 573
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    iget-object v6, v5, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    .line 577
    .line 578
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    new-instance v4, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    .line 592
    .line 593
    const-string v6, "bound: "

    .line 594
    .line 595
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    iget-boolean v6, v5, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    .line 599
    .line 600
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v4

    .line 607
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .line 614
    .line 615
    const-string/jumbo v6, "reconnecting: "

    .line 616
    .line 617
    .line 618
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    iget-boolean v5, v5, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    .line 622
    .line 623
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v4

    .line 630
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 634
    .line 635
    .line 636
    goto/16 :goto_6

    .line 637
    .line 638
    :cond_7
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 639
    .line 640
    .line 641
    const-string/jumbo v2, "sessionStateMap: ITvInputSession -> SessionState"

    .line 642
    .line 643
    .line 644
    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 648
    .line 649
    .line 650
    iget-object v2, v3, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 651
    .line 652
    check-cast v2, Ljava/util/HashMap;

    .line 653
    .line 654
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 663
    .line 664
    .line 665
    move-result v4

    .line 666
    if-eqz v4, :cond_8

    .line 667
    .line 668
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v4

    .line 672
    check-cast v4, Ljava/util/Map$Entry;

    .line 673
    .line 674
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v5

    .line 678
    check-cast v5, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 679
    .line 680
    new-instance v6, Ljava/lang/StringBuilder;

    .line 681
    .line 682
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    .line 684
    .line 685
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v4

    .line 689
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    const-string v4, ": "

    .line 693
    .line 694
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 708
    .line 709
    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    .line 711
    .line 712
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .line 714
    .line 715
    const-string v6, "inputId: "

    .line 716
    .line 717
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    iget-object v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 721
    .line 722
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .line 736
    .line 737
    const-string/jumbo v6, "sessionId: "

    .line 738
    .line 739
    .line 740
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    iget-object v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    .line 744
    .line 745
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v4

    .line 752
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    new-instance v4, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .line 759
    .line 760
    const-string v6, "client: "

    .line 761
    .line 762
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    iget-object v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 766
    .line 767
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v4

    .line 774
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    .line 778
    .line 779
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .line 781
    .line 782
    const-string/jumbo v6, "seq: "

    .line 783
    .line 784
    .line 785
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    iget v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 789
    .line 790
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v4

    .line 797
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .line 804
    .line 805
    const-string v6, "callingUid: "

    .line 806
    .line 807
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    iget v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    .line 811
    .line 812
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v4

    .line 819
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    .line 823
    .line 824
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 825
    .line 826
    .line 827
    const-string v6, "callingPid: "

    .line 828
    .line 829
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    iget v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingPid:I

    .line 833
    .line 834
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v4

    .line 841
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    new-instance v4, Ljava/lang/StringBuilder;

    .line 845
    .line 846
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    .line 848
    .line 849
    const-string/jumbo v6, "userId: "

    .line 850
    .line 851
    .line 852
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    iget v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 856
    .line 857
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    new-instance v4, Ljava/lang/StringBuilder;

    .line 868
    .line 869
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    .line 871
    .line 872
    const-string/jumbo v6, "sessionToken: "

    .line 873
    .line 874
    .line 875
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    iget-object v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 879
    .line 880
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v4

    .line 887
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    new-instance v4, Ljava/lang/StringBuilder;

    .line 891
    .line 892
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    .line 894
    .line 895
    const-string/jumbo v6, "session: "

    .line 896
    .line 897
    .line 898
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    iget-object v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 902
    .line 903
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    new-instance v4, Ljava/lang/StringBuilder;

    .line 914
    .line 915
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 916
    .line 917
    .line 918
    const-string v6, "hardwareSessionToken: "

    .line 919
    .line 920
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    iget-object v5, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    .line 924
    .line 925
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v4

    .line 932
    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 936
    .line 937
    .line 938
    goto/16 :goto_8

    .line 939
    .line 940
    :cond_8
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 941
    .line 942
    .line 943
    const-string v2, "mCallbacks:"

    .line 944
    .line 945
    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 949
    .line 950
    .line 951
    iget-object v2, v3, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 952
    .line 953
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 954
    .line 955
    .line 956
    move-result v2

    .line 957
    move v4, p1

    .line 958
    :goto_9
    if-ge v4, v2, :cond_9

    .line 959
    .line 960
    iget-object v5, v3, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 961
    .line 962
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    .line 963
    .line 964
    .line 965
    move-result-object v5

    .line 966
    invoke-virtual {p3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 967
    .line 968
    .line 969
    add-int/lit8 v4, v4, 0x1

    .line 970
    .line 971
    goto :goto_9

    .line 972
    :cond_9
    iget-object v2, v3, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 973
    .line 974
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 975
    .line 976
    .line 977
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 978
    .line 979
    .line 980
    new-instance v2, Ljava/lang/StringBuilder;

    .line 981
    .line 982
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    .line 984
    .line 985
    const-string/jumbo v4, "mainSessionToken: "

    .line 986
    .line 987
    .line 988
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    .line 990
    .line 991
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    .line 992
    .line 993
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1004
    .line 1005
    .line 1006
    add-int/lit8 v1, v1, 0x1

    .line 1007
    .line 1008
    goto/16 :goto_1

    .line 1009
    .line 1010
    :cond_a
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 1012
    .line 1013
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 1014
    .line 1015
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1016
    .line 1017
    .line 1018
    new-instance p3, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1019
    .line 1020
    const-string v0, "  "

    .line 1021
    .line 1022
    invoke-direct {p3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    .line 1026
    .line 1027
    const-string v0, "TvInputHardwareManager"

    .line 1028
    .line 1029
    invoke-static {p2, v0, p3}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result p2

    .line 1033
    if-nez p2, :cond_b

    .line 1034
    .line 1035
    goto/16 :goto_10

    .line 1036
    .line 1037
    :cond_b
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 1038
    .line 1039
    monitor-enter p2

    .line 1040
    :try_start_1
    const-string v0, "TvInputHardwareManager Info:"

    .line 1041
    .line 1042
    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1046
    .line 1047
    .line 1048
    const-string v0, "mConnections: deviceId -> Connection"

    .line 1049
    .line 1050
    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1054
    .line 1055
    .line 1056
    move v0, p1

    .line 1057
    :goto_a
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 1058
    .line 1059
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 1060
    .line 1061
    .line 1062
    move-result v1

    .line 1063
    if-ge v0, v1, :cond_c

    .line 1064
    .line 1065
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 1066
    .line 1067
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1068
    .line 1069
    .line 1070
    move-result v1

    .line 1071
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 1072
    .line 1073
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v2

    .line 1077
    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 1078
    .line 1079
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    const-string v1, ": "

    .line 1088
    .line 1089
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v1

    .line 1099
    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    add-int/lit8 v0, v0, 0x1

    .line 1103
    .line 1104
    goto :goto_a

    .line 1105
    :catchall_1
    move-exception p0

    .line 1106
    goto/16 :goto_11

    .line 1107
    .line 1108
    :cond_c
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1109
    .line 1110
    .line 1111
    const-string v0, "mHardwareList:"

    .line 1112
    .line 1113
    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1117
    .line 1118
    .line 1119
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    .line 1120
    .line 1121
    check-cast v0, Ljava/util/ArrayList;

    .line 1122
    .line 1123
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1128
    .line 1129
    .line 1130
    move-result v1

    .line 1131
    if-eqz v1, :cond_d

    .line 1132
    .line 1133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v1

    .line 1137
    check-cast v1, Landroid/media/tv/TvInputHardwareInfo;

    .line 1138
    .line 1139
    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1140
    .line 1141
    .line 1142
    goto :goto_b

    .line 1143
    :cond_d
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1144
    .line 1145
    .line 1146
    const-string v0, "mHdmiDeviceList:"

    .line 1147
    .line 1148
    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1152
    .line 1153
    .line 1154
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 1155
    .line 1156
    check-cast v0, Ljava/util/ArrayList;

    .line 1157
    .line 1158
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1163
    .line 1164
    .line 1165
    move-result v1

    .line 1166
    if-eqz v1, :cond_e

    .line 1167
    .line 1168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v1

    .line 1172
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1173
    .line 1174
    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1175
    .line 1176
    .line 1177
    goto :goto_c

    .line 1178
    :cond_e
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1179
    .line 1180
    .line 1181
    const-string v0, "mHardwareInputIdMap: deviceId -> inputId"

    .line 1182
    .line 1183
    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1187
    .line 1188
    .line 1189
    move v0, p1

    .line 1190
    :goto_d
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 1191
    .line 1192
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 1193
    .line 1194
    .line 1195
    move-result v1

    .line 1196
    if-ge v0, v1, :cond_f

    .line 1197
    .line 1198
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 1199
    .line 1200
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1201
    .line 1202
    .line 1203
    move-result v1

    .line 1204
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 1205
    .line 1206
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v2

    .line 1210
    check-cast v2, Ljava/lang/String;

    .line 1211
    .line 1212
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1213
    .line 1214
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    .line 1220
    const-string v1, ": "

    .line 1221
    .line 1222
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v1

    .line 1232
    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1233
    .line 1234
    .line 1235
    add-int/lit8 v0, v0, 0x1

    .line 1236
    .line 1237
    goto :goto_d

    .line 1238
    :cond_f
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1239
    .line 1240
    .line 1241
    const-string v0, "mHdmiInputIdMap: id -> inputId"

    .line 1242
    .line 1243
    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1247
    .line 1248
    .line 1249
    :goto_e
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 1250
    .line 1251
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 1252
    .line 1253
    .line 1254
    move-result v0

    .line 1255
    if-ge p1, v0, :cond_10

    .line 1256
    .line 1257
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 1258
    .line 1259
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1260
    .line 1261
    .line 1262
    move-result v0

    .line 1263
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 1264
    .line 1265
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v1

    .line 1269
    check-cast v1, Ljava/lang/String;

    .line 1270
    .line 1271
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1272
    .line 1273
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    .line 1279
    const-string v0, ": "

    .line 1280
    .line 1281
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v0

    .line 1291
    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    .line 1293
    .line 1294
    add-int/lit8 p1, p1, 0x1

    .line 1295
    .line 1296
    goto :goto_e

    .line 1297
    :cond_10
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1298
    .line 1299
    .line 1300
    const-string p1, "mInputMap: inputId -> inputInfo"

    .line 1301
    .line 1302
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1306
    .line 1307
    .line 1308
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 1309
    .line 1310
    check-cast p0, Landroid/util/ArrayMap;

    .line 1311
    .line 1312
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 1313
    .line 1314
    .line 1315
    move-result-object p0

    .line 1316
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1317
    .line 1318
    .line 1319
    move-result-object p0

    .line 1320
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 1321
    .line 1322
    .line 1323
    move-result p1

    .line 1324
    if-eqz p1, :cond_11

    .line 1325
    .line 1326
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1327
    .line 1328
    .line 1329
    move-result-object p1

    .line 1330
    check-cast p1, Ljava/util/Map$Entry;

    .line 1331
    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1335
    .line 1336
    .line 1337
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v1

    .line 1341
    check-cast v1, Ljava/lang/String;

    .line 1342
    .line 1343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    .line 1346
    const-string v1, ": "

    .line 1347
    .line 1348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    .line 1351
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1352
    .line 1353
    .line 1354
    move-result-object p1

    .line 1355
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1359
    .line 1360
    .line 1361
    move-result-object p1

    .line 1362
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    .line 1364
    .line 1365
    goto :goto_f

    .line 1366
    :cond_11
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1370
    .line 1371
    .line 1372
    monitor-exit p2

    .line 1373
    :goto_10
    return-void

    .line 1374
    :goto_11
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1375
    throw p0

    .line 1376
    :goto_12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1377
    throw p0
.end method

.method public final ensureCaptureTvInputPermission()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v0, "android.permission.CAPTURE_TV_INPUT"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string v0, "Requires CAPTURE_TV_INPUT permission"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final ensureParentalControlsPermission()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v0, "android.permission.MODIFY_PARENTAL_CONTROLS"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string v0, "The caller does not have parental controls permission"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final getAvailableExtensionInterfaceNames(Ljava/lang/String;I)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.TIS_EXTENSION_INTERFACE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_5

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    const-string v3, "getAvailableExtensionInterfaceNames"

    .line 24
    .line 25
    invoke-static {v2, v1, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 39
    .line 40
    invoke-virtual {v5, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget-object v5, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object p2, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p2, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 69
    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    iget-boolean p2, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 73
    .line 74
    if-eqz p2, :cond_0

    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 77
    .line 78
    if-eqz p1, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_4

    .line 83
    :cond_0
    const/4 p1, 0x0

    .line 84
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    :try_start_2
    new-instance p2, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-interface {p1}, Landroid/media/tv/ITvInputService;->getAvailableExtensionInterfaceNames()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_3

    .line 109
    .line 110
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Ljava/lang/String;

    .line 115
    .line 116
    invoke-interface {p1, v5}, Landroid/media/tv/ITvInputService;->getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    if-eqz v6, :cond_2

    .line 121
    .line 122
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 123
    .line 124
    iget-object v7, v7, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {v7, v6, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-nez v6, :cond_1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    goto :goto_5

    .line 135
    :catch_0
    move-exception p0

    .line 136
    goto :goto_3

    .line 137
    :cond_2
    :goto_2
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    .line 143
    .line 144
    return-object p2

    .line 145
    :goto_3
    :try_start_3
    const-string p1, "TvInputManagerService"

    .line 146
    .line 147
    const-string p2, "error in getAvailableExtensionInterfaceNames or getExtensionInterfacePermission"

    .line 148
    .line 149
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .line 151
    .line 152
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    .line 156
    .line 157
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    .line 159
    .line 160
    return-object p0

    .line 161
    :goto_4
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 163
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    .line 165
    .line 166
    throw p0

    .line 167
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 168
    .line 169
    const-string p1, "Requires TIS_EXTENSION_INTERFACE permission"

    .line 170
    .line 171
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p0
.end method

.method public final getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureCaptureTvInputPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "getAvailableTvStreamConfigList"

    .line 15
    .line 16
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->getAvailableTvStreamConfigList(Ljava/lang/String;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final getBlockedRatings(I)Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "getBlockedRatings"

    .line 12
    .line 13
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    new-array v3, v3, [Landroid/media/tv/TvContentRating;

    .line 49
    .line 50
    invoke-interface {p0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, [Landroid/media/tv/TvContentRating;

    .line 55
    .line 56
    array-length v3, p0

    .line 57
    const/4 v4, 0x0

    .line 58
    :goto_0
    if-ge v4, v3, :cond_0

    .line 59
    .line 60
    aget-object v5, p0, v4

    .line 61
    .line 62
    invoke-virtual {v5}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final getCallingPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    array-length v0, p0

    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    aget-object p0, p0, v0

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string/jumbo p0, "unknown"

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public final getClientPid(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.TUNER_RESOURCE_ACCESS"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getClientPidLocked(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_1
    .catch Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception p0

    .line 30
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 31
    .line 32
    const-string v3, "error in getClientPid"

    .line 33
    .line 34
    invoke-static {p1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    const/4 p0, -0x1

    .line 38
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    return p0

    .line 43
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 51
    .line 52
    const-string p1, "Requires TUNER_RESOURCE_ACCESS permission"

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public final getClientPidLocked(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    .line 4
    .line 5
    check-cast v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    .line 16
    .line 17
    check-cast p0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingPid:I

    .line 26
    .line 27
    return p0

    .line 28
    :cond_0
    new-instance p0, Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException;

    .line 29
    .line 30
    const-string v0, "Client Pid not found with sessionId "

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final getClientPriority(ILjava/lang/String;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.TUNER_RESOURCE_ACCESS"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getClientPidLocked(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p2
    :try_end_1
    .catch Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p2

    .line 36
    :try_start_2
    const-string v3, "TvInputManagerService"

    .line 37
    .line 38
    const-string v4, "error in getClientPriority"

    .line 39
    .line 40
    invoke-static {v3, v4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    const/4 p2, -0x1

    .line 44
    :goto_0
    monitor-exit v0

    .line 45
    move v0, p2

    .line 46
    goto :goto_2

    .line 47
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :try_start_3
    throw p0

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    goto :goto_3

    .line 51
    :cond_0
    :goto_2
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    const-string/jumbo p2, "tv_tuner_resource_mgr"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 63
    .line 64
    invoke-virtual {p0, p1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->getClientPriority(II)I

    .line 65
    .line 66
    .line 67
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return p0

    .line 72
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 77
    .line 78
    const-string p1, "Requires TUNER_RESOURCE_ACCESS permission"

    .line 79
    .line 80
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public final getCurrentTunedInfos(I)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.ACCESS_TUNED_INFO"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    const-string v3, "getTvCurrentChannelInfos"

    .line 24
    .line 25
    invoke-static {v2, v0, v1, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v2

    .line 34
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    monitor-exit v2

    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 52
    .line 53
    const-string p1, "The caller does not have access tuned info permission"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final getDvbDeviceList()Ljava/util/List;
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v0, "android.permission.DVB_DEVICE"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_8

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    new-instance p0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/io/File;

    .line 23
    .line 24
    const-string v3, "/dev"

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    array-length v3, v2

    .line 34
    const/4 v4, 0x0

    .line 35
    move v5, v4

    .line 36
    move v6, v5

    .line 37
    :goto_0
    const/4 v7, 0x1

    .line 38
    if-ge v5, v3, :cond_2

    .line 39
    .line 40
    aget-object v8, v2, v5

    .line 41
    .line 42
    sget-object v9, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    .line 43
    .line 44
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-eqz v10, :cond_0

    .line 53
    .line 54
    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    const/4 v11, 0x2

    .line 63
    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    new-instance v11, Landroid/media/tv/DvbDeviceInfo;

    .line 72
    .line 73
    invoke-direct {v11, v10, v9}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :cond_0
    :goto_1
    const-string v9, "dvb"

    .line 84
    .line 85
    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_1

    .line 90
    .line 91
    move v6, v7

    .line 92
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    if-nez v6, :cond_3

    .line 96
    .line 97
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    return-object p0

    .line 105
    :cond_3
    :try_start_1
    new-instance v2, Ljava/io/File;

    .line 106
    .line 107
    const-string v3, "/dev/dvb"

    .line 108
    .line 109
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    array-length v5, v2

    .line 122
    move v6, v4

    .line 123
    :goto_2
    if-ge v6, v5, :cond_6

    .line 124
    .line 125
    aget-object v8, v2, v6

    .line 126
    .line 127
    sget-object v9, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 128
    .line 129
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-eqz v10, :cond_5

    .line 138
    .line 139
    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    new-instance v10, Ljava/io/File;

    .line 148
    .line 149
    new-instance v11, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v12, "/dev/dvb/"

    .line 155
    .line 156
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    array-length v10, v8

    .line 174
    move v11, v4

    .line 175
    :goto_3
    if-ge v11, v10, :cond_5

    .line 176
    .line 177
    aget-object v12, v8, v11

    .line 178
    .line 179
    sget-object v13, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 180
    .line 181
    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-eqz v13, :cond_4

    .line 190
    .line 191
    invoke-virtual {v12, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    new-instance v13, Landroid/media/tv/DvbDeviceInfo;

    .line 200
    .line 201
    invoke-direct {v13, v9, v12}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-eqz v2, :cond_7

    .line 218
    .line 219
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    goto :goto_4

    .line 224
    :cond_7
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    .line 230
    .line 231
    return-object p0

    .line 232
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    .line 234
    .line 235
    throw p0

    .line 236
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    .line 237
    .line 238
    const-string v0, "Requires DVB_DEVICE permission"

    .line 239
    .line 240
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p0
.end method

.method public final getExtensionInterface(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.TIS_EXTENSION_INTERFACE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    const-string v3, "getExtensionInterface"

    .line 24
    .line 25
    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 39
    .line 40
    invoke-virtual {v5, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iget-object v5, p3, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object p3, p3, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p3, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 70
    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    iget-boolean p3, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 74
    .line 75
    if-eqz p3, :cond_0

    .line 76
    .line 77
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 78
    .line 79
    if-eqz p1, :cond_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_0
    move-object p1, v5

    .line 85
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    :try_start_2
    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputService;->getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    if-eqz p3, :cond_1

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {p0, p3, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-nez p0, :cond_2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    goto :goto_4

    .line 107
    :catch_0
    move-exception p0

    .line 108
    goto :goto_2

    .line 109
    :cond_1
    :goto_1
    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputService;->getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;

    .line 110
    .line 111
    .line 112
    move-result-object p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    return-object p0

    .line 117
    :goto_2
    :try_start_3
    const-string p1, "TvInputManagerService"

    .line 118
    .line 119
    const-string p2, "error in getExtensionInterfacePermission or getExtensionInterface"

    .line 120
    .line 121
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    .line 126
    .line 127
    return-object v5

    .line 128
    :goto_3
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 130
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 135
    .line 136
    const-string p1, "Requires TIS_EXTENSION_INTERFACE permission"

    .line 137
    .line 138
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0
.end method

.method public final getHardwareList()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final getTvContentRatingSystemList(I)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.READ_CONTENT_RATING_SYSTEMS"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const-string v3, "getTvContentRatingSystemList"

    .line 24
    .line 25
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    .line 45
    .line 46
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 60
    .line 61
    const-string p1, "The caller does not have permission to read content rating systems"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public final getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "getTvInputInfo"

    .line 12
    .line 13
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 39
    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 45
    .line 46
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final getTvInputList(I)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "getTvInputList"

    .line 12
    .line 13
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 60
    .line 61
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final getTvInputState(Ljava/lang/String;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "getTvInputState"

    .line 12
    .line 13
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 39
    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    .line 45
    .line 46
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final isParentalControlsEnabled(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "isParentalControlsEnabled"

    .line 12
    .line 13
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 35
    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    .line 38
    .line 39
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final isRatingBlocked(Ljava/lang/String;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "isRatingBlocked"

    .line 12
    .line 13
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 26
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 42
    .line 43
    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    :try_start_2
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroid/media/tv/TvContentRating;

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Landroid/media/tv/TvContentRating;->contains(Landroid/media/tv/TvContentRating;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    monitor-exit p2

    .line 69
    const/4 p0, 0x1

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    const/4 p0, 0x0

    .line 75
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    .line 78
    .line 79
    return p0

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :goto_1
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    :try_start_5
    throw p0

    .line 84
    :goto_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 85
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 86
    :catchall_2
    move-exception p0

    .line 87
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final isSingleSessionActive(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureCaptureTvInputPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "isSingleSessionActive"

    .line 15
    .line 16
    invoke-static {v1, v2, v0, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 36
    .line 37
    check-cast p1, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v3, 0x1

    .line 44
    if-ne p1, v3, :cond_0

    .line 45
    .line 46
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return v3

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 54
    .line 55
    check-cast p1, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/4 v4, 0x2

    .line 62
    const/4 v5, 0x0

    .line 63
    if-ne p1, v4, :cond_3

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 66
    .line 67
    check-cast p0, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-array p1, v4, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 74
    .line 75
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 80
    .line 81
    aget-object p1, p0, v5

    .line 82
    .line 83
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    .line 84
    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    aget-object p0, p0, v3

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    .line 90
    .line 91
    if-eqz p0, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    move v3, v5

    .line 95
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    return v3

    .line 100
    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    return v5

    .line 105
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 107
    :catchall_1
    move-exception p0

    .line 108
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    .line 111
    throw p0
.end method

.method public final notifyAdBufferReady(Landroid/os/IBinder;Landroid/media/tv/AdBuffer;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 10
    .line 11
    const-string/jumbo v3, "notifyAdBuffer"

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    :try_start_2
    invoke-virtual {p2}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_0
    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception p0

    .line 60
    :try_start_3
    const-string p1, "TvInputManagerService"

    .line 61
    .line 62
    const-string p3, "error in notifyAdBuffer"

    .line 63
    .line 64
    invoke-static {p1, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    .line 66
    .line 67
    if-eqz p2, :cond_0

    .line 68
    .line 69
    :try_start_4
    invoke-virtual {p2}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    :goto_1
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :goto_2
    if-eqz p2, :cond_1

    .line 80
    .line 81
    :try_start_5
    invoke-virtual {p2}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V

    .line 86
    .line 87
    .line 88
    :cond_1
    throw p0

    .line 89
    :goto_3
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 91
    :catchall_2
    move-exception p0

    .line 92
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public final notifyTvAdSessionData(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 10
    .line 11
    const-string/jumbo v3, "notifyTvAdSessionData"

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v1, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ITvInputSession;->notifyTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 50
    .line 51
    const-string p2, "error in notifyTvAdSessionData"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "notifyTvmessage"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ITvInputSession;->notifyTvMessage(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in notifyTvMessage"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v0, "android.permission.DVB_DEVICE"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_d

    .line 12
    .line 13
    new-instance p0, Ljava/io/File;

    .line 14
    .line 15
    const-string v0, "/dev"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    array-length v0, p0

    .line 25
    const/4 v1, 0x0

    .line 26
    move v2, v1

    .line 27
    move v3, v2

    .line 28
    :goto_0
    const/4 v4, 0x1

    .line 29
    if-ge v2, v0, :cond_5

    .line 30
    .line 31
    aget-object v5, p0, v2

    .line 32
    .line 33
    const-string v6, "dvb"

    .line 34
    .line 35
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    new-instance v5, Ljava/io/File;

    .line 42
    .line 43
    const-string v6, "/dev/dvb"

    .line 44
    .line 45
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    array-length v6, v5

    .line 53
    move v7, v1

    .line 54
    :goto_1
    if-ge v7, v6, :cond_3

    .line 55
    .line 56
    aget-object v8, v5, v7

    .line 57
    .line 58
    sget-object v9, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 59
    .line 60
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-eqz v9, :cond_1

    .line 69
    .line 70
    new-instance v9, Ljava/io/File;

    .line 71
    .line 72
    const-string v10, "/dev/dvb/"

    .line 73
    .line 74
    invoke-static {v10, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    array-length v9, v8

    .line 86
    move v10, v1

    .line 87
    :goto_2
    if-ge v10, v9, :cond_1

    .line 88
    .line 89
    aget-object v11, v8, v10

    .line 90
    .line 91
    sget-object v12, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 92
    .line 93
    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    if-eqz v11, :cond_0

    .line 102
    .line 103
    move v3, v4

    .line 104
    goto :goto_3

    .line 105
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    const/4 p0, 0x2

    .line 125
    if-eqz p2, :cond_a

    .line 126
    .line 127
    if-eq p2, v4, :cond_8

    .line 128
    .line 129
    if-ne p2, p0, :cond_7

    .line 130
    .line 131
    if-eqz v3, :cond_6

    .line 132
    .line 133
    :try_start_0
    const-string v2, "/dev/dvb/adapter%d/frontend%d"

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    goto/16 :goto_b

    .line 138
    .line 139
    :cond_6
    const-string v2, "/dev/dvb%d.frontend%d"

    .line 140
    .line 141
    :goto_6
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    filled-new-array {v3, p1}, [Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    goto :goto_9

    .line 166
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v2, "Invalid DVB device: "

    .line 174
    .line 175
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p0

    .line 189
    :cond_8
    if-eqz v3, :cond_9

    .line 190
    .line 191
    const-string v2, "/dev/dvb/adapter%d/dvr%d"

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_9
    const-string v2, "/dev/dvb%d.dvr%d"

    .line 195
    .line 196
    :goto_7
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    filled-new-array {v3, p1}, [Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    goto :goto_9

    .line 221
    :cond_a
    if-eqz v3, :cond_b

    .line 222
    .line 223
    const-string v2, "/dev/dvb/adapter%d/demux%d"

    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_b
    const-string v2, "/dev/dvb%d.demux%d"

    .line 227
    .line 228
    :goto_8
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    filled-new-array {v3, p1}, [Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_9
    :try_start_1
    new-instance v2, Ljava/io/File;

    .line 253
    .line 254
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    if-ne p0, p2, :cond_c

    .line 258
    .line 259
    const/high16 p0, 0x30000000

    .line 260
    .line 261
    goto :goto_a

    .line 262
    :cond_c
    const/high16 p0, 0x10000000

    .line 263
    .line 264
    :goto_a
    invoke-static {v2, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 265
    .line 266
    .line 267
    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    .line 270
    .line 271
    return-object p0

    .line 272
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    .line 274
    .line 275
    const/4 p0, 0x0

    .line 276
    return-object p0

    .line 277
    :goto_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 278
    .line 279
    .line 280
    throw p0

    .line 281
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    .line 282
    .line 283
    const-string p1, "Requires DVB_DEVICE permission"

    .line 284
    .line 285
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p0
.end method

.method public final pauseRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "pauseRecording"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->pauseRecording(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in pauseRecording"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 10
    .line 11
    const-string/jumbo v3, "registerCallback"

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v0, v1, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    const-string p0, "TvInputManagerService"

    .line 42
    .line 43
    const-string p1, "client process has already died"

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackPidUidMap:Ljava/util/Map;

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p0, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "relayoutOverlayView"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->relayoutOverlayView(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in relayoutOverlayView"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final releaseSession(Landroid/os/IBinder;I)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "releaseSession"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-virtual {v5, v0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    :try_start_2
    invoke-static {p1, p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 47
    .line 48
    const/4 v0, 0x4

    .line 49
    invoke-static {p0, v0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string/jumbo v3, "releaseTvInputHardware"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/tv/TvInputHardwareManager;->releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final removeBlockedRating(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string/jumbo v3, "removeBlockedRating"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    .line 37
    .line 38
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 43
    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Lcom/android/server/tv/PersistentDataStore$1;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final removeBroadcastInfo(Landroid/os/IBinder;II)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 10
    .line 11
    const-string/jumbo v3, "removeBroadcastInfo"

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->removeBroadcastInfo(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 50
    .line 51
    const-string p2, "error in removeBroadcastInfo"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final removeHardwareDevice(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onDeviceUnavailable(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final removeOverlayView(Landroid/os/IBinder;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "removeOverlayView"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/media/tv/ITvInputSession;->removeOverlayView()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in removeOverlayView"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final requestAd(Landroid/os/IBinder;Landroid/media/tv/AdRequest;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 10
    .line 11
    const-string/jumbo v3, "requestAd"

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->requestAd(Landroid/media/tv/AdRequest;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 50
    .line 51
    const-string p2, "error in requestAd"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final requestBroadcastInfo(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoRequest;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 10
    .line 11
    const-string/jumbo v3, "requestBroadcastInfo"

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 50
    .line 51
    const-string p2, "error in requestBroadcastInfo"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final requestChannelBrowsable(Landroid/net/Uri;I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string/jumbo v4, "requestChannelBrowsable"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, v3, p2, v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 27
    .line 28
    const-string v4, "android.media.tv.action.CHANNEL_BROWSABLE_REQUESTED"

    .line 29
    .line 30
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 65
    .line 66
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 67
    .line 68
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 69
    .line 70
    const-string v6, "android.media.tv.extra.CHANNEL_ID"

    .line 71
    .line 72
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v7

    .line 76
    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    const-string v6, "android.media.tv.extra.PACKAGE_NAME"

    .line 80
    .line 81
    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    new-instance v6, Landroid/os/UserHandle;

    .line 94
    .line 95
    invoke-direct {v6, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    .line 111
    throw p0
.end method

.method public final resumePlayback(Landroid/os/IBinder;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "resumePlayback"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/media/tv/ITvInputSession;->resumePlayback()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in resumePlayback()"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final resumeRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "resumeRecording"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->resumeRecording(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in resumeRecording"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final selectAudioPresentation(Landroid/os/IBinder;III)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "selectAudioPresentation"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ITvInputSession;->selectAudioPresentation(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in selectAudioPresentation"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "selectTrack"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ITvInputSession;->selectTrack(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in selectTrack"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "sendAppPrivateCommand"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ITvInputSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in appPrivateCommand"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.NOTIFY_TV_INPUTS"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_8

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_7

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string v1, "Invalid watch next program ID."

    .line 31
    .line 32
    const-string v2, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    .line 33
    .line 34
    const-string v3, "Invalid preview program ID."

    .line 35
    .line 36
    const-string v4, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    .line 37
    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    const-wide/16 v7, -0x1

    .line 41
    .line 42
    const/4 v9, -0x1

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    sparse-switch v10, :sswitch_data_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :sswitch_0
    const-string v10, "android.media.tv.action.PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT"

    .line 52
    .line 53
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v9, 0x2

    .line 61
    goto :goto_0

    .line 62
    :sswitch_1
    const-string v10, "android.media.tv.action.PREVIEW_PROGRAM_BROWSABLE_DISABLED"

    .line 63
    .line 64
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v9, 0x1

    .line 72
    goto :goto_0

    .line 73
    :sswitch_2
    const-string v10, "android.media.tv.action.WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED"

    .line 74
    .line 75
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v9, 0x0

    .line 83
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v0, "Invalid TV input notifying action: "

    .line 91
    .line 92
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :pswitch_0
    invoke-virtual {p1, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 111
    .line 112
    .line 113
    move-result-wide v9

    .line 114
    cmp-long v0, v9, v5

    .line 115
    .line 116
    if-ltz v0, :cond_4

    .line 117
    .line 118
    invoke-virtual {p1, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    cmp-long v0, v2, v5

    .line 123
    .line 124
    if-ltz v0, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :pswitch_1
    invoke-virtual {p1, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    cmp-long v0, v0, v5

    .line 144
    .line 145
    if-ltz v0, :cond_5

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :pswitch_2
    invoke-virtual {p1, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    cmp-long v0, v2, v5

    .line 159
    .line 160
    if-ltz v0, :cond_6

    .line 161
    .line 162
    :goto_1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 163
    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    const-string/jumbo v3, "sendTvInputNotifyIntent"

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 180
    .line 181
    .line 182
    move-result-wide v0

    .line 183
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    new-instance v2, Landroid/os/UserHandle;

    .line 190
    .line 191
    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .line 196
    .line 197
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :catchall_0
    move-exception p0

    .line 202
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    .line 204
    .line 205
    throw p0

    .line 206
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 207
    .line 208
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p0

    .line 212
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 213
    .line 214
    const-string p1, "Must specify package name to notify."

    .line 215
    .line 216
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0

    .line 220
    :cond_8
    new-instance p1, Ljava/lang/SecurityException;

    .line 221
    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v0, "The caller: "

    .line 225
    .line 226
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string p0, " doesn\'t have permission: android.permission.NOTIFY_TV_INPUTS"

    .line 237
    .line 238
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p1

    .line 249
    :sswitch_data_0
    .sparse-switch
        -0x98de898 -> :sswitch_2
        0x5d81b12d -> :sswitch_1
        0x77e569e1 -> :sswitch_0
    .end sparse-switch

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setCaptionEnabled(Landroid/os/IBinder;ZI)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "setCaptionEnabled"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->setCaptionEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in setCaptionEnabled"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final setInteractiveAppNotificationEnabled(Landroid/os/IBinder;ZI)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "setInteractiveAppNotificationEnabled"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->setInteractiveAppNotificationEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in setInteractiveAppNotificationEnabled"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final setMainSession(Landroid/os/IBinder;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.CHANGE_HDMI_CEC_ACTIVE_SOURCE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const-string/jumbo v3, "setMainSession"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 35
    .line 36
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 40
    .line 41
    invoke-virtual {v5, v1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v5, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    .line 46
    .line 47
    if-ne v5, p1, :cond_0

    .line 48
    .line 49
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    :try_start_2
    iput-object p1, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 61
    .line 62
    const/4 v6, 0x1

    .line 63
    invoke-virtual {v1, v0, p2, p1, v6}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(IILandroid/os/IBinder;Z)V

    .line 64
    .line 65
    .line 66
    :cond_1
    if-eqz v5, :cond_2

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    const/16 v0, 0x3e8

    .line 72
    .line 73
    invoke-virtual {p0, v0, p2, v5, p1}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(IILandroid/os/IBinder;Z)V

    .line 74
    .line 75
    .line 76
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 89
    .line 90
    const-string p1, "The caller does not have CHANGE_HDMI_CEC_ACTIVE_SOURCE permission"

    .line 91
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public final setParentalControlsEnabled(ZI)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string/jumbo v3, "setParentalControlsEnabled"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 39
    .line 40
    .line 41
    iget-boolean p2, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    .line 42
    .line 43
    if-eq p2, p1, :cond_0

    .line 44
    .line 45
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Lcom/android/server/tv/PersistentDataStore$1;

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public final setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "setSurface"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    :try_start_0
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 26
    .line 27
    iget-object v7, v7, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 30
    :try_start_1
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 31
    .line 32
    invoke-virtual {v8, p3}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 33
    .line 34
    .line 35
    move-result-object p3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :try_start_2
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 37
    .line 38
    invoke-virtual {v8, v0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget-object p1, v6, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_6

    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto :goto_4

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 64
    .line 65
    const/16 v8, 0x3e8

    .line 66
    .line 67
    invoke-static {v0, p1, v8, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    if-nez p2, :cond_1

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 p1, 0x0

    .line 79
    :goto_1
    iget-boolean v0, v6, Lcom/android/server/tv/TvInputManagerService$SessionState;->isVisible:Z

    .line 80
    .line 81
    if-eq v0, p1, :cond_2

    .line 82
    .line 83
    iput-boolean p1, v6, Lcom/android/server/tv/TvInputManagerService$SessionState;->isVisible:Z

    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 86
    .line 87
    invoke-virtual {p1, p3}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :goto_2
    move-object p3, v6

    .line 92
    goto :goto_6

    .line 93
    :goto_3
    move-object p3, v6

    .line 94
    goto :goto_4

    .line 95
    :catchall_1
    move-exception p1

    .line 96
    goto :goto_2

    .line 97
    :catch_1
    move-exception p1

    .line 98
    goto :goto_3

    .line 99
    :goto_4
    :try_start_3
    const-string v0, "TvInputManagerService"

    .line 100
    .line 101
    const-string v1, "error in setSurface"

    .line 102
    .line 103
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_5
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    if-eqz p2, :cond_3

    .line 108
    .line 109
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 110
    .line 111
    .line 112
    :cond_3
    if-eqz v6, :cond_5

    .line 113
    .line 114
    if-nez p2, :cond_4

    .line 115
    .line 116
    move v4, v5

    .line 117
    :cond_4
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 118
    .line 119
    invoke-static {v6, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p0, v4, v6, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :goto_6
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 132
    :catchall_2
    move-exception p1

    .line 133
    goto :goto_7

    .line 134
    :catchall_3
    move-exception p1

    .line 135
    move-object p3, v6

    .line 136
    :goto_7
    if-eqz p2, :cond_6

    .line 137
    .line 138
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 139
    .line 140
    .line 141
    :cond_6
    if-eqz v6, :cond_8

    .line 142
    .line 143
    if-nez p2, :cond_7

    .line 144
    .line 145
    move v4, v5

    .line 146
    :cond_7
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 147
    .line 148
    invoke-static {v6, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p0, v4, v6, p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    .line 153
    .line 154
    .line 155
    :cond_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    .line 157
    .line 158
    throw p1
.end method

.method public final setTvMessageEnabled(Landroid/os/IBinder;IZI)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "setTvMessageEnabled"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-virtual {v5, v0, p1, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    iget-object p4, p4, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 36
    .line 37
    iget-object v5, v5, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 38
    .line 39
    invoke-virtual {v5, p2, p4, p3}, Lcom/android/server/tv/TvInputHardwareManager;->setTvMessageEnabled(ILjava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 43
    .line 44
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ITvInputSession;->setTvMessageEnabled(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception p0

    .line 55
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 56
    .line 57
    const-string p2, "error in setTvMessageEnabled"

    .line 58
    .line 59
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public final setVideoFrozen(Landroid/os/IBinder;ZI)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "setVideoFrozen"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->setVideoFrozen(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in setVideoFrozen"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final setVolume(Landroid/os/IBinder;FI)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "setVolume"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputSession;->setVolume(F)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 50
    .line 51
    const/16 v0, 0x3e8

    .line 52
    .line 53
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/4 p1, 0x0

    .line 58
    cmpl-float p2, p2, p1

    .line 59
    .line 60
    if-lez p2, :cond_0

    .line 61
    .line 62
    const/high16 p1, 0x3f800000    # 1.0f

    .line 63
    .line 64
    :cond_0
    invoke-interface {p0, p1}, Landroid/media/tv/ITvInputSession;->setVolume(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception p0

    .line 71
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 72
    .line 73
    const-string p2, "error in setVolume"

    .line 74
    .line 75
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final startRecording(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "startRecording"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ITvInputSession;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in startRecording"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final stopPlayback(Landroid/os/IBinder;II)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "stopPlayback"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->stopPlayback(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in stopPlayback(mode)"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final stopRecording(Landroid/os/IBinder;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "stopRecording"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/media/tv/ITvInputSession;->stopRecording()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in stopRecording"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "timeShiftEnablePositionTracking"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->timeShiftEnablePositionTracking(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in timeShiftEnablePositionTracking"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final timeShiftPause(Landroid/os/IBinder;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "timeShiftPause"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/media/tv/ITvInputSession;->timeShiftPause()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in timeShiftPause"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "timeShiftPlay"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->timeShiftPlay(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in timeShiftPlay"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final timeShiftResume(Landroid/os/IBinder;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "timeShiftResume"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/media/tv/ITvInputSession;->timeShiftResume()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in timeShiftResume"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final timeShiftSeekTo(Landroid/os/IBinder;JI)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "timeShiftSeekTo"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ITvInputSession;->timeShiftSeekTo(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in timeShiftSeekTo"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final timeShiftSetMode(Landroid/os/IBinder;II)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "timeShiftSetMode"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->timeShiftSetMode(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in timeShiftSetMode"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "timeShiftSetPlaybackParams"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 41
    .line 42
    const-string p2, "error in timeShiftSetPlaybackParams"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 10
    .line 11
    const-string/jumbo v3, "tune"

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v1, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v4, p2, p3}, Landroid/media/tv/ITvInputSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 37
    .line 38
    invoke-virtual {v4, p4}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-boolean v4, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    .line 57
    .line 58
    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :goto_0
    iput-boolean v5, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    .line 71
    .line 72
    iput-object p2, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    .line 73
    .line 74
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 75
    .line 76
    invoke-virtual {v4, p4}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 77
    .line 78
    .line 79
    iget-boolean v4, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    .line 80
    .line 81
    if-nez v4, :cond_2

    .line 82
    .line 83
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 84
    .line 85
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionActualInputId(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 90
    .line 91
    iget-object v6, v6, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_1

    .line 98
    .line 99
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 100
    .line 101
    invoke-virtual {v6, v5, v4, v0}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 105
    .line 106
    iput-object v4, v6, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v0, v6, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 109
    .line 110
    :cond_2
    invoke-static {p2}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z

    .line 111
    .line 112
    .line 113
    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    if-eqz v4, :cond_3

    .line 115
    .line 116
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_3
    :try_start_3
    iget-boolean v4, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    .line 123
    if-eqz v4, :cond_4

    .line 124
    .line 125
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_4
    :try_start_5
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 131
    .line 132
    invoke-static {v0, p4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 133
    .line 134
    .line 135
    move-result-object p4

    .line 136
    const/4 v6, 0x5

    .line 137
    invoke-static {v4, v6, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 141
    .line 142
    .line 143
    move-result-object p4

    .line 144
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide v6

    .line 156
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iput-object v0, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v6

    .line 166
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    iput-object p2, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 171
    .line 172
    iput-object p3, p4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 175
    .line 176
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    .line 179
    .line 180
    invoke-virtual {p0, v5, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :goto_1
    :try_start_6
    const-string p1, "TvInputManagerService"

    .line 189
    .line 190
    const-string p2, "error in tune"

    .line 191
    .line 192
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .line 194
    .line 195
    :goto_2
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 196
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :goto_3
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 201
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 202
    :catchall_1
    move-exception p0

    .line 203
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    .line 205
    .line 206
    throw p0
.end method

.method public final unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string/jumbo v3, "unblockContent"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 31
    .line 32
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputSession;->unblockContent(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 44
    .line 45
    const-string p2, "error in unblockContent"

    .line 46
    .line 47
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "unregisterCallback"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackPidUidMap:Ljava/util/Map;

    .line 39
    .line 40
    check-cast p0, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public final updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p1, "calling package "

    .line 33
    .line 34
    const-string p2, " is not allowed to change TvInputInfo for "

    .line 35
    .line 36
    invoke-static {p1, v1, p2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const-string/jumbo v3, "updateTvInputInfo"

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 71
    .line 72
    invoke-virtual {v3, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 77
    .line 78
    invoke-static {p0, p2, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mupdateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V

    .line 79
    .line 80
    .line 81
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method
