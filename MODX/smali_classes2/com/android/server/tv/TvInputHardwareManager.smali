.class public final Lcom/android/server/tv/TvInputHardwareManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/tv/TvInputHal$Callback;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mConnections:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public mCurrentIndex:I

.field public mCurrentMaxIndex:I

.field public final mHal:Lcom/android/server/tv/TvInputHal;

.field public final mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

.field public final mHardwareInputIdMap:Landroid/util/SparseArray;

.field public final mHardwareList:Ljava/util/List;

.field public final mHdmiDeviceEventListener:Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;

.field public final mHdmiDeviceList:Ljava/util/List;

.field public final mHdmiHotplugEventListener:Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;

.field public final mHdmiInputIdMap:Landroid/util/SparseArray;

.field public final mHdmiParentInputMap:Ljava/util/Map;

.field public final mHdmiStateMap:Landroid/util/SparseBooleanArray;

.field public final mHdmiSystemAudioModeChangeListener:Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;

.field public final mInputMap:Ljava/util/Map;

.field public final mListener:Lcom/android/server/tv/TvInputManagerService$HardwareListener;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingHdmiDeviceEvents:Ljava/util/List;

.field public final mPendingTvinputInfoEvents:Ljava/util/List;

.field public final mVolumeReceiver:Lcom/android/server/tv/TvInputHardwareManager$1;


