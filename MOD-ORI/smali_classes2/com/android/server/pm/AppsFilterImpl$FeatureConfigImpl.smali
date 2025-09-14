.class public final Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/FeatureConfig;
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# instance fields
.field public mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

.field public final mDisabledPackages:Landroid/util/ArraySet;

.field public volatile mFeatureEnabled:Z

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public mLoggingEnabled:Landroid/util/SparseBooleanArray;

.field public final mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 3
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 5
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 6
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 9
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 11
    iput-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 12
    iput-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 13
    iget-boolean v1, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 14
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object p1, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    return-void

    :catchall_0
    move-exception p0

    .line 18
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final enableLogging(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 8
    .line 9
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ltz p1, :cond_2

    .line 30
    .line 31
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final isGloballyEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isLoggingEnabled(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ltz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final onCompatChange(Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 6
    .line 7
    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2, v1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 16
    .line 17
    .line 18
    move-result-object v11

    .line 19
    if-nez v11, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 23
    .line 24
    .line 25
    move-result-wide v12

    .line 26
    invoke-virtual {v0, v11}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 27
    .line 28
    .line 29
    iget-object v14, v0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 30
    .line 31
    iget-boolean v3, v14, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    iget-object v15, v14, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 45
    .line 46
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 47
    .line 48
    monitor-enter v15

    .line 49
    :try_start_0
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v6, v1

    .line 54
    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 55
    .line 56
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v9, -0x1

    .line 62
    move-object v3, v14

    .line 63
    move-object v4, v2

    .line 64
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 65
    .line 66
    .line 67
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v14, v14}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object v0, v0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 72
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    sub-long v17, v3, v12

    .line 78
    .line 79
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    array-length v1, v1

    .line 84
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 89
    .line 90
    .line 91
    move-result v20

    .line 92
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 93
    .line 94
    .line 95
    move-result v16

    .line 96
    iget-boolean v2, v0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 97
    .line 98
    if-nez v2, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    iget-object v0, v0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 102
    .line 103
    iget v0, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 104
    .line 105
    const/16 v14, 0x222

    .line 106
    .line 107
    const/4 v15, 0x4

    .line 108
    move/from16 v19, v1

    .line 109
    .line 110
    move/from16 v21, v0

    .line 111
    .line 112
    invoke-static/range {v14 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIII)V

    .line 113
    .line 114
    .line 115
    :goto_1
    return-void

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 119
    .line 120
    throw v0
.end method

.method public final onSystemReady()V
    .locals 3

    .line 1
    const-string/jumbo v0, "package_manager_service"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "package_query_filtering_enabled"

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-wide/32 v1, 0x81452eb

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    xor-int/lit8 p0, p0, 0x1

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final snapshot()Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;-><init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final updateEnabledState(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-wide/32 v2, 0x81452eb

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 49
    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, p0}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method

.method public final updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isTestOnly()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isDebuggable()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->enableLogging(IZ)V

    .line 37
    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    .line 42
    .line 43
    monitor-enter p2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 55
    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, p0}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p0

    .line 65
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    return-void
.end method
