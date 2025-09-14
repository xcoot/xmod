.class public final Lcom/android/server/apphibernation/AppHibernationService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sIsServiceEnabled:Z


# instance fields
.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastReceiver:Lcom/android/server/apphibernation/AppHibernationService$1;

.field public final mGlobalHibernationStates:Ljava/util/Map;

.field public final mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

.field public final mIActivityManager:Landroid/app/IActivityManager;

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mOatArtifactDeletionEnabled:Z

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

.field public final mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

.field public final mUsageEventListener:Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;

.field public final mUserDiskStores:Landroid/util/SparseArray;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/apphibernation/AppHibernationService;-><init>(Lcom/android/server/apphibernation/AppHibernationService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService$Injector;)V
    .locals 10

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;

    .line 3
    iget-object v1, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {p0, v1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 6
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    .line 8
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 9
    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$LocalService;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    .line 10
    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    invoke-direct {v2, p0}, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    .line 11
    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$1;

    invoke-direct {v2, p0}, Lcom/android/server/apphibernation/AppHibernationService$1;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    .line 12
    new-instance v3, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    .line 13
    iget-object v4, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    .line 14
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 15
    iput-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 16
    const-class v6, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    .line 17
    iput-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 18
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    .line 19
    iput-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    .line 20
    iget-object v6, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 21
    iput-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    .line 22
    iget-object v6, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/StorageStatsManager;

    .line 23
    iput-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    .line 24
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "hibernation"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    new-instance v7, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    new-instance v8, Lcom/android/server/apphibernation/GlobalLevelHibernationProto;

    .line 26
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 27
    iget-object v9, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v7, v6, v8, v9}, Lcom/android/server/apphibernation/HibernationStateDiskStore;-><init>(Ljava/io/File;Lcom/android/server/apphibernation/ProtoReadWriter;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 28
    iput-object v7, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 29
    iget-object v6, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    iput-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 31
    iget-object v0, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x11101b1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    .line 33
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

    .line 34
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 p1, 0x0

    invoke-virtual {v4, p0, p1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 35
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    const-class p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    invoke-static {p0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 41
    const-class p0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 42
    invoke-virtual {p0, v3}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method


# virtual methods
.method public final checkUserStatesExist(ILjava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "AppHibernationService"

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "Attempt to call %s on stopped or nonexistent user %d"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    return v1

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_3

    .line 39
    .line 40
    if-eqz p3, :cond_2

    .line 41
    .line 42
    const-string p0, "Attempt to call %s before states have been read from disk"

    .line 43
    .line 44
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_2
    return v1

    .line 56
    :cond_3
    const/4 p0, 0x1

    .line 57
    return p0
.end method

.method public final getHibernatingPackagesForUser(I)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "getHibernatingPackagesForUser"

    .line 7
    .line 8
    .line 9
    sget-boolean v2, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "android.permission.MANAGE_APP_HIBERNATION"

    .line 19
    .line 20
    const-string v4, "Caller does not have MANAGE_APP_HIBERNATION permission."

    .line 21
    .line 22
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    const/4 v3, 0x1

    .line 33
    :try_start_0
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    monitor-exit v2

    .line 40
    return-object v0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/util/Map;

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/android/server/apphibernation/UserLevelState;

    .line 70
    .line 71
    iget-object v3, v1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 74
    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_3

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iget-boolean v3, v1, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 87
    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    iget-object v1, v1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    monitor-exit v2

    .line 97
    return-object v0

    .line 98
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method

.method public final handleIncomingUser(ILjava/lang/String;)I
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    move v3, p1

    .line 15
    move-object v6, p2

    .line 16
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    throw p0
.end method

.method public final initializeGlobalHibernationStates(Ljava/util/List;)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    const-wide/32 v1, 0x204ca200

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    move v2, v3

    .line 20
    :goto_0
    if-ge v2, v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v5, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 31
    .line 32
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v4, v5, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 38
    .line 39
    check-cast v6, Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    if-eqz p1, :cond_3

    .line 48
    .line 49
    new-instance v1, Landroid/util/ArraySet;

    .line 50
    .line 51
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    move v4, v3

    .line 59
    :goto_1
    if-ge v4, v2, :cond_1

    .line 60
    .line 61
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 66
    .line 67
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    :goto_2
    if-ge v3, v0, :cond_3

    .line 80
    .line 81
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 86
    .line 87
    iget-object v4, v2, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_2

    .line 94
    .line 95
    iget-object v2, v2, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 96
    .line 97
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v4, "No hibernation state associated with package %s. Maybe the package was uninstalled? "

    .line 102
    .line 103
    invoke-static {v4, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const-string v4, "AppHibernationService"

    .line 108
    .line 109
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_2
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 114
    .line 115
    iget-object v5, v2, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 116
    .line 117
    check-cast v4, Landroid/util/ArrayMap;

    .line 118
    .line 119
    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_3
    return-void

    .line 126
    :catch_0
    move-exception p0

    .line 127
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    const-string v0, "Package manager not available"

    .line 130
    .line 131
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method

.method public final initializeUserHibernationStates(ILjava/util/List;)V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    const-wide/32 v1, 0x200ca200

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    new-instance v1, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    if-ge v4, v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 32
    .line 33
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v6, Lcom/android/server/apphibernation/UserLevelState;

    .line 36
    .line 37
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v5, v6, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    if-eqz p2, :cond_4

    .line 49
    .line 50
    new-instance v2, Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    move v5, v3

    .line 60
    :goto_1
    if-ge v5, v4, :cond_1

    .line 61
    .line 62
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 67
    .line 68
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 75
    .line 76
    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    move v4, v3

    .line 87
    :goto_2
    if-ge v4, v0, :cond_4

    .line 88
    .line 89
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Lcom/android/server/apphibernation/UserLevelState;

    .line 94
    .line 95
    iget-object v5, v5, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 102
    .line 103
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Lcom/android/server/apphibernation/UserLevelState;

    .line 108
    .line 109
    if-nez v6, :cond_2

    .line 110
    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const-string v6, "No hibernation state associated with package %s user %d. Maybethe package was uninstalled? "

    .line 120
    .line 121
    invoke-static {v6, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    const-string v6, "AppHibernationService"

    .line 126
    .line 127
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_2
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 132
    .line 133
    if-eqz v6, :cond_3

    .line 134
    .line 135
    iget v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 136
    .line 137
    const/high16 v9, 0x200000

    .line 138
    .line 139
    and-int/2addr v8, v9

    .line 140
    iput v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 141
    .line 142
    if-nez v8, :cond_3

    .line 143
    .line 144
    iget-boolean v6, v7, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 145
    .line 146
    if-eqz v6, :cond_3

    .line 147
    .line 148
    iput-boolean v3, v7, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 149
    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 151
    .line 152
    .line 153
    move-result-wide v8

    .line 154
    iput-wide v8, v7, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    .line 155
    .line 156
    :cond_3
    invoke-virtual {v1, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_4
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 163
    .line 164
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :catch_0
    move-exception p0

    .line 169
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    const-string p2, "Package manager not available"

    .line 172
    .line 173
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    throw p1
.end method

.method public final isHibernatingForUser(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "isHibernatingForUser"

    .line 2
    .line 3
    .line 4
    sget-boolean v1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v3, "android.permission.MANAGE_APP_HIBERNATION"

    .line 15
    .line 16
    const-string v4, "Caller did not have permission while calling isHibernatingForUser"

    .line 17
    .line 18
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return v2

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Lcom/android/server/apphibernation/UserLevelState;

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-boolean p0, p2, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 68
    .line 69
    monitor-exit v1

    .line 70
    return p0

    .line 71
    :cond_3
    :goto_0
    monitor-exit v1

    .line 72
    return v2

    .line 73
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final isHibernatingGlobally(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "android.permission.MANAGE_APP_HIBERNATION"

    .line 12
    .line 13
    const-string v3, "Caller does not have MANAGE_APP_HIBERNATION permission."

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 22
    .line 23
    check-cast v2, Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-boolean p0, v2, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    monitor-exit v0

    .line 53
    return v1

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 4

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/16 v0, 0x1f4

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    const-string p1, "app_hibernation_enabled"

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const-string v1, "app_hibernation"

    .line 23
    .line 24
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    sput-boolean p1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 29
    .line 30
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-class v0, Landroid/app/StatsManager;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/app/StatsManager;

    .line 57
    .line 58
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 64
    .line 65
    const/16 v2, 0x277b

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    const/16 v1, 0x277d

    .line 74
    .line 75
    invoke-virtual {p1, v1, v3, p0, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "app_hibernation"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

    .line 6
    .line 7
    check-cast v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string/jumbo v3, "hibernation"

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 25
    .line 26
    iget-object v3, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mUserLevelHibernationProto:Lcom/android/server/apphibernation/UserLevelHibernationProto;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    .line 30
    invoke-direct {v2, v1, v3, v0}, Lcom/android/server/apphibernation/HibernationStateDiskStore;-><init>(Ljava/io/File;Lcom/android/server/apphibernation/ProtoReadWriter;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v1, p0, v2, p1, v3}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final setHibernatingForUser(Ljava/lang/String;IZ)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setHibernatingForUser"

    .line 2
    .line 3
    .line 4
    sget-boolean v1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "android.permission.MANAGE_APP_HIBERNATION"

    .line 14
    .line 15
    const-string v3, "Caller does not have MANAGE_APP_HIBERNATION permission."

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    const/4 v2, 0x1

    .line 28
    :try_start_0
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/server/apphibernation/UserLevelState;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 56
    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-boolean v2, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 69
    .line 70
    if-ne v2, p3, :cond_3

    .line 71
    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 74
    :cond_3
    iput-boolean p3, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 75
    .line 76
    if-eqz p3, :cond_4

    .line 77
    .line 78
    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 79
    .line 80
    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;

    .line 81
    .line 82
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 90
    .line 91
    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/Object;II)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v2

    .line 104
    iput-wide v2, v0, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    .line 105
    .line 106
    :goto_0
    new-instance p1, Lcom/android/server/apphibernation/UserLevelState;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object p3, v0, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 112
    .line 113
    iput-object p3, p1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 114
    .line 115
    iget-boolean p3, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 116
    .line 117
    iput-boolean p3, p1, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 118
    .line 119
    iget-wide v2, v0, Lcom/android/server/apphibernation/UserLevelState;->savedByte:J

    .line 120
    .line 121
    iput-wide v2, p1, Lcom/android/server/apphibernation/UserLevelState;->savedByte:J

    .line 122
    .line 123
    iget-wide v2, v0, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    .line 124
    .line 125
    iput-wide v2, p1, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    .line 126
    .line 127
    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 128
    .line 129
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;

    .line 130
    .line 131
    invoke-direct {v0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/apphibernation/UserLevelState;I)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    new-instance p1, Ljava/util/ArrayList;

    .line 138
    .line 139
    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 140
    .line 141
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    check-cast p3, Ljava/util/Map;

    .line 146
    .line 147
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    .line 155
    .line 156
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    check-cast p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 161
    .line 162
    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->scheduleWriteHibernationStates(Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 167
    :cond_5
    :goto_1
    const-string p0, "AppHibernationService"

    .line 168
    .line 169
    const-string p3, "Package %s is not installed for user %s"

    .line 170
    .line 171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p3, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 188
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    throw p0
.end method

.method public final setHibernatingGlobally(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.permission.MANAGE_APP_HIBERNATION"

    .line 11
    .line 12
    const-string v2, "Caller does not have MANAGE_APP_HIBERNATION permission."

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 21
    .line 22
    check-cast v1, Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-boolean v2, v1, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    .line 46
    .line 47
    if-eq v2, p2, :cond_3

    .line 48
    .line 49
    iput-boolean p2, v1, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;

    .line 56
    .line 57
    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const-wide/16 p1, 0x0

    .line 67
    .line 68
    iput-wide p1, v1, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    iput-wide p1, v1, Lcom/android/server/apphibernation/GlobalLevelState;->lastUnhibernatedMs:J

    .line 75
    .line 76
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 77
    .line 78
    iget-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 79
    .line 80
    check-cast p2, Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->scheduleWriteHibernationStates(Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :cond_4
    :goto_1
    const-string p0, "AppHibernationService"

    .line 97
    .line 98
    const-string p2, "Package %s is not installed for any user"

    .line 99
    .line 100
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 113
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p0
.end method
