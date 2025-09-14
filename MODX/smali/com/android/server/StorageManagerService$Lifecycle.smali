.class public final Lcom/android/server/StorageManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mStorageManagerService:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 7

    .line 1
    const/16 v0, 0x1f4

    .line 3
    if-ne p1, v0, :cond_2

    .line 5
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 7
    sget-object p1, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 14
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 20
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 22
    const-string/jumbo p1, "package"

    .line 25
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 35
    const-string p1, "appops"

    .line 37
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 47
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 53
    move-result v2

    .line 54
    check-cast p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 56
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 58
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 61
    move-result-object v1

    .line 62
    const-wide/32 v4, 0xc0000

    .line 65
    const/16 v3, 0x3e8

    .line 67
    const-string/jumbo v6, "media"

    .line 70
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->resolveContentProvider(IIJLjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_0

    .line 76
    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 80
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 83
    move-result v1

    .line 84
    iput v1, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 86
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 88
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 90
    sput-object p1, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 94
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 97
    move-result v2

    .line 98
    check-cast p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 100
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 102
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 105
    move-result-object v1

    .line 106
    const-wide/32 v4, 0xc0000

    .line 109
    const/16 v3, 0x3e8

    .line 111
    const-string/jumbo v6, "downloads"

    .line 114
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->resolveContentProvider(IIJLjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 122
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 124
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 127
    move-result p1

    .line 128
    iput p1, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 132
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 135
    move-result v2

    .line 136
    check-cast p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 138
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 140
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 143
    move-result-object v1

    .line 144
    const-wide/32 v4, 0xc0000

    .line 147
    const/16 v3, 0x3e8

    .line 149
    const-string/jumbo v6, "com.android.externalstorage.documents"

    .line 152
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->resolveContentProvider(IIJLjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_4

    .line 158
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 160
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 162
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 165
    move-result p1

    .line 166
    iput p1, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 168
    goto :goto_0

    .line 169
    :cond_2
    const/16 v0, 0x226

    .line 171
    const/4 v1, 0x1

    .line 172
    if-ne p1, v0, :cond_3

    .line 174
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 176
    sget-object p1, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 183
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 189
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 192
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 194
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 201
    goto :goto_0

    .line 202
    :cond_3
    const/16 v0, 0x3e8

    .line 204
    if-ne p1, v0, :cond_4

    .line 206
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 208
    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 210
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 212
    const/16 p1, 0xd

    .line 214
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 221
    :cond_4
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/StorageManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 12
    const-string/jumbo v1, "mount"

    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 18
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 20
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    .line 23
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    .line 26
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 18
    const-wide/32 v2, 0x4c2000

    .line 21
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 24
    move-result v4

    .line 25
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(IIJ)Ljava/util/List;

    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v1

    .line 33
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v2

    .line 37
    const-string v3, "StorageManagerService"

    .line 39
    if-eqz v2, :cond_1

    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 47
    :try_start_0
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 49
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 51
    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 53
    const/16 v7, 0x57

    .line 55
    invoke-interface {v4, v7, v5, v6}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_0

    .line 61
    const/4 v4, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const/4 v4, 0x0

    .line 64
    :goto_1
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 66
    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 68
    invoke-virtual {p0, v6, v5, v4}, Lcom/android/server/StorageManagerService;->updateLegacyStorageApps(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v4

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    const-string v6, "Failed to check legacy op for package "

    .line 77
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 82
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v3, v2, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Landroid/util/SparseArray;

    .line 95
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object v1

    .line 99
    if-nez v1, :cond_2

    .line 101
    new-instance v1, Lcom/android/server/StorageManagerService$7;

    .line 103
    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$7;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 106
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 108
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 110
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 113
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Landroid/util/SparseArray;

    .line 115
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 121
    const-string p1, "PackageMonitor is already registered for: "

    .line 123
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_2
    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 6
    move-result p1

    .line 7
    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-string v0, "StorageManagerService"

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v2, "onUserStopped "

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v0, "#onUserStopped might be slow"

    .line 34
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 39
    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 42
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    .line 44
    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v1, "StorageManagerService"

    .line 51
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 56
    monitor-enter v0

    .line 57
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 59
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 6
    move-result p1

    .line 7
    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v1, "onUserStopping "

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "StorageManagerService"

    .line 29
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 34
    invoke-virtual {v0, p1}, Lcom/android/server/storage/StorageSessionController;->onUserStopping(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :goto_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lcom/android/internal/content/PackageMonitor;

    .line 50
    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 55
    :cond_0
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 7
    iput p1, p2, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 9
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    .line 11
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    .line 17
    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    .line 20
    move-result p2

    .line 21
    const-string v0, "Attempt remount volumes for user: "

    .line 23
    const-string v1, "StorageManagerService"

    .line 25
    if-eqz p2, :cond_0

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    invoke-static {v1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p2, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 44
    invoke-virtual {p2, p1}, Lcom/android/server/StorageManagerService;->maybeRemountVolumes(I)V

    .line 47
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 49
    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string p1, " on unlock"

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 75
    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    .line 78
    :goto_0
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 6
    move-result p1

    .line 7
    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-string/jumbo v0, "onUserUnlocking: um is null, so just put userId("

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v2, "onUserUnlocking: userId="

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, "StorageManagerService"

    .line 32
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz p1, :cond_2

    .line 38
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 40
    const-string/jumbo v4, "system"

    .line 43
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v3, v4, v1, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 50
    move-result-object v3

    .line 51
    const-class v4, Landroid/os/UserManager;

    .line 53
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/os/UserManager;

    .line 59
    if-eqz v3, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIsMediaSharedWithParent:Ljava/util/HashMap;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    .line 70
    move-result v5

    .line 71
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, ") with false"

    .line 89
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIsMediaSharedWithParent:Ljava/util/HashMap;

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v4

    .line 105
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 107
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_0
    if-eqz v3, :cond_1

    .line 112
    invoke-virtual {v3}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 121
    move-result-object v0

    .line 122
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 124
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    .line 126
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 129
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    .line 131
    invoke-virtual {v3, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    goto :goto_1

    .line 135
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    .line 143
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    .line 148
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_1

    .line 152
    :catch_0
    const-string v0, "Failed to create user context for user "

    .line 154
    invoke-static {p1, v0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 159
    invoke-virtual {v0, p1}, Lcom/android/server/storage/StorageSessionController;->onUnlockUser(I)V

    .line 162
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 164
    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 167
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    .line 169
    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    goto :goto_2

    .line 173
    :catch_1
    move-exception v0

    .line 174
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :goto_2
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_4

    .line 183
    if-nez p1, :cond_4

    .line 185
    const-string/jumbo v0, "initDirEncryptService"

    .line 188
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 193
    if-nez v0, :cond_3

    .line 195
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    .line 197
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 199
    invoke-direct {v0, v3}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 202
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDirEncryptListner:Lcom/android/server/StorageManagerService$DirEncryptListner;

    .line 206
    if-nez v0, :cond_4

    .line 208
    new-instance v0, Lcom/android/server/StorageManagerService$DirEncryptListner;

    .line 210
    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$DirEncryptListner;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 213
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDirEncryptListner:Lcom/android/server/StorageManagerService$DirEncryptListner;

    .line 215
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 217
    invoke-virtual {v3, v0}, Lcom/samsung/android/security/SemSdCardEncryption;->registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    .line 220
    const-string/jumbo v0, "register direncryption listener"

    .line 223
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 228
    const/16 v2, 0xe

    .line 230
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 237
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    .line 239
    if-eqz v0, :cond_5

    .line 241
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 243
    if-ne p1, v0, :cond_5

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->maybeRemountVolumes(I)V

    .line 248
    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    .line 250
    :cond_5
    return-void
.end method
