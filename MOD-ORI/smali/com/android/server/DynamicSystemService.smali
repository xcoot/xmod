.class public final Lcom/android/server/DynamicSystemService;
.super Landroid/os/image/IDynamicSystemService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDsuSlot:Ljava/lang/String;

.field public volatile mGsiService:Landroid/gsi/IGsiService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/image/IDynamicSystemService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final abort()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->abort_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Landroid/gsi/IGsiService;->cancelGsiInstall()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final closePartition()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->closePartition_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closePartition()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string p0, "DynamicSystemService"

    .line 15
    .line 16
    const-string v0, "Partition installation completes with error"

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public final createPartition(Ljava/lang/String;JZ)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->createPartition_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/gsi/IGsiService;->createPartition(Ljava/lang/String;JZ)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string p2, "Failed to create partition: "

    .line 15
    .line 16
    const-string p3, "DynamicSystemService"

    .line 17
    .line 18
    invoke-static {p2, p1, p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return p0
.end method

.method public final finishInstallation()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->finishInstallation_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closeInstall()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string p0, "DynamicSystemService"

    .line 15
    .line 16
    const-string v0, "Failed to finish installation"

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public final getActiveDsuSlot()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getActiveDsuSlot_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/gsi/IGsiService;->getActiveDsuSlot()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getAvbPublicKey_enforcePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final getGsiService()Landroid/gsi/IGsiService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string/jumbo p0, "gsiservice"

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Landroid/gsi/IGsiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final getInstallationProgress()Landroid/gsi/GsiProgress;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getInstallationProgress_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstallProgress()Landroid/gsi/GsiProgress;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->isEnabled_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isInUse()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "ro.gsid.image_running"

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isInstalled()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "gsid.image_installed"

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "isInstalled(): "

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "DynamicSystemService"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return p0
.end method

.method public final remove()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->remove_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;-><init>()V

    .line 8
    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0, v1}, Landroid/gsi/IGsiService;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x2000

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 21
    .line 22
    .line 23
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    iget p0, v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    :cond_0
    return v0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 33
    :catch_0
    const-string p0, "DynamicSystemService"

    .line 34
    .line 35
    const-string/jumbo v1, "remove() was interrupted"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return v0
.end method

.method public final setAshmem(Landroid/os/ParcelFileDescriptor;J)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->setAshmem_enforcePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0, p1, p2, p3}, Landroid/gsi/IGsiService;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final setEnable(ZZ)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->setEnable_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getActiveDsuSlot()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;-><init>()V

    .line 17
    .line 18
    .line 19
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    iget-object p0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v0, p2, p0, v1}, Landroid/gsi/IGsiService;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, 0x2000

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 28
    .line 29
    .line 30
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    iget p0, v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    :cond_0
    return p1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 40
    :catch_0
    const-string p0, "DynamicSystemService"

    .line 41
    .line 42
    const-string/jumbo p2, "setEnable() was interrupted"

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return p1

    .line 49
    :cond_1
    invoke-interface {v0}, Landroid/gsi/IGsiService;->disableGsi()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final startInstallation(Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->startInstallation_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    .line 9
    .line 10
    const-string/jumbo v1, "os.aot.path"

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "DynamicSystemService"

    .line 22
    .line 23
    if-eqz v2, :cond_7

    .line 24
    .line 25
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v4, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-class v5, Landroid/os/storage/StorageManager;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/os/storage/StorageManager;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_5

    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string/jumbo v6, "vfat"

    .line 74
    .line 75
    .line 76
    iget-object v7, v5, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-nez v6, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    iget-wide v6, v6, Landroid/os/storage/DiskInfo;->size:J

    .line 90
    .line 91
    const/16 v8, 0x14

    .line 92
    .line 93
    shr-long/2addr v6, v8

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v9, ": "

    .line 107
    .line 108
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v9, " MB"

    .line 115
    .line 116
    invoke-static {v8, v9, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-wide/16 v8, 0x7800

    .line 120
    .line 121
    cmp-long v6, v6, v8

    .line 122
    .line 123
    if-gez v6, :cond_4

    .line 124
    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v5, ": insufficient storage"

    .line 138
    .line 139
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {v5, v2}, Landroid/os/storage/VolumeInfo;->getInternalPathForUser(I)Ljava/io/File;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    if-eqz v5, :cond_0

    .line 155
    .line 156
    new-instance v1, Ljava/io/File;

    .line 157
    .line 158
    invoke-direct {v1, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    goto :goto_0

    .line 166
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_6

    .line 171
    .line 172
    const-string v1, "/data/gsi/dsu/"

    .line 173
    .line 174
    invoke-static {v1, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    :cond_6
    const-string/jumbo v2, "startInstallation -> "

    .line 179
    .line 180
    .line 181
    invoke-static {v2, v1, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 185
    .line 186
    invoke-interface {v0, v1}, Landroid/gsi/IGsiService;->openInstall(Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    if-eqz p0, :cond_8

    .line 191
    .line 192
    const-string p0, "Failed to open "

    .line 193
    .line 194
    invoke-static {p0, v1, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/4 p0, 0x0

    .line 198
    return p0

    .line 199
    :cond_8
    const/4 p0, 0x1

    .line 200
    return p0
.end method

.method public final submitFromAshmem(J)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->submitFromAshmem_enforcePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0, p1, p2}, Landroid/gsi/IGsiService;->commitGsiChunkFromAshmem(J)Z

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final suggestScratchSize()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->suggestScratchSize_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Landroid/gsi/IGsiService;->suggestScratchSize()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method
