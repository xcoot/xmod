.class public final Lcom/android/server/pm/BackgroundInstallControlService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

.field public final mBinderService:Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

.field public final mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDiskFile:Ljava/io/File;

.field public final mHandler:Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;

.field public final mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field protected final mPackageObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundInstallControlService;-><init>(Lcom/android/server/pm/BackgroundInstallControlService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/BackgroundInstallControlService$Injector;)V
    .locals 5

    .line 2
    check-cast p1, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;

    .line 3
    iget-object v0, p1, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 6
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    .line 7
    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundInstallControlService$1;-><init>(Lcom/android/server/pm/BackgroundInstallControlService;)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 8
    iget-object v0, p1, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 10
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 11
    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 12
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 13
    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 14
    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;

    .line 15
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "BackgroundInstallControlService"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 16
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 18
    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/pm/BackgroundInstallControlService;)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mHandler:Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;

    .line 19
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "bic"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "states"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    iput-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    .line 22
    iget-object p1, p1, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;->mContext:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mContext:Landroid/content/Context;

    .line 24
    new-instance p1, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    invoke-direct {p1}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    .line 26
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 27
    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BackgroundInstallControlService;)V

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 28
    new-instance p1, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;-><init>(Lcom/android/server/pm/BackgroundInstallControlService;)V

    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBinderService:Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

    return-void
.end method


# virtual methods
.method public getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3
    invoke-static {p1, p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object p1

    .line 4
    invoke-virtual {v2, p1, p3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->initBackgroundInstalledPackages()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 9
    iget-object v3, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3, p3, v2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 11
    :cond_1
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    throw p0
.end method

.method public getBackgroundInstalledPackages()Landroid/util/SparseSetArray;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public getInstallerForegroundTimeFrames()Landroid/util/SparseArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLatestInstallSession(ILjava/lang/String;)Ljava/util/Optional;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    const-string v1, "getAllSessions"

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v0, v7

    .line 27
    move v2, v6

    .line 28
    move v3, p1

    .line 29
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 42
    .line 43
    check-cast v3, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ge v2, v3, :cond_2

    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 52
    .line 53
    check-cast v3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/android/server/pm/PackageInstallerHistoricalSession;

    .line 60
    .line 61
    const/4 v4, -0x1

    .line 62
    if-eq p1, v4, :cond_0

    .line 63
    .line 64
    iget v4, v3, Lcom/android/server/pm/PackageInstallerHistoricalSession;->userId:I

    .line 65
    .line 66
    if-ne v4, p1, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerHistoricalSession;->generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    new-instance p1, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-direct {p1, p0, v7, v6, v1}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 89
    .line 90
    .line 91
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 92
    .line 93
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    new-instance p1, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda1;

    .line 105
    .line 106
    invoke-direct {p1, p2}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-instance p1, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda2;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw p0
.end method

.method public initBackgroundInstalledPackages()V
    .locals 12

    .line 1
    const-string v0, "BackgroundInstallControlService"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Landroid/util/SparseSetArray;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v1, Landroid/util/AtomicFile;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    .line 27
    .line 28
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, -0x1

    .line 45
    if-eq v3, v4, :cond_7

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v5, 0x1

    .line 52
    if-eq v3, v5, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-wide v6, 0x20b00000001L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    const/16 v3, -0x2710

    .line 65
    .line 66
    const/4 v8, 0x0

    .line 67
    move v9, v3

    .line 68
    :goto_1
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    if-eq v10, v4, :cond_5

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-eq v10, v5, :cond_4

    .line 79
    .line 80
    const/4 v11, 0x2

    .line 81
    if-eq v10, v11, :cond_3

    .line 82
    .line 83
    new-instance v10, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v11, "Undefined field in proto: "

    .line 89
    .line 90
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-static {v0, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    const-wide v9, 0x10500000002L

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    sub-int/2addr v9, v5

    .line 120
    goto :goto_1

    .line 121
    :cond_4
    const-wide v10, 0x10900000001L

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    goto :goto_1

    .line 131
    :cond_5
    invoke-virtual {v2, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 132
    .line 133
    .line 134
    if-eqz v8, :cond_6

    .line 135
    .line 136
    if-eq v9, v3, :cond_6

    .line 137
    .line 138
    iget-object v3, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 139
    .line 140
    invoke-virtual {v3, v9, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    const-string v3, "Fails to get packageName or UserId from proto file"

    .line 145
    .line 146
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_7
    if-eqz v1, :cond_9

    .line 151
    .line 152
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_5

    .line 156
    :catch_0
    move-exception p0

    .line 157
    goto :goto_4

    .line 158
    :goto_2
    if-eqz v1, :cond_8

    .line 159
    .line 160
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :catchall_1
    move-exception v1

    .line 165
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    :cond_8
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 169
    :goto_4
    const-string v1, "Error reading state from the disk"

    .line 170
    .line 171
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .line 173
    .line 174
    :cond_9
    :goto_5
    return-void
.end method

.method public final onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/BackgroundInstallControlService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    const-string p1, "background_install_control"

    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBinderService:Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    return-void
.end method

.method public writeBackgroundInstalledPackagesToDisk()V
    .locals 12

    .line 1
    const-string v0, "BackgroundInstallControlService"

    .line 2
    .line 3
    new-instance v1, Landroid/util/AtomicFile;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    .line 15
    .line 16
    invoke-direct {v3, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 21
    .line 22
    invoke-virtual {v5}, Landroid/util/SparseSetArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-ge v4, v5, :cond_1

    .line 27
    .line 28
    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    iget-object v6, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 35
    .line 36
    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Ljava/lang/String;

    .line 55
    .line 56
    const-wide v8, 0x20b00000001L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    const-wide v10, 0x10900000001L

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v7, v5, 0x1

    .line 74
    .line 75
    const-wide v10, 0x10500000002L

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p0

    .line 88
    goto :goto_2

    .line 89
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :goto_2
    const-string v3, "Failed to finish write to states protobuf."

    .line 100
    .line 101
    invoke-static {v0, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 105
    .line 106
    .line 107
    :goto_3
    return-void

    .line 108
    :catch_1
    move-exception p0

    .line 109
    const-string v1, "Failed to start write to states protobuf."

    .line 110
    .line 111
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    return-void
.end method
