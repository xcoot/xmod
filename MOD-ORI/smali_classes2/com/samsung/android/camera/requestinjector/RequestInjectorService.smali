.class public final Lcom/samsung/android/camera/requestinjector/RequestInjectorService;
.super Lcom/samsung/android/camera/IRequestInjector$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbackSet:Ljava/util/Set;

.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

.field public final mContext:Landroid/content/Context;

.field public final mExtraRequestMap:Landroid/util/ArrayMap;

.field public final mHandler:Landroid/os/Handler;

.field public final mRequestInjectorCallbackProxy:Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;

.field public final mRequestInjectorLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/camera/IRequestInjector$Stub;-><init>()V

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
    iput-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCallbackSet:Ljava/util/Set;

    .line 23
    .line 24
    new-instance v0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;-><init>(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorCallbackProxy:Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final applyRequests([Landroid/os/PersistableBundle;)V
    .locals 12

    .line 1
    const-string v0, "Invalid request, no KEY_I32/KEY_U8"

    .line 2
    .line 3
    const-string v1, "Invalid request, no TAG_NAME"

    .line 4
    .line 5
    const-string v2, "  "

    .line 6
    .line 7
    const-string v3, "key.tagName"

    .line 8
    .line 9
    iget-object v4, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v5, "android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_5

    .line 18
    .line 19
    sget-object v4, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 20
    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    array-length v5, p1

    .line 24
    const/4 v6, 0x1

    .line 25
    if-lt v5, v6, :cond_4

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v8, "applyRequests requests size = "

    .line 34
    .line 35
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    array-length v9, p1

    .line 39
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const-string v9, "RequestInjectorService"

    .line 47
    .line 48
    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    array-length v8, p1

    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-static {v4, v7}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :try_start_0
    array-length v7, p1

    .line 68
    const/4 v8, 0x0

    .line 69
    :goto_0
    if-ge v8, v7, :cond_3

    .line 70
    .line 71
    aget-object v10, p1, v8

    .line 72
    .line 73
    invoke-virtual {v10, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    new-instance v11, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    new-instance v11, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-static {v4, v11}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    if-eqz v11, :cond_2

    .line 117
    .line 118
    const-string v11, "key.i32"

    .line 119
    .line 120
    invoke-virtual {v10, v11}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    if-nez v11, :cond_1

    .line 125
    .line 126
    const-string v11, "key.u8"

    .line 127
    .line 128
    invoke-virtual {v10, v11}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    if-eqz v10, :cond_0

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_0
    invoke-static {v4, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    goto :goto_2

    .line 146
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_2
    invoke-static {v4, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .line 160
    .line 161
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :cond_4
    const-string p0, "Invalid request, null or 0 size"

    .line 170
    .line 171
    invoke-static {v4, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 175
    .line 176
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 181
    .line 182
    const-string p1, "Requires permission android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    .line 183
    .line 184
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0
.end method

.method public final clearRequests()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v6, 0x0

    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Landroid/os/PersistableBundle;

    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string v7, "key.i32"

    .line 51
    .line 52
    invoke-virtual {v5, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    if-eqz v7, :cond_0

    .line 57
    .line 58
    const-string v7, "key.i32"

    .line 59
    .line 60
    new-array v8, v6, [I

    .line 61
    .line 62
    invoke-virtual {v5, v7, v8}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    :goto_1
    const-string v7, "key.u8"

    .line 69
    .line 70
    invoke-virtual {v5, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    if-eqz v7, :cond_1

    .line 75
    .line 76
    const-string v7, "key.u8"

    .line 77
    .line 78
    new-array v6, v6, [I

    .line 79
    .line 80
    invoke-virtual {v5, v7, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    new-array v3, v6, [Landroid/os/PersistableBundle;

    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, [Landroid/os/PersistableBundle;

    .line 94
    .line 95
    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V

    .line 96
    .line 97
    .line 98
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 111
    .line 112
    const-string v0, "Requires permission android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    .line 113
    .line 114
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0
.end method

.method public final getICameraService()Landroid/hardware/ICameraService;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    add-int/lit8 v0, v1, 0x1

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    const-string p0, "RequestInjectorService"

    .line 16
    .line 17
    const-string v0, "Native camera service not available."

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 23
    .line 24
    invoke-static {p0, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_0
    const-wide/16 v1, 0x64

    .line 30
    .line 31
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    iget-object v1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v3, v1

    .line 41
    move v1, v0

    .line 42
    move-object v0, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-object v0
.end method

.method public final declared-synchronized registerCallback(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCallbackSet:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->setRequestInjectorCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public final sendAllExtraRequestsToRequestInjector()V
    .locals 3

    .line 1
    const-string v0, "RequestInjectorService"

    .line 2
    .line 3
    const-string/jumbo v1, "sendAllExtraRequestsToRequestInjector"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 10
    .line 11
    const-string/jumbo v1, "sendAllExtraRequestsToRequestInjector"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    new-array v2, v2, [Landroid/os/PersistableBundle;

    .line 28
    .line 29
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, [Landroid/os/PersistableBundle;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V
    .locals 7

    .line 1
    const-string v0, "RequestInjectorService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "sendExtraRequestsToRequestInjector updated size = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v2, p1

    .line 12
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v2, "sendExtraRequestsToRequestInjector updated size = "

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    array-length v2, p1

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    array-length v1, p1

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-ge v2, v1, :cond_3

    .line 42
    .line 43
    aget-object v3, p1, v2

    .line 44
    .line 45
    const-string v4, "RequestInjectorService"

    .line 46
    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v6, "  "

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    sget-object v4, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 68
    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v6, "  "

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-static {v4, v5}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v4, "key.i32"

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_0

    .line 96
    .line 97
    const-string v4, "key.i32"

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    array-length v4, v4

    .line 104
    if-gtz v4, :cond_1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    goto/16 :goto_4

    .line 109
    .line 110
    :cond_0
    :goto_1
    const-string v4, "key.u8"

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    if-eqz v4, :cond_2

    .line 117
    .line 118
    const-string v4, "key.u8"

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    array-length v4, v4

    .line 125
    if-lez v4, :cond_2

    .line 126
    .line 127
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    .line 128
    .line 129
    const-string v5, "key.tagName"

    .line 130
    .line 131
    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    .line 140
    .line 141
    const-string v5, "key.tagName"

    .line 142
    .line 143
    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->getICameraService()Landroid/hardware/ICameraService;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-nez p0, :cond_4

    .line 158
    .line 159
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    const-string p0, "RequestInjectorService"

    .line 161
    .line 162
    const-string/jumbo p1, "sendExtraRequestsToRequestInjector done"

    .line 163
    .line 164
    .line 165
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 169
    .line 170
    const-string/jumbo p1, "sendExtraRequestsToRequestInjector done"

    .line 171
    .line 172
    .line 173
    invoke-static {p0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_4
    :try_start_2
    invoke-interface {p0, p1}, Landroid/hardware/ICameraService;->applyExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_5

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_5
    const-string p0, "RequestInjectorService"

    .line 185
    .line 186
    const-string p1, "Fail to apply ExtraRequests to Request Injector, maybe type mismatch"

    .line 187
    .line 188
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 192
    .line 193
    const-string p1, "Fail to apply ExtraRequests to Request Injector, maybe type mismatch"

    .line 194
    .line 195
    invoke-static {p0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 199
    .line 200
    const-string p1, "Fail to apply request. Please check log"

    .line 201
    .line 202
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :catch_0
    move-exception p0

    .line 207
    :try_start_3
    const-string p1, "RequestInjectorService"

    .line 208
    .line 209
    const-string v1, "Fail to apply ExtraRequests to Request Injector"

    .line 210
    .line 211
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .line 213
    .line 214
    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v2, "Fail to apply ExtraRequests to Request Injector"

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-static {p1, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    const-string p0, "RequestInjectorService"

    .line 238
    .line 239
    const-string/jumbo p1, "sendExtraRequestsToRequestInjector done"

    .line 240
    .line 241
    .line 242
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 246
    .line 247
    const-string/jumbo p1, "sendExtraRequestsToRequestInjector done"

    .line 248
    .line 249
    .line 250
    invoke-static {p0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 256
    :catchall_1
    move-exception p0

    .line 257
    const-string p1, "RequestInjectorService"

    .line 258
    .line 259
    const-string/jumbo v0, "sendExtraRequestsToRequestInjector done"

    .line 260
    .line 261
    .line 262
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 266
    .line 267
    const-string/jumbo v0, "sendExtraRequestsToRequestInjector done"

    .line 268
    .line 269
    .line 270
    invoke-static {p1, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p0
.end method

.method public final declared-synchronized setRequestInjectorCallback()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->getICameraService()Landroid/hardware/ICameraService;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorCallbackProxy:Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;

    .line 16
    .line 17
    invoke-interface {v0, v4}, Landroid/hardware/ICameraService;->setRequestInjectorCallback(Lcom/samsung/android/camera/IRequestInjectorCallback;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_2

    .line 22
    .line 23
    add-int/lit8 v4, v3, 0x1

    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    if-lt v3, v5, :cond_1

    .line 27
    .line 28
    const-string v0, "RequestInjectorService"

    .line 29
    .line 30
    const-string v3, "Can not register request injector callback. return null"

    .line 31
    .line 32
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 36
    .line 37
    const-string v3, "Can not register request injector callback."

    .line 38
    .line 39
    invoke-static {v0, v3}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    .line 41
    .line 42
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_3

    .line 49
    :catchall_1
    move-exception v0

    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :try_start_4
    const-string v3, "RequestInjectorService"

    .line 54
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v6, "Can not register request injector callback. wait 300ms retry count : "

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    const-wide/16 v5, 0x12c

    .line 76
    .line 77
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    .line 79
    .line 80
    :catch_1
    move v3, v4

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 83
    .line 84
    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :goto_1
    :try_start_6
    new-instance v3, Ljava/lang/RuntimeException;

    .line 88
    .line 89
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 93
    :goto_2
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 97
    :goto_3
    monitor-exit p0

    .line 98
    throw v0
.end method

.method public final declared-synchronized unregisterCallback(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCallbackSet:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCallbackSet:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->getICameraService()Landroid/hardware/ICameraService;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    :try_start_4
    invoke-interface {p1}, Landroid/hardware/ICameraService;->removeRequestInjectorCallback()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 29
    .line 30
    .line 31
    :try_start_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 35
    goto :goto_2

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    :try_start_7
    new-instance v2, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 47
    :goto_0
    :try_start_8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 51
    :goto_1
    :try_start_9
    monitor-exit p0

    .line 52
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 53
    :cond_1
    :goto_2
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :catchall_2
    move-exception p1

    .line 56
    monitor-exit p0

    .line 57
    throw p1
.end method
