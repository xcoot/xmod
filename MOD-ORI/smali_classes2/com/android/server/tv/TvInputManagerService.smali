.class public final Lcom/android/server/tv/TvInputManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sAdapterDirPattern:Ljava/util/regex/Pattern;

.field public static final sFrontEndDevicePattern:Ljava/util/regex/Pattern;

.field public static final sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mExternalInputLoggingDeviceBrandNames:Ljava/util/List;

.field public final mExternalInputLoggingDeviceOnScreenDisplayNames:Ljava/util/HashSet;

.field public final mExternalInputLoggingDisplayNameFilterEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

.field public mOnScreenInputId:Ljava/lang/String;

.field public mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

.field public final mRunningProfiles:Ljava/util/Set;

.field public final mSessionIdToSessionStateMap:Ljava/util/Map;

.field public final mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object p3, p3, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast p3, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 14
    .line 15
    invoke-interface {p2}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionCallback;

    .line 24
    .line 25
    invoke-direct {v2, p0, p3, p2}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    :try_start_0
    iget-boolean v0, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {p1, v2, v0, v1}, Landroid/media/tv/ITvInputService;->createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    aget-object v1, p2, p0

    .line 44
    .line 45
    iget-object v3, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v4, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v5, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->tvAppAttributionSource:Landroid/content/AttributionSource;

    .line 50
    .line 51
    move-object v0, p1

    .line 52
    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :goto_0
    move p1, p0

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    const-string v0, "TvInputManagerService"

    .line 58
    .line 59
    const-string v1, "error in createSession"

    .line 60
    .line 61
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    iget-object p1, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 65
    .line 66
    iget-object v0, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 67
    .line 68
    iget p3, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-static {p1, v0, v1, v1, p3}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 72
    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    :goto_2
    aget-object p0, p2, p0

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 78
    .line 79
    .line 80
    return p1
.end method

