.class public final Lcom/android/server/StorageManagerService$Callbacks;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic $r8$classId:I

.field public final mCallbacks:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->$r8$classId:I

    .line 2
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/StorageManagerService$Callbacks;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private final handleMessage$com$android$server$StorageManagerService$ObbActionHandler(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lcom/android/server/StorageManagerService;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 32
    .line 33
    check-cast v3, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lcom/android/server/StorageManagerService$ObbState;

    .line 54
    .line 55
    iget-object v5, v4, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/android/server/StorageManagerService$ObbState;

    .line 84
    .line 85
    iget-object v3, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v3, Lcom/android/server/StorageManagerService;

    .line 88
    .line 89
    invoke-static {v3, v2}, Lcom/android/server/StorageManagerService;->-$$Nest$mremoveObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    :try_start_1
    iget-object v3, v2, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    .line 93
    .line 94
    iget-object v4, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 95
    .line 96
    iget v5, v2, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    .line 97
    .line 98
    invoke-interface {v3, v4, v5, v1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    :try_start_2
    const-string v3, "StorageManagerService"

    .line 103
    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v5, "Couldn\'t send unmount notification for  OBB: "

    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    monitor-exit v0

    .line 128
    goto :goto_3

    .line 129
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    throw p0

    .line 131
    :cond_4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p0, Lcom/android/server/StorageManagerService$ObbAction;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbAction;->handleExecute()V
    :try_end_3
    .catch Lcom/android/server/StorageManagerService$ObbException; {:try_start_3 .. :try_end_3} :catch_1

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :catch_1
    move-exception p1

    .line 143
    const-string v0, "StorageManagerService"

    .line 144
    .line 145
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .line 147
    .line 148
    iget p1, p1, Lcom/android/server/StorageManagerService$ObbException;->status:I

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(I)V

    .line 151
    .line 152
    .line 153
    :goto_3
    return-void
.end method

.method public static invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :pswitch_0
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Landroid/os/storage/DiskInfo;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_1
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Landroid/os/storage/DiskInfo;

    .line 16
    .line 17
    iget p2, p2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 18
    .line 19
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_2
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_3
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 34
    .line 35
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_4
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 42
    .line 43
    iget v0, p2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 44
    .line 45
    iget p2, p2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 46
    .line 47
    invoke-interface {p0, p1, v0, p2}, Landroid/os/storage/IStorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_5
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Ljava/lang/String;

    .line 54
    .line 55
    iget-object v0, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Ljava/lang/String;

    .line 58
    .line 59
    iget-object p2, p2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p2, Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {p0, p1, v0, p2}, Landroid/os/storage/IStorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x1

    .line 8
    iget v5, v0, Lcom/android/server/StorageManagerService$Callbacks;->$r8$classId:I

    .line 9
    .line 10
    packed-switch v5, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget v5, v1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/high16 v7, 0x5000000

    .line 17
    .line 18
    packed-switch v5, :pswitch_data_1

    .line 19
    .line 20
    .line 21
    goto/16 :goto_21

    .line 22
    .line 23
    :pswitch_0
    const-string v1, "StorageManagerService"

    .line 24
    .line 25
    const-string/jumbo v3, "handleMessage -> H_REMOUNT_VOLUMES_ON_MOVE"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    check-cast v1, Lcom/android/server/StorageManagerService;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v5

    .line 47
    :try_start_0
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 48
    .line 49
    array-length v6, v0

    .line 50
    :goto_0
    if-ge v2, v6, :cond_1

    .line 51
    .line 52
    aget v7, v0, v2

    .line 53
    .line 54
    iget v8, v1, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 55
    .line 56
    if-ne v7, v8, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :goto_1
    add-int/2addr v2, v4

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto :goto_4

    .line 70
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    const-string v0, "#onUserStopped might be slow"

    .line 72
    .line 73
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/Integer;

    .line 91
    .line 92
    :try_start_1
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-interface {v4, v5}, Landroid/os/IVold;->onUserStopped(I)V

    .line 99
    .line 100
    .line 101
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-interface {v4, v0}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v4, "StorageManagerService"

    .line 113
    .line 114
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_27

    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ljava/lang/Integer;

    .line 133
    .line 134
    :try_start_2
    iget-object v3, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-interface {v3, v4}, Landroid/os/IVold;->onUserStarted(I)V

    .line 141
    .line 142
    .line 143
    iget-object v3, v1, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-interface {v3, v0}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :catch_1
    move-exception v0

    .line 154
    const-string v3, "StorageManagerService"

    .line 155
    .line 156
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :goto_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    throw v0

    .line 162
    :pswitch_1
    const-string v2, "StorageManagerService"

    .line 163
    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string/jumbo v4, "handleMessage -> H_SECURE_KEYGUARD_STATE_CHANGED isShowing="

    .line 167
    .line 168
    .line 169
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v4, Ljava/lang/Boolean;

    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    :try_start_4
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 193
    .line 194
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 195
    .line 196
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v1, Ljava/lang/Boolean;

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-interface {v0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 205
    .line 206
    .line 207
    goto/16 :goto_21

    .line 208
    .line 209
    :catch_2
    move-exception v0

    .line 210
    const-string v1, "StorageManagerService"

    .line 211
    .line 212
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .line 214
    .line 215
    goto/16 :goto_21

    .line 216
    .line 217
    :pswitch_2
    const-string v2, "StorageManagerService"

    .line 218
    .line 219
    const-string/jumbo v5, "handleMessage -> H_CLOUD_MEDIA_PROVIDER_CHANGED"

    .line 220
    .line 221
    .line 222
    invoke-static {v2, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    .line 227
    instance-of v5, v2, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    .line 228
    .line 229
    if-eqz v5, :cond_4

    .line 230
    .line 231
    check-cast v2, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    .line 232
    .line 233
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 236
    .line 237
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 238
    .line 239
    monitor-enter v5

    .line 240
    :try_start_5
    iget-object v1, v0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 241
    .line 242
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    sub-int/2addr v1, v4

    .line 247
    :goto_5
    if-ltz v1, :cond_3

    .line 248
    .line 249
    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 250
    .line 251
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    iget-object v6, v0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 256
    .line 257
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    check-cast v6, Ljava/lang/String;

    .line 262
    .line 263
    invoke-interface {v2, v4, v6}, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;->onCloudProviderChanged(ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    add-int/2addr v1, v3

    .line 267
    goto :goto_5

    .line 268
    :catchall_1
    move-exception v0

    .line 269
    goto :goto_6

    .line 270
    :cond_3
    monitor-exit v5

    .line 271
    goto/16 :goto_21

    .line 272
    .line 273
    :goto_6
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 274
    throw v0

    .line 275
    :cond_4
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 276
    .line 277
    check-cast v2, Ljava/lang/String;

    .line 278
    .line 279
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 282
    .line 283
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 284
    .line 285
    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mCloudProviderChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-eqz v3, :cond_27

    .line 296
    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    .line 302
    .line 303
    invoke-interface {v3, v1, v2}, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;->onCloudProviderChanged(ILjava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto :goto_7

    .line 307
    :pswitch_3
    const-string v3, "StorageManagerService"

    .line 308
    .line 309
    const-string/jumbo v5, "handleMessage -> H_VOLUME_STATE_CHANGED"

    .line 310
    .line 311
    .line 312
    invoke-static {v3, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 318
    .line 319
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 320
    .line 321
    move-object v3, v0

    .line 322
    check-cast v3, Lcom/android/server/StorageManagerService;

    .line 323
    .line 324
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 325
    .line 326
    move-object v5, v0

    .line 327
    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 328
    .line 329
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 330
    .line 331
    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 332
    .line 333
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    const/4 v9, 0x2

    .line 337
    if-ne v8, v9, :cond_5

    .line 338
    .line 339
    :try_start_6
    invoke-virtual {v3, v5}, Lcom/android/server/StorageManagerService;->prepareUserStorageIfNeeded(Landroid/os/storage/VolumeInfo;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 340
    .line 341
    .line 342
    goto :goto_8

    .line 343
    :catch_3
    :try_start_7
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 344
    .line 345
    iget-object v2, v5, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 346
    .line 347
    invoke-interface {v0, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 348
    .line 349
    .line 350
    goto/16 :goto_13

    .line 351
    .line 352
    :catch_4
    move-exception v0

    .line 353
    const-string v2, "StorageManagerService"

    .line 354
    .line 355
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .line 357
    .line 358
    goto/16 :goto_13

    .line 359
    .line 360
    :cond_5
    :goto_8
    iget-object v10, v3, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 361
    .line 362
    monitor-enter v10

    .line 363
    :try_start_8
    iget-object v0, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-nez v0, :cond_9

    .line 370
    .line 371
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 372
    .line 373
    iget-object v11, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 380
    .line 381
    if-nez v0, :cond_7

    .line 382
    .line 383
    new-instance v0, Landroid/os/storage/VolumeRecord;

    .line 384
    .line 385
    iget v11, v5, Landroid/os/storage/VolumeInfo;->type:I

    .line 386
    .line 387
    iget-object v12, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 388
    .line 389
    invoke-direct {v0, v11, v12}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget-object v11, v5, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    .line 393
    .line 394
    iput-object v11, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 395
    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 397
    .line 398
    .line 399
    move-result-wide v11

    .line 400
    iput-wide v11, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 401
    .line 402
    iget v11, v5, Landroid/os/storage/VolumeInfo;->type:I

    .line 403
    .line 404
    if-ne v11, v4, :cond_6

    .line 405
    .line 406
    iget-object v11, v5, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 407
    .line 408
    invoke-virtual {v11}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v11

    .line 412
    iput-object v11, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 413
    .line 414
    goto :goto_9

    .line 415
    :catchall_2
    move-exception v0

    .line 416
    goto/16 :goto_15

    .line 417
    .line 418
    :cond_6
    :goto_9
    iget-object v11, v3, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 419
    .line 420
    iget-object v12, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v11, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    goto :goto_a

    .line 426
    :cond_7
    iget-object v11, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 427
    .line 428
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 429
    .line 430
    .line 431
    move-result v11

    .line 432
    if-eqz v11, :cond_8

    .line 433
    .line 434
    iget-object v11, v5, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    .line 435
    .line 436
    iput-object v11, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 437
    .line 438
    :cond_8
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 439
    .line 440
    .line 441
    move-result-wide v11

    .line 442
    iput-wide v11, v0, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 443
    .line 444
    invoke-virtual {v3}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 445
    .line 446
    .line 447
    :cond_9
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 448
    :try_start_9
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 449
    .line 450
    invoke-virtual {v0, v5}, Lcom/android/server/storage/StorageSessionController;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;)V
    :try_end_9
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_9 .. :try_end_9} :catch_5

    .line 451
    .line 452
    .line 453
    goto :goto_b

    .line 454
    :catch_5
    move-exception v0

    .line 455
    const-string v10, "StorageManagerService"

    .line 456
    .line 457
    const-string v11, "Failed to notify volume state changed to the Storage Service"

    .line 458
    .line 459
    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    .line 461
    .line 462
    :goto_b
    iget-object v11, v3, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 463
    .line 464
    monitor-enter v11

    .line 465
    :try_start_a
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 466
    .line 467
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 471
    .line 472
    .line 473
    move-result-object v10

    .line 474
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    .line 475
    .line 476
    .line 477
    move-result-object v12

    .line 478
    iput-object v12, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 479
    .line 480
    iput v6, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 481
    .line 482
    iput v8, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 483
    .line 484
    invoke-virtual {v0, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 489
    .line 490
    .line 491
    iget-boolean v0, v3, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 492
    .line 493
    const/16 v10, 0x8

    .line 494
    .line 495
    const/4 v12, 0x6

    .line 496
    const/4 v13, 0x3

    .line 497
    const/4 v14, 0x5

    .line 498
    if-eqz v0, :cond_d

    .line 499
    .line 500
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-eqz v0, :cond_a

    .line 505
    .line 506
    if-eq v0, v4, :cond_a

    .line 507
    .line 508
    if-eq v0, v9, :cond_a

    .line 509
    .line 510
    if-eq v0, v14, :cond_a

    .line 511
    .line 512
    goto :goto_c

    .line 513
    :cond_a
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    const/4 v15, 0x7

    .line 518
    if-eqz v0, :cond_c

    .line 519
    .line 520
    if-eq v0, v9, :cond_c

    .line 521
    .line 522
    if-eq v0, v13, :cond_c

    .line 523
    .line 524
    if-eq v0, v14, :cond_c

    .line 525
    .line 526
    if-eq v0, v12, :cond_c

    .line 527
    .line 528
    if-eq v0, v15, :cond_b

    .line 529
    .line 530
    if-eq v0, v10, :cond_c

    .line 531
    .line 532
    goto :goto_c

    .line 533
    :cond_b
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    if-eqz v0, :cond_d

    .line 538
    .line 539
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_d

    .line 544
    .line 545
    :cond_c
    new-instance v0, Landroid/content/Intent;

    .line 546
    .line 547
    const-string v10, "android.os.storage.action.VOLUME_STATE_CHANGED"

    .line 548
    .line 549
    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    const-string v10, "android.os.storage.extra.VOLUME_ID"

    .line 553
    .line 554
    iget-object v13, v5, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 555
    .line 556
    invoke-virtual {v0, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    .line 558
    .line 559
    const-string v10, "android.os.storage.extra.VOLUME_STATE"

    .line 560
    .line 561
    invoke-virtual {v0, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    .line 563
    .line 564
    const-string v10, "android.os.storage.extra.FS_UUID"

    .line 565
    .line 566
    iget-object v13, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {v0, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 572
    .line 573
    .line 574
    iget-object v7, v3, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 575
    .line 576
    invoke-virtual {v7, v15, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 581
    .line 582
    .line 583
    goto :goto_c

    .line 584
    :catchall_3
    move-exception v0

    .line 585
    goto/16 :goto_14

    .line 586
    .line 587
    :cond_d
    :goto_c
    invoke-static {v6}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-static {v8}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v6

    .line 595
    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result v7

    .line 599
    if-nez v7, :cond_f

    .line 600
    .line 601
    iget-object v7, v3, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 602
    .line 603
    array-length v10, v7

    .line 604
    move v13, v2

    .line 605
    :goto_d
    if-ge v13, v10, :cond_f

    .line 606
    .line 607
    aget v15, v7, v13

    .line 608
    .line 609
    invoke-virtual {v5, v15}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    .line 610
    .line 611
    .line 612
    move-result v16

    .line 613
    if-eqz v16, :cond_e

    .line 614
    .line 615
    iget-object v9, v3, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 616
    .line 617
    invoke-virtual {v5, v9, v15, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    .line 618
    .line 619
    .line 620
    move-result-object v9

    .line 621
    iget-object v15, v3, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 622
    .line 623
    invoke-virtual {v15, v12, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 624
    .line 625
    .line 626
    move-result-object v15

    .line 627
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 628
    .line 629
    .line 630
    iget-object v15, v3, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 631
    .line 632
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v9

    .line 636
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 640
    .line 641
    .line 642
    move-result-object v12

    .line 643
    iput-object v9, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 644
    .line 645
    iput-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 646
    .line 647
    iput-object v6, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 648
    .line 649
    invoke-virtual {v15, v4, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 650
    .line 651
    .line 652
    move-result-object v9

    .line 653
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 654
    .line 655
    .line 656
    :cond_e
    add-int/2addr v13, v4

    .line 657
    const/4 v9, 0x2

    .line 658
    const/4 v12, 0x6

    .line 659
    goto :goto_d

    .line 660
    :cond_f
    iget v0, v5, Landroid/os/storage/VolumeInfo;->type:I

    .line 661
    .line 662
    if-nez v0, :cond_13

    .line 663
    .line 664
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    if-eqz v0, :cond_11

    .line 669
    .line 670
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 671
    .line 672
    .line 673
    move-result v2

    .line 674
    if-eqz v2, :cond_11

    .line 675
    .line 676
    const-string/jumbo v0, "mounted"

    .line 677
    .line 678
    .line 679
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v0

    .line 683
    if-eqz v0, :cond_10

    .line 684
    .line 685
    iget-object v0, v5, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 686
    .line 687
    const-string v2, "StorageManagerService"

    .line 688
    .line 689
    const-string v4, "Set Ext SD Card FsType Property by Ext SD Card Info"

    .line 690
    .line 691
    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .line 693
    .line 694
    const-string/jumbo v2, "sys.ext_sdcard.fstype"

    .line 695
    .line 696
    .line 697
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    goto :goto_e

    .line 701
    :cond_10
    const-string v0, "StorageManagerService"

    .line 702
    .line 703
    const-string v2, "Set Ext SD Card FsType Property to default"

    .line 704
    .line 705
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .line 707
    .line 708
    const-string/jumbo v0, "sys.ext_sdcard.fstype"

    .line 709
    .line 710
    .line 711
    const-string/jumbo v2, "none"

    .line 712
    .line 713
    .line 714
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    goto :goto_e

    .line 718
    :cond_11
    if-eqz v0, :cond_13

    .line 719
    .line 720
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    if-eqz v0, :cond_13

    .line 725
    .line 726
    const-string/jumbo v0, "mounted"

    .line 727
    .line 728
    .line 729
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    if-eqz v0, :cond_12

    .line 734
    .line 735
    iget-object v0, v5, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 736
    .line 737
    const-string v2, "StorageManagerService"

    .line 738
    .line 739
    const-string v4, "Set USB Storage FsType Property by USB Storage Info"

    .line 740
    .line 741
    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .line 743
    .line 744
    const-string/jumbo v2, "sys.usb_storage.fstype"

    .line 745
    .line 746
    .line 747
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    goto :goto_e

    .line 751
    :cond_12
    const-string v0, "StorageManagerService"

    .line 752
    .line 753
    const-string v2, "Set USB Storage FsType Property to default"

    .line 754
    .line 755
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    .line 757
    .line 758
    const-string/jumbo v0, "sys.usb_storage.fstype"

    .line 759
    .line 760
    .line 761
    const-string/jumbo v2, "none"

    .line 762
    .line 763
    .line 764
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    :cond_13
    :goto_e
    iget v0, v5, Landroid/os/storage/VolumeInfo;->type:I

    .line 768
    .line 769
    if-eqz v0, :cond_14

    .line 770
    .line 771
    if-ne v0, v14, :cond_15

    .line 772
    .line 773
    :cond_14
    iget v0, v5, Landroid/os/storage/VolumeInfo;->state:I

    .line 774
    .line 775
    if-ne v0, v14, :cond_15

    .line 776
    .line 777
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 778
    .line 779
    iget-object v2, v5, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 780
    .line 781
    const/4 v3, 0x2

    .line 782
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 787
    .line 788
    .line 789
    :cond_15
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    .line 790
    .line 791
    .line 792
    move-result v0

    .line 793
    if-nez v0, :cond_16

    .line 794
    .line 795
    goto :goto_12

    .line 796
    :cond_16
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    if-eqz v0, :cond_1c

    .line 801
    .line 802
    iget v2, v0, Landroid/os/storage/DiskInfo;->flags:I

    .line 803
    .line 804
    and-int/lit8 v2, v2, 0xc

    .line 805
    .line 806
    if-nez v2, :cond_17

    .line 807
    .line 808
    goto :goto_12

    .line 809
    :cond_17
    iget-object v0, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    .line 810
    .line 811
    if-eqz v0, :cond_18

    .line 812
    .line 813
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    :goto_f
    const/4 v2, 0x2

    .line 818
    goto :goto_10

    .line 819
    :cond_18
    const-string v0, ""

    .line 820
    .line 821
    goto :goto_f

    .line 822
    :goto_10
    if-eq v8, v2, :cond_1b

    .line 823
    .line 824
    const/4 v2, 0x3

    .line 825
    if-ne v8, v2, :cond_19

    .line 826
    .line 827
    goto :goto_11

    .line 828
    :cond_19
    if-eqz v8, :cond_1a

    .line 829
    .line 830
    const/16 v2, 0x8

    .line 831
    .line 832
    if-ne v8, v2, :cond_1c

    .line 833
    .line 834
    :cond_1a
    iget-object v2, v5, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 835
    .line 836
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    const v2, 0x3345e

    .line 841
    .line 842
    .line 843
    invoke-static {v2, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 844
    .line 845
    .line 846
    goto :goto_12

    .line 847
    :cond_1b
    :goto_11
    iget-object v2, v5, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 848
    .line 849
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    const v2, 0x3345d

    .line 854
    .line 855
    .line 856
    invoke-static {v2, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 857
    .line 858
    .line 859
    :cond_1c
    :goto_12
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 860
    :goto_13
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 861
    .line 862
    .line 863
    goto/16 :goto_21

    .line 864
    .line 865
    :goto_14
    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 866
    throw v0

    .line 867
    :goto_15
    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 868
    throw v0

    .line 869
    :pswitch_4
    const-string v2, "StorageManagerService"

    .line 870
    .line 871
    const-string/jumbo v3, "handleMessage -> H_COMPLETE_UNLOCK_USER"

    .line 872
    .line 873
    .line 874
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    .line 876
    .line 877
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 878
    .line 879
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 880
    .line 881
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 882
    .line 883
    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->-$$Nest$mcompleteUnlockUser(Lcom/android/server/StorageManagerService;I)V

    .line 884
    .line 885
    .line 886
    goto/16 :goto_21

    .line 887
    .line 888
    :pswitch_5
    const-string v1, "StorageManagerService"

    .line 889
    .line 890
    const-string/jumbo v2, "handleMessage -> H_BOOT_COMPLETED"

    .line 891
    .line 892
    .line 893
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .line 895
    .line 896
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 897
    .line 898
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 899
    .line 900
    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 901
    .line 902
    .line 903
    goto/16 :goto_21

    .line 904
    .line 905
    :pswitch_6
    const-string v2, "StorageManagerService"

    .line 906
    .line 907
    const-string/jumbo v3, "handleMessage -> H_ABORT_IDLE_MAINT"

    .line 908
    .line 909
    .line 910
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    .line 912
    .line 913
    const-string v2, "StorageManagerService"

    .line 914
    .line 915
    const-string v3, "Aborting idle maintenance"

    .line 916
    .line 917
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    .line 919
    .line 920
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 921
    .line 922
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 923
    .line 924
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 925
    .line 926
    check-cast v1, Ljava/lang/Runnable;

    .line 927
    .line 928
    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 929
    .line 930
    .line 931
    goto/16 :goto_21

    .line 932
    .line 933
    :pswitch_7
    const-string v2, "StorageManagerService"

    .line 934
    .line 935
    const-string/jumbo v3, "handleMessage -> H_RUN_IDLE_MAINT"

    .line 936
    .line 937
    .line 938
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .line 940
    .line 941
    const-string v2, "StorageManagerService"

    .line 942
    .line 943
    const-string v3, "Running idle maintenance"

    .line 944
    .line 945
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    .line 947
    .line 948
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 949
    .line 950
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 951
    .line 952
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 953
    .line 954
    check-cast v1, Ljava/lang/Runnable;

    .line 955
    .line 956
    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 957
    .line 958
    .line 959
    goto/16 :goto_21

    .line 960
    .line 961
    :pswitch_8
    const-string v1, "StorageManagerService"

    .line 962
    .line 963
    const-string/jumbo v2, "handleMessage -> H_RESET"

    .line 964
    .line 965
    .line 966
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    .line 968
    .line 969
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 970
    .line 971
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 972
    .line 973
    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 974
    .line 975
    .line 976
    goto/16 :goto_21

    .line 977
    .line 978
    :pswitch_9
    const-string v2, "StorageManagerService"

    .line 979
    .line 980
    new-instance v3, Ljava/lang/StringBuilder;

    .line 981
    .line 982
    const-string/jumbo v4, "handleMessage -> H_PARTITION_FORGET rec="

    .line 983
    .line 984
    .line 985
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 989
    .line 990
    check-cast v4, Landroid/os/storage/VolumeRecord;

    .line 991
    .line 992
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v3

    .line 999
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .line 1001
    .line 1002
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1003
    .line 1004
    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 1005
    .line 1006
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1007
    .line 1008
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1009
    .line 1010
    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1011
    .line 1012
    iget-object v1, v1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    .line 1013
    .line 1014
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1015
    .line 1016
    .line 1017
    :try_start_d
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1018
    .line 1019
    invoke-interface {v0, v2, v1}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 1020
    .line 1021
    .line 1022
    goto/16 :goto_21

    .line 1023
    .line 1024
    :catch_6
    move-exception v0

    .line 1025
    const-string v1, "StorageManagerService"

    .line 1026
    .line 1027
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1028
    .line 1029
    .line 1030
    goto/16 :goto_21

    .line 1031
    .line 1032
    :pswitch_a
    const-string v2, "StorageManagerService"

    .line 1033
    .line 1034
    const-string/jumbo v3, "handleMessage -> H_VOLUME_UNMOUNT"

    .line 1035
    .line 1036
    .line 1037
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    .line 1039
    .line 1040
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1041
    .line 1042
    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1043
    .line 1044
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1045
    .line 1046
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1047
    .line 1048
    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    .line 1049
    .line 1050
    .line 1051
    goto/16 :goto_21

    .line 1052
    .line 1053
    :pswitch_b
    const-string v2, "StorageManagerService"

    .line 1054
    .line 1055
    const-string/jumbo v4, "handleMessage -> H_INTERNAL_BROADCAST"

    .line 1056
    .line 1057
    .line 1058
    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    .line 1060
    .line 1061
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1062
    .line 1063
    check-cast v1, Landroid/content/Intent;

    .line 1064
    .line 1065
    const-string v2, "android.os.storage.extra.VOLUME_STATE"

    .line 1066
    .line 1067
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1068
    .line 1069
    .line 1070
    move-result v2

    .line 1071
    const-string v3, "android.os.storage.extra.FS_UUID"

    .line 1072
    .line 1073
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v3

    .line 1077
    const-string v4, "StorageManagerService"

    .line 1078
    .line 1079
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    const-string/jumbo v6, "broadcasting ("

    .line 1082
    .line 1083
    .line 1084
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    const-string v6, ") state="

    .line 1091
    .line 1092
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    .line 1098
    const-string v2, ", fsUuid="

    .line 1099
    .line 1100
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v2

    .line 1110
    invoke-static {v4, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    .line 1112
    .line 1113
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1114
    .line 1115
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1116
    .line 1117
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1118
    .line 1119
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1120
    .line 1121
    const-string v3, "android.permission.WRITE_MEDIA_STORAGE"

    .line 1122
    .line 1123
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    goto/16 :goto_21

    .line 1127
    .line 1128
    :pswitch_c
    const-string v2, "StorageManagerService"

    .line 1129
    .line 1130
    const-string/jumbo v3, "handleMessage -> H_VOLUME_BROADCAST"

    .line 1131
    .line 1132
    .line 1133
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    .line 1135
    .line 1136
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1137
    .line 1138
    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 1139
    .line 1140
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v2

    .line 1144
    const-string v3, "StorageManagerService"

    .line 1145
    .line 1146
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    const-string v5, "Volume "

    .line 1149
    .line 1150
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v5

    .line 1157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    .line 1159
    .line 1160
    const-string v5, " broadcasting "

    .line 1161
    .line 1162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    .line 1168
    const-string v5, " to "

    .line 1169
    .line 1170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v5

    .line 1177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v4

    .line 1184
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    .line 1186
    .line 1187
    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v2

    .line 1191
    if-eqz v2, :cond_27

    .line 1192
    .line 1193
    new-instance v3, Landroid/content/Intent;

    .line 1194
    .line 1195
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v4

    .line 1199
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v4

    .line 1203
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1204
    .line 1205
    .line 1206
    const-string v2, "android.os.storage.extra.STORAGE_VOLUME"

    .line 1207
    .line 1208
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1212
    .line 1213
    .line 1214
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1215
    .line 1216
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1217
    .line 1218
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1219
    .line 1220
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v1

    .line 1224
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1225
    .line 1226
    .line 1227
    goto/16 :goto_21

    .line 1228
    .line 1229
    :pswitch_d
    const-string v2, "StorageManagerService"

    .line 1230
    .line 1231
    const-string/jumbo v3, "handleMessage -> H_VOLUME_MOUNT"

    .line 1232
    .line 1233
    .line 1234
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    .line 1236
    .line 1237
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1238
    .line 1239
    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1240
    .line 1241
    iget-object v2, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1242
    .line 1243
    check-cast v2, Lcom/android/server/StorageManagerService;

    .line 1244
    .line 1245
    invoke-virtual {v2, v1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v2

    .line 1249
    if-eqz v2, :cond_1d

    .line 1250
    .line 1251
    const-string v0, "StorageManagerService"

    .line 1252
    .line 1253
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    const-string v3, "Ignoring mount "

    .line 1256
    .line 1257
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v1

    .line 1264
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    const-string v1, " due to policy"

    .line 1268
    .line 1269
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v1

    .line 1276
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    .line 1278
    .line 1279
    goto/16 :goto_21

    .line 1280
    .line 1281
    :cond_1d
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1282
    .line 1283
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1284
    .line 1285
    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    .line 1286
    .line 1287
    .line 1288
    goto/16 :goto_21

    .line 1289
    .line 1290
    :pswitch_e
    const-string v3, "StorageManagerService"

    .line 1291
    .line 1292
    const-string/jumbo v4, "handleMessage -> H_FSTRIM"

    .line 1293
    .line 1294
    .line 1295
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    .line 1297
    .line 1298
    const-string v3, "StorageManagerService"

    .line 1299
    .line 1300
    const-string v4, "Running fstrim idle maintenance"

    .line 1301
    .line 1302
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    .line 1304
    .line 1305
    :try_start_e
    iget-object v3, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1306
    .line 1307
    check-cast v3, Lcom/android/server/StorageManagerService;

    .line 1308
    .line 1309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1310
    .line 1311
    .line 1312
    move-result-wide v4

    .line 1313
    iput-wide v4, v3, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 1314
    .line 1315
    iget-object v3, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1316
    .line 1317
    check-cast v3, Lcom/android/server/StorageManagerService;

    .line 1318
    .line 1319
    iget-object v4, v3, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 1320
    .line 1321
    iget-wide v7, v3, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 1322
    .line 1323
    invoke-virtual {v4, v7, v8}, Ljava/io/File;->setLastModified(J)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 1324
    .line 1325
    .line 1326
    goto :goto_16

    .line 1327
    :catch_7
    const-string v3, "StorageManagerService"

    .line 1328
    .line 1329
    const-string v4, "Unable to record last fstrim!"

    .line 1330
    .line 1331
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    .line 1333
    .line 1334
    :goto_16
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1335
    .line 1336
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1337
    .line 1338
    invoke-virtual {v0, v2, v6}, Lcom/android/server/StorageManagerService;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 1339
    .line 1340
    .line 1341
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1342
    .line 1343
    check-cast v0, Ljava/lang/Runnable;

    .line 1344
    .line 1345
    if-eqz v0, :cond_27

    .line 1346
    .line 1347
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1348
    .line 1349
    .line 1350
    goto/16 :goto_21

    .line 1351
    .line 1352
    :pswitch_f
    const-string v5, "StorageManagerService"

    .line 1353
    .line 1354
    const-string/jumbo v6, "handleMessage -> H_SHUTDOWN"

    .line 1355
    .line 1356
    .line 1357
    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    .line 1359
    .line 1360
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1361
    .line 1362
    check-cast v1, Landroid/os/storage/IStorageShutdownObserver;

    .line 1363
    .line 1364
    :try_start_f
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1365
    .line 1366
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1367
    .line 1368
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1369
    .line 1370
    invoke-interface {v0}, Landroid/os/IVold;->shutdown()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 1371
    .line 1372
    .line 1373
    goto :goto_17

    .line 1374
    :catch_8
    move-exception v0

    .line 1375
    const-string v4, "StorageManagerService"

    .line 1376
    .line 1377
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1378
    .line 1379
    .line 1380
    move v4, v2

    .line 1381
    :goto_17
    if-eqz v1, :cond_27

    .line 1382
    .line 1383
    if-eqz v4, :cond_1e

    .line 1384
    .line 1385
    goto :goto_18

    .line 1386
    :cond_1e
    move v2, v3

    .line 1387
    :goto_18
    :try_start_10
    invoke-interface {v1, v2}, Landroid/os/storage/IStorageShutdownObserver;->onShutDownComplete(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 1388
    .line 1389
    .line 1390
    goto/16 :goto_21

    .line 1391
    .line 1392
    :pswitch_10
    const-string v1, "StorageManagerService"

    .line 1393
    .line 1394
    const-string/jumbo v2, "handleMessage -> H_DAEMON_CONNECTED"

    .line 1395
    .line 1396
    .line 1397
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    .line 1399
    .line 1400
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1401
    .line 1402
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1403
    .line 1404
    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 1405
    .line 1406
    .line 1407
    goto/16 :goto_21

    .line 1408
    .line 1409
    :pswitch_11
    const-string v1, "StorageManagerService"

    .line 1410
    .line 1411
    const-string/jumbo v3, "handleMessage -> H_SYSTEM_READY"

    .line 1412
    .line 1413
    .line 1414
    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    .line 1416
    .line 1417
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1418
    .line 1419
    move-object v1, v0

    .line 1420
    check-cast v1, Lcom/android/server/StorageManagerService;

    .line 1421
    .line 1422
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1423
    .line 1424
    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 1425
    .line 1426
    .line 1427
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1428
    .line 1429
    sget-object v3, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    .line 1430
    .line 1431
    const-string v3, "NandswapManager"

    .line 1432
    .line 1433
    :try_start_11
    const-string v5, "Initialize NandswapManager..."

    .line 1434
    .line 1435
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    .line 1436
    .line 1437
    .line 1438
    :try_start_12
    new-instance v5, Lcom/android/server/NandswapManager$NandswapClient;

    .line 1439
    .line 1440
    invoke-direct {v5}, Lcom/android/server/NandswapManager$NandswapClient;-><init>()V

    .line 1441
    .line 1442
    .line 1443
    sput-object v5, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 1444
    .line 1445
    invoke-static {}, Lcom/android/server/NandswapManager;->initNandswapClient()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    .line 1446
    .line 1447
    .line 1448
    :try_start_13
    invoke-static {v0}, Lcom/android/server/NandswapManager;->makeNandswapBigdataManager(Landroid/content/Context;)Z

    .line 1449
    .line 1450
    .line 1451
    move-result v5

    .line 1452
    if-nez v5, :cond_1f

    .line 1453
    .line 1454
    const-string v5, "Bigdata is not supported"

    .line 1455
    .line 1456
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    .line 1458
    .line 1459
    goto :goto_19

    .line 1460
    :catch_9
    move-exception v0

    .line 1461
    goto :goto_1a

    .line 1462
    :cond_1f
    :goto_19
    sput-object v0, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    .line 1463
    .line 1464
    new-instance v5, Landroid/content/IntentFilter;

    .line 1465
    .line 1466
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1467
    .line 1468
    .line 1469
    const-string/jumbo v6, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    const-string v6, "android.intent.action.REBOOT"

    .line 1476
    .line 1477
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    .line 1481
    .line 1482
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    const-string/jumbo v6, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1489
    .line 1490
    .line 1491
    sget-object v6, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    .line 1492
    .line 1493
    sget-object v7, Lcom/android/server/NandswapManager;->intentReceiver:Lcom/android/server/NandswapManager$1;

    .line 1494
    .line 1495
    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1496
    .line 1497
    .line 1498
    invoke-static {v0}, Lcom/android/server/NandswapManager;->testRestoreExpandSizeAndList(Landroid/content/Context;)V

    .line 1499
    .line 1500
    .line 1501
    invoke-static {}, Lcom/android/server/NandswapManager;->isRemainStorageLifeTime()Z

    .line 1502
    .line 1503
    .line 1504
    move-result v0

    .line 1505
    if-nez v0, :cond_20

    .line 1506
    .line 1507
    goto :goto_1b

    .line 1508
    :cond_20
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextLimitReset()V

    .line 1509
    .line 1510
    .line 1511
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextUpdateAvgerage()V

    .line 1512
    .line 1513
    .line 1514
    goto :goto_1b

    .line 1515
    :catch_a
    move-exception v0

    .line 1516
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1517
    .line 1518
    const-string v7, "Unexpected error while create mClient: "

    .line 1519
    .line 1520
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1521
    .line 1522
    .line 1523
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v0

    .line 1527
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v0

    .line 1534
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    .line 1536
    .line 1537
    sput-object v6, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    .line 1538
    .line 1539
    goto :goto_1b

    .line 1540
    :goto_1a
    const-string v5, "Unexpected error while scheduleNandswapManager"

    .line 1541
    .line 1542
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1546
    .line 1547
    .line 1548
    :goto_1b
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1549
    .line 1550
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v0

    .line 1554
    const-string/jumbo v3, "zram_enabled"

    .line 1555
    .line 1556
    .line 1557
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v3

    .line 1561
    new-instance v5, Lcom/android/server/StorageManagerService$3;

    .line 1562
    .line 1563
    invoke-direct {v5, v1}, Lcom/android/server/StorageManagerService$3;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v0, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1567
    .line 1568
    .line 1569
    invoke-virtual {v1}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    .line 1570
    .line 1571
    .line 1572
    const-string/jumbo v0, "persist.sys.zram_enabled"

    .line 1573
    .line 1574
    .line 1575
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v0

    .line 1579
    const-string v3, "0"

    .line 1580
    .line 1581
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1582
    .line 1583
    .line 1584
    move-result v0

    .line 1585
    if-nez v0, :cond_21

    .line 1586
    .line 1587
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1588
    .line 1589
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v0

    .line 1593
    const v3, 0x111029e

    .line 1594
    .line 1595
    .line 1596
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1597
    .line 1598
    .line 1599
    move-result v0

    .line 1600
    if-eqz v0, :cond_21

    .line 1601
    .line 1602
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1603
    .line 1604
    invoke-static {v0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 1605
    .line 1606
    .line 1607
    :cond_21
    new-instance v0, Landroid/media/MediaCodecList;

    .line 1608
    .line 1609
    invoke-direct {v0, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 1610
    .line 1611
    .line 1612
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v0

    .line 1616
    array-length v3, v0

    .line 1617
    move v5, v2

    .line 1618
    :goto_1c
    if-ge v5, v3, :cond_25

    .line 1619
    .line 1620
    aget-object v6, v0, v5

    .line 1621
    .line 1622
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 1623
    .line 1624
    .line 1625
    move-result v7

    .line 1626
    if-eqz v7, :cond_22

    .line 1627
    .line 1628
    goto :goto_1e

    .line 1629
    :cond_22
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v6

    .line 1633
    array-length v7, v6

    .line 1634
    move v8, v2

    .line 1635
    :goto_1d
    if-ge v8, v7, :cond_24

    .line 1636
    .line 1637
    aget-object v9, v6, v8

    .line 1638
    .line 1639
    const-string/jumbo v10, "video/hevc"

    .line 1640
    .line 1641
    .line 1642
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1643
    .line 1644
    .line 1645
    move-result v9

    .line 1646
    if-eqz v9, :cond_23

    .line 1647
    .line 1648
    goto :goto_1f

    .line 1649
    :cond_23
    add-int/2addr v8, v4

    .line 1650
    goto :goto_1d

    .line 1651
    :cond_24
    :goto_1e
    add-int/2addr v5, v4

    .line 1652
    goto :goto_1c

    .line 1653
    :cond_25
    move v4, v2

    .line 1654
    :goto_1f
    const-string/jumbo v0, "persist.sys.fuse.transcode_user_control"

    .line 1655
    .line 1656
    .line 1657
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 1658
    .line 1659
    .line 1660
    move-result v0

    .line 1661
    if-eqz v0, :cond_26

    .line 1662
    .line 1663
    const-string/jumbo v0, "persist.sys.fuse.transcode_enabled"

    .line 1664
    .line 1665
    .line 1666
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 1667
    .line 1668
    .line 1669
    move-result v0

    .line 1670
    goto :goto_20

    .line 1671
    :cond_26
    const-string/jumbo v0, "storage_native_boot"

    .line 1672
    .line 1673
    .line 1674
    const-string/jumbo v2, "transcode_enabled"

    .line 1675
    .line 1676
    .line 1677
    invoke-static {v0, v2, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1678
    .line 1679
    .line 1680
    move-result v0

    .line 1681
    :goto_20
    const-string/jumbo v2, "sys.fuse.transcode_enabled"

    .line 1682
    .line 1683
    .line 1684
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v3

    .line 1688
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    .line 1690
    .line 1691
    if-eqz v0, :cond_27

    .line 1692
    .line 1693
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1694
    .line 1695
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v0

    .line 1699
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1700
    .line 1701
    new-instance v2, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;

    .line 1702
    .line 1703
    invoke-direct {v2, v1}, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 1704
    .line 1705
    .line 1706
    invoke-virtual {v0, v2}, Landroid/app/ActivityManagerInternal;->registerAnrController(Landroid/app/AnrController;)V

    .line 1707
    .line 1708
    .line 1709
    :catch_b
    :cond_27
    :goto_21
    return-void

    .line 1710
    :pswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/server/StorageManagerService$Callbacks;->handleMessage$com$android$server$StorageManagerService$ObbActionHandler(Landroid/os/Message;)V

    .line 1711
    .line 1712
    .line 1713
    return-void

    .line 1714
    :pswitch_13
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1715
    .line 1716
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 1717
    .line 1718
    iget-object v5, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1719
    .line 1720
    check-cast v5, Landroid/os/RemoteCallbackList;

    .line 1721
    .line 1722
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 1723
    .line 1724
    .line 1725
    move-result v5

    .line 1726
    :goto_22
    if-ge v2, v5, :cond_28

    .line 1727
    .line 1728
    iget-object v6, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1729
    .line 1730
    check-cast v6, Landroid/os/RemoteCallbackList;

    .line 1731
    .line 1732
    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v6

    .line 1736
    check-cast v6, Landroid/os/storage/IStorageEventListener;

    .line 1737
    .line 1738
    :try_start_14
    iget v7, v1, Landroid/os/Message;->what:I

    .line 1739
    .line 1740
    invoke-static {v6, v7, v3}, Lcom/android/server/StorageManagerService$Callbacks;->invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_c

    .line 1741
    .line 1742
    .line 1743
    :catch_c
    add-int/2addr v2, v4

    .line 1744
    goto :goto_22

    .line 1745
    :cond_28
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1746
    .line 1747
    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 1748
    .line 1749
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1750
    .line 1751
    .line 1752
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1753
    .line 1754
    .line 1755
    return-void

    .line 1756
    nop

    .line 1757
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
