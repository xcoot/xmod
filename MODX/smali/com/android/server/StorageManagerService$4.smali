.class public final Lcom/android/server/StorageManagerService$4;
.super Landroid/os/IVoldListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-direct {p0}, Landroid/os/IVoldListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onDiskCreated(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string/jumbo v1, "persist.sys.adoptable"

    .line 9
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result v2

    .line 17
    const v3, 0x1bb67bb3

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eq v2, v3, :cond_1

    .line 23
    const v3, 0x5b18fa1b

    .line 26
    if-eq v2, v3, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string/jumbo v2, "force_off"

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 38
    move v1, v4

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_3

    .line 42
    :cond_1
    const-string/jumbo v2, "force_on"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 51
    const/4 v1, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    const/4 v1, -0x1

    .line 54
    :goto_1
    if-eqz v1, :cond_4

    .line 56
    if-eq v1, v4, :cond_3

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    and-int/lit8 p2, p2, -0x2

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    or-int/lit8 p2, p2, 0x1

    .line 64
    :goto_2
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 66
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 68
    new-instance v1, Landroid/os/storage/DiskInfo;

    .line 70
    invoke-direct {v1, p1, p2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    .line 73
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final onDiskDestroyed(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/os/storage/DiskInfo;

    .line 16
    if-eqz p1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 20
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 22
    sget v1, Lcom/android/server/StorageManagerService$Callbacks;->$r8$clinit:I

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 37
    const/4 p1, 0x6

    .line 38
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/os/storage/DiskInfo;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    iput-wide p2, p0, Landroid/os/storage/DiskInfo;->size:J

    .line 20
    iput-object p4, p0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final onDiskScanned(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/os/storage/DiskInfo;

    .line 16
    if-eqz p1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 20
    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$monDiskScannedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final onEncryptionStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "onEncryptionStateChanged state = "

    .line 4
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 6
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    const-string v2, "StorageManagerService"

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v0, ", type : "

    .line 21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 36
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 38
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 44
    if-eqz p1, :cond_1

    .line 46
    const-string/jumbo p1, "encryptable"

    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_0

    .line 55
    new-instance p1, Lcom/samsung/android/security/SemSdCardEncryption;

    .line 57
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 59
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p1, p0}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance p0, Landroid/os/PersistableBundle;

    .line 66
    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    .line 69
    const-string/jumbo v0, "status"

    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0, v0, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string/jumbo v0, "description"

    .line 79
    invoke-virtual {p0, v0, p3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/security/SemSdCardEncryption;->getListener()Landroid/os/IVoldTaskListener;

    .line 85
    move-result-object p1

    .line 86
    const/16 p3, 0x2b4

    .line 88
    invoke-interface {p1, p3, p0}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception p0

    .line 95
    :try_start_2
    const-string p1, "StorageManagerService"

    .line 97
    const-string/jumbo p3, "failed to send onStatus()"

    .line 100
    invoke-static {p1, p3, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :goto_0
    const-string/jumbo p3, "block"

    .line 106
    :cond_0
    const-string/jumbo p0, "sec.fle.encryption.status"

    .line 109
    invoke-static {p0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo p0, "sec.vold.ext_encrypted_type"

    .line 115
    invoke-static {p0, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string p0, "StorageManagerService"

    .line 120
    const-string/jumbo p1, "onEncryptionStateChanged status updated "

    .line 123
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    monitor-exit v1

    .line 127
    return-void

    .line 128
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    throw p0
.end method

.method public final onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p3

    .line 14
    check-cast p3, Landroid/os/storage/DiskInfo;

    .line 16
    new-instance v1, Landroid/os/storage/VolumeInfo;

    .line 18
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 21
    iput p5, v1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 23
    iget-object p2, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 25
    iget-object p2, p2, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {p2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 32
    invoke-static {p0, v1}, Lcom/android/server/StorageManagerService;->-$$Nest$monVolumeCreatedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final onVolumeDestroyed(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz p1, :cond_1

    .line 19
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 21
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeRemove(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/StorageUserConnection;

    .line 26
    :try_start_1
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne v0, v1, :cond_1

    .line 31
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 33
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 35
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 42
    move-result v1
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    if-nez v1, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    :try_start_3
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 56
    const/4 p0, 0x0

    .line 57
    throw p0
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 58
    :catch_1
    move-exception p0

    .line 59
    const-string v0, "StorageManagerService"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    const-string v2, "Failed when private volume unmounted "

    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-static {v0, p1, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    throw p0
.end method

.method public final onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/os/storage/VolumeInfo;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    iput-object p2, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/os/storage/VolumeInfo;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    iput-object p2, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/os/storage/VolumeInfo;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    iput-object p2, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final onVolumeStateChanged(Ljava/lang/String;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 16
    if-eqz p1, :cond_1

    .line 18
    iget v1, p1, Landroid/os/storage/VolumeInfo;->state:I

    .line 20
    iput p2, p1, Landroid/os/storage/VolumeInfo;->state:I

    .line 22
    new-instance v2, Landroid/os/storage/VolumeInfo;

    .line 24
    invoke-direct {v2, p1}, Landroid/os/storage/VolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    .line 27
    iput p3, v2, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 29
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 32
    move-result-object p1

    .line 33
    iput-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 35
    iput v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 37
    iput p2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 39
    iget-object p3, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 41
    iget-object p3, p3, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 43
    const/16 v1, 0xf

    .line 45
    invoke-virtual {p3, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 52
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    iget p1, v2, Landroid/os/storage/VolumeInfo;->type:I

    .line 59
    const/4 p3, 0x2

    .line 60
    if-ne p1, p3, :cond_1

    .line 62
    if-eq p2, p3, :cond_0

    .line 64
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    .line 66
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 69
    move-result p1

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object p1

    .line 74
    check-cast p0, Landroid/util/ArraySet;

    .line 76
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/StorageManagerService;->mVoldAppDataIsolationEnabled:Z

    .line 82
    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 87
    move-result p1

    .line 88
    new-instance p2, Ljava/lang/Thread;

    .line 90
    new-instance p3, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda4;

    .line 92
    invoke-direct {p3, p1, v2, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda4;-><init>(ILandroid/os/storage/VolumeInfo;Lcom/android/server/StorageManagerService;)V

    .line 95
    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    :goto_0
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p0
.end method

.method public final sendVoldMessage(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string/jumbo v1, "com.samsung.intent.action.EXTERNAL_STORAGE_WARNING_SEC"

    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    const-string v1, "StorageManagerService"

    .line 11
    if-nez p1, :cond_0

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    const-string p1, "Intent["

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, "] cannot be sent"

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 36
    :cond_0
    const-string/jumbo v2, "message"

    .line 39
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v2, "BAD_REMOVAL_SDCARD"

    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 50
    iget-object v2, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 57
    const-string v3, "/sys/class/sec/sdcard/status"

    .line 59
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-static {v2, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    const-string v3, "Notray"

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    const-string v2, "Ext SD Card Tray State is not proper"

    .line 89
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception v2

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const-string v2, "Ext SD Card Tray State File Not Exist"

    .line 97
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_2

    .line 101
    :goto_0
    const-string v3, "Could\'t read Ext SD Card Tray State File : "

    .line 103
    invoke-static {v1, v3, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :cond_3
    :goto_1
    const-string v2, "BAD_REMOVAL_USB"

    .line 108
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_5

    .line 114
    const-string v2, "REBOOT"

    .line 116
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_4

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 125
    const-string p1, "Don\'t send the Intent["

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    const-string p1, "] extras: "

    .line 135
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 149
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    goto :goto_3

    .line 153
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    .line 155
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 157
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 159
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "["

    .line 166
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string p1, "] Bad Removal broadcasting "

    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    const-string p1, " extras: "

    .line 182
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p0

    .line 196
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_3
    return-void
.end method
