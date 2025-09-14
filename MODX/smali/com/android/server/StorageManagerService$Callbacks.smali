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

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_4

    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    goto/16 :goto_3

    .line 11
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 17
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 19
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v3, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 29
    check-cast v3, Lcom/android/server/StorageManagerService;

    .line 31
    iget-object v3, v3, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 33
    check-cast v3, Ljava/util/HashMap;

    .line 35
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v3

    .line 43
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lcom/android/server/StorageManagerService$ObbState;

    .line 55
    iget-object v5, v4, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    .line 57
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 63
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 72
    move-result-object p1

    .line 73
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/android/server/StorageManagerService$ObbState;

    .line 85
    iget-object v3, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 87
    check-cast v3, Lcom/android/server/StorageManagerService;

    .line 89
    invoke-static {v3, v2}, Lcom/android/server/StorageManagerService;->-$$Nest$mremoveObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    iget-object v3, v2, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    .line 94
    iget-object v4, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 96
    iget v5, v2, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    .line 98
    invoke-interface {v3, v4, v5, v1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    goto :goto_1

    .line 102
    :catch_0
    :try_start_2
    const-string v3, "StorageManagerService"

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v5, "Couldn\'t send unmount notification for  OBB: "

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 116
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 133
    check-cast p0, Lcom/android/server/StorageManagerService$ObbAction;

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbAction;->handleExecute()V
    :try_end_3
    .catch Lcom/android/server/StorageManagerService$ObbException; {:try_start_3 .. :try_end_3} :catch_1

    .line 141
    goto :goto_3

    .line 142
    :catch_1
    move-exception p1

    .line 143
    const-string v0, "StorageManagerService"

    .line 145
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    iget p1, p1, Lcom/android/server/StorageManagerService$ObbException;->status:I

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(I)V

    .line 153
    :goto_3
    return-void
.end method

.method public static invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 5
    :pswitch_0
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 7
    check-cast p1, Landroid/os/storage/DiskInfo;

    .line 9
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    .line 12
    goto :goto_0

    .line 13
    :pswitch_1
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 15
    check-cast p1, Landroid/os/storage/DiskInfo;

    .line 17
    iget p2, p2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 19
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    .line 22
    goto :goto_0

    .line 23
    :pswitch_2
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 25
    check-cast p1, Ljava/lang/String;

    .line 27
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    .line 30
    goto :goto_0

    .line 31
    :pswitch_3
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 33
    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 35
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    .line 38
    goto :goto_0

    .line 39
    :pswitch_4
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 41
    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 43
    iget v0, p2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 45
    iget p2, p2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 47
    invoke-interface {p0, p1, v0, p2}, Landroid/os/storage/IStorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    .line 50
    goto :goto_0

    .line 51
    :pswitch_5
    iget-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 53
    check-cast p1, Ljava/lang/String;

    .line 55
    iget-object v0, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 57
    check-cast v0, Ljava/lang/String;

    .line 59
    iget-object p2, p2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 61
    check-cast p2, Ljava/lang/String;

    .line 63
    invoke-interface {p0, p1, v0, p2}, Landroid/os/storage/IStorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 3
    move-object/from16 v1, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x1

    .line 8
    iget v5, v0, Lcom/android/server/StorageManagerService$Callbacks;->$r8$classId:I

    .line 10
    packed-switch v5, :pswitch_data_0

    .line 13
    iget v5, v1, Landroid/os/Message;->what:I

    .line 15
    const/4 v6, 0x0

    .line 16
    const/high16 v7, 0x5000000

    .line 18
    packed-switch v5, :pswitch_data_1

    .line 21
    goto/16 :goto_21

    .line 23
    :pswitch_0
    const-string v1, "StorageManagerService"

    .line 25
    const-string/jumbo v3, "handleMessage -> H_REMOUNT_VOLUMES_ON_MOVE"

    .line 28
    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 33
    move-object v1, v0

    .line 34
    check-cast v1, Lcom/android/server/StorageManagerService;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 46
    monitor-enter v5

    .line 47
    :try_start_0
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 49
    array-length v6, v0

    .line 50
    :goto_0
    if-ge v2, v6, :cond_1

    .line 52
    aget v7, v0, v2

    .line 54
    iget v8, v1, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 56
    if-ne v7, v8, :cond_0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 73
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v2

    .line 80
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/Integer;

    .line 92
    :try_start_1
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 97
    move-result v5

    .line 98
    invoke-interface {v4, v5}, Landroid/os/IVold;->onUserStopped(I)V

    .line 101
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 106
    move-result v0

    .line 107
    invoke-interface {v4, v0}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    goto :goto_2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v4, "StorageManagerService"

    .line 114
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 121
    move-result-object v2

    .line 122
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_27

    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ljava/lang/Integer;

    .line 134
    :try_start_2
    iget-object v3, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 139
    move-result v4

    .line 140
    invoke-interface {v3, v4}, Landroid/os/IVold;->onUserStarted(I)V

    .line 143
    iget-object v3, v1, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    .line 145
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 148
    move-result v0

    .line 149
    invoke-interface {v3, v0}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 152
    goto :goto_3

    .line 153
    :catch_1
    move-exception v0

    .line 154
    const-string v3, "StorageManagerService"

    .line 156
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

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

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    const-string/jumbo v4, "handleMessage -> H_SECURE_KEYGUARD_STATE_CHANGED isShowing="

    .line 169
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    check-cast v4, Ljava/lang/Boolean;

    .line 176
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    move-result v4

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v3

    .line 187
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_4
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 192
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 194
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 196
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 198
    check-cast v1, Ljava/lang/Boolean;

    .line 200
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 203
    move-result v1

    .line 204
    invoke-interface {v0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 207
    goto/16 :goto_21

    .line 209
    :catch_2
    move-exception v0

    .line 210
    const-string v1, "StorageManagerService"

    .line 212
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    goto/16 :goto_21

    .line 217
    :pswitch_2
    const-string v2, "StorageManagerService"

    .line 219
    const-string/jumbo v5, "handleMessage -> H_CLOUD_MEDIA_PROVIDER_CHANGED"

    .line 222
    invoke-static {v2, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    instance-of v5, v2, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    .line 229
    if-eqz v5, :cond_4

    .line 231
    check-cast v2, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    .line 233
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 235
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 237
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 239
    monitor-enter v5

    .line 240
    :try_start_5
    iget-object v1, v0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 242
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 245
    move-result v1

    .line 246
    sub-int/2addr v1, v4

    .line 247
    :goto_5
    if-ltz v1, :cond_3

    .line 249
    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 251
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 254
    move-result v4

    .line 255
    iget-object v6, v0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 257
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 260
    move-result-object v6

    .line 261
    check-cast v6, Ljava/lang/String;

    .line 263
    invoke-interface {v2, v4, v6}, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;->onCloudProviderChanged(ILjava/lang/String;)V

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

    .line 277
    check-cast v2, Ljava/lang/String;

    .line 279
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 281
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 283
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 285
    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mCloudProviderChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 287
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 290
    move-result-object v0

    .line 291
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    move-result v3

    .line 295
    if-eqz v3, :cond_27

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    .line 303
    invoke-interface {v3, v1, v2}, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;->onCloudProviderChanged(ILjava/lang/String;)V

    .line 306
    goto :goto_7

    .line 307
    :pswitch_3
    const-string v3, "StorageManagerService"

    .line 309
    const-string/jumbo v5, "handleMessage -> H_VOLUME_STATE_CHANGED"

    .line 312
    invoke-static {v3, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 317
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 319
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 321
    move-object v3, v0

    .line 322
    check-cast v3, Lcom/android/server/StorageManagerService;

    .line 324
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 326
    move-object v5, v0

    .line 327
    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 329
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 331
    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 333
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    const/4 v9, 0x2

    .line 337
    if-ne v8, v9, :cond_5

    .line 339
    :try_start_6
    invoke-virtual {v3, v5}, Lcom/android/server/StorageManagerService;->prepareUserStorageIfNeeded(Landroid/os/storage/VolumeInfo;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 342
    goto :goto_8

    .line 343
    :catch_3
    :try_start_7
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 345
    iget-object v2, v5, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 347
    invoke-interface {v0, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 350
    goto/16 :goto_13

    .line 352
    :catch_4
    move-exception v0

    .line 353
    const-string v2, "StorageManagerService"

    .line 355
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    goto/16 :goto_13

    .line 360
    :cond_5
    :goto_8
    iget-object v10, v3, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 362
    monitor-enter v10

    .line 363
    :try_start_8
    iget-object v0, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 365
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 368
    move-result v0

    .line 369
    if-nez v0, :cond_9

    .line 371
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 373
    iget-object v11, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 375
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    move-result-object v0

    .line 379
    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 381
    if-nez v0, :cond_7

    .line 383
    new-instance v0, Landroid/os/storage/VolumeRecord;

    .line 385
    iget v11, v5, Landroid/os/storage/VolumeInfo;->type:I

    .line 387
    iget-object v12, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 389
    invoke-direct {v0, v11, v12}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 392
    iget-object v11, v5, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    .line 394
    iput-object v11, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 399
    move-result-wide v11

    .line 400
    iput-wide v11, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 402
    iget v11, v5, Landroid/os/storage/VolumeInfo;->type:I

    .line 404
    if-ne v11, v4, :cond_6

    .line 406
    iget-object v11, v5, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 408
    invoke-virtual {v11}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 411
    move-result-object v11

    .line 412
    iput-object v11, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 414
    goto :goto_9

    .line 415
    :catchall_2
    move-exception v0

    .line 416
    goto/16 :goto_15

    .line 418
    :cond_6
    :goto_9
    iget-object v11, v3, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 420
    iget-object v12, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    .line 422
    invoke-virtual {v11, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    goto :goto_a

    .line 426
    :cond_7
    iget-object v11, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 428
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 431
    move-result v11

    .line 432
    if-eqz v11, :cond_8

    .line 434
    iget-object v11, v5, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    .line 436
    iput-object v11, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 438
    :cond_8
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 441
    move-result-wide v11

    .line 442
    iput-wide v11, v0, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 444
    invoke-virtual {v3}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 447
    :cond_9
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 448
    :try_start_9
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 450
    invoke-virtual {v0, v5}, Lcom/android/server/storage/StorageSessionController;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;)V
    :try_end_9
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_9 .. :try_end_9} :catch_5

    .line 453
    goto :goto_b

    .line 454
    :catch_5
    move-exception v0

    .line 455
    const-string v10, "StorageManagerService"

    .line 457
    const-string v11, "Failed to notify volume state changed to the Storage Service"

    .line 459
    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    :goto_b
    iget-object v11, v3, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 464
    monitor-enter v11

    .line 465
    :try_start_a
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 467
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 473
    move-result-object v10

    .line 474
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    .line 477
    move-result-object v12

    .line 478
    iput-object v12, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 480
    iput v6, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 482
    iput v8, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 484
    invoke-virtual {v0, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 491
    iget-boolean v0, v3, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 493
    const/16 v10, 0x8

    .line 495
    const/4 v12, 0x6

    .line 496
    const/4 v13, 0x3

    .line 497
    const/4 v14, 0x5

    .line 498
    if-eqz v0, :cond_d

    .line 500
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 503
    move-result v0

    .line 504
    if-eqz v0, :cond_a

    .line 506
    if-eq v0, v4, :cond_a

    .line 508
    if-eq v0, v9, :cond_a

    .line 510
    if-eq v0, v14, :cond_a

    .line 512
    goto :goto_c

    .line 513
    :cond_a
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 516
    move-result v0

    .line 517
    const/4 v15, 0x7

    .line 518
    if-eqz v0, :cond_c

    .line 520
    if-eq v0, v9, :cond_c

    .line 522
    if-eq v0, v13, :cond_c

    .line 524
    if-eq v0, v14, :cond_c

    .line 526
    if-eq v0, v12, :cond_c

    .line 528
    if-eq v0, v15, :cond_b

    .line 530
    if-eq v0, v10, :cond_c

    .line 532
    goto :goto_c

    .line 533
    :cond_b
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 536
    move-result-object v0

    .line 537
    if-eqz v0, :cond_d

    .line 539
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_d

    .line 545
    :cond_c
    new-instance v0, Landroid/content/Intent;

    .line 547
    const-string v10, "android.os.storage.action.VOLUME_STATE_CHANGED"

    .line 549
    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    const-string v10, "android.os.storage.extra.VOLUME_ID"

    .line 554
    iget-object v13, v5, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 556
    invoke-virtual {v0, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v10, "android.os.storage.extra.VOLUME_STATE"

    .line 561
    invoke-virtual {v0, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    const-string v10, "android.os.storage.extra.FS_UUID"

    .line 566
    iget-object v13, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 568
    invoke-virtual {v0, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 574
    iget-object v7, v3, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 576
    invoke-virtual {v7, v15, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 579
    move-result-object v0

    .line 580
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 583
    goto :goto_c

    .line 584
    :catchall_3
    move-exception v0

    .line 585
    goto/16 :goto_14

    .line 587
    :cond_d
    :goto_c
    invoke-static {v6}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    .line 590
    move-result-object v0

    .line 591
    invoke-static {v8}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    .line 594
    move-result-object v6

    .line 595
    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 598
    move-result v7

    .line 599
    if-nez v7, :cond_f

    .line 601
    iget-object v7, v3, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 603
    array-length v10, v7

    .line 604
    move v13, v2

    .line 605
    :goto_d
    if-ge v13, v10, :cond_f

    .line 607
    aget v15, v7, v13

    .line 609
    invoke-virtual {v5, v15}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    .line 612
    move-result v16

    .line 613
    if-eqz v16, :cond_e

    .line 615
    iget-object v9, v3, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 617
    invoke-virtual {v5, v9, v15, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    .line 620
    move-result-object v9

    .line 621
    iget-object v15, v3, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 623
    invoke-virtual {v15, v12, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 626
    move-result-object v15

    .line 627
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 630
    iget-object v15, v3, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 632
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    .line 635
    move-result-object v9

    .line 636
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 639
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 642
    move-result-object v12

    .line 643
    iput-object v9, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 645
    iput-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 647
    iput-object v6, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 649
    invoke-virtual {v15, v4, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 652
    move-result-object v9

    .line 653
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

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

    .line 662
    if-nez v0, :cond_13

    .line 664
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 667
    move-result-object v0

    .line 668
    if-eqz v0, :cond_11

    .line 670
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 673
    move-result v2

    .line 674
    if-eqz v2, :cond_11

    .line 676
    const-string/jumbo v0, "mounted"

    .line 679
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 682
    move-result v0

    .line 683
    if-eqz v0, :cond_10

    .line 685
    iget-object v0, v5, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 687
    const-string v2, "StorageManagerService"

    .line 689
    const-string v4, "Set Ext SD Card FsType Property by Ext SD Card Info"

    .line 691
    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string/jumbo v2, "sys.ext_sdcard.fstype"

    .line 697
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    goto :goto_e

    .line 701
    :cond_10
    const-string v0, "StorageManagerService"

    .line 703
    const-string v2, "Set Ext SD Card FsType Property to default"

    .line 705
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string/jumbo v0, "sys.ext_sdcard.fstype"

    .line 711
    const-string/jumbo v2, "none"

    .line 714
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    goto :goto_e

    .line 718
    :cond_11
    if-eqz v0, :cond_13

    .line 720
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 723
    move-result v0

    .line 724
    if-eqz v0, :cond_13

    .line 726
    const-string/jumbo v0, "mounted"

    .line 729
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    move-result v0

    .line 733
    if-eqz v0, :cond_12

    .line 735
    iget-object v0, v5, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 737
    const-string v2, "StorageManagerService"

    .line 739
    const-string v4, "Set USB Storage FsType Property by USB Storage Info"

    .line 741
    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string/jumbo v2, "sys.usb_storage.fstype"

    .line 747
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    goto :goto_e

    .line 751
    :cond_12
    const-string v0, "StorageManagerService"

    .line 753
    const-string v2, "Set USB Storage FsType Property to default"

    .line 755
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string/jumbo v0, "sys.usb_storage.fstype"

    .line 761
    const-string/jumbo v2, "none"

    .line 764
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_13
    :goto_e
    iget v0, v5, Landroid/os/storage/VolumeInfo;->type:I

    .line 769
    if-eqz v0, :cond_14

    .line 771
    if-ne v0, v14, :cond_15

    .line 773
    :cond_14
    iget v0, v5, Landroid/os/storage/VolumeInfo;->state:I

    .line 775
    if-ne v0, v14, :cond_15

    .line 777
    iget-object v0, v3, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 779
    iget-object v2, v5, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 781
    const/4 v3, 0x2

    .line 782
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 785
    move-result-object v2

    .line 786
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 789
    :cond_15
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    .line 792
    move-result v0

    .line 793
    if-nez v0, :cond_16

    .line 795
    goto :goto_12

    .line 796
    :cond_16
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 799
    move-result-object v0

    .line 800
    if-eqz v0, :cond_1c

    .line 802
    iget v2, v0, Landroid/os/storage/DiskInfo;->flags:I

    .line 804
    and-int/lit8 v2, v2, 0xc

    .line 806
    if-nez v2, :cond_17

    .line 808
    goto :goto_12

    .line 809
    :cond_17
    iget-object v0, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    .line 811
    if-eqz v0, :cond_18

    .line 813
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

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

    .line 821
    goto :goto_f

    .line 822
    :goto_10
    if-eq v8, v2, :cond_1b

    .line 824
    const/4 v2, 0x3

    .line 825
    if-ne v8, v2, :cond_19

    .line 827
    goto :goto_11

    .line 828
    :cond_19
    if-eqz v8, :cond_1a

    .line 830
    const/16 v2, 0x8

    .line 832
    if-ne v8, v2, :cond_1c

    .line 834
    :cond_1a
    iget-object v2, v5, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 836
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 839
    move-result-object v0

    .line 840
    const v2, 0x3345e

    .line 843
    invoke-static {v2, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 846
    goto :goto_12

    .line 847
    :cond_1b
    :goto_11
    iget-object v2, v5, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 849
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 852
    move-result-object v0

    .line 853
    const v2, 0x3345d

    .line 856
    invoke-static {v2, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 859
    :cond_1c
    :goto_12
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 860
    :goto_13
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 863
    goto/16 :goto_21

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

    .line 871
    const-string/jumbo v3, "handleMessage -> H_COMPLETE_UNLOCK_USER"

    .line 874
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 879
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 881
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 883
    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->-$$Nest$mcompleteUnlockUser(Lcom/android/server/StorageManagerService;I)V

    .line 886
    goto/16 :goto_21

    .line 888
    :pswitch_5
    const-string v1, "StorageManagerService"

    .line 890
    const-string/jumbo v2, "handleMessage -> H_BOOT_COMPLETED"

    .line 893
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 898
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 900
    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 903
    goto/16 :goto_21

    .line 905
    :pswitch_6
    const-string v2, "StorageManagerService"

    .line 907
    const-string/jumbo v3, "handleMessage -> H_ABORT_IDLE_MAINT"

    .line 910
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const-string v2, "StorageManagerService"

    .line 915
    const-string v3, "Aborting idle maintenance"

    .line 917
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 922
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 924
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 926
    check-cast v1, Ljava/lang/Runnable;

    .line 928
    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 931
    goto/16 :goto_21

    .line 933
    :pswitch_7
    const-string v2, "StorageManagerService"

    .line 935
    const-string/jumbo v3, "handleMessage -> H_RUN_IDLE_MAINT"

    .line 938
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string v2, "StorageManagerService"

    .line 943
    const-string v3, "Running idle maintenance"

    .line 945
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 950
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 952
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 954
    check-cast v1, Ljava/lang/Runnable;

    .line 956
    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 959
    goto/16 :goto_21

    .line 961
    :pswitch_8
    const-string v1, "StorageManagerService"

    .line 963
    const-string/jumbo v2, "handleMessage -> H_RESET"

    .line 966
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 971
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 973
    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 976
    goto/16 :goto_21

    .line 978
    :pswitch_9
    const-string v2, "StorageManagerService"

    .line 980
    new-instance v3, Ljava/lang/StringBuilder;

    .line 982
    const-string/jumbo v4, "handleMessage -> H_PARTITION_FORGET rec="

    .line 985
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 988
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 990
    check-cast v4, Landroid/os/storage/VolumeRecord;

    .line 992
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    move-result-object v3

    .line 999
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1004
    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 1006
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1008
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1010
    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1012
    iget-object v1, v1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    .line 1014
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1017
    :try_start_d
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1019
    invoke-interface {v0, v2, v1}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 1022
    goto/16 :goto_21

    .line 1024
    :catch_6
    move-exception v0

    .line 1025
    const-string v1, "StorageManagerService"

    .line 1027
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1030
    goto/16 :goto_21

    .line 1032
    :pswitch_a
    const-string v2, "StorageManagerService"

    .line 1034
    const-string/jumbo v3, "handleMessage -> H_VOLUME_UNMOUNT"

    .line 1037
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1042
    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1044
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1046
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1048
    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    .line 1051
    goto/16 :goto_21

    .line 1053
    :pswitch_b
    const-string v2, "StorageManagerService"

    .line 1055
    const-string/jumbo v4, "handleMessage -> H_INTERNAL_BROADCAST"

    .line 1058
    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1063
    check-cast v1, Landroid/content/Intent;

    .line 1065
    const-string v2, "android.os.storage.extra.VOLUME_STATE"

    .line 1067
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1070
    move-result v2

    .line 1071
    const-string v3, "android.os.storage.extra.FS_UUID"

    .line 1073
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1076
    move-result-object v3

    .line 1077
    const-string v4, "StorageManagerService"

    .line 1079
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1081
    const-string/jumbo v6, "broadcasting ("

    .line 1084
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1090
    const-string v6, ") state="

    .line 1092
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1098
    const-string v2, ", fsUuid="

    .line 1100
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1109
    move-result-object v2

    .line 1110
    invoke-static {v4, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1115
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1117
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1119
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1121
    const-string v3, "android.permission.WRITE_MEDIA_STORAGE"

    .line 1123
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1126
    goto/16 :goto_21

    .line 1128
    :pswitch_c
    const-string v2, "StorageManagerService"

    .line 1130
    const-string/jumbo v3, "handleMessage -> H_VOLUME_BROADCAST"

    .line 1133
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1138
    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 1140
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    .line 1143
    move-result-object v2

    .line 1144
    const-string v3, "StorageManagerService"

    .line 1146
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1148
    const-string v5, "Volume "

    .line 1150
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    .line 1156
    move-result-object v5

    .line 1157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    const-string v5, " broadcasting "

    .line 1162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    const-string v5, " to "

    .line 1170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    .line 1176
    move-result-object v5

    .line 1177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1183
    move-result-object v4

    .line 1184
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    .line 1190
    move-result-object v2

    .line 1191
    if-eqz v2, :cond_27

    .line 1193
    new-instance v3, Landroid/content/Intent;

    .line 1195
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    .line 1198
    move-result-object v4

    .line 1199
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 1202
    move-result-object v4

    .line 1203
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1206
    const-string v2, "android.os.storage.extra.STORAGE_VOLUME"

    .line 1208
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1211
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1214
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1216
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1218
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1220
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    .line 1223
    move-result-object v1

    .line 1224
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1227
    goto/16 :goto_21

    .line 1229
    :pswitch_d
    const-string v2, "StorageManagerService"

    .line 1231
    const-string/jumbo v3, "handleMessage -> H_VOLUME_MOUNT"

    .line 1234
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1239
    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1241
    iget-object v2, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1243
    check-cast v2, Lcom/android/server/StorageManagerService;

    .line 1245
    invoke-virtual {v2, v1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    .line 1248
    move-result v2

    .line 1249
    if-eqz v2, :cond_1d

    .line 1251
    const-string v0, "StorageManagerService"

    .line 1253
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1255
    const-string v3, "Ignoring mount "

    .line 1257
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 1263
    move-result-object v1

    .line 1264
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    const-string v1, " due to policy"

    .line 1269
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1275
    move-result-object v1

    .line 1276
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    goto/16 :goto_21

    .line 1281
    :cond_1d
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1283
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1285
    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    .line 1288
    goto/16 :goto_21

    .line 1290
    :pswitch_e
    const-string v3, "StorageManagerService"

    .line 1292
    const-string/jumbo v4, "handleMessage -> H_FSTRIM"

    .line 1295
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const-string v3, "StorageManagerService"

    .line 1300
    const-string v4, "Running fstrim idle maintenance"

    .line 1302
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :try_start_e
    iget-object v3, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1307
    check-cast v3, Lcom/android/server/StorageManagerService;

    .line 1309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1312
    move-result-wide v4

    .line 1313
    iput-wide v4, v3, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 1315
    iget-object v3, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1317
    check-cast v3, Lcom/android/server/StorageManagerService;

    .line 1319
    iget-object v4, v3, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 1321
    iget-wide v7, v3, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 1323
    invoke-virtual {v4, v7, v8}, Ljava/io/File;->setLastModified(J)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 1326
    goto :goto_16

    .line 1327
    :catch_7
    const-string v3, "StorageManagerService"

    .line 1329
    const-string v4, "Unable to record last fstrim!"

    .line 1331
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :goto_16
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1336
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1338
    invoke-virtual {v0, v2, v6}, Lcom/android/server/StorageManagerService;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 1341
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1343
    check-cast v0, Ljava/lang/Runnable;

    .line 1345
    if-eqz v0, :cond_27

    .line 1347
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1350
    goto/16 :goto_21

    .line 1352
    :pswitch_f
    const-string v5, "StorageManagerService"

    .line 1354
    const-string/jumbo v6, "handleMessage -> H_SHUTDOWN"

    .line 1357
    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1362
    check-cast v1, Landroid/os/storage/IStorageShutdownObserver;

    .line 1364
    :try_start_f
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1366
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1368
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1370
    invoke-interface {v0}, Landroid/os/IVold;->shutdown()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 1373
    goto :goto_17

    .line 1374
    :catch_8
    move-exception v0

    .line 1375
    const-string v4, "StorageManagerService"

    .line 1377
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1380
    move v4, v2

    .line 1381
    :goto_17
    if-eqz v1, :cond_27

    .line 1383
    if-eqz v4, :cond_1e

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

    .line 1390
    goto/16 :goto_21

    .line 1392
    :pswitch_10
    const-string v1, "StorageManagerService"

    .line 1394
    const-string/jumbo v2, "handleMessage -> H_DAEMON_CONNECTED"

    .line 1397
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1402
    check-cast v0, Lcom/android/server/StorageManagerService;

    .line 1404
    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 1407
    goto/16 :goto_21

    .line 1409
    :pswitch_11
    const-string v1, "StorageManagerService"

    .line 1411
    const-string/jumbo v3, "handleMessage -> H_SYSTEM_READY"

    .line 1414
    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1419
    move-object v1, v0

    .line 1420
    check-cast v1, Lcom/android/server/StorageManagerService;

    .line 1422
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1424
    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 1427
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1429
    sget-object v3, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    .line 1431
    const-string v3, "NandswapManager"

    .line 1433
    :try_start_11
    const-string v5, "Initialize NandswapManager..."

    .line 1435
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    .line 1438
    :try_start_12
    new-instance v5, Lcom/android/server/NandswapManager$NandswapClient;

    .line 1440
    invoke-direct {v5}, Lcom/android/server/NandswapManager$NandswapClient;-><init>()V

    .line 1443
    sput-object v5, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    .line 1445
    invoke-static {}, Lcom/android/server/NandswapManager;->initNandswapClient()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    .line 1448
    :try_start_13
    invoke-static {v0}, Lcom/android/server/NandswapManager;->makeNandswapBigdataManager(Landroid/content/Context;)Z

    .line 1451
    move-result v5

    .line 1452
    if-nez v5, :cond_1f

    .line 1454
    const-string v5, "Bigdata is not supported"

    .line 1456
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 1464
    new-instance v5, Landroid/content/IntentFilter;

    .line 1466
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1469
    const-string/jumbo v6, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 1472
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1475
    const-string v6, "android.intent.action.REBOOT"

    .line 1477
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1480
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    .line 1482
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1485
    const-string/jumbo v6, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 1488
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1491
    sget-object v6, Lcom/android/server/NandswapManager;->mContext:Landroid/content/Context;

    .line 1493
    sget-object v7, Lcom/android/server/NandswapManager;->intentReceiver:Lcom/android/server/NandswapManager$1;

    .line 1495
    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1498
    invoke-static {v0}, Lcom/android/server/NandswapManager;->testRestoreExpandSizeAndList(Landroid/content/Context;)V

    .line 1501
    invoke-static {}, Lcom/android/server/NandswapManager;->isRemainStorageLifeTime()Z

    .line 1504
    move-result v0

    .line 1505
    if-nez v0, :cond_20

    .line 1507
    goto :goto_1b

    .line 1508
    :cond_20
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextLimitReset()V

    .line 1511
    invoke-static {}, Lcom/android/server/NandswapManager;->schedNextUpdateAvgerage()V

    .line 1514
    goto :goto_1b

    .line 1515
    :catch_a
    move-exception v0

    .line 1516
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1518
    const-string v7, "Unexpected error while create mClient: "

    .line 1520
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1526
    move-result-object v0

    .line 1527
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1533
    move-result-object v0

    .line 1534
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    sput-object v6, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    .line 1539
    goto :goto_1b

    .line 1540
    :goto_1a
    const-string v5, "Unexpected error while scheduleNandswapManager"

    .line 1542
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1548
    :goto_1b
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1550
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1553
    move-result-object v0

    .line 1554
    const-string/jumbo v3, "zram_enabled"

    .line 1557
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1560
    move-result-object v3

    .line 1561
    new-instance v5, Lcom/android/server/StorageManagerService$3;

    .line 1563
    invoke-direct {v5, v1}, Lcom/android/server/StorageManagerService$3;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 1566
    invoke-virtual {v0, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1569
    invoke-virtual {v1}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    .line 1572
    const-string/jumbo v0, "persist.sys.zram_enabled"

    .line 1575
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1578
    move-result-object v0

    .line 1579
    const-string v3, "0"

    .line 1581
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1584
    move-result v0

    .line 1585
    if-nez v0, :cond_21

    .line 1587
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1589
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1592
    move-result-object v0

    .line 1593
    const v3, 0x111029e

    .line 1596
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1599
    move-result v0

    .line 1600
    if-eqz v0, :cond_21

    .line 1602
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1604
    invoke-static {v0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 1607
    :cond_21
    new-instance v0, Landroid/media/MediaCodecList;

    .line 1609
    invoke-direct {v0, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 1612
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    .line 1615
    move-result-object v0

    .line 1616
    array-length v3, v0

    .line 1617
    move v5, v2

    .line 1618
    :goto_1c
    if-ge v5, v3, :cond_25

    .line 1620
    aget-object v6, v0, v5

    .line 1622
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 1625
    move-result v7

    .line 1626
    if-eqz v7, :cond_22

    .line 1628
    goto :goto_1e

    .line 1629
    :cond_22
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 1632
    move-result-object v6

    .line 1633
    array-length v7, v6

    .line 1634
    move v8, v2

    .line 1635
    :goto_1d
    if-ge v8, v7, :cond_24

    .line 1637
    aget-object v9, v6, v8

    .line 1639
    const-string/jumbo v10, "video/hevc"

    .line 1642
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1645
    move-result v9

    .line 1646
    if-eqz v9, :cond_23

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

    .line 1657
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 1660
    move-result v0

    .line 1661
    if-eqz v0, :cond_26

    .line 1663
    const-string/jumbo v0, "persist.sys.fuse.transcode_enabled"

    .line 1666
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 1669
    move-result v0

    .line 1670
    goto :goto_20

    .line 1671
    :cond_26
    const-string/jumbo v0, "storage_native_boot"

    .line 1674
    const-string/jumbo v2, "transcode_enabled"

    .line 1677
    invoke-static {v0, v2, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1680
    move-result v0

    .line 1681
    :goto_20
    const-string/jumbo v2, "sys.fuse.transcode_enabled"

    .line 1684
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1687
    move-result-object v3

    .line 1688
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    if-eqz v0, :cond_27

    .line 1693
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1695
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1698
    move-result-object v0

    .line 1699
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1701
    new-instance v2, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;

    .line 1703
    invoke-direct {v2, v1}, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 1706
    invoke-virtual {v0, v2}, Landroid/app/ActivityManagerInternal;->registerAnrController(Landroid/app/AnrController;)V

    .line 1709
    :catch_b
    :cond_27
    :goto_21
    return-void

    .line 1710
    :pswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/server/StorageManagerService$Callbacks;->handleMessage$com$android$server$StorageManagerService$ObbActionHandler(Landroid/os/Message;)V

    .line 1713
    return-void

    .line 1714
    :pswitch_13
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1716
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 1718
    iget-object v5, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1720
    check-cast v5, Landroid/os/RemoteCallbackList;

    .line 1722
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 1725
    move-result v5

    .line 1726
    :goto_22
    if-ge v2, v5, :cond_28

    .line 1728
    iget-object v6, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1730
    check-cast v6, Landroid/os/RemoteCallbackList;

    .line 1732
    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1735
    move-result-object v6

    .line 1736
    check-cast v6, Landroid/os/storage/IStorageEventListener;

    .line 1738
    :try_start_14
    iget v7, v1, Landroid/os/Message;->what:I

    .line 1740
    invoke-static {v6, v7, v3}, Lcom/android/server/StorageManagerService$Callbacks;->invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_c

    .line 1743
    :catch_c
    add-int/2addr v2, v4

    .line 1744
    goto :goto_22

    .line 1745
    :cond_28
    iget-object v0, v0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 1747
    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 1749
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1752
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

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
