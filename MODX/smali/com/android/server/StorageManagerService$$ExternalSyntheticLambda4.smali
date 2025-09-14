.class public final synthetic Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/StorageManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/storage/VolumeInfo;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/storage/VolumeInfo;Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/StorageManagerService;

    .line 6
    iput p1, p0, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 8
    iput-object p2, p0, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda4;->f$2:Landroid/os/storage/VolumeInfo;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/StorageManagerService;

    .line 3
    iget v1, p0, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 5
    iget-object p0, p0, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda4;->f$2:Landroid/os/storage/VolumeInfo;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget v3, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 15
    const/16 v4, 0x1d

    .line 17
    if-ge v3, v4, :cond_1

    .line 19
    iget-object v3, v0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 21
    check-cast v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    :try_start_0
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 28
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 30
    invoke-virtual {v3}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 33
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    if-nez v4, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_1
    iget-object v3, v3, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 39
    invoke-interface {v3}, Landroid/os/IInstalld;->migrateLegacyObbData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v3

    .line 44
    :try_start_2
    invoke-static {v3}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 47
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    :catch_1
    move-exception v3

    .line 49
    const-string v4, "PackageManager"

    .line 51
    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 56
    monitor-enter v3

    .line 57
    :try_start_3
    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v5

    .line 63
    check-cast v4, Landroid/util/ArraySet;

    .line 65
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    const/4 v3, 0x0

    .line 70
    move v4, v3

    .line 71
    :goto_1
    const/4 v5, 0x5

    .line 72
    if-ge v4, v5, :cond_2

    .line 74
    :try_start_4
    const-class v5, Landroid/app/ActivityManagerInternal;

    .line 76
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Landroid/app/ActivityManagerInternal;

    .line 82
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 85
    move-result v6

    .line 86
    invoke-virtual {v5, v6}, Landroid/app/ActivityManagerInternal;->getProcessesWithPendingBindMounts(I)Ljava/util/Map;

    .line 89
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    .line 90
    goto :goto_2

    .line 91
    :catch_2
    const-string v5, "StorageManagerService"

    .line 93
    const-string v6, "Some processes are starting, retry"

    .line 95
    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-wide/16 v5, 0x64

    .line 100
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    .line 108
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 111
    move-result-object p0

    .line 112
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object p0

    .line 116
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_5

    .line 122
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Ljava/lang/Integer;

    .line 134
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 137
    move-result v4

    .line 138
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Ljava/lang/String;

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 146
    const-string v6, "Remounting storage for pid: "

    .line 148
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v5

    .line 158
    const-string v6, "StorageManagerService"

    .line 160
    invoke-static {v6, v5}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 165
    invoke-virtual {v5, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    .line 168
    move-result-object v5

    .line 169
    iget-object v6, v0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 171
    const-wide/16 v7, 0x0

    .line 173
    invoke-virtual {v6, v2, v7, v8, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 176
    move-result v6

    .line 177
    array-length v7, v5

    .line 178
    if-eqz v7, :cond_3

    .line 180
    goto :goto_4

    .line 181
    :cond_3
    const/4 v5, 0x1

    .line 182
    new-array v5, v5, [Ljava/lang/String;

    .line 184
    aput-object v2, v5, v3

    .line 186
    :goto_4
    :try_start_5
    iget-object v2, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 188
    invoke-interface {v2, v6, v4, v5}, Landroid/os/IVold;->remountAppStorageDirs(II[Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 191
    goto :goto_3

    .line 192
    :catch_3
    move-exception p0

    .line 193
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 196
    move-result-object p0

    .line 197
    throw p0

    .line 198
    :cond_4
    const-string p0, "StorageManagerService"

    .line 200
    const-string v0, "Not able to getStorageNotOptimizedProcesses() after 5 retries"

    .line 202
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_5
    return-void

    .line 206
    :catchall_0
    move-exception p0

    .line 207
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 208
    throw p0
.end method