# direct methods
.method public static -$$Nest$smintArrayContains(I[I)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    if-ne v3, p0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    :goto_1
    return v1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/tv/TvInputManagerService$HardwareListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/tv/TvInputHal;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHal;-><init>(Lcom/android/server/tv/TvInputHal$Callback;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v1, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    .line 31
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 38
    .line 39
    new-instance v1, Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 45
    .line 46
    new-instance v1, Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 52
    .line 53
    new-instance v1, Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 59
    .line 60
    new-instance v1, Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    .line 66
    .line 67
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;

    .line 73
    .line 74
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;

    .line 80
    .line 81
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;

    .line 87
    .line 88
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$1;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Lcom/android/server/tv/TvInputHardwareManager$1;

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    iput v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 97
    .line 98
    iput v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    .line 99
    .line 100
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 101
    .line 102
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 106
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    .line 113
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingTvinputInfoEvents:Ljava/util/List;

    .line 120
    .line 121
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    .line 124
    .line 125
    .line 126
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 127
    .line 128
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    .line 131
    .line 132
    const-string p2, "audio"

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/media/AudioManager;

    .line 139
    .line 140
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHal;->init()V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public static indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, -0x1

    .line 23
    return p0
.end method


# virtual methods
.method public final acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;IILjava/lang/String;I)Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    const-string v2, "Acquiring does not show higher priority than the current holder. Device id:"

    .line 4
    .line 5
    const-string v3, "Invalid deviceId : "

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string/jumbo v5, "tv_tuner_resource_mgr"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 20
    .line 21
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v5

    .line 24
    :try_start_0
    iget-object v6, v0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    if-nez v6, :cond_0

    .line 34
    .line 35
    const-string v0, "TvInputHardwareManager"

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    monitor-exit v5

    .line 53
    return-object v7

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v13, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 57
    .line 58
    invoke-direct {v13}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>()V

    .line 59
    .line 60
    .line 61
    move-object/from16 v3, p6

    .line 62
    .line 63
    iput-object v3, v13, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 64
    .line 65
    move/from16 v3, p7

    .line 66
    .line 67
    iput v3, v13, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 68
    .line 69
    iget-object v3, v6, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResourceClientProfile:Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    invoke-virtual {v4, v13, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_1

    .line 80
    .line 81
    const-string v0, "TvInputHardwareManager"

    .line 82
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    monitor-exit v5

    .line 99
    return-object v7

    .line 100
    :cond_1
    new-instance v8, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 101
    .line 102
    iget-object v1, v6, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 103
    .line 104
    invoke-direct {v8, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    :try_start_1
    invoke-interface/range {p2 .. p2}, Landroid/media/tv/ITvInputHardwareCallback;->asBinder()Landroid/os/IBinder;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const/4 v1, 0x0

    .line 112
    invoke-interface {v0, v6, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    :try_start_2
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    move-object v7, v6

    .line 124
    move-object/from16 v9, p2

    .line 125
    .line 126
    move-object/from16 v10, p3

    .line 127
    .line 128
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, v6, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 132
    .line 133
    monitor-exit v5

    .line 134
    return-object v0

    .line 135
    :catch_0
    invoke-virtual {v8}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V

    .line 136
    .line 137
    .line 138
    monitor-exit v5

    .line 139
    return-object v7

    .line 140
    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    throw v0
.end method

.method public final addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 6

    .line 1
    const-string v0, "Trying to override previous registration: old = "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string v3, "TvInputHardwareManager"

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 24
    .line 25
    check-cast v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ":"

    .line 35
    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", new = "

    .line 43
    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ":"

    .line 51
    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v0, Landroid/util/ArrayMap;

    .line 85
    .line 86
    invoke-virtual {v0, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingTvinputInfoEvents:Ljava/util/List;

    .line 90
    .line 91
    check-cast v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Landroid/os/Message;

    .line 108
    .line 109
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 110
    .line 111
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v3, :cond_1

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    const-string v0, "TvInputHardwareManager"

    .line 129
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v3, "deviceId ="

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v3, ", tvinputinfo = "

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    const/4 v0, 0x0

    .line 159
    move v2, v0

    .line 160
    :goto_2
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 161
    .line 162
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    const/4 v4, 0x1

    .line 167
    if-ge v2, v3, :cond_5

    .line 168
    .line 169
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 170
    .line 171
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    invoke-virtual {p0, v3}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    if-nez v3, :cond_3

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_3
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 183
    .line 184
    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Ljava/lang/String;

    .line 193
    .line 194
    if-eqz v3, :cond_4

    .line 195
    .line 196
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_4

    .line 205
    .line 206
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 207
    .line 208
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    xor-int/2addr p1, v4

    .line 213
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 214
    .line 215
    invoke-virtual {p0, v4, p1, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 220
    .line 221
    .line 222
    monitor-exit v1

    .line 223
    return-void

    .line 224
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_5
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 228
    .line 229
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 234
    .line 235
    if-eqz p1, :cond_6

    .line 236
    .line 237
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 238
    .line 239
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {p0, v4, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 252
    .line 253
    .line 254
    :cond_6
    monitor-exit v1

    .line 255
    return-void

    .line 256
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    throw p0
.end method

.method public final addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 6

    .line 1
    const-string v0, "Trying to override previous registration: old = "

    .line 2
    .line 3
    const-string v1, "info ("

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0x3ef

    .line 10
    .line 11
    if-ne v2, v3, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-static {v4, v3}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ltz v4, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const-string v4, "TvInputHardwareManager"

    .line 39
    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 46
    .line 47
    check-cast v0, Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ":"

    .line 57
    .line 58
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", new = "

    .line 65
    .line 66
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ":"

    .line 73
    .line 74
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast p1, Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-virtual {p1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    .line 111
    .line 112
    check-cast p1, Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_1

    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    .line 121
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    check-cast p1, Landroid/util/ArrayMap;

    .line 128
    .line 129
    invoke-virtual {p1, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :cond_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    .line 133
    .line 134
    check-cast p0, Landroid/util/ArrayMap;

    .line 135
    .line 136
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Ljava/util/List;

    .line 141
    .line 142
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    monitor-exit v2

    .line 150
    return-void

    .line 151
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 152
    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p2, ") has invalid parentId."

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    throw p0

    .line 176
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v0, "info ("

    .line 181
    .line 182
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p2, ") has non-HDMI type."

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p0
.end method

.method public final buildHardwareListLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 28
    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public final captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 4

    .line 1
    const-string v0, "Invalid inputId : "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    const-string p0, "TvInputHardwareManager"

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    monitor-exit v1

    .line 31
    return v3

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    .line 55
    .line 56
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->-$$Nest$mstartCapture(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$2;

    .line 63
    .line 64
    invoke-direct {v0, p1, p3}, Lcom/android/server/tv/TvInputHardwareManager$2;-><init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    .line 68
    .line 69
    :cond_2
    monitor-exit v1

    .line 70
    return p2

    .line 71
    :cond_3
    monitor-exit v1

    .line 72
    return v3

    .line 73
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final findDeviceIdForInputIdLocked(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    return v1

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p0, -0x1

    .line 45
    return p0
.end method

.method public final findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x9

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne v1, p1, :cond_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public final getAvailableTvStreamConfigList(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "Invalid inputId : "

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-gez v3, :cond_0

    .line 16
    .line 17
    const-string p0, "TvInputHardwareManager"

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    monitor-exit v2

    .line 35
    return-object v1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    .line 47
    .line 48
    array-length p1, p0

    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_0
    if-ge v0, p1, :cond_2

    .line 51
    .line 52
    aget-object v3, p0, v0

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/media/tv/TvStreamConfig;->getType()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x2

    .line 59
    if-ne v4, v5, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    monitor-exit v2

    .line 68
    return-object v1

    .line 69
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public final onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 5
    .line 6
    invoke-direct {v1, p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getCableConnectionStatus()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateCableConnectionStatusLocked(I)Z

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p2, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p2, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/16 p2, 0x9

    .line 46
    .line 47
    if-ne p1, p2, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    .line 50
    .line 51
    check-cast p1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/os/Message;

    .line 68
    .line 69
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    monitor-exit v0

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method

.method public final onDeviceUnavailable(I)V
    .locals 10

    .line 1
    const-string/jumbo v0, "onDeviceUnavailable: Cannot find a connection with "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string p0, "TvInputHardwareManager"

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v3, v2

    .line 45
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    .line 54
    .line 55
    .line 56
    iget-object p1, v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/16 v2, 0x9

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    if-ne v0, v2, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 68
    .line 69
    check-cast v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-ne v4, v5, :cond_1

    .line 96
    .line 97
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 98
    .line 99
    const/4 v5, 0x5

    .line 100
    invoke-virtual {v4, v5, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 112
    .line 113
    const/4 v0, 0x3

    .line 114
    invoke-virtual {p0, v0, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    .line 120
    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 123
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p0
.end method

.method public final onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;I)V
    .locals 6

    .line 1
    const-string v0, "StreamConfigurationChanged: Cannot find a connection with "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string p0, "TvInputHardwareManager"

    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLengthLocked()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iput-object p2, v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    invoke-virtual {v2, p3}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateCableConnectionStatusLocked(I)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/4 p3, 0x0

    .line 63
    const/4 v5, 0x1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eq v3, p1, :cond_5

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {p0, v5, p1, p3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    if-nez v0, :cond_2

    .line 87
    .line 88
    move p1, v5

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    move p1, p3

    .line 91
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLengthLocked()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    move v0, v5

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move v0, p3

    .line 100
    :goto_1
    if-eq p1, v0, :cond_5

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 103
    .line 104
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {p0, v5, p1, p3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 117
    .line 118
    const/4 v3, 0x7

    .line 119
    invoke-virtual {v0, v3, p1, p3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingTvinputInfoEvents:Ljava/util/List;

    .line 124
    .line 125
    new-instance v3, Lcom/android/server/tv/TvInputHardwareManager$$ExternalSyntheticLambda0;

    .line 126
    .line 127
    invoke-direct {v3, p1}, Lcom/android/server/tv/TvInputHardwareManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 128
    .line 129
    .line 130
    check-cast v0, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 133
    .line 134
    .line 135
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingTvinputInfoEvents:Ljava/util/List;

    .line 136
    .line 137
    check-cast p0, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_2
    iget-object p0, v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    if-eqz p0, :cond_6

    .line 145
    .line 146
    :try_start_1
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :catch_0
    move-exception p0

    .line 151
    :try_start_2
    const-string p1, "TvInputHardwareManager"

    .line 152
    .line 153
    const-string p2, "error in onStreamConfigurationChanged"

    .line 154
    .line 155
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .line 157
    .line 158
    :cond_6
    :goto_3
    monitor-exit v1

    .line 159
    return-void

    .line 160
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    throw p0
.end method

.method public final releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    .locals 9

    .line 1
    const-string v0, "Invalid deviceId : "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    move-object v2, p0

    .line 13
    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string p0, "TvInputHardwareManager"

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object p0, v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 39
    .line 40
    if-ne p0, p2, :cond_3

    .line 41
    .line 42
    iget-object p0, v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    .line 43
    .line 44
    iget-object p1, v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    .line 45
    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-ne p0, p3, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eq p0, p4, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p0, v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    .line 64
    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    invoke-interface {p0}, Landroid/media/tv/ITvInputHardwareCallback;->asBinder()Landroid/os/IBinder;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-interface {p0, v2, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 73
    .line 74
    .line 75
    :cond_2
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v3, 0x0

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x0

    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V

    .line 82
    .line 83
    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 86
    :cond_3
    :goto_0
    monitor-exit v1

    .line 87
    return-void

    .line 88
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

.method public final setTvMessageEnabled(ILjava/lang/String;Z)V
    .locals 8

    .line 1
    const-string v0, "Invalid inputId : "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-gez v2, :cond_0

    .line 11
    .line 12
    const-string p0, "TvInputHardwareManager"

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    .line 42
    .line 43
    array-length v0, p2

    .line 44
    const/4 v3, 0x1

    .line 45
    const/4 v4, 0x0

    .line 46
    move v6, v3

    .line 47
    move v5, v4

    .line 48
    :goto_0
    if-ge v5, v0, :cond_2

    .line 49
    .line 50
    aget-object v7, p2, v5

    .line 51
    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 55
    .line 56
    invoke-virtual {v6, v2, v7, p1, p3}, Lcom/android/server/tv/TvInputHal;->setTvMessageEnabled(ILandroid/media/tv/TvStreamConfig;IZ)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-nez v6, :cond_1

    .line 61
    .line 62
    move v6, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v6, v4

    .line 65
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    monitor-exit v1

    .line 69
    return-void

    .line 70
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method
