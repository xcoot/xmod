.class public final Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAttributionMessage:Ljava/lang/String;

.field public mAttributionTagFuture:Ljava/util/concurrent/CompletableFuture;

.field public mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

.field public mServiceInfo:Landroid/content/pm/ServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    const-string p2, "MusicRecognitionManagerService"

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    const-class p2, Landroid/app/AppOpsManager;

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/app/AppOpsManager;

    .line 22
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 24
    const-string p1, "MusicRecognitionManager.invokedByUid."

    .line 26
    invoke-static {p3, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionMessage:Ljava/lang/String;

    .line 32
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    .line 35
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 37
    return-void
.end method

.method public static sanitizeBundle(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 24
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    instance-of v3, v2, Landroid/os/Bundle;

    .line 30
    if-eqz v3, :cond_2

    .line 32
    check-cast v2, Landroid/os/Bundle;

    .line 34
    invoke-static {v2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->sanitizeBundle(Landroid/os/Bundle;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    instance-of v3, v2, Landroid/os/IBinder;

    .line 40
    if-nez v3, :cond_3

    .line 42
    instance-of v2, v2, Landroid/os/ParcelFileDescriptor;

    .line 44
    if-eqz v2, :cond_1

    .line 46
    :cond_3
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 49
    goto :goto_0

    .line 50
    :cond_4
    return-void
.end method


# virtual methods
.method public final beginRecognitionLocked(Landroid/media/musicrecognition/RecognitionRequest;Landroid/os/IBinder;)V
    .locals 13

    .line 1
    invoke-static {p2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    .line 4
    move-result-object p2

    .line 5
    const-string v0, "Remote service bound: "

    .line 7
    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 9
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 11
    const-string v3, "MusicRecognitionManagerPerUserService"

    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v1, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 22
    move-object v0, v2

    .line 23
    check-cast v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 25
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 27
    if-eqz v0, :cond_0

    .line 29
    const-string/jumbo v0, "ensureRemoteServiceLocked(): not set"

    .line 32
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    move-object v0, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 40
    move-result-object v7

    .line 41
    new-instance v1, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 43
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v6

    .line 47
    new-instance v10, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;

    .line 49
    invoke-direct {v10, p0, p2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;)V

    .line 52
    move-object v5, v2

    .line 53
    check-cast v5, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 55
    invoke-virtual {v5}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    .line 58
    move-result v11

    .line 59
    iget-boolean v12, v5, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 61
    iget v8, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 63
    move-object v5, v1

    .line 64
    move-object v9, p0

    .line 65
    invoke-direct/range {v5 .. v12}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;ZZ)V

    .line 68
    iput-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 70
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 77
    move-result-object v1

    .line 78
    iget-object v5, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 80
    invoke-virtual {v5}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->getComponentName()Landroid/content/ComponentName;

    .line 83
    move-result-object v5

    .line 84
    const/16 v6, 0x80

    .line 86
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 89
    move-result-object v1

    .line 90
    iput-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 92
    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 94
    invoke-virtual {v1}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->getAttributionTag()Ljava/util/concurrent/CompletableFuture;

    .line 97
    move-result-object v1

    .line 98
    iput-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 107
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->getComponentName()Landroid/content/ComponentName;

    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "Service was not found."

    .line 125
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 130
    :goto_1
    iput-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 132
    if-nez v0, :cond_3

    .line 134
    const/4 p0, 0x3

    .line 135
    :try_start_1
    invoke-interface {p2, p0}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    :catch_1
    return-void

    .line 139
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 142
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    array-length v1, v0

    .line 144
    const/4 v5, 0x2

    .line 145
    if-eq v1, v5, :cond_4

    .line 147
    const-string v0, "Failed to create audio stream pipe, unexpected number of file descriptors"

    .line 149
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    goto :goto_3

    .line 153
    :cond_4
    const/4 v1, 0x0

    .line 154
    aget-object v5, v0, v1

    .line 156
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {v5}, Ljava/io/FileDescriptor;->valid()Z

    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_6

    .line 166
    const/4 v5, 0x1

    .line 167
    aget-object v6, v0, v5

    .line 169
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v6}, Ljava/io/FileDescriptor;->valid()Z

    .line 176
    move-result v6

    .line 177
    if-nez v6, :cond_5

    .line 179
    goto :goto_2

    .line 180
    :cond_5
    aget-object v1, v0, v1

    .line 182
    aget-object v0, v0, v5

    .line 184
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 187
    move-result-object v4

    .line 188
    goto :goto_3

    .line 189
    :cond_6
    :goto_2
    const-string v0, "Failed to create audio stream pipe, didn\'t receive a pair of valid file descriptors."

    .line 191
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    goto :goto_3

    .line 195
    :catch_2
    move-exception v0

    .line 196
    const-string v1, "Failed to create audio stream pipe"

    .line 198
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    :goto_3
    if-nez v4, :cond_7

    .line 203
    const/4 p0, 0x7

    .line 204
    :try_start_3
    invoke-interface {p2, p0}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 207
    :catch_3
    return-void

    .line 208
    :cond_7
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 210
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 212
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 214
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 216
    iget-object v3, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    .line 218
    new-instance v4, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;

    .line 220
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;)V

    .line 223
    check-cast v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 225
    iget-object p2, v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 227
    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 230
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 232
    invoke-virtual {p1}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioFormat()Landroid/media/AudioFormat;

    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p0, v1, p1}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->onAudioStreamStarted(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;)V

    .line 239
    return-void
.end method

.method public final destroyService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final finishRecordAudioOp(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 5
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 14
    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 18
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/app/AppOpsManager;->finishProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 4
    move-result-object v0

    .line 5
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 7
    const-wide/16 v1, 0x80

    .line 9
    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object p1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 15
    const-string v0, "android.permission.BIND_MUSIC_RECOGNITION_SERVICE"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    const-string v0, "MusicRecognitionService from \'"

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string p0, "\' does not require permission android.permission.BIND_MUSIC_RECOGNITION_SERVICE"

    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    const-string p1, "MusicRecognitionManagerPerUserService"

    .line 47
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance p0, Ljava/lang/SecurityException;

    .line 52
    const-string p1, "Service does not require permission android.permission.BIND_MUSIC_RECOGNITION_SERVICE"

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0

    .line 58
    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 60
    const-string v0, "Could not get service for "

    .line 62
    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 3
    :try_start_0
    iget-object v0, p1, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->mServerCallback:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;

    .line 5
    iget-object v0, v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-interface {v0, v1}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "remote service died: "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string v0, "MusicRecognitionManagerPerUserService"

    .line 28
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->destroyService()V

    .line 34
    return-void
.end method

.method public final startRecordAudioOp(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 5
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 14
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 18
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 20
    iget-object v5, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionMessage:Ljava/lang/String;

    .line 22
    move v2, v3

    .line 23
    move-object v3, v4

    .line 24
    move-object v4, p1

    .line 25
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 31
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 33
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 35
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 37
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p0

    .line 43
    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    const-string p1, "Starting audio streaming. Attributing to %s (%d) with tag \'%s\'"

    .line 49
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    const-string p1, "MusicRecognitionManagerPerUserService"

    .line 55
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v0

    .line 65
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 67
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 70
    move-result-object p0

    .line 71
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 75
    const-string v0, "Failed to obtain RECORD_AUDIO permission (status: %d) for receiving service: %s"

    .line 77
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p1
.end method

.method public final streamAudio(Landroid/media/musicrecognition/RecognitionRequest;ILandroid/media/AudioRecord;Ljava/io/OutputStream;)V
    .locals 6

    .line 1
    invoke-virtual {p3}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    .line 4
    move-result v0

    .line 5
    div-int/2addr v0, p2

    .line 6
    new-array p2, v0, [B

    .line 8
    invoke-virtual {p1}, Landroid/media/musicrecognition/RecognitionRequest;->getIgnoreBeginningFrames()I

    .line 11
    move-result p1

    .line 12
    mul-int/lit8 p1, p1, 0x2

    .line 14
    invoke-virtual {p3}, Landroid/media/AudioRecord;->startRecording()V

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    move v3, v2

    .line 20
    :cond_0
    :goto_0
    if-ltz v2, :cond_2

    .line 22
    invoke-virtual {p3}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    .line 25
    move-result v2

    .line 26
    mul-int/lit8 v2, v2, 0x2

    .line 28
    if-ge v3, v2, :cond_2

    .line 30
    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 32
    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {p3, p2, v1, v0}, Landroid/media/AudioRecord;->read([BII)I

    .line 37
    move-result v2

    .line 38
    if-lez v2, :cond_0

    .line 40
    add-int/2addr v3, v2

    .line 41
    if-lez p1, :cond_1

    .line 43
    sub-int/2addr p1, v2

    .line 44
    if-gez p1, :cond_0

    .line 46
    add-int v4, v2, p1

    .line 48
    neg-int v5, p1

    .line 49
    invoke-virtual {p4, p2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const-string p0, "Streamed "

    .line 59
    const-string p1, " bytes from audio record"

    .line 61
    const-string p2, "MusicRecognitionManagerPerUserService"

    .line 63
    invoke-static {v3, p0, p1, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