.method public static -$$Nest$mgetSessionActualInputId(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string p0, "TvInputManagerService"

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "No TvInputState for sessionState.inputId "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    const-string p0, "TvInputManagerService"

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "TvInputInfo is null for input id "

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getType()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/16 v2, 0x3ef

    .line 67
    .line 68
    if-eq v0, v2, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v0

    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    .line 77
    .line 78
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Ljava/util/List;

    .line 98
    .line 99
    const/4 p1, 0x0

    .line 100
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Ljava/lang/String;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    :goto_0
    move-object p0, v1

    .line 108
    :goto_1
    return-object p0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw p0
.end method

.method public static -$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static -$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    if-eqz p3, :cond_2

    .line 6
    .line 7
    iget v0, p3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->uid:I

    .line 8
    .line 9
    iget-object v1, p3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_0
    iget v2, p3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->inputNumber:I

    .line 19
    .line 20
    iget-object p3, p3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    :cond_1
    move v8, p0

    .line 33
    move v6, v1

    .line 34
    move v7, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, -0x1

    .line 37
    move v6, p0

    .line 38
    move v7, v6

    .line 39
    move v8, v7

    .line 40
    :goto_0
    iget p0, p2, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    .line 41
    .line 42
    filled-new-array {p0, v0}, [I

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string/jumbo p0, "tif_player"

    .line 47
    .line 48
    .line 49
    const-string/jumbo p3, "tv_input_service"

    .line 50
    .line 51
    .line 52
    filled-new-array {p0, p3}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v5, p2, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    .line 57
    .line 58
    const/16 v1, 0x147

    .line 59
    .line 60
    move v4, p1

    .line 61
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;ILjava/lang/String;III)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static -$$Nest$mremoveHardwareInputLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v2

    .line 26
    :try_start_1
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/media/tv/TvInputInfo;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(ILandroid/content/ComponentName;)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    .line 48
    .line 49
    check-cast v0, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 62
    .line 63
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter p2

    .line 66
    :try_start_2
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-static {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-ltz v0, :cond_1

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-static {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ltz v0, :cond_2

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 96
    .line 97
    check-cast v0, Landroid/util/ArrayMap;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 106
    .line 107
    check-cast v0, Landroid/util/ArrayMap;

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/media/tv/TvInputInfo;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    .line 122
    .line 123
    check-cast v1, Landroid/util/ArrayMap;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_3

    .line 130
    .line 131
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    .line 132
    .line 133
    check-cast v1, Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Ljava/util/List;

    .line 140
    .line 141
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_3

    .line 149
    .line 150
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    .line 151
    .line 152
    check-cast v1, Landroid/util/ArrayMap;

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    :cond_3
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 158
    .line 159
    check-cast p0, Landroid/util/ArrayMap;

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_4
    monitor-exit p2

    .line 165
    goto :goto_2

    .line 166
    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    throw p0

    .line 168
    :cond_5
    :goto_2
    return-void

    .line 169
    :catchall_1
    move-exception p0

    .line 170
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    throw p0

    .line 172
    :catchall_2
    move-exception p0

    .line 173
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 174
    throw p0
.end method

.method public static -$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    move v0, p1

    .line 8
    move v1, p2

    .line 9
    move v2, p3

    .line 10
    move-object v5, p4

    .line 11
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static -$$Nest$msetStateLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object v0, p3, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p0, "failed to setStateLocked - unknown input id "

    .line 16
    .line 17
    const-string p2, "TvInputManagerService"

    .line 18
    .line 19
    invoke-static {p0, p1, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-object v1, p3, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 38
    .line 39
    iget v2, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    .line 40
    .line 41
    iput p2, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-boolean v0, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    if-eq v2, p2, :cond_5

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x3

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 64
    .line 65
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget-object v2, p3, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 v0, 0x0

    .line 87
    :goto_0
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 106
    .line 107
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 108
    .line 109
    .line 110
    const/4 v1, 0x1

    .line 111
    if-ne p2, v1, :cond_4

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 118
    .line 119
    :cond_4
    :goto_1
    invoke-static {p3, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_2
    return-void
.end method

.method public static -$$Nest$mupdateHardwareTvInputServiceBindingLocked(Lcom/android/server/tv/TvInputManagerService;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v2, "android.media.tv.TvInputService"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x84

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 35
    .line 36
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 37
    .line 38
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 39
    .line 40
    const-string v4, "android.permission.BIND_TV_INPUT"

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v3, Landroid/content/ComponentName;

    .line 50
    .line 51
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 54
    .line 55
    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v2, "android.permission.TV_INPUT_HARDWARE"

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_0

    .line 69
    .line 70
    invoke-virtual {p0, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(ILandroid/content/ComponentName;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    return-void
.end method

.method public static -$$Nest$mupdateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string p0, "TvInputManagerService"

    .line 19
    .line 20
    const-string p1, "failed to set input info - unknown input id "

    .line 21
    .line 22
    invoke-static {p1, v0, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_6

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 77
    .line 78
    if-nez v3, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_6

    .line 86
    .line 87
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_4

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 109
    .line 110
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_5

    .line 141
    .line 142
    if-eq v5, v0, :cond_6

    .line 143
    .line 144
    :cond_5
    const/4 v0, 0x1

    .line 145
    goto :goto_1

    .line 146
    :cond_6
    :goto_0
    move v0, v2

    .line 147
    :goto_1
    iput-object p2, v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 148
    .line 149
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getInputUid(Landroid/media/tv/TvInputInfo;)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    iput v3, v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;->uid:I

    .line 154
    .line 155
    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 156
    .line 157
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v1, Ljava/util/HashMap;

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 168
    .line 169
    if-eqz v1, :cond_8

    .line 170
    .line 171
    iget-boolean v3, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 172
    .line 173
    if-eqz v3, :cond_8

    .line 174
    .line 175
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    .line 176
    .line 177
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v1, Ljava/util/HashMap;

    .line 182
    .line 183
    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 187
    .line 188
    const-string/jumbo v3, "update inputInfo for input id "

    .line 189
    .line 190
    .line 191
    iget-object v4, v1, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 192
    .line 193
    monitor-enter v4

    .line 194
    :try_start_0
    iget-object v5, v1, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 195
    .line 196
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    check-cast v5, Landroid/util/ArrayMap;

    .line 201
    .line 202
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-nez v5, :cond_7

    .line 207
    .line 208
    monitor-exit v4

    .line 209
    goto :goto_3

    .line 210
    :catchall_0
    move-exception p0

    .line 211
    goto :goto_2

    .line 212
    :cond_7
    const-string v5, "TvInputHardwareManager"

    .line 213
    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 234
    .line 235
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    check-cast v1, Landroid/util/ArrayMap;

    .line 240
    .line 241
    invoke-virtual {v1, v3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    monitor-exit v4

    .line 245
    goto :goto_3

    .line 246
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    throw p0

    .line 248
    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    .line 249
    .line 250
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 251
    .line 252
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 253
    .line 254
    const/4 v3, 0x4

    .line 255
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 256
    .line 257
    .line 258
    :cond_9
    iget-object p0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 259
    .line 260
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    :goto_4
    if-ge v2, p0, :cond_a

    .line 265
    .line 266
    :try_start_1
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    .line 273
    .line 274
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :catch_0
    move-exception v0

    .line 279
    const-string v1, "TvInputManagerService"

    .line 280
    .line 281
    const-string v3, "failed to report updated input info to callback"

    .line 282
    .line 283
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .line 285
    .line 286
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_a
    iget-object p0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 290
    .line 291
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 292
    .line 293
    .line 294
    :goto_6
    return-void
.end method

.method public static -$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^dvb([0-9]+)\\.frontend([0-9]+)$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "^adapter([0-9]+)$"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "^frontend([0-9]+)$"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 18
    .line 19
    new-instance v2, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 25
    .line 26
    new-instance v2, Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 32
    .line 33
    new-instance v2, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDisplayNameFilterEnabled:Z

    .line 41
    .line 42
    new-instance v1, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceOnScreenDisplayNames:Ljava/util/HashSet;

    .line 48
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceBrandNames:Ljava/util/List;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    new-instance v3, Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/tv/TvInputManagerService$MessageHandler;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ContentResolver;Landroid/os/Looper;)V

    .line 73
    .line 74
    .line 75
    iput-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    .line 76
    .line 77
    new-instance v3, Lcom/android/server/tv/TvInputHardwareManager;

    .line 78
    .line 79
    new-instance v4, Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    .line 80
    .line 81
    invoke-direct {v4, p0}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, p1, v4}, Lcom/android/server/tv/TvInputHardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvInputManagerService$HardwareListener;)V

    .line 85
    .line 86
    .line 87
    iput-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const-string v4, "activity"

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Landroid/app/ActivityManager;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const-string/jumbo v4, "user"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Landroid/os/UserManager;

    .line 113
    .line 114
    iput-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    .line 115
    .line 116
    monitor-enter v0

    .line 117
    :try_start_0
    iget v3, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 118
    .line 119
    invoke-virtual {p0, v3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 120
    .line 121
    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const v3, 0x1110266

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iput-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDisplayNameFilterEnabled:Z

    .line 135
    .line 136
    if-nez v0, :cond_0

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    const v0, 0x1070176

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const v0, 0x1070175

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 173
    .line 174
    .line 175
    :goto_0
    return-void

    .line 176
    :catchall_0
    move-exception p0

    .line 177
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    throw p0
.end method

.method public static getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Session not yet created for token "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public static getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .locals 2

    .line 3
    iget-object p2, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    if-eqz p2, :cond_2

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    .line 4
    iget v0, p2, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal access to the session with token "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " from uid "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-object p2

    .line 6
    :cond_2
    new-instance p1, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Session state not found for token "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getVideoUnavailableReasonForStatsd(I)I
    .locals 2

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    add-int/2addr p0, v0

    .line 4
    if-lt p0, v0, :cond_1

    .line 5
    .line 6
    const/16 v1, 0x76

    .line 7
    .line 8
    if-le p0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, p0

    .line 12
    :cond_1
    :goto_0
    return v0
.end method

.method public static notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    .line 17
    .line 18
    invoke-interface {v2, p1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception v2

    .line 23
    const-string v3, "TvInputManagerService"

    .line 24
    .line 25
    const-string v4, "failed to report state change to callback"

    .line 26
    .line 27
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/media/tv/ITvInputClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    const-string p1, "TvInputManagerService"

    .line 7
    .line 8
    const-string p2, "error in onSessionCreated"

    .line 9
    .line 10
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method


# virtual methods
.method public final abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 11
    .line 12
    check-cast v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/os/IBinder;

    .line 29
    .line 30
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 31
    .line 32
    check-cast v4, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 39
    .line 40
    iget-object v4, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 41
    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    iget-object v4, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 73
    .line 74
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 75
    .line 76
    iget v2, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 77
    .line 78
    invoke-virtual {p0, v2, v1}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(ILandroid/os/IBinder;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 82
    .line 83
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 84
    .line 85
    iget v0, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-static {v1, v2, v3, v3, v0}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget-boolean p2, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 93
    .line 94
    if-nez p2, :cond_4

    .line 95
    .line 96
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    .line 97
    .line 98
    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(ILandroid/content/ComponentName;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    .line 103
    .line 104
    .line 105
    :goto_2
    return-void
.end method

.method public final bindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "android.media.tv.TvInputService"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    new-instance v2, Landroid/os/UserHandle;

    .line 29
    .line 30
    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 31
    .line 32
    .line 33
    const v3, 0x2000001

    .line 34
    .line 35
    .line 36
    iget-object v4, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

    .line 37
    .line 38
    invoke-virtual {v1, v0, v4, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput-boolean v0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "failed to bind "

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, " for userId "

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "TvInputManagerService"

    .line 71
    .line 72
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {p0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public final buildTvContentRatingSystemListLocked(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    .line 6
    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    const-string v1, "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x80

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 46
    .line 47
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 48
    .line 49
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 50
    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v2, "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "Missing meta-data \'android.media.tv.metadata.CONTENT_RATING_SYSTEMS\' on receiver "

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, "/"

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 80
    .line 81
    const-string v2, "TvInputManagerService"

    .line 82
    .line 83
    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    .line 88
    .line 89
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 90
    .line 91
    invoke-static {v1, v0}, Landroid/media/tv/TvContentRatingSystemInfo;->createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v2, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    return-void
.end method

.method public final buildTvInputListLocked(I[Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroid/content/Intent;

    .line 19
    .line 20
    const-string v3, "android.media.tv.TvInputService"

    .line 21
    .line 22
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 v3, 0x84

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const-string v5, "TvInputManagerService"

    .line 45
    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 53
    .line 54
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 55
    .line 56
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 57
    .line 58
    const-string v8, "android.permission.BIND_TV_INPUT"

    .line 59
    .line 60
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v7, :cond_0

    .line 65
    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v7, "Skipping TV input "

    .line 69
    .line 70
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 74
    .line 75
    const-string v7, ": it does not require the permission android.permission.BIND_TV_INPUT"

    .line 76
    .line 77
    invoke-static {v4, v6, v7, v5}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance v7, Landroid/content/ComponentName;

    .line 82
    .line 83
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 86
    .line 87
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v8, "android.permission.TV_INPUT_HARDWARE"

    .line 91
    .line 92
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-nez v8, :cond_2

    .line 101
    .line 102
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 103
    .line 104
    check-cast v4, Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 111
    .line 112
    if-nez v4, :cond_1

    .line 113
    .line 114
    new-instance v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 115
    .line 116
    invoke-direct {v4, p0, v7, p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    .line 117
    .line 118
    .line 119
    iget-object v5, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 120
    .line 121
    check-cast v5, Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(ILandroid/content/ComponentName;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    .line 131
    .line 132
    check-cast v4, Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    :try_start_0
    new-instance v7, Landroid/media/tv/TvInputInfo$Builder;

    .line 143
    .line 144
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    invoke-direct {v7, v8, v4}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    :goto_1
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    .line 157
    .line 158
    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 159
    .line 160
    check-cast v4, Ljava/util/HashSet;

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :catch_0
    move-exception v4

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v8, "failed to load TV input "

    .line 170
    .line 171
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_3
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$$ExternalSyntheticLambda0;

    .line 189
    .line 190
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    .line 199
    .line 200
    new-instance v1, Ljava/util/HashMap;

    .line 201
    .line 202
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 203
    .line 204
    .line 205
    new-instance v2, Landroid/util/ArrayMap;

    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    invoke-direct {v2, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    const/4 v6, 0x0

    .line 223
    if-eqz v4, :cond_6

    .line 224
    .line 225
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    check-cast v4, Landroid/media/tv/TvInputInfo;

    .line 230
    .line 231
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    check-cast v8, Ljava/lang/Integer;

    .line 240
    .line 241
    const/4 v9, 0x1

    .line 242
    if-nez v8, :cond_4

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    add-int/2addr v9, v8

    .line 250
    :goto_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    invoke-virtual {v2, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    iget-object v8, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 258
    .line 259
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    check-cast v8, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 264
    .line 265
    if-nez v8, :cond_5

    .line 266
    .line 267
    new-instance v8, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 268
    .line 269
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 270
    .line 271
    .line 272
    iput v6, v8, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    .line 273
    .line 274
    :cond_5
    iput-object v4, v8, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 275
    .line 276
    invoke-virtual {p0, v4}, Lcom/android/server/tv/TvInputManagerService;->getInputUid(Landroid/media/tv/TvInputInfo;)I

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    iput v4, v8, Lcom/android/server/tv/TvInputManagerService$TvInputState;->uid:I

    .line 281
    .line 282
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    iput v9, v8, Lcom/android/server/tv/TvInputManagerService$TvInputState;->inputNumber:I

    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_6
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_c

    .line 301
    .line 302
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    check-cast v3, Ljava/lang/String;

    .line 307
    .line 308
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 309
    .line 310
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-nez v4, :cond_9

    .line 315
    .line 316
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 317
    .line 318
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    move v7, v6

    .line 323
    :goto_5
    if-ge v7, v4, :cond_8

    .line 324
    .line 325
    :try_start_1
    iget-object v8, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 326
    .line 327
    invoke-virtual {v8, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    check-cast v8, Landroid/media/tv/ITvInputManagerCallback;

    .line 332
    .line 333
    invoke-interface {v8, v3}, Landroid/media/tv/ITvInputManagerCallback;->onInputAdded(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 334
    .line 335
    .line 336
    goto :goto_6

    .line 337
    :catch_1
    move-exception v8

    .line 338
    const-string v9, "failed to report added input to callback"

    .line 339
    .line 340
    invoke-static {v5, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .line 342
    .line 343
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_8
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 347
    .line 348
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 349
    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_9
    if-eqz p2, :cond_7

    .line 353
    .line 354
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    check-cast v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 359
    .line 360
    iget-object v4, v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 361
    .line 362
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    array-length v7, p2

    .line 367
    move v8, v6

    .line 368
    :goto_7
    if-ge v8, v7, :cond_7

    .line 369
    .line 370
    aget-object v9, p2, v8

    .line 371
    .line 372
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v10

    .line 376
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v9

    .line 380
    if-eqz v9, :cond_b

    .line 381
    .line 382
    invoke-virtual {p0, p1, v4}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(ILandroid/content/ComponentName;)V

    .line 383
    .line 384
    .line 385
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 386
    .line 387
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    move v7, v6

    .line 392
    :goto_8
    if-ge v7, v4, :cond_a

    .line 393
    .line 394
    :try_start_2
    iget-object v8, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 395
    .line 396
    invoke-virtual {v8, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 397
    .line 398
    .line 399
    move-result-object v8

    .line 400
    check-cast v8, Landroid/media/tv/ITvInputManagerCallback;

    .line 401
    .line 402
    invoke-interface {v8, v3}, Landroid/media/tv/ITvInputManagerCallback;->onInputUpdated(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 403
    .line 404
    .line 405
    goto :goto_9

    .line 406
    :catch_2
    move-exception v8

    .line 407
    const-string v9, "failed to report updated input to callback"

    .line 408
    .line 409
    invoke-static {v5, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    .line 411
    .line 412
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 413
    .line 414
    goto :goto_8

    .line 415
    :cond_a
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 416
    .line 417
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 418
    .line 419
    .line 420
    goto :goto_4

    .line 421
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 422
    .line 423
    goto :goto_7

    .line 424
    :cond_c
    iget-object p2, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 425
    .line 426
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 427
    .line 428
    .line 429
    move-result-object p2

    .line 430
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    :cond_d
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-eqz v2, :cond_10

    .line 439
    .line 440
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    check-cast v2, Ljava/lang/String;

    .line 445
    .line 446
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    if-nez v3, :cond_d

    .line 451
    .line 452
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 453
    .line 454
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 459
    .line 460
    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 461
    .line 462
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 463
    .line 464
    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    check-cast v4, Ljava/util/HashMap;

    .line 469
    .line 470
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 475
    .line 476
    if-eqz v3, :cond_e

    .line 477
    .line 478
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    .line 479
    .line 480
    .line 481
    :cond_e
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 482
    .line 483
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    move v4, v6

    .line 488
    :goto_b
    if-ge v4, v3, :cond_f

    .line 489
    .line 490
    :try_start_3
    iget-object v7, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 491
    .line 492
    invoke-virtual {v7, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 493
    .line 494
    .line 495
    move-result-object v7

    .line 496
    check-cast v7, Landroid/media/tv/ITvInputManagerCallback;

    .line 497
    .line 498
    invoke-interface {v7, v2}, Landroid/media/tv/ITvInputManagerCallback;->onInputRemoved(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 499
    .line 500
    .line 501
    goto :goto_c

    .line 502
    :catch_3
    move-exception v7

    .line 503
    const-string v8, "failed to report removed input to callback"

    .line 504
    .line 505
    invoke-static {v5, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    .line 507
    .line 508
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 509
    .line 510
    goto :goto_b

    .line 511
    :cond_f
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 512
    .line 513
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 514
    .line 515
    .line 516
    goto :goto_a

    .line 517
    :cond_10
    iget-object p0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 518
    .line 519
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 520
    .line 521
    .line 522
    iput-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 523
    .line 524
    return-void
.end method

.method public final clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 2
    .line 3
    const-string v1, "error in onSessionReleased"

    .line 4
    .line 5
    const-string v2, "TvInputManagerService"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget v3, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 10
    .line 11
    invoke-interface {v0, v3}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    iget v0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 26
    .line 27
    check-cast v0, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 48
    .line 49
    iget-object v4, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 50
    .line 51
    iget-object v5, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    .line 52
    .line 53
    if-ne v4, v5, :cond_1

    .line 54
    .line 55
    iget-object v4, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 56
    .line 57
    iget v5, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 58
    .line 59
    const/16 v6, 0x3e8

    .line 60
    .line 61
    invoke-virtual {p0, v6, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 62
    .line 63
    .line 64
    :try_start_1
    iget-object v4, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 65
    .line 66
    iget v3, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 67
    .line 68
    invoke-interface {v4, v3}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_1
    move-exception v3

    .line 73
    invoke-static {v2, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 78
    .line 79
    iget p1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 80
    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(ILandroid/os/IBinder;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v5, "com.android.providers.tv.permission.ACCESS_WATCHED_PROGRAMS"

    .line 15
    .line 16
    move/from16 v6, p2

    .line 17
    .line 18
    invoke-virtual {v4, v5, v6, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x1

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    move v4, v6

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v4, v5

    .line 29
    :goto_0
    iget-object v7, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 30
    .line 31
    check-cast v7, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-eqz v8, :cond_6

    .line 46
    .line 47
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    check-cast v8, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 52
    .line 53
    iget-boolean v9, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    .line 54
    .line 55
    if-eqz v9, :cond_1

    .line 56
    .line 57
    iget v9, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    .line 58
    .line 59
    if-ne v9, v2, :cond_2

    .line 60
    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    move/from16 v16, v6

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_2
    iget-object v10, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->mAppTagMap:Ljava/util/Map;

    .line 69
    .line 70
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    check-cast v10, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    check-cast v9, Ljava/lang/Integer;

    .line 81
    .line 82
    if-nez v9, :cond_3

    .line 83
    .line 84
    iget v9, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->mNextAppTag:I

    .line 85
    .line 86
    add-int/lit8 v10, v9, 0x1

    .line 87
    .line 88
    iput v10, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->mNextAppTag:I

    .line 89
    .line 90
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    iget-object v10, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->mAppTagMap:Ljava/util/Map;

    .line 95
    .line 96
    iget v11, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    .line 97
    .line 98
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    check-cast v10, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object v10, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    .line 108
    .line 109
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    :try_start_0
    iget-object v11, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    invoke-virtual {v11, v10, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    and-int/2addr v10, v6

    .line 126
    if-eqz v10, :cond_4

    .line 127
    .line 128
    const/4 v10, 0x2

    .line 129
    goto :goto_2

    .line 130
    :catch_0
    :cond_4
    const/4 v10, 0x3

    .line 131
    :goto_2
    move/from16 v16, v10

    .line 132
    .line 133
    :goto_3
    new-instance v15, Landroid/media/tv/TunedInfo;

    .line 134
    .line 135
    iget-object v11, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v4, :cond_5

    .line 138
    .line 139
    iget-object v10, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    .line 140
    .line 141
    :goto_4
    move-object v12, v10

    .line 142
    goto :goto_5

    .line 143
    :cond_5
    const/4 v10, 0x0

    .line 144
    goto :goto_4

    .line 145
    :goto_5
    iget-boolean v13, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    .line 146
    .line 147
    iget-boolean v14, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->isVisible:Z

    .line 148
    .line 149
    iget-boolean v8, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->isMainSession:Z

    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v17

    .line 155
    move-object v10, v15

    .line 156
    move-object v9, v15

    .line 157
    move v15, v8

    .line 158
    invoke-direct/range {v10 .. v17}, Landroid/media/tv/TunedInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;ZZZII)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    return-object v3
.end method

.method public final getInputUid(Landroid/media/tv/TvInputInfo;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "Unable to get UID for  "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "TvInputManagerService"

    .line 39
    .line 40
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v0
.end method

.method public final getServiceStateLocked(ILandroid/content/ComponentName;)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Service state not found for "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p2, " (userId="

    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, ")"

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p0

    .line 2
    invoke-static {p2, p1, p0}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public final getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 8
    .line 9
    return-object p0
.end method

.method public final logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .locals 11

    .line 1
    iget v0, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 14
    .line 15
    const-string v2, "TvInputManagerService"

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "Cannot find input state for input id "

    .line 20
    .line 21
    invoke-static {v1, p2, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v1, v0

    .line 33
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 34
    .line 35
    :cond_0
    if-nez v1, :cond_1

    .line 36
    .line 37
    const-string p0, "Cannot find input state for sessionState.inputId "

    .line 38
    .line 39
    invoke-static {p0, p2, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    const-string p0, "TvInputInfo is null for input id "

    .line 48
    .line 49
    invoke-static {p0, p2, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget v5, v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getType()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputInfo;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iget-object v9, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getType()I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    const/16 v1, 0x3ef

    .line 76
    .line 77
    const v2, 0xffffff

    .line 78
    .line 79
    .line 80
    if-ne p3, v1, :cond_9

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    if-eqz p3, :cond_9

    .line 87
    .line 88
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_8

    .line 97
    .line 98
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDisplayNameFilterEnabled:Z

    .line 103
    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    if-nez p2, :cond_3

    .line 107
    .line 108
    const-string p2, "NULL_DISPLAY_NAME"

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceOnScreenDisplayNames:Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_4

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceBrandNames:Ljava/util/List;

    .line 121
    .line 122
    check-cast p0, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    move-object p2, v1

    .line 155
    goto :goto_0

    .line 156
    :cond_6
    const-string p2, "FILTERED_DISPLAY_NAME"

    .line 157
    .line 158
    :cond_7
    :goto_0
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    move v7, p0

    .line 163
    move-object v10, p2

    .line 164
    move v8, v0

    .line 165
    goto :goto_2

    .line 166
    :cond_8
    move-object v10, p2

    .line 167
    move v8, v0

    .line 168
    :goto_1
    move v7, v2

    .line 169
    goto :goto_2

    .line 170
    :cond_9
    const/4 p0, -0x1

    .line 171
    move v8, p0

    .line 172
    move-object v10, p2

    .line 173
    goto :goto_1

    .line 174
    :goto_2
    const/16 v3, 0x2cd

    .line 175
    .line 176
    move v4, p1

    .line 177
    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget-object v2, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    .line 17
    .line 18
    iget-object v3, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackPidUidMap:Ljava/util/Map;

    .line 19
    .line 20
    check-cast v3, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/util/Pair;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-string v5, "android.permission.ACCESS_TUNED_INFO"

    .line 31
    .line 32
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v6, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v7, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v3, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/tv/TvInputManagerService;->getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v2, v3}, Landroid/media/tv/ITvInputManagerCallback;->onCurrentTunedInfosUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception v2

    .line 80
    const-string v3, "TvInputManagerService"

    .line 81
    .line 82
    const-string v4, "failed to report updated current channel infos to callback"

    .line 83
    .line 84
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object p0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x1f4

    .line 3
    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$1;

    .line 7
    .line 8
    invoke-direct {v2, p0}, Lcom/android/server/tv/TvInputManagerService$1;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-virtual {v2, v3, v0, v6, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 17
    .line 18
    .line 19
    new-instance v7, Landroid/content/IntentFilter;

    .line 20
    .line 21
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 25
    .line 26
    const-string v2, "android.intent.action.USER_REMOVED"

    .line 27
    .line 28
    const-string v3, "android.intent.action.USER_STARTED"

    .line 29
    .line 30
    const-string v4, "android.intent.action.USER_STOPPED"

    .line 31
    .line 32
    invoke-static {v7, v0, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v5, Lcom/android/server/tv/TvInputManagerService$2;

    .line 38
    .line 39
    invoke-direct {v5, p0}, Lcom/android/server/tv/TvInputManagerService$2;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    .line 40
    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/16 v2, 0x258

    .line 49
    .line 50
    if-ne p1, v2, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v2

    .line 55
    :try_start_0
    iget v3, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 56
    .line 57
    invoke-virtual {p0, v3, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 63
    .line 64
    .line 65
    monitor-exit v2

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0

    .line 70
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    if-ne p1, v1, :cond_3

    .line 76
    .line 77
    const-string p1, "hdmi_control"

    .line 78
    .line 79
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;

    .line 90
    .line 91
    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;

    .line 95
    .line 96
    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;

    .line 100
    .line 101
    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 105
    .line 106
    monitor-enter v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :try_start_2
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlService;->getInputDevices()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast v1, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    .line 117
    .line 118
    monitor-exit v0

    .line 119
    goto :goto_1

    .line 120
    :catchall_1
    move-exception p1

    .line 121
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    :try_start_3
    throw p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 123
    :catch_0
    move-exception p1

    .line 124
    const-string v0, "TvInputHardwareManager"

    .line 125
    .line 126
    const-string v1, "Error registering listeners to HdmiControlService:"

    .line 127
    .line 128
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    const-string p1, "TvInputHardwareManager"

    .line 133
    .line 134
    const-string v0, "HdmiControlService is not available"

    .line 135
    .line 136
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :goto_1
    const-string p1, "android.media.VOLUME_CHANGED_ACTION"

    .line 140
    .line 141
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 142
    .line 143
    invoke-static {p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Lcom/android/server/tv/TvInputHardwareManager$1;

    .line 150
    .line 151
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 155
    .line 156
    const/4 v0, 0x3

    .line 157
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    .line 162
    .line 163
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 170
    .line 171
    :cond_3
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$BinderService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "tv_input"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eq v1, p1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final releaseSessionLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 3
    .line 4
    .line 5
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    .line 16
    .line 17
    if-ne p2, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(IILandroid/os/IBinder;Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_4

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :goto_0
    iget-object p1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 28
    .line 29
    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 34
    .line 35
    .line 36
    iget-object p1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 37
    .line 38
    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->release()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iput-object v0, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    .line 42
    .line 43
    iget-boolean p1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iput-boolean v4, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    iput-object v0, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    move-object v1, v0

    .line 57
    goto :goto_4

    .line 58
    :catch_1
    move-exception p1

    .line 59
    move-object v1, v0

    .line 60
    :goto_2
    :try_start_2
    const-string v2, "TvInputManagerService"

    .line 61
    .line 62
    const-string v3, "error in releaseSession"

    .line 63
    .line 64
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 71
    .line 72
    if-ne p1, v1, :cond_4

    .line 73
    .line 74
    const/4 p1, 0x2

    .line 75
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 83
    .line 84
    :cond_4
    invoke-virtual {p0, p3, p2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(ILandroid/os/IBinder;)V

    .line 85
    .line 86
    .line 87
    return-object v1

    .line 88
    :goto_4
    if-eqz v1, :cond_5

    .line 89
    .line 90
    iput-object v0, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 91
    .line 92
    :cond_5
    throw p0
.end method

.method public final releaseSessionOfUserLocked(I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 14
    .line 15
    check-cast v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 36
    .line 37
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    iget-boolean v3, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v1, 0x0

    .line 54
    move v2, v1

    .line 55
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_6

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 66
    .line 67
    :try_start_0
    iget-object v4, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 68
    .line 69
    invoke-interface {v4}, Landroid/media/tv/ITvInputSession;->release()V

    .line 70
    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    iput-object v4, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    .line 74
    .line 75
    iget-boolean v4, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    .line 76
    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    iput-boolean v1, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    :cond_3
    if-eqz v2, :cond_4

    .line 83
    .line 84
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_4

    .line 90
    :catch_0
    move-exception v4

    .line 91
    :try_start_1
    const-string v5, "TvInputManagerService"

    .line 92
    .line 93
    const-string v6, "error in release"

    .line 94
    .line 95
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :goto_4
    if-eqz v2, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    throw v0

    .line 111
    :cond_6
    return-void
.end method

.method public final removeSessionStateLocked(ILandroid/os/IBinder;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    .line 6
    .line 7
    if-ne p2, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    .line 11
    .line 12
    :cond_0
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 13
    .line 14
    check-cast v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string p0, "TvInputManagerService"

    .line 25
    .line 26
    const-string/jumbo p1, "sessionState null, no more remove session action!"

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    .line 34
    .line 35
    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 36
    .line 37
    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v2, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    .line 52
    .line 53
    check-cast v3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    .line 59
    .line 60
    check-cast v3, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    .line 69
    .line 70
    iget-object v4, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 71
    .line 72
    invoke-interface {v4}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v3, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 82
    .line 83
    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const/4 v4, 0x0

    .line 88
    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    .line 92
    .line 93
    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    .line 94
    .line 95
    check-cast v2, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 101
    .line 102
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    .line 103
    .line 104
    check-cast v0, Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 115
    .line 116
    check-cast v2, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_3
    iget-boolean v0, v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 122
    .line 123
    if-nez v0, :cond_4

    .line 124
    .line 125
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    .line 126
    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(ILandroid/content/ComponentName;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    .line 132
    .line 133
    .line 134
    :goto_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 139
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    iput-object p2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    .line 151
    .line 152
    const/4 p2, 0x2

    .line 153
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final setMainLocked(IILandroid/os/IBinder;Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p3, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    const/16 p1, 0x3e8

    .line 10
    .line 11
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object p3, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    .line 19
    .line 20
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(ILandroid/content/ComponentName;)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    iget-boolean p3, p3, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 25
    .line 26
    if-nez p3, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-interface {p3, p4}, Landroid/media/tv/ITvInputSession;->setMain(Z)V

    .line 34
    .line 35
    .line 36
    iget-boolean p3, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->isMainSession:Z

    .line 37
    .line 38
    if-eq p3, p4, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-boolean p4, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->isMainSession:Z

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :goto_1
    const-string p1, "TvInputManagerService"

    .line 51
    .line 52
    const-string p2, "error in setMain"

    .line 53
    .line 54
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_2
    return-void
.end method

.method public final switchUser(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 5
    .line 6
    if-ne v1, p1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-string p0, "TvInputManagerService"

    .line 26
    .line 27
    const-string p1, "cannot switch to a profile!"

    .line 28
    .line 29
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 35
    .line 36
    check-cast v1, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 66
    .line 67
    check-cast v1, Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 70
    .line 71
    .line 72
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    .line 75
    .line 76
    .line 77
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    .line 80
    .line 81
    .line 82
    iput p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    .line 92
    .line 93
    new-instance v2, Landroid/os/UserHandle;

    .line 94
    .line 95
    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :try_start_1
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    const-string v3, "android"

    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    invoke-virtual {p1, v3, v4, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    goto :goto_1

    .line 108
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v3, "failed to create package context as user "

    .line 111
    .line 112
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string v2, "TvInputManagerService"

    .line 123
    .line 124
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const/4 p1, 0x3

    .line 134
    invoke-virtual {v1, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    .line 140
    .line 141
    monitor-exit v0

    .line 142
    return-void

    .line 143
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    throw p0
.end method

.method public final unbindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    iput-boolean p0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    iput-object p0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 18
    .line 19
    iput-object p0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    .line 20
    .line 21
    return-void
.end method

.method public final unbindServiceOfUserLocked(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 9
    .line 10
    check-cast v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/content/ComponentName;

    .line 31
    .line 32
    iget-object v2, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 33
    .line 34
    check-cast v2, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 45
    .line 46
    check-cast v2, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    :try_start_0
    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 59
    .line 60
    invoke-interface {v3, v2}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v2

    .line 65
    const-string v3, "TvInputManagerService"

    .line 66
    .line 67
    const-string v4, "error in unregisterCallback"

    .line 68
    .line 69
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->unbindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-void
.end method

.method public final updateHardwareServiceConnectionDelayed(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-wide/16 v0, 0x2710

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final updateServiceConnectionLocked(ILandroid/content/ComponentName;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-boolean v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 24
    .line 25
    check-cast v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iput-boolean v3, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    .line 35
    .line 36
    :cond_2
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    iget-boolean v5, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 40
    .line 41
    if-eq p1, v2, :cond_4

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v2, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 59
    .line 60
    check-cast v2, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    xor-int/2addr v2, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    :goto_0
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 69
    .line 70
    check-cast v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    if-eqz v5, :cond_6

    .line 79
    .line 80
    iget-boolean v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->neverConnected:Z

    .line 81
    .line 82
    if-eqz v2, :cond_6

    .line 83
    .line 84
    :cond_5
    move v3, v4

    .line 85
    :cond_6
    move v2, v3

    .line 86
    :goto_1
    if-eqz v2, :cond_7

    .line 87
    .line 88
    iget-boolean v3, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    .line 89
    .line 90
    if-nez v3, :cond_7

    .line 91
    .line 92
    invoke-virtual {p0, v1, p1}, Lcom/android/server/tv/TvInputManagerService;->bindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_7
    if-nez v2, :cond_8

    .line 97
    .line 98
    iget-boolean p1, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    .line 99
    .line 100
    if-eqz p1, :cond_8

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->unbindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;)V

    .line 103
    .line 104
    .line 105
    if-nez v5, :cond_8

    .line 106
    .line 107
    iget-object p0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 108
    .line 109
    check-cast p0, Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_8
    :goto_2
    return-void
.end method
