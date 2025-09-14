.class public final Lcom/android/server/pm/PackageFreezer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mCloseGuard:Ldalvik/system/CloseGuard;

.field public final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mInstallRequest:Lcom/android/server/pm/InstallRequest;

.field public final mPackageName:Ljava/lang/String;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/InstallRequest;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    const-string p1, "close"

    invoke-virtual {v1, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 8
    iput-object p2, p0, Lcom/android/server/pm/PackageFreezer;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    if-eqz p2, :cond_0

    .line 9
    iget-object p0, p2, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->improveInstallFreeze()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/InstallRequest;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move/from16 v6, p5

    move-object/from16 v2, p6

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 14
    iput-object v7, v0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 15
    iput-object v1, v0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 16
    iput-object v2, v0, Lcom/android/server/pm/PackageFreezer;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    if-eqz v2, :cond_0

    .line 17
    iget-object v2, v2, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->improveInstallFreeze()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    .line 18
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    .line 19
    :cond_0
    iget-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v3, v7, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v8, 0x0

    .line 21
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v1, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v9, 0x1

    add-int/2addr v3, v9

    .line 22
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v3, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 24
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_6

    if-eqz p7, :cond_5

    .line 25
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->waitApplicationKilled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 26
    iget-object v10, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 27
    iget v3, v1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 28
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/app/ActivityManagerInternal;

    .line 29
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v11, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    new-instance v12, Lcom/android/server/pm/KillAppBlocker;

    invoke-direct {v12}, Lcom/android/server/pm/KillAppBlocker;-><init>()V

    .line 31
    :try_start_1
    iget-boolean v1, v12, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    if-nez v1, :cond_2

    .line 32
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 33
    :try_start_2
    iget-object v2, v12, Lcom/android/server/pm/KillAppBlocker;->mUidObserver:Lcom/android/server/pm/KillAppBlocker$1;

    const-string/jumbo v13, "pm"

    const/4 v14, 0x2

    const/4 v15, -0x1

    invoke-interface {v1, v2, v14, v15, v13}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 34
    iput-boolean v9, v12, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_2
    move-object v1, v11

    move-object v2, v10

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    .line 35
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->killApplicationSync(Ljava/lang/String;IILjava/lang/String;I)V

    .line 36
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v12, v11, v1, v2, v10}, Lcom/android/server/pm/KillAppBlocker;->waitAppProcessGone(Landroid/app/ActivityManagerInternal;Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    iget-boolean v1, v12, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    if-eqz v1, :cond_6

    .line 38
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 39
    :try_start_4
    iput-boolean v8, v12, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    .line 40
    iget-object v2, v12, Lcom/android/server/pm/KillAppBlocker;->mUidObserver:Lcom/android/server/pm/KillAppBlocker$1;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 41
    iget-boolean v1, v12, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    if-eqz v1, :cond_3

    .line 42
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 43
    :try_start_5
    iput-boolean v8, v12, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    .line 44
    iget-object v2, v12, Lcom/android/server/pm/KillAppBlocker;->mUidObserver:Lcom/android/server/pm/KillAppBlocker$1;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 45
    :catch_1
    :cond_3
    throw v0

    .line 46
    :cond_4
    :goto_0
    const-string v1, "PackageManager"

    const-string v2, "Holds PM\'s lock, unable kill application synchronized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {v10, v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_1

    .line 48
    :cond_5
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 49
    iget v1, v1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 50
    invoke-static {v2, v1, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    .line 51
    :catch_2
    :cond_6
    :goto_1
    iget-object v0, v0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 52
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 19
    .line 20
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sub-int/2addr v1, v2

    .line 44
    if-lez v1, :cond_0

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v2, v3, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :goto_0
    monitor-exit v0

    .line 72
    goto :goto_2

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 75
    .line 76
    throw p0

    .line 77
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->improveInstallFreeze()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    const/4 v1, 0x6

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    .line 93
    .line 94
    .line 95
    :cond_2
    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 97
    .line 98
    :cond_3
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method
