.class public final Lcom/android/server/pm/PackageManagerService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/PackageSender;
.implements Landroid/content/pm/TestUtilityService;


# static fields
.field public static final BACKGROUND_HANDLER_CALLBACK:Lcom/android/server/pm/PackageManagerService$2;

.field public static final DEBUG_COMPRESSION:Z

.field public static final DEBUG_INSTANT:Z

.field public static final DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

.field public static final DEFERRED_NO_KILL_POST_DELETE_DELAY_MS_EXTENDED:J

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

.field public static final MIN_INSTALLABLE_TARGET_SDK:I

.field public static final PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

.field public static final SYSTEM_PARTITIONS:Ljava/util/List;

.field public static final sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

.field public static sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field public static final sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mAmbientContextDetectionPackage:Ljava/lang/String;

.field public mAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public final mAppInstallDir:Ljava/io/File;

.field public final mAppPredictionServicePackage:Ljava/lang/String;

.field public final mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

.field public final mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

.field public final mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler;

.field public final mAvailableFeatures:Landroid/util/ArrayMap;

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mCacheDir:Ljava/io/File;

.field public final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field public final mCompilerStats:Lcom/android/server/pm/CompilerStats;

.field public final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

.field public final mConfiguratorPackage:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

.field public final mCustomResolverComponentName:Landroid/content/ComponentName;

.field public final mDefParseFlags:I

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDefaultTextClassifierPackage:Ljava/lang/String;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field public final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field public final mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

.field public final mDirtyUsers:Landroid/util/ArraySet;

.field public final mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

.field public final mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

.field public mExistingPackages:Landroid/util/ArraySet;

.field public mExternalSourcesPolicy:Lcom/android/server/appop/AppOpsService$6;

.field public final mFactoryTest:Z

.field public final mFirstBoot:Z

.field public final mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

.field public final mFrozenPackageInterceptor:Lcom/android/server/pm/FrozenPackageInterceptor;

.field public final mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

.field public final mHandler:Landroid/os/Handler;

.field public final mIncidentReportApproverPackage:Ljava/lang/String;

.field public final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field public final mIncrementalVersion:Ljava/lang/String;

.field public final mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

.field public final mInitialNonStoppedSystemPackages:Ljava/util/Set;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

.field public final mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

.field public final mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

.field public final mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

.field public final mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

.field public final mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

.field public final mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

.field public final mIsEngBuild:Z

.field public final mIsPreNMR1Upgrade:Z

.field public final mIsPreQUpgrade:Z

.field public final mIsUpgrade:Z

.field public final mIsUserDebugBuild:Z

.field public final mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

.field public final mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

.field public final mKeepUninstalledPackages:Landroid/util/ArraySet;

.field public final mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

.field public final mLiveComputer:Lcom/android/server/pm/ComputerLocked;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

.field public final mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

.field public final mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

.field public mNextInstallToken:I

.field public final mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mNoKillInstallObservers:Ljava/util/Map;

.field public final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field public final mOverlayConfigSignaturePackage:Ljava/lang/String;

.field public final mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field public final mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

.field public final mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

.field public final mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

.field public final mPackageProperty:Lcom/android/server/pm/PackageProperty;

.field public final mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

.field public final mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPackageUsage:Lcom/android/server/pm/PackageUsage;

.field public final mPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

.field public final mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

.field public final mPendingEnableRollback:Landroid/util/SparseArray;

.field public mPendingEnableRollbackToken:I

.field public final mPendingKillInstallObservers:Ljava/util/Map;

.field public final mPendingVerification:Landroid/util/SparseArray;

.field public mPendingVerificationToken:I

.field public mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

.field public mPlatformPackageOverlayPaths:[Ljava/lang/String;

.field public mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

.field public final mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

.field public final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field public mPrepareAppDataFuture:Ljava/util/concurrent/Future;

.field public final mPriorSdkVersion:I

.field public final mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

.field public final mPromoteSystemApps:Z

.field public final mProtectedBroadcasts:Landroid/util/ArraySet;

.field public final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field public final mRecentsPackage:Ljava/lang/String;

.field public mReleaseOnSystemReady:Ljava/util/List;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

.field public mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

.field public final mRequiredInstallerPackage:Ljava/lang/String;

.field public final mRequiredPermissionControllerPackage:Ljava/lang/String;

.field public final mRequiredSdkSandboxPackage:Ljava/lang/String;

.field public final mRequiredSystemPackages:Ljava/util/Set;

.field public final mRequiredUninstallerPackage:Ljava/lang/String;

.field public final mRequiredVerifierPackages:[Ljava/lang/String;

.field public final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field public mResolveComponentName:Landroid/content/ComponentName;

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public final mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

.field public mResolverReplaced:Z

.field public final mRetailDemoPackage:Ljava/lang/String;

.field public final mRunningInstalls:Landroid/util/SparseArray;

.field public volatile mSafeMode:Z

.field public final mSdkVersion:I

.field public final mSeparateProcesses:[Ljava/lang/String;

.field public final mServiceStartWithDelay:J

.field public final mServicesExtensionPackageName:Ljava/lang/String;

.field public final mSettings:Lcom/android/server/pm/Settings;

.field public final mSetupWizardPackage:Ljava/lang/String;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field public final mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

.field public final mShouldStopSystemPackagesByDefault:Z

.field public final mSnapshotLock:Ljava/lang/Object;

.field public final mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

.field public mSpeg:Lcom/android/server/pm/SpegService;

.field public final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

.field public final mStorageManagerPackage:Ljava/lang/String;

.field public final mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

.field public volatile mSystemReady:Z

.field public final mSystemTextClassifierPackageName:Ljava/lang/String;

.field public final mTestUtilityService:Landroid/content/pm/TestUtilityService;

.field public final mTransferredPackages:Landroid/util/ArraySet;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

.field public final mWatcher:Lcom/android/server/pm/PackageManagerService$1;

.field public final mWearableSensingPackage:Ljava/lang/String;

.field public final mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;


# direct methods
.method public static -$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "android.permission.UPGRADE_RUNTIME_PERMISSIONS"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 23
    .line 24
    const-string v0, " requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY or android.permission.UPGRADE_RUNTIME_PERMISSIONS"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    monitor-exit v2

    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    if-gez p2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/16 p1, 0x8

    .line 32
    .line 33
    if-lt p2, p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    aput-wide v0, p0, p2

    .line 41
    .line 42
    :goto_0
    monitor-exit v2

    .line 43
    :goto_1
    return-void

    .line 44
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public static -$$Nest$mresetComponentEnabledSettingsIfNeededLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_a

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResetEnabledSettingsOnAppDataCleared()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;

    .line 44
    .line 45
    invoke-direct {v3, v1, p2, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;-><init>(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    move v5, v4

    .line 50
    :goto_1
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-ge v5, v6, :cond_3

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->accept(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v5, v4

    .line 75
    :goto_2
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-ge v5, v6, :cond_4

    .line 84
    .line 85
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->accept(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move v5, v4

    .line 100
    :goto_3
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-ge v5, v6, :cond_5

    .line 109
    .line 110
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->accept(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    move v5, v4

    .line 125
    :goto_4
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-ge v5, v6, :cond_6

    .line 134
    .line 135
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;->accept(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v5, v5, 0x1

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_6
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_7

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_7
    filled-new-array {p2}, [I

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 170
    .line 171
    iget-object v1, v0, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 172
    .line 173
    monitor-enter v1

    .line 174
    :try_start_0
    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/PendingPackageBroadcasts;->getOrAllocate(ILjava/lang/String;)Ljava/util/ArrayList;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    if-ge v4, p2, :cond_9

    .line 183
    .line 184
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    check-cast p2, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_8

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_6

    .line 200
    :catchall_0
    move-exception p0

    .line 201
    goto :goto_7

    .line 202
    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 207
    .line 208
    const/4 p2, 0x1

    .line 209
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-nez p1, :cond_a

    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 216
    .line 217
    const-wide/16 v0, 0x3e8

    .line 218
    .line 219
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 220
    .line 221
    .line 222
    goto :goto_8

    .line 223
    :goto_7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    throw p0

    .line 225
    :cond_a
    :goto_8
    return-void
.end method

.method public static -$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    const/4 v9, 0x1

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v10

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 13
    .line 14
    .line 15
    move-result-object v11

    .line 16
    const-string/jumbo v2, "set enabled"

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x1

    .line 21
    move-object v1, v11

    .line 22
    move v3, v10

    .line 23
    move/from16 v4, p2

    .line 24
    .line 25
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 26
    .line 27
    .line 28
    if-nez p3, :cond_0

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "/"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Lcom/samsung/android/server/pm/PmServerUtils;->getProcessNameForPid(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    move-object v12, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move-object/from16 v12, p3

    .line 69
    .line 70
    :goto_0
    const-string v1, ""

    .line 71
    .line 72
    const-string v2, "1000/system"

    .line 73
    .line 74
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v2, " stackTrace = "

    .line 83
    .line 84
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v2, 0x5

    .line 88
    invoke-static {v9, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    const/4 v2, 0x0

    .line 104
    :goto_1
    const/4 v15, 0x2

    .line 105
    const/4 v4, 0x3

    .line 106
    if-ge v2, v13, :cond_12

    .line 107
    .line 108
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    const/4 v6, 0x4

    .line 119
    if-eqz v5, :cond_3

    .line 120
    .line 121
    if-eq v5, v9, :cond_3

    .line 122
    .line 123
    if-eq v5, v15, :cond_3

    .line 124
    .line 125
    if-eq v5, v4, :cond_3

    .line 126
    .line 127
    if-ne v5, v6, :cond_2

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    const-string v1, "Invalid new component state: "

    .line 133
    .line 134
    invoke-static {v5, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_3
    :goto_2
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v16

    .line 146
    check-cast v16, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 147
    .line 148
    const-string v14, "PackageManager"

    .line 149
    .line 150
    const-string/jumbo v9, "setEnabledSetting : userId = "

    .line 151
    .line 152
    .line 153
    const-string v3, " packageName = "

    .line 154
    .line 155
    invoke-static {v8, v9, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v9, " cmp = "

    .line 167
    .line 168
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v9, " newState = "

    .line 179
    .line 180
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v9, " callingPackage = "

    .line 191
    .line 192
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-static {v3, v12, v1, v14}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    check-cast v3, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 203
    .line 204
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v0, v11, v3, v8}, Lcom/android/server/pm/PackageManagerService;->isRequiredSystemPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-eqz v9, :cond_6

    .line 213
    .line 214
    if-eq v5, v15, :cond_4

    .line 215
    .line 216
    if-eq v5, v4, :cond_4

    .line 217
    .line 218
    if-ne v5, v6, :cond_6

    .line 219
    .line 220
    :cond_4
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    check-cast v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 225
    .line 226
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-eqz v4, :cond_5

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v1, "Cannot disable required package "

    .line 236
    .line 237
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v1, " callingPackage: "

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    new-instance v0, Ljava/lang/SecurityException;

    .line 259
    .line 260
    const-string v1, "Cannot disable required package "

    .line 261
    .line 262
    invoke-static {v1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v0

    .line 270
    :cond_6
    :goto_3
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    check-cast v3, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 275
    .line 276
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 281
    .line 282
    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    if-eqz v3, :cond_10

    .line 287
    .line 288
    invoke-interface {v11, v3}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    if-eqz v6, :cond_10

    .line 293
    .line 294
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    sget-object v14, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 299
    .line 300
    if-nez v9, :cond_7

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_7
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v14

    .line 311
    if-eqz v14, :cond_a

    .line 312
    .line 313
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v14

    .line 317
    check-cast v14, Ljava/lang/String;

    .line 318
    .line 319
    if-eqz v14, :cond_8

    .line 320
    .line 321
    const-string v15, "com.samsung.android.permission.SAMSUNG_OVERLAY_"

    .line 322
    .line 323
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 324
    .line 325
    .line 326
    move-result v15

    .line 327
    if-nez v15, :cond_9

    .line 328
    .line 329
    const-string v15, "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

    .line 330
    .line 331
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    if-eqz v14, :cond_8

    .line 336
    .line 337
    :cond_9
    const-string v9, "com.samsung.android.themecenter"

    .line 338
    .line 339
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    if-nez v9, :cond_a

    .line 344
    .line 345
    const/4 v9, 0x1

    .line 346
    goto :goto_5

    .line 347
    :cond_a
    :goto_4
    const/4 v9, 0x0

    .line 348
    :goto_5
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v14

    .line 352
    if-eqz v14, :cond_c

    .line 353
    .line 354
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 355
    .line 356
    .line 357
    move-result-object v14

    .line 358
    if-nez v14, :cond_b

    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_b
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v14

    .line 365
    const-string v15, "/data/overlays/current_locale_apks/files"

    .line 366
    .line 367
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v14

    .line 371
    if-eqz v14, :cond_c

    .line 372
    .line 373
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    const-string v14, "com.samsung.android.zippedOverlay"

    .line 378
    .line 379
    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    if-eqz v6, :cond_c

    .line 384
    .line 385
    const/4 v6, 0x1

    .line 386
    :goto_6
    const/16 v14, 0x7d0

    .line 387
    .line 388
    goto :goto_8

    .line 389
    :cond_c
    :goto_7
    const/4 v6, 0x0

    .line 390
    goto :goto_6

    .line 391
    :goto_8
    if-ne v10, v14, :cond_e

    .line 392
    .line 393
    const-string v14, "com.samsung.android.themestore"

    .line 394
    .line 395
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v14

    .line 399
    if-eqz v14, :cond_e

    .line 400
    .line 401
    const-class v14, Landroid/content/pm/PackageManagerInternal;

    .line 402
    .line 403
    invoke-static {v14}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v14

    .line 407
    check-cast v14, Landroid/content/pm/PackageManagerInternal;

    .line 408
    .line 409
    invoke-virtual {v14, v3}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    .line 410
    .line 411
    .line 412
    move-result v14

    .line 413
    if-nez v14, :cond_d

    .line 414
    .line 415
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-eqz v4, :cond_e

    .line 420
    .line 421
    :cond_d
    const/4 v4, 0x1

    .line 422
    goto :goto_9

    .line 423
    :cond_e
    const/4 v4, 0x0

    .line 424
    :goto_9
    if-nez v9, :cond_f

    .line 425
    .line 426
    if-nez v6, :cond_f

    .line 427
    .line 428
    if-nez v4, :cond_f

    .line 429
    .line 430
    sget-object v4, Landroid/content/om/SamsungThemeConstants;->protectedApps:Ljava/util/ArrayList;

    .line 431
    .line 432
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-eqz v4, :cond_10

    .line 437
    .line 438
    :cond_f
    const/4 v6, 0x1

    .line 439
    goto :goto_a

    .line 440
    :cond_10
    const/4 v6, 0x1

    .line 441
    goto :goto_b

    .line 442
    :goto_a
    if-gt v5, v6, :cond_11

    .line 443
    .line 444
    goto :goto_b

    .line 445
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    .line 446
    .line 447
    const-string v1, "Cannot disable a protected package: "

    .line 448
    .line 449
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw v0

    .line 457
    :goto_b
    add-int/2addr v2, v6

    .line 458
    move v9, v6

    .line 459
    goto/16 :goto_1

    .line 460
    .line 461
    :cond_12
    move v6, v9

    .line 462
    if-le v13, v6, :cond_18

    .line 463
    .line 464
    new-instance v1, Landroid/util/ArraySet;

    .line 465
    .line 466
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 467
    .line 468
    .line 469
    new-instance v2, Landroid/util/ArraySet;

    .line 470
    .line 471
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 472
    .line 473
    .line 474
    new-instance v3, Landroid/util/ArrayMap;

    .line 475
    .line 476
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 477
    .line 478
    .line 479
    const/4 v5, 0x0

    .line 480
    :goto_c
    if-ge v5, v13, :cond_18

    .line 481
    .line 482
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v6

    .line 486
    check-cast v6, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 487
    .line 488
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v9

    .line 492
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    .line 493
    .line 494
    .line 495
    move-result v11

    .line 496
    if-eqz v11, :cond_16

    .line 497
    .line 498
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    .line 499
    .line 500
    .line 501
    move-result-object v11

    .line 502
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v14

    .line 506
    if-nez v14, :cond_15

    .line 507
    .line 508
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v11

    .line 515
    check-cast v11, Ljava/lang/Integer;

    .line 516
    .line 517
    if-nez v11, :cond_13

    .line 518
    .line 519
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    .line 520
    .line 521
    .line 522
    move-result v6

    .line 523
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v6

    .line 527
    invoke-virtual {v3, v9, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    goto :goto_d

    .line 531
    :cond_13
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 532
    .line 533
    .line 534
    move-result v11

    .line 535
    const/4 v14, 0x1

    .line 536
    and-int/2addr v11, v14

    .line 537
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    .line 538
    .line 539
    .line 540
    move-result v6

    .line 541
    and-int/2addr v6, v14

    .line 542
    if-ne v11, v6, :cond_14

    .line 543
    .line 544
    :goto_d
    const/4 v6, 0x1

    .line 545
    goto :goto_e

    .line 546
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 547
    .line 548
    const-string v1, "A conflict of the DONT_KILL_APP flag between components in the package "

    .line 549
    .line 550
    invoke-static {v1, v9}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw v0

    .line 558
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 559
    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    const-string v2, "The component "

    .line 563
    .line 564
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v2, " is duplicated"

    .line 571
    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    throw v0

    .line 583
    :cond_16
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    move-result v6

    .line 587
    if-nez v6, :cond_17

    .line 588
    .line 589
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    goto :goto_d

    .line 593
    :goto_e
    add-int/2addr v5, v6

    .line 594
    goto :goto_c

    .line 595
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 596
    .line 597
    const-string v1, "The package "

    .line 598
    .line 599
    const-string v2, " is duplicated"

    .line 600
    .line 601
    invoke-static {v1, v9, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    throw v0

    .line 609
    :cond_18
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 610
    .line 611
    const-string v2, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    .line 612
    .line 613
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-nez v1, :cond_19

    .line 618
    .line 619
    const/4 v1, 0x1

    .line 620
    goto :goto_f

    .line 621
    :cond_19
    const/4 v1, 0x0

    .line 622
    :goto_f
    new-array v9, v13, [Z

    .line 623
    .line 624
    const/4 v2, 0x1

    .line 625
    invoke-static {v9, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 626
    .line 627
    .line 628
    new-instance v11, Landroid/util/ArrayMap;

    .line 629
    .line 630
    invoke-direct {v11, v13}, Landroid/util/ArrayMap;-><init>(I)V

    .line 631
    .line 632
    .line 633
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 634
    .line 635
    monitor-enter v2

    .line 636
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    const/4 v5, 0x0

    .line 641
    :goto_10
    if-ge v5, v13, :cond_26

    .line 642
    .line 643
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v6

    .line 647
    check-cast v6, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 648
    .line 649
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v14

    .line 653
    invoke-virtual {v11, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result v16

    .line 657
    if-eqz v16, :cond_1a

    .line 658
    .line 659
    move-object/from16 v19, v3

    .line 660
    .line 661
    move v15, v4

    .line 662
    move-object/from16 v20, v12

    .line 663
    .line 664
    :goto_11
    const/4 v3, 0x1

    .line 665
    goto/16 :goto_17

    .line 666
    .line 667
    :cond_1a
    invoke-interface {v3, v10}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v15

    .line 671
    invoke-static {v15, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v15

    .line 675
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 676
    .line 677
    invoke-virtual {v4, v14}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 678
    .line 679
    .line 680
    move-result-object v4

    .line 681
    if-nez v15, :cond_1c

    .line 682
    .line 683
    if-nez v1, :cond_1c

    .line 684
    .line 685
    new-instance v0, Ljava/lang/SecurityException;

    .line 686
    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    .line 688
    .line 689
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .line 691
    .line 692
    const-string v3, "Attempt to change component state; pid="

    .line 693
    .line 694
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 698
    .line 699
    .line 700
    move-result v3

    .line 701
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    const-string v3, ", uid="

    .line 705
    .line 706
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    if-nez v3, :cond_1b

    .line 717
    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    .line 722
    .line 723
    const-string v4, ", package="

    .line 724
    .line 725
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    goto :goto_12

    .line 736
    :catchall_0
    move-exception v0

    .line 737
    goto/16 :goto_3a

    .line 738
    .line 739
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 740
    .line 741
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .line 743
    .line 744
    const-string v4, ", component="

    .line 745
    .line 746
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    .line 750
    .line 751
    .line 752
    move-result-object v4

    .line 753
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    :goto_12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    throw v0

    .line 771
    :cond_1c
    if-eqz v4, :cond_24

    .line 772
    .line 773
    invoke-interface {v3, v4, v10, v8}, Lcom/android/server/pm/Computer;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 774
    .line 775
    .line 776
    move-result v19

    .line 777
    if-eqz v19, :cond_1d

    .line 778
    .line 779
    goto/16 :goto_18

    .line 780
    .line 781
    :cond_1d
    if-nez v15, :cond_1e

    .line 782
    .line 783
    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 784
    .line 785
    invoke-virtual {v15, v8, v14}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    .line 786
    .line 787
    .line 788
    move-result v15

    .line 789
    if-nez v15, :cond_1f

    .line 790
    .line 791
    :cond_1e
    const/16 v15, 0x7d0

    .line 792
    .line 793
    goto :goto_13

    .line 794
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    .line 795
    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    .line 797
    .line 798
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .line 800
    .line 801
    const-string v3, "Cannot disable a protected package: "

    .line 802
    .line 803
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    throw v0

    .line 817
    :goto_13
    if-ne v10, v15, :cond_22

    .line 818
    .line 819
    iget v15, v4, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 820
    .line 821
    and-int/lit16 v15, v15, 0x100

    .line 822
    .line 823
    if-nez v15, :cond_22

    .line 824
    .line 825
    invoke-virtual {v4, v8}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    .line 826
    .line 827
    .line 828
    move-result v15

    .line 829
    move-object/from16 v19, v3

    .line 830
    .line 831
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    .line 832
    .line 833
    .line 834
    move-result v3

    .line 835
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    .line 836
    .line 837
    .line 838
    move-result v20

    .line 839
    if-nez v20, :cond_21

    .line 840
    .line 841
    move-object/from16 v20, v12

    .line 842
    .line 843
    const/4 v12, 0x3

    .line 844
    if-eq v15, v12, :cond_20

    .line 845
    .line 846
    if-eqz v15, :cond_20

    .line 847
    .line 848
    const/4 v12, 0x1

    .line 849
    if-ne v15, v12, :cond_21

    .line 850
    .line 851
    :goto_14
    const/4 v15, 0x3

    .line 852
    goto :goto_15

    .line 853
    :cond_20
    const/4 v12, 0x1

    .line 854
    goto :goto_14

    .line 855
    :goto_15
    if-eq v3, v15, :cond_23

    .line 856
    .line 857
    if-eqz v3, :cond_23

    .line 858
    .line 859
    if-ne v3, v12, :cond_21

    .line 860
    .line 861
    goto :goto_16

    .line 862
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    .line 863
    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    .line 865
    .line 866
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    .line 868
    .line 869
    const-string v4, "Shell cannot change component state for "

    .line 870
    .line 871
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    .line 875
    .line 876
    .line 877
    move-result-object v4

    .line 878
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    const-string v4, " to "

    .line 882
    .line 883
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    throw v0

    .line 897
    :cond_22
    move-object/from16 v19, v3

    .line 898
    .line 899
    move-object/from16 v20, v12

    .line 900
    .line 901
    const/4 v15, 0x3

    .line 902
    :cond_23
    :goto_16
    invoke-virtual {v11, v14, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    goto/16 :goto_11

    .line 906
    .line 907
    :goto_17
    add-int/2addr v5, v3

    .line 908
    move v4, v15

    .line 909
    move-object/from16 v3, v19

    .line 910
    .line 911
    move-object/from16 v12, v20

    .line 912
    .line 913
    const/4 v15, 0x2

    .line 914
    goto/16 :goto_10

    .line 915
    .line 916
    :cond_24
    :goto_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 917
    .line 918
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    .line 919
    .line 920
    .line 921
    move-result v1

    .line 922
    if-eqz v1, :cond_25

    .line 923
    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    .line 925
    .line 926
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    .line 928
    .line 929
    const-string v3, "Unknown component: "

    .line 930
    .line 931
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    .line 935
    .line 936
    .line 937
    move-result-object v3

    .line 938
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v1

    .line 945
    goto :goto_19

    .line 946
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 947
    .line 948
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 949
    .line 950
    .line 951
    const-string v3, "Unknown package: "

    .line 952
    .line 953
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v1

    .line 963
    :goto_19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    throw v0

    .line 967
    :cond_26
    move-object/from16 v20, v12

    .line 968
    .line 969
    const/4 v3, 0x0

    .line 970
    :goto_1a
    if-ge v3, v13, :cond_28

    .line 971
    .line 972
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    move-result-object v4

    .line 976
    check-cast v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 977
    .line 978
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 979
    .line 980
    invoke-static {v4, v8, v5}, Lcom/android/server/pm/PmHook;->isUpdateAllowedByMdm(Landroid/content/pm/PackageManager$ComponentEnabledSetting;ILandroid/content/Context;)Z

    .line 981
    .line 982
    .line 983
    move-result v4

    .line 984
    if-nez v4, :cond_27

    .line 985
    .line 986
    const/4 v4, 0x0

    .line 987
    aput-boolean v4, v9, v3

    .line 988
    .line 989
    :cond_27
    const/4 v4, 0x1

    .line 990
    add-int/2addr v3, v4

    .line 991
    goto :goto_1a

    .line 992
    :cond_28
    const/4 v3, 0x0

    .line 993
    :goto_1b
    if-ge v3, v13, :cond_30

    .line 994
    .line 995
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v4

    .line 999
    check-cast v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 1000
    .line 1001
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    .line 1002
    .line 1003
    .line 1004
    move-result v5

    .line 1005
    if-nez v5, :cond_2a

    .line 1006
    .line 1007
    :cond_29
    :goto_1c
    const/4 v4, 0x1

    .line 1008
    goto/16 :goto_1f

    .line 1009
    .line 1010
    :cond_2a
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v5

    .line 1014
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v4

    .line 1018
    if-nez v1, :cond_2c

    .line 1019
    .line 1020
    sget-object v6, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 1021
    .line 1022
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v6

    .line 1026
    if-nez v6, :cond_2b

    .line 1027
    .line 1028
    goto :goto_1d

    .line 1029
    :cond_2b
    new-instance v0, Ljava/lang/SecurityException;

    .line 1030
    .line 1031
    const-string v1, "Cannot disable a system-generated component"

    .line 1032
    .line 1033
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    throw v0

    .line 1037
    :cond_2c
    :goto_1d
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v6

    .line 1041
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1042
    .line 1043
    iget-object v6, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1044
    .line 1045
    if-eqz v6, :cond_2d

    .line 1046
    .line 1047
    invoke-static {v6, v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    .line 1048
    .line 1049
    .line 1050
    move-result v12

    .line 1051
    if-nez v12, :cond_29

    .line 1052
    .line 1053
    :cond_2d
    if-eqz v6, :cond_2f

    .line 1054
    .line 1055
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 1056
    .line 1057
    .line 1058
    move-result v6

    .line 1059
    const/16 v12, 0x10

    .line 1060
    .line 1061
    if-ge v6, v12, :cond_2e

    .line 1062
    .line 1063
    goto :goto_1e

    .line 1064
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1065
    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1069
    .line 1070
    .line 1071
    const-string v3, "Component class "

    .line 1072
    .line 1073
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    const-string v3, " does not exist in "

    .line 1080
    .line 1081
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v1

    .line 1091
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    throw v0

    .line 1095
    :cond_2f
    :goto_1e
    const-string v6, "PackageManager"

    .line 1096
    .line 1097
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1100
    .line 1101
    .line 1102
    const-string v14, "Failed setComponentEnabledSetting: component class "

    .line 1103
    .line 1104
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    const-string v4, " does not exist in "

    .line 1111
    .line 1112
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v4

    .line 1122
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    .line 1124
    .line 1125
    const/4 v4, 0x0

    .line 1126
    aput-boolean v4, v9, v3

    .line 1127
    .line 1128
    goto :goto_1c

    .line 1129
    :goto_1f
    add-int/2addr v3, v4

    .line 1130
    goto/16 :goto_1b

    .line 1131
    .line 1132
    :cond_30
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    const/4 v4, 0x0

    .line 1134
    :goto_20
    if-ge v4, v13, :cond_36

    .line 1135
    .line 1136
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v1

    .line 1140
    check-cast v1, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 1141
    .line 1142
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    .line 1143
    .line 1144
    .line 1145
    move-result v2

    .line 1146
    if-eqz v2, :cond_31

    .line 1147
    .line 1148
    :goto_21
    const/4 v1, 0x1

    .line 1149
    :goto_22
    const/4 v12, 0x0

    .line 1150
    goto :goto_25

    .line 1151
    :cond_31
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v2

    .line 1155
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v2

    .line 1159
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1160
    .line 1161
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    .line 1162
    .line 1163
    .line 1164
    move-result v3

    .line 1165
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1166
    .line 1167
    monitor-enter v5

    .line 1168
    :try_start_1
    invoke-virtual {v2, v8}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    .line 1169
    .line 1170
    .line 1171
    move-result v6

    .line 1172
    if-ne v6, v3, :cond_32

    .line 1173
    .line 1174
    const/4 v6, 0x0

    .line 1175
    aput-boolean v6, v9, v4

    .line 1176
    .line 1177
    monitor-exit v5

    .line 1178
    goto :goto_21

    .line 1179
    :catchall_1
    move-exception v0

    .line 1180
    goto :goto_26

    .line 1181
    :cond_32
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1182
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1183
    .line 1184
    if-eqz v5, :cond_35

    .line 1185
    .line 1186
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    .line 1187
    .line 1188
    .line 1189
    move-result v6

    .line 1190
    if-eqz v6, :cond_35

    .line 1191
    .line 1192
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 1193
    .line 1194
    .line 1195
    move-result v6

    .line 1196
    if-eqz v6, :cond_35

    .line 1197
    .line 1198
    if-eqz v3, :cond_34

    .line 1199
    .line 1200
    const/4 v6, 0x1

    .line 1201
    if-ne v3, v6, :cond_33

    .line 1202
    .line 1203
    goto :goto_23

    .line 1204
    :cond_33
    move v1, v6

    .line 1205
    goto :goto_22

    .line 1206
    :cond_34
    :goto_23
    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/PackageManagerService;->enableCompressedPackage(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v2

    .line 1210
    if-nez v2, :cond_35

    .line 1211
    .line 1212
    const-string v2, "PackageManager"

    .line 1213
    .line 1214
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1215
    .line 1216
    const-string v5, "Failed setApplicationEnabledSetting: failed to enable commpressed package "

    .line 1217
    .line 1218
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v1

    .line 1225
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v1

    .line 1232
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    .line 1234
    .line 1235
    const/4 v12, 0x0

    .line 1236
    aput-boolean v12, v9, v4

    .line 1237
    .line 1238
    :goto_24
    const/4 v1, 0x1

    .line 1239
    goto :goto_25

    .line 1240
    :cond_35
    const/4 v12, 0x0

    .line 1241
    goto :goto_24

    .line 1242
    :goto_25
    add-int/2addr v4, v1

    .line 1243
    goto :goto_20

    .line 1244
    :goto_26
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1245
    throw v0

    .line 1246
    :cond_36
    const/4 v12, 0x0

    .line 1247
    new-instance v14, Landroid/util/ArrayMap;

    .line 1248
    .line 1249
    invoke-direct {v14, v13}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1250
    .line 1251
    .line 1252
    new-instance v15, Ljava/util/ArrayList;

    .line 1253
    .line 1254
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    .line 1256
    .line 1257
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1258
    .line 1259
    monitor-enter v6

    .line 1260
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v5

    .line 1264
    move v4, v12

    .line 1265
    move/from16 v17, v4

    .line 1266
    .line 1267
    move/from16 v18, v17

    .line 1268
    .line 1269
    move/from16 v19, v18

    .line 1270
    .line 1271
    :goto_27
    if-ge v4, v13, :cond_40

    .line 1272
    .line 1273
    aget-boolean v1, v9, v4

    .line 1274
    .line 1275
    if-nez v1, :cond_37

    .line 1276
    .line 1277
    move/from16 v22, v4

    .line 1278
    .line 1279
    move-object/from16 v23, v5

    .line 1280
    .line 1281
    move-object/from16 v24, v6

    .line 1282
    .line 1283
    goto/16 :goto_29

    .line 1284
    .line 1285
    :cond_37
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v1

    .line 1289
    move-object/from16 v21, v1

    .line 1290
    .line 1291
    check-cast v21, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 1292
    .line 1293
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v3

    .line 1297
    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v1

    .line 1301
    move-object v2, v1

    .line 1302
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1303
    .line 1304
    new-instance v1, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;

    .line 1305
    .line 1306
    iget v12, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 1307
    .line 1308
    invoke-static {v8, v12}, Landroid/os/UserHandle;->getUid(II)I

    .line 1309
    .line 1310
    .line 1311
    move-result v12

    .line 1312
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    .line 1313
    .line 1314
    .line 1315
    move-result v22

    .line 1316
    if-eqz v22, :cond_38

    .line 1317
    .line 1318
    move-object/from16 v22, v3

    .line 1319
    .line 1320
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v3

    .line 1324
    invoke-interface {v5, v10, v8, v3}, Lcom/android/server/pm/Computer;->getComponentEnabledSettingInternal(IILandroid/content/ComponentName;)I

    .line 1325
    .line 1326
    .line 1327
    move-result v3

    .line 1328
    goto :goto_28

    .line 1329
    :catchall_2
    move-exception v0

    .line 1330
    move-object/from16 v24, v6

    .line 1331
    .line 1332
    goto/16 :goto_39

    .line 1333
    .line 1334
    :cond_38
    move-object/from16 v22, v3

    .line 1335
    .line 1336
    invoke-virtual {v2, v8}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    .line 1337
    .line 1338
    .line 1339
    move-result v3

    .line 1340
    :goto_28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1341
    .line 1342
    .line 1343
    iput v12, v1, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mUid:I

    .line 1344
    .line 1345
    iput v3, v1, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentOldState:I

    .line 1346
    .line 1347
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    .line 1348
    .line 1349
    .line 1350
    move-result v3

    .line 1351
    iput v3, v1, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentNewState:I

    .line 1352
    .line 1353
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    .line 1354
    .line 1355
    .line 1356
    move-result v3

    .line 1357
    const/4 v12, 0x1

    .line 1358
    xor-int/2addr v3, v12

    .line 1359
    iput-boolean v3, v1, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mIsForWholeApp:Z

    .line 1360
    .line 1361
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v3

    .line 1365
    iput-object v3, v1, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mPackageName:Ljava/lang/String;

    .line 1366
    .line 1367
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v3

    .line 1371
    iput-object v3, v1, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mClassName:Ljava/lang/String;

    .line 1372
    .line 1373
    iput v10, v1, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mCallingUid:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1374
    .line 1375
    move-object v12, v1

    .line 1376
    move-object/from16 v1, p0

    .line 1377
    .line 1378
    move-object v3, v2

    .line 1379
    move-object v2, v5

    .line 1380
    move-object/from16 v7, v22

    .line 1381
    .line 1382
    move/from16 v22, v4

    .line 1383
    .line 1384
    move-object/from16 v4, v21

    .line 1385
    .line 1386
    move-object/from16 v23, v5

    .line 1387
    .line 1388
    move/from16 v5, p2

    .line 1389
    .line 1390
    move-object/from16 v24, v6

    .line 1391
    .line 1392
    move-object/from16 v6, v20

    .line 1393
    .line 1394
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettingInternalLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageManager$ComponentEnabledSetting;ILjava/lang/String;)Z

    .line 1395
    .line 1396
    .line 1397
    move-result v1

    .line 1398
    if-nez v1, :cond_39

    .line 1399
    .line 1400
    :goto_29
    const/4 v1, 0x1

    .line 1401
    const/4 v2, 0x2

    .line 1402
    goto/16 :goto_2d

    .line 1403
    .line 1404
    :cond_39
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    .line 1406
    .line 1407
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    .line 1408
    .line 1409
    .line 1410
    move-result v1

    .line 1411
    const/4 v2, 0x2

    .line 1412
    and-int/2addr v1, v2

    .line 1413
    if-eqz v1, :cond_3a

    .line 1414
    .line 1415
    const/16 v17, 0x1

    .line 1416
    .line 1417
    :cond_3a
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    .line 1418
    .line 1419
    .line 1420
    move-result v1

    .line 1421
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v3

    .line 1425
    invoke-static {v1, v8, v7, v3}, Lcom/android/server/pm/PmHook;->enableDisableApplicationLog(IILjava/lang/String;Ljava/lang/String;)V

    .line 1426
    .line 1427
    .line 1428
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    .line 1429
    .line 1430
    .line 1431
    move-result v1

    .line 1432
    if-eqz v1, :cond_3b

    .line 1433
    .line 1434
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v3

    .line 1438
    goto :goto_2a

    .line 1439
    :catchall_3
    move-exception v0

    .line 1440
    goto/16 :goto_39

    .line 1441
    .line 1442
    :cond_3b
    move-object v3, v7

    .line 1443
    :goto_2a
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    .line 1444
    .line 1445
    .line 1446
    move-result v1

    .line 1447
    const/4 v4, 0x1

    .line 1448
    and-int/2addr v1, v4

    .line 1449
    if-nez v1, :cond_3f

    .line 1450
    .line 1451
    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v1

    .line 1455
    check-cast v1, Ljava/util/ArrayList;

    .line 1456
    .line 1457
    if-nez v1, :cond_3c

    .line 1458
    .line 1459
    new-instance v1, Ljava/util/ArrayList;

    .line 1460
    .line 1461
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    .line 1463
    .line 1464
    :cond_3c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1465
    .line 1466
    .line 1467
    move-result v4

    .line 1468
    if-nez v4, :cond_3d

    .line 1469
    .line 1470
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    .line 1472
    .line 1473
    :cond_3d
    invoke-virtual {v14, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 1477
    .line 1478
    iget-object v3, v1, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1479
    .line 1480
    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1481
    :try_start_5
    iget-object v1, v1, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    .line 1482
    .line 1483
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v1

    .line 1487
    check-cast v1, Landroid/util/ArrayMap;

    .line 1488
    .line 1489
    if-eqz v1, :cond_3e

    .line 1490
    .line 1491
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    .line 1493
    .line 1494
    goto :goto_2b

    .line 1495
    :catchall_4
    move-exception v0

    .line 1496
    goto :goto_2c

    .line 1497
    :cond_3e
    :goto_2b
    monitor-exit v3

    .line 1498
    const/4 v1, 0x1

    .line 1499
    const/16 v18, 0x1

    .line 1500
    .line 1501
    goto :goto_2d

    .line 1502
    :goto_2c
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1503
    :try_start_6
    throw v0

    .line 1504
    :cond_3f
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 1505
    .line 1506
    invoke-virtual {v1, v8, v7, v3}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponent(ILjava/lang/String;Ljava/lang/String;)V

    .line 1507
    .line 1508
    .line 1509
    const/4 v1, 0x1

    .line 1510
    const/16 v18, 0x1

    .line 1511
    .line 1512
    const/16 v19, 0x1

    .line 1513
    .line 1514
    :goto_2d
    add-int/lit8 v4, v22, 0x1

    .line 1515
    .line 1516
    move-object/from16 v7, p1

    .line 1517
    .line 1518
    move-object/from16 v5, v23

    .line 1519
    .line 1520
    move-object/from16 v6, v24

    .line 1521
    .line 1522
    const/4 v12, 0x0

    .line 1523
    goto/16 :goto_27

    .line 1524
    .line 1525
    :cond_40
    move-object/from16 v24, v6

    .line 1526
    .line 1527
    if-nez v18, :cond_41

    .line 1528
    .line 1529
    monitor-exit v24

    .line 1530
    goto/16 :goto_37

    .line 1531
    .line 1532
    :cond_41
    if-eqz v17, :cond_42

    .line 1533
    .line 1534
    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    .line 1535
    .line 1536
    .line 1537
    goto :goto_2e

    .line 1538
    :cond_42
    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 1539
    .line 1540
    .line 1541
    :goto_2e
    if-eqz v19, :cond_44

    .line 1542
    .line 1543
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1544
    .line 1545
    const/4 v2, 0x1

    .line 1546
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v1

    .line 1550
    if-nez v1, :cond_44

    .line 1551
    .line 1552
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1553
    .line 1554
    .line 1555
    move-result-wide v1

    .line 1556
    iget-wide v3, v0, Lcom/android/server/pm/PackageManagerService;->mServiceStartWithDelay:J

    .line 1557
    .line 1558
    cmp-long v1, v1, v3

    .line 1559
    .line 1560
    if-lez v1, :cond_43

    .line 1561
    .line 1562
    const-wide/16 v1, 0x3e8

    .line 1563
    .line 1564
    goto :goto_2f

    .line 1565
    :cond_43
    const-wide/16 v1, 0x2710

    .line 1566
    .line 1567
    :goto_2f
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1568
    .line 1569
    const/4 v4, 0x1

    .line 1570
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1571
    .line 1572
    .line 1573
    :cond_44
    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1574
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v9

    .line 1578
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->componentStateChangedMetrics()Z

    .line 1579
    .line 1580
    .line 1581
    move-result v1

    .line 1582
    if-nez v1, :cond_45

    .line 1583
    .line 1584
    goto/16 :goto_35

    .line 1585
    .line 1586
    :cond_45
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1587
    .line 1588
    .line 1589
    move-result v1

    .line 1590
    if-eqz v1, :cond_46

    .line 1591
    .line 1592
    const-string v1, "PackageMetrics"

    .line 1593
    .line 1594
    const-string v2, "Fail to report component state due to metrics is empty"

    .line 1595
    .line 1596
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    .line 1598
    .line 1599
    goto/16 :goto_35

    .line 1600
    .line 1601
    :cond_46
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1602
    .line 1603
    .line 1604
    move-result v10

    .line 1605
    const/4 v12, 0x0

    .line 1606
    :goto_30
    if-ge v12, v10, :cond_4d

    .line 1607
    .line 1608
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v1

    .line 1612
    move-object v13, v1

    .line 1613
    check-cast v13, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;

    .line 1614
    .line 1615
    iget v7, v13, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mUid:I

    .line 1616
    .line 1617
    iget-boolean v6, v13, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mIsForWholeApp:Z

    .line 1618
    .line 1619
    if-eqz v6, :cond_48

    .line 1620
    .line 1621
    move/from16 v16, v7

    .line 1622
    .line 1623
    :cond_47
    const/4 v5, 0x0

    .line 1624
    goto/16 :goto_34

    .line 1625
    .line 1626
    :cond_48
    const-string v1, "android.intent.action.MAIN"

    .line 1627
    .line 1628
    const-string v2, "android.intent.category.LAUNCHER"

    .line 1629
    .line 1630
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v2

    .line 1634
    iget-object v4, v13, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mPackageName:Ljava/lang/String;

    .line 1635
    .line 1636
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1637
    .line 1638
    .line 1639
    const/16 v16, 0x3e8

    .line 1640
    .line 1641
    const/4 v3, 0x0

    .line 1642
    const-wide/32 v17, 0xc0240

    .line 1643
    .line 1644
    .line 1645
    move-object v1, v9

    .line 1646
    move-object/from16 v25, v4

    .line 1647
    .line 1648
    move-wide/from16 v4, v17

    .line 1649
    .line 1650
    move/from16 v17, v6

    .line 1651
    .line 1652
    move/from16 v6, v16

    .line 1653
    .line 1654
    move/from16 v16, v7

    .line 1655
    .line 1656
    move/from16 v7, p2

    .line 1657
    .line 1658
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v1

    .line 1662
    if-eqz v1, :cond_49

    .line 1663
    .line 1664
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1665
    .line 1666
    .line 1667
    move-result v4

    .line 1668
    goto :goto_31

    .line 1669
    :cond_49
    const/4 v4, 0x0

    .line 1670
    :goto_31
    const/4 v2, 0x0

    .line 1671
    :goto_32
    if-ge v2, v4, :cond_47

    .line 1672
    .line 1673
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v3

    .line 1677
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1678
    .line 1679
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1680
    .line 1681
    if-nez v3, :cond_4a

    .line 1682
    .line 1683
    move-object/from16 v5, v25

    .line 1684
    .line 1685
    const/4 v3, 0x0

    .line 1686
    goto :goto_33

    .line 1687
    :cond_4a
    if-eqz v17, :cond_4b

    .line 1688
    .line 1689
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1690
    .line 1691
    move-object/from16 v5, v25

    .line 1692
    .line 1693
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1694
    .line 1695
    .line 1696
    move-result v3

    .line 1697
    goto :goto_33

    .line 1698
    :cond_4b
    move-object/from16 v5, v25

    .line 1699
    .line 1700
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v3

    .line 1704
    new-instance v6, Landroid/content/ComponentName;

    .line 1705
    .line 1706
    iget-object v7, v13, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mClassName:Ljava/lang/String;

    .line 1707
    .line 1708
    invoke-direct {v6, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    .line 1710
    .line 1711
    invoke-virtual {v3, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 1712
    .line 1713
    .line 1714
    move-result v3

    .line 1715
    :goto_33
    if-eqz v3, :cond_4c

    .line 1716
    .line 1717
    const/4 v5, 0x1

    .line 1718
    goto :goto_34

    .line 1719
    :cond_4c
    const/4 v3, 0x1

    .line 1720
    add-int/2addr v2, v3

    .line 1721
    move-object/from16 v25, v5

    .line 1722
    .line 1723
    goto :goto_32

    .line 1724
    :goto_34
    iget v3, v13, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentOldState:I

    .line 1725
    .line 1726
    iget v4, v13, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentNewState:I

    .line 1727
    .line 1728
    iget-boolean v6, v13, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mIsForWholeApp:Z

    .line 1729
    .line 1730
    iget v7, v13, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mCallingUid:I

    .line 1731
    .line 1732
    const/16 v1, 0x35f

    .line 1733
    .line 1734
    move/from16 v2, v16

    .line 1735
    .line 1736
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZI)V

    .line 1737
    .line 1738
    .line 1739
    const/4 v1, 0x1

    .line 1740
    add-int/2addr v12, v1

    .line 1741
    goto/16 :goto_30

    .line 1742
    .line 1743
    :cond_4d
    :goto_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1744
    .line 1745
    .line 1746
    move-result-wide v1

    .line 1747
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v3

    .line 1751
    const/4 v4, 0x0

    .line 1752
    :goto_36
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    .line 1753
    .line 1754
    .line 1755
    move-result v5

    .line 1756
    if-ge v4, v5, :cond_4e

    .line 1757
    .line 1758
    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v5

    .line 1762
    check-cast v5, Ljava/lang/String;

    .line 1763
    .line 1764
    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v6

    .line 1768
    move-object/from16 v21, v6

    .line 1769
    .line 1770
    check-cast v21, Ljava/util/ArrayList;

    .line 1771
    .line 1772
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v6

    .line 1776
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1777
    .line 1778
    iget v6, v6, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 1779
    .line 1780
    invoke-static {v8, v6}, Landroid/os/UserHandle;->getUid(II)I

    .line 1781
    .line 1782
    .line 1783
    move-result v22

    .line 1784
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 1785
    .line 1786
    const/16 v20, 0x0

    .line 1787
    .line 1788
    const/16 v23, 0x0

    .line 1789
    .line 1790
    move-object/from16 v17, v6

    .line 1791
    .line 1792
    move-object/from16 v18, v3

    .line 1793
    .line 1794
    move-object/from16 v19, v5

    .line 1795
    .line 1796
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1797
    .line 1798
    .line 1799
    const/4 v5, 0x1

    .line 1800
    add-int/2addr v4, v5

    .line 1801
    goto :goto_36

    .line 1802
    :catchall_5
    move-exception v0

    .line 1803
    goto :goto_38

    .line 1804
    :cond_4e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1805
    .line 1806
    .line 1807
    :goto_37
    return-void

    .line 1808
    :goto_38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1809
    .line 1810
    .line 1811
    throw v0

    .line 1812
    :goto_39
    :try_start_8
    monitor-exit v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1813
    throw v0

    .line 1814
    :goto_3a
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1815
    throw v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v1, v0, [I

    .line 9
    .line 10
    sput-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 11
    .line 12
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->minTargetSdk24()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x18

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v1, 0x17

    .line 22
    .line 23
    :goto_0
    sput v1, Lcom/android/server/pm/PackageManagerService;->MIN_INSTALLABLE_TARGET_SDK:I

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sput-object v1, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    .line 39
    .line 40
    new-array v0, v0, [Landroid/os/incremental/PerUidReadTimeouts;

    .line 41
    .line 42
    sput-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 43
    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 45
    .line 46
    const-wide/16 v1, 0x1

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    sput-wide v1, Lcom/android/server/pm/PackageManagerService;->DEFERRED_NO_KILL_POST_DELETE_DELAY_MS_EXTENDED:J

    .line 53
    .line 54
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 55
    .line 56
    const-wide/16 v2, 0x3

    .line 57
    .line 58
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    sput-wide v1, Lcom/android/server/pm/PackageManagerService;->PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

    .line 63
    .line 64
    const-wide/16 v1, 0x7

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    sput-wide v0, Lcom/android/server/pm/PackageManagerService;->DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    .line 71
    .line 72
    new-instance v0, Lcom/android/server/ThreadPriorityBooster;

    .line 73
    .line 74
    const/4 v1, -0x2

    .line 75
    const/4 v2, 0x3

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/android/server/ThreadPriorityBooster;-><init>(II)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    .line 94
    new-instance v0, Lcom/android/server/pm/PackageManagerService$2;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    sput-object v0, Lcom/android/server/pm/PackageManagerService;->BACKGROUND_HANDLER_CALLBACK:Lcom/android/server/pm/PackageManagerService$2;

    .line 100
    .line 101
    new-instance v0, Lcom/android/server/pm/AppCategoryHintHelper;

    .line 102
    .line 103
    invoke-direct {v0}, Lcom/android/server/pm/AppCategoryHintHelper;-><init>()V

    .line 104
    .line 105
    .line 106
    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 107
    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerServiceTestParams;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 5
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 6
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 9
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 10
    const-string v4, "PackageManagerService.mPackages"

    const/4 v5, 0x0

    invoke-direct {v3, v0, v0, v4, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 11
    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

    .line 12
    new-instance v3, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 13
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 14
    const-string v5, "PackageManagerService.mIsolatedOwners"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 15
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

    .line 16
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 17
    new-instance v3, Lcom/android/server/utils/WatchedArrayMap;

    .line 18
    invoke-direct {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 19
    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 20
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 21
    const-string v5, "PackageManagerService.mFrozenPackages"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 22
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

    .line 23
    new-instance v3, Lcom/android/server/pm/PackageObserverHelper;

    invoke-direct {v3}, Lcom/android/server/pm/PackageObserverHelper;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 24
    new-instance v3, Lcom/android/server/utils/WatchedArrayMap;

    .line 25
    invoke-direct {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 26
    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 27
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 28
    const-string v5, "PackageManagerService.mInstrumentation"

    const/4 v6, 0x0

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 29
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

    .line 30
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 31
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 32
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 33
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 34
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 36
    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 37
    new-instance v3, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 38
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 39
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 40
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 44
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 45
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 46
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 47
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    .line 48
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 49
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    .line 50
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 51
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 52
    new-instance v3, Lcom/android/server/pm/PackageProperty;

    .line 53
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 55
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 56
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    const/4 v3, 0x1

    .line 57
    iput v3, p0, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 58
    new-instance v4, Lcom/android/server/pm/PackageUsage;

    invoke-direct {v4}, Lcom/android/server/pm/PackageUsage;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 59
    new-instance v4, Lcom/android/server/pm/CompilerStats;

    invoke-direct {v4}, Lcom/android/server/pm/CompilerStats;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 60
    new-instance v4, Lcom/android/server/pm/PackageManagerService$1;

    .line 61
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/pm/PackageManagerService$1;

    .line 63
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 65
    iput-object p0, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 66
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-virtual {v4, p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/AppsFilterImpl;

    .line 67
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 68
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mComponentResolverProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/resolution/ComponentResolver;

    .line 69
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 70
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 71
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 72
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 73
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 74
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 75
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 76
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 77
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 78
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/Settings;

    .line 79
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 80
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 81
    new-instance v5, Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v5, v4}, Lcom/android/server/pm/UserNeedsBadgingCache;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 82
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 83
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 84
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 85
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 86
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 88
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 89
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 90
    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 91
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 92
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 93
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 94
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 95
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    .line 96
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 97
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 98
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 99
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->changedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 100
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 101
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 102
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    .line 104
    iget p1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->priorSdkVersion:I

    iput p1, p0, Lcom/android/server/pm/PackageManagerService;->mPriorSdkVersion:I

    .line 105
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    .line 106
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 107
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 108
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 109
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 110
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

    .line 111
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 112
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    .line 113
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 114
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 115
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWearableSensingPackage:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 135
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    .line 136
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->initialNonStoppedSystemPackages:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 137
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    .line 138
    new-instance p1, Lcom/android/server/pm/ComputerLocked;

    new-instance p2, Lcom/android/server/pm/PackageManagerService$Snapshot;

    invoke-direct {p2, p0, v3}, Lcom/android/server/pm/PackageManagerService$Snapshot;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    const/4 v2, -0x1

    .line 139
    invoke-direct {p1, p2, v2}, Lcom/android/server/pm/ComputerEngine;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V

    .line 140
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 141
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 142
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    throw v1
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;ZLjava/lang/String;ZZILjava/lang/String;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v1, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 145
    new-instance v1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;

    const/4 v9, 0x0

    invoke-direct {v2, v7, v9}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;

    const/4 v10, 0x1

    invoke-direct {v3, v7, v10}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 146
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 147
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "PackageManagerService.mPackages"

    invoke-direct {v2, v1, v1, v3, v9}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

    .line 148
    new-instance v1, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 149
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "PackageManagerService.mIsolatedOwners"

    invoke-direct {v2, v1, v1, v3, v9}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

    const/4 v11, 0x0

    .line 150
    iput-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 151
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 152
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "PackageManagerService.mFrozenPackages"

    invoke-direct {v2, v1, v1, v3, v9}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

    .line 153
    new-instance v1, Lcom/android/server/pm/PackageObserverHelper;

    invoke-direct {v1}, Lcom/android/server/pm/PackageObserverHelper;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 154
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 155
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "PackageManagerService.mInstrumentation"

    invoke-direct {v2, v1, v1, v3, v9}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache$Auto;

    .line 156
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 157
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 158
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 159
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 160
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 161
    iput v9, v7, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 162
    iput v9, v7, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 163
    new-instance v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 164
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 165
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 166
    iput-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 167
    iput-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 168
    iput-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 169
    iput-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 170
    iput-boolean v9, v7, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 171
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 173
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    .line 176
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 177
    iput-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 178
    new-instance v1, Lcom/android/server/pm/PackageProperty;

    invoke-direct {v1}, Lcom/android/server/pm/PackageProperty;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 179
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 180
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 181
    iput v10, v7, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 182
    new-instance v1, Lcom/android/server/pm/PackageUsage;

    invoke-direct {v1}, Lcom/android/server/pm/PackageUsage;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 183
    new-instance v1, Lcom/android/server/pm/CompilerStats;

    invoke-direct {v1}, Lcom/android/server/pm/CompilerStats;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 184
    new-instance v1, Lcom/android/server/pm/PackageManagerService$1;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$1;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/pm/PackageManagerService$1;

    .line 185
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    move/from16 v1, p4

    .line 186
    iput-boolean v1, v7, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    move/from16 v1, p5

    .line 187
    iput-boolean v1, v7, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    move/from16 v1, p6

    .line 188
    iput v1, v7, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    move-object/from16 v1, p7

    .line 189
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    .line 190
    iput-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 191
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemWrapper:Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;

    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;->disablePackageCaches()V

    .line 193
    new-instance v12, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "PackageManagerTiming"

    const-wide/32 v2, 0x40000

    invoke-direct {v12, v2, v3, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(JLjava/lang/String;)V

    .line 194
    new-instance v1, Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-direct {v1}, Lcom/android/server/pm/PendingPackageBroadcasts;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 195
    iput-object v7, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 196
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 197
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 198
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 199
    iget-object v2, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 200
    iput-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    const/4 v13, 0x3

    .line 201
    invoke-static {v1, v13, v9}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;IZ)V

    .line 202
    const-string v3, "PackageManager"

    const-string v4, "!@Boot_EBS_F: boot_progress_pms_start"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xbf4

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 204
    invoke-static {v3, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 205
    iget-object v3, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 206
    iput-object v3, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move/from16 v4, p2

    .line 207
    iput-boolean v4, v7, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    .line 208
    iget-object v4, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v5, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/DisplayMetrics;

    .line 209
    iget-object v5, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    .line 210
    iput-object v5, v7, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 211
    new-instance v6, Lcom/android/server/pm/FreeStorageHelper;

    invoke-direct {v6, v7}, Lcom/android/server/pm/FreeStorageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    .line 212
    sget-boolean v6, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v6, :cond_0

    .line 213
    invoke-static {v3}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    move-result-object v6

    iput-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 214
    :cond_0
    const-string v6, "createSubComponents"

    invoke-virtual {v12, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 215
    sput-object v11, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 216
    sget-object v6, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 217
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 218
    new-instance v6, Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {v6, v3, v7, v1}, Lcom/android/server/pm/PersonaManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerTracedLock;)V

    sput-object v6, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 219
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-direct {v6, v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-static {v1, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 220
    const-class v1, Lcom/android/server/pm/PackageManagerLocal;

    new-instance v6, Lcom/android/server/pm/local/PackageManagerLocalImpl;

    invoke-direct {v6, v7}, Lcom/android/server/pm/local/PackageManagerLocalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-static {v1, v6}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 221
    new-instance v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    new-instance v6, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    const/16 v14, 0x15

    invoke-direct {v6, v14}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    new-instance v14, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;

    invoke-direct {v14, v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    invoke-direct {v1, v8, v7, v6, v14}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;)V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 222
    new-instance v6, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    invoke-direct {v6, v7, v8, v1}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;)V

    iput-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    .line 223
    invoke-virtual {v6}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->onInstalldStarting()V

    .line 224
    const-class v14, Landroid/content/pm/TestUtilityService;

    invoke-static {v14, v7}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 225
    const-class v14, Landroid/content/pm/TestUtilityService;

    invoke-static {v14}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/TestUtilityService;

    iput-object v14, v7, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v14

    iput-object v14, v7, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 227
    new-instance v15, Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v15, v14}, Lcom/android/server/pm/UserNeedsBadgingCache;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v15, v7, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 228
    iget-object v13, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mComponentResolverProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v9, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13, v9, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/resolution/ComponentResolver;

    .line 229
    iput-object v9, v7, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 230
    iget-object v9, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v13, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9, v13, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 231
    iput-object v9, v7, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 232
    iget-object v13, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v11, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13, v11, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/Settings;

    .line 233
    iput-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 234
    iget-object v13, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v10, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13, v10, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/incremental/IncrementalManager;

    .line 235
    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 236
    iget-object v10, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v13, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10, v13, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/DefaultAppProvider;

    .line 237
    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLegacyPermissionManagerInternal()Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    move-result-object v10

    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v10

    .line 240
    new-instance v13, Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {v13, v7, v10}, Lcom/android/server/pm/PackageManagerService$3;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/compat/PlatformCompat;)V

    iput-object v13, v7, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

    .line 241
    invoke-virtual {v6}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->onInitPreparing()V

    .line 242
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 243
    iget-object v1, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAppCategoryFilterProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v1, v7, v8}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 244
    invoke-virtual {v6, v7, v10, v1}, Lcom/android/server/pm/AppCategoryHintHelper;->onInit(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;)V

    .line 245
    invoke-virtual {v12}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 246
    const-string v1, "addSharedUsers"

    invoke-virtual {v12, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 247
    const-string v1, "android.uid.system"

    const/16 v6, 0x3e8

    const/16 v10, 0x8

    const/4 v13, 0x1

    invoke-virtual {v11, v6, v13, v10, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 248
    const-string v1, "android.uid.phone"

    const/16 v6, 0x3e9

    invoke-virtual {v11, v6, v13, v10, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 249
    const-string v1, "android.uid.log"

    const/16 v6, 0x3ef

    invoke-virtual {v11, v6, v13, v10, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 250
    const-string v1, "android.uid.nfc"

    const/16 v6, 0x403

    invoke-virtual {v11, v6, v13, v10, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 251
    const-string v1, "android.uid.bluetooth"

    const/16 v6, 0x3ea

    invoke-virtual {v11, v6, v13, v10, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 252
    const-string v1, "android.uid.shell"

    const/16 v6, 0x7d0

    invoke-virtual {v11, v6, v13, v10, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 253
    const-string v1, "android.uid.se"

    const/16 v6, 0x42c

    invoke-virtual {v11, v6, v13, v10, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 254
    const-string v1, "android.uid.samsungcloud"

    const/16 v6, 0x1391

    invoke-virtual {v11, v6, v13, v10, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 255
    const-string v1, "android.uid.bcmgr"

    const/16 v6, 0x138e

    invoke-virtual {v11, v6, v13, v10, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 256
    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v6, 0x1f

    if-ge v1, v6, :cond_1

    .line 257
    const-string v6, "android.uid.sendhelpmessage"

    move-object/from16 p5, v15

    const/16 v15, 0x138b

    invoke-virtual {v11, v15, v13, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    goto :goto_0

    :cond_1
    move-object/from16 p5, v15

    .line 258
    :goto_0
    const-string v6, "android.uid.cmhservice"

    const/16 v15, 0x138c

    invoke-virtual {v11, v15, v13, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 259
    const-string v6, "android.uid.networkstack"

    const/16 v15, 0x431

    invoke-virtual {v11, v15, v13, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 260
    const-string v6, "android.uid.uwb"

    const/16 v15, 0x43b

    invoke-virtual {v11, v15, v13, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 261
    const-string v6, "android.uid.vendordata"

    const/16 v15, 0xb66

    const/high16 v13, 0x40000

    invoke-virtual {v11, v15, v13, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 262
    const-string v6, "android.uid.spass"

    const/16 v13, 0x149e

    const/4 v15, 0x1

    invoke-virtual {v11, v13, v15, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 263
    const-string v6, "android.uid.spay"

    const/16 v13, 0x149f

    invoke-virtual {v11, v13, v15, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 264
    const-string v6, "android.uid.adaptive_brightness"

    const/16 v13, 0x139d

    invoke-virtual {v11, v13, v15, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 265
    const-string v6, "android.uid.advmodem"

    const/16 v13, 0x1399

    invoke-virtual {v11, v13, v15, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 266
    const-string v6, "android.uid.ipsgeofence"

    const/16 v13, 0x139e

    invoke-virtual {v11, v13, v15, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 267
    const-string v6, "android.uid.networkdiagnostic"

    const/16 v13, 0x139f

    invoke-virtual {v11, v13, v15, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 268
    const-string v6, "android.uid.mdxkit"

    const/16 v13, 0x13a1

    invoke-virtual {v11, v13, v15, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 269
    const-string v6, "android.uid.sharelive"

    const/16 v13, 0x13a2

    invoke-virtual {v11, v13, v15, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 270
    const-string v6, "android.uid.ker"

    const/16 v13, 0x15b2

    invoke-virtual {v11, v13, v15, v10, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    const/16 v6, 0x1f

    if-ge v1, v6, :cond_2

    .line 271
    const-string v1, "android.uid.intelligenceservice"

    const/16 v6, 0x1392

    invoke-virtual {v11, v6, v15, v10, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 272
    :cond_2
    invoke-virtual {v12}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 273
    const-string v1, "android.uid.nsflp"

    const/16 v6, 0x1395

    invoke-virtual {v11, v6, v15, v10, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 274
    sget-object v1, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 275
    const-string v1, "android.uid.knoxcore"

    const/16 v6, 0x1482

    invoke-virtual {v11, v6, v15, v10, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    .line 276
    const-string v1, "debug.separate_processes"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 277
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 278
    const-string v6, "*"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x2

    .line 279
    iput v1, v7, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    const/4 v1, 0x0

    .line 280
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 281
    const-string v1, "PackageManager"

    const-string v6, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 282
    iput v6, v7, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 283
    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 284
    const-string v10, "PackageManager"

    const-string v11, "Running with debug.separate_processes: "

    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 285
    iput v6, v7, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    const/4 v1, 0x0

    .line 286
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 287
    :goto_1
    invoke-static {v5, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setInstaller(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;)V

    .line 288
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageDexOptimizer;

    .line 289
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 290
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mDexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/DexManager;

    .line 291
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 292
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 293
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 294
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/ArtManagerService;

    .line 295
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 296
    new-instance v1, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;-><init>(Landroid/os/Looper;)V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v10

    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 298
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    .line 299
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 300
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    .line 301
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 302
    const-string v1, "get system config"

    invoke-virtual {v12, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v11

    .line 304
    iget-object v1, v11, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 305
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 306
    invoke-virtual {v12}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 307
    new-instance v13, Lcom/android/server/pm/ProtectedPackages;

    invoke-direct {v13, v3}, Lcom/android/server/pm/ProtectedPackages;-><init>(Landroid/content/Context;)V

    iput-object v13, v7, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 308
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ApexManager;

    .line 309
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 310
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/pm/AppsFilterImpl;

    .line 311
    iput-object v15, v7, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 312
    new-instance v1, Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-direct {v1}, Lcom/android/server/pm/ChangedPackagesTracker;-><init>()V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 313
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "app"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 314
    new-instance v1, Lcom/android/server/pm/DomainVerificationConnection;

    invoke-direct {v1, v7}, Lcom/android/server/pm/DomainVerificationConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 315
    iget-object v2, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v3, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v3, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 316
    iput-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 317
    move-object v2, v6

    check-cast v2, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setConnection(Lcom/android/server/pm/DomainVerificationConnection;)V

    .line 318
    new-instance v5, Lcom/android/server/pm/BroadcastHelper;

    invoke-direct {v5, v8}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object v5, v7, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 319
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 320
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 321
    new-instance v3, Lcom/android/server/pm/AppDataHelper;

    invoke-direct {v3, v7}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v3, v7, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 322
    new-instance v4, Lcom/android/server/pm/RemovePackageHelper;

    invoke-direct {v4, v7, v3, v5}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/BroadcastHelper;)V

    iput-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 323
    new-instance v2, Lcom/android/server/pm/DeletePackageHelper;

    invoke-direct {v2, v7, v4, v5}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V

    iput-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 324
    new-instance v1, Lcom/android/server/pm/InstallPackageHelper;

    move-object/from16 p2, v1

    move-object/from16 p6, v2

    move-object/from16 v2, p0

    move-object/from16 p7, v4

    move-object/from16 v24, v5

    move-object/from16 v5, p6

    move-object/from16 v20, v6

    move-object/from16 v6, v24

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 325
    new-instance v1, Lcom/android/server/pm/InstantAppRegistry;

    iget-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 326
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    .line 327
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    move-object/from16 v4, p6

    .line 328
    invoke-direct {v1, v2, v9, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Lcom/android/server/pm/UserManagerService$LocalService;Lcom/android/server/pm/DeletePackageHelper;)V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 329
    iput-object v4, v10, Lcom/android/server/pm/SharedLibrariesImpl;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 330
    new-instance v2, Lcom/android/server/pm/PreferredActivityHelper;

    move-object/from16 v3, v24

    invoke-direct {v2, v7, v3}, Lcom/android/server/pm/PreferredActivityHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BroadcastHelper;)V

    iput-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 331
    new-instance v5, Lcom/android/server/pm/ResolveIntentHelper;

    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v18

    new-instance v9, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    new-instance v10, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;

    const/4 v8, 0x1

    invoke-direct {v10, v7, v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    move-object/from16 v8, p5

    move-object/from16 p5, v12

    move-object v12, v15

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    move-object/from16 v19, v14

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    invoke-direct/range {v15 .. v23}, Lcom/android/server/pm/ResolveIntentHelper;-><init>(Landroid/content/Context;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/UserNeedsBadgingCache;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;)V

    iput-object v5, v7, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 333
    new-instance v2, Lcom/android/server/pm/DexOptHelper;

    invoke-direct {v2, v7}, Lcom/android/server/pm/DexOptHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 334
    new-instance v2, Lcom/android/server/pm/SuspendPackageHelper;

    iget-object v5, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {v2, v7, v5, v3, v13}, Lcom/android/server/pm/SuspendPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/ProtectedPackages;)V

    iput-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 335
    new-instance v5, Lcom/android/server/pm/DistractingPackageHelper;

    invoke-direct {v5, v7, v3, v2}, Lcom/android/server/pm/DistractingPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/SuspendPackageHelper;)V

    iput-object v5, v7, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 336
    new-instance v2, Lcom/android/server/pm/StorageEventHelper;

    move-object/from16 v3, p7

    invoke-direct {v2, v7, v4, v3}, Lcom/android/server/pm/StorageEventHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/RemovePackageHelper;)V

    iput-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 337
    iget-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 338
    :try_start_0
    new-instance v3, Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {v3}, Lcom/android/server/pm/SnapshotStatistics;-><init>()V

    iput-object v3, v7, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 339
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 340
    new-instance v3, Lcom/android/server/pm/ComputerLocked;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$Snapshot;

    const/4 v5, 0x1

    invoke-direct {v4, v7, v5}, Lcom/android/server/pm/PackageManagerService$Snapshot;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    const/4 v5, -0x1

    .line 341
    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/ComputerEngine;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V

    .line 342
    iput-object v3, v7, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 343
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/pm/PackageManagerService$1;

    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v6, :cond_5

    .line 344
    invoke-virtual {v6, v4}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 345
    :cond_5
    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    if-eqz v6, :cond_6

    .line 346
    invoke-virtual {v6, v4}, Lcom/android/server/pm/SharedLibrariesImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 347
    :cond_6
    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v6, :cond_7

    .line 348
    invoke-virtual {v6, v4}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 349
    :cond_7
    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-eqz v6, :cond_8

    .line 350
    invoke-virtual {v6, v4}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_8
    if-eqz v12, :cond_9

    .line 351
    invoke-virtual {v12, v4}, Lcom/android/server/pm/AppsFilterImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 352
    :cond_9
    invoke-virtual {v1, v4}, Lcom/android/server/pm/InstantAppRegistry;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 353
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    if-eqz v1, :cond_a

    .line 354
    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 355
    :cond_a
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    if-eqz v1, :cond_b

    .line 356
    invoke-virtual {v1, v4}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 357
    :cond_b
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    if-eqz v1, :cond_c

    .line 358
    invoke-virtual {v1, v4}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 359
    :cond_c
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v1, :cond_d

    .line 360
    invoke-virtual {v1, v4}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 361
    :cond_d
    iget-boolean v1, v7, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-nez v1, :cond_e

    iget-boolean v1, v7, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_2

    :cond_e
    const/4 v1, 0x0

    :goto_2
    invoke-static {v7, v4, v1}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;Z)V

    .line 362
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 363
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->onInitStarting()V

    .line 364
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 365
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 366
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 367
    :try_start_1
    iget-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 368
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 369
    new-instance v6, Lcom/android/server/pm/ProcessLoggingHandler;

    invoke-direct {v6}, Lcom/android/server/pm/ProcessLoggingHandler;-><init>()V

    iput-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 370
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    const-wide/32 v8, 0x927c0

    invoke-virtual {v6, v4, v8, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 371
    new-instance v4, Lcom/android/server/pm/AutoDisableHandler;

    invoke-direct {v4}, Lcom/android/server/pm/AutoDisableHandler;-><init>()V

    iput-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler;

    .line 372
    iget-object v4, v11, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 373
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_f

    .line 374
    :try_start_3
    iget-object v9, v7, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    invoke-virtual {v9, v10}, Lcom/android/server/pm/SharedLibrariesImpl;->addBuiltInSharedLibraryLPw(Lcom/android/server/SystemConfig$SharedLibraryEntry;)V

    const/4 v9, 0x1

    add-int/2addr v8, v9

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    move-object v3, v0

    move-object/from16 v18, v1

    goto/16 :goto_1b

    :cond_f
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_12

    .line 375
    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 376
    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    .line 377
    iget-object v12, v10, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    array-length v12, v12

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_11

    .line 378
    iget-object v14, v10, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    aget-object v14, v14, v13

    move/from16 p1, v6

    const-wide/16 v5, -0x1

    .line 379
    invoke-virtual {v3, v5, v6, v14}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v14

    if-eqz v14, :cond_10

    .line 380
    invoke-virtual {v3, v5, v6, v9}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v5

    .line 381
    invoke-virtual {v5, v14}, Landroid/content/pm/SharedLibraryInfo;->addDependency(Landroid/content/pm/SharedLibraryInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_10
    const/4 v5, 0x1

    add-int/2addr v13, v5

    move/from16 v6, p1

    const/4 v5, -0x1

    goto :goto_6

    :cond_11
    move/from16 p1, v6

    const/4 v5, 0x1

    add-int/2addr v8, v5

    const/4 v5, -0x1

    goto :goto_5

    .line 382
    :cond_12
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy()V

    .line 383
    const-string v4, "loadFallbacks"

    move-object/from16 v5, p5

    invoke-virtual {v5, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Landroid/content/pm/FallbackCategoryProvider;->loadFallbacks()V

    .line 385
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 386
    const-string/jumbo v4, "read user settings"

    invoke-virtual {v5, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 387
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 388
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    .line 389
    iget-object v6, v6, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 390
    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 391
    invoke-virtual {v6, v9, v8, v8}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object v6

    .line 392
    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 393
    iget-object v9, v8, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 394
    :try_start_5
    iget-object v10, v8, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v8, v10, v9}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 395
    :try_start_6
    invoke-virtual {v4, v3, v6, v8}, Lcom/android/server/pm/Settings;->readLPw(Lcom/android/server/pm/ComputerLocked;Ljava/util/List;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    iput-boolean v4, v7, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 396
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-eqz v4, :cond_13

    .line 397
    :try_start_7
    const-string/jumbo v4, "setFirstBoot: "

    invoke-virtual {v5, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 398
    :try_start_8
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4}, Lcom/android/server/pm/Installer;->setFirstBoot()V
    :try_end_8
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 399
    :try_start_9
    const-string v6, "PackageManager"

    const-string v8, "Could not set First Boot: "

    invoke-static {v6, v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    :goto_7
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 401
    :cond_13
    :try_start_a
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v4, v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 402
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 403
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 404
    :try_start_b
    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->readLegacyPermissionStateTEMP()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 405
    :try_start_c
    iget-boolean v4, v7, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v4, :cond_14

    .line 406
    :try_start_d
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->requestCopyPreoptedFiles()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 407
    :cond_14
    :try_start_e
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10402ff

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-nez v6, :cond_15

    .line 409
    :try_start_f
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 410
    :cond_15
    :try_start_10
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 411
    :try_start_11
    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 412
    iget-object v9, v8, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 413
    iget-object v10, v8, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v8, v10, v9}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/pm/install/SkippingApks;

    .line 414
    invoke-static {v6, v8}, Lcom/android/server/pm/NfcFeatureManager;->updateFeatureAndPackage(Landroid/util/ArrayMap;Lcom/samsung/android/server/pm/install/SkippingApks;)V

    .line 415
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 416
    :try_start_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 417
    const-string v4, "PackageManager"

    const-string v6, "!@Boot_EBS_F: boot_progress_pms_system_scan_start"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xbfe

    .line 418
    invoke-static {v4, v8, v9}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 419
    const-string v4, "BOOTCLASSPATH"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 420
    const-string v6, "SYSTEMSERVERCLASSPATH"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-nez v4, :cond_16

    .line 421
    :try_start_13
    const-string v4, "PackageManager"

    const-string v10, "No BOOTCLASSPATH found!"

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-nez v6, :cond_17

    .line 422
    const-string v4, "PackageManager"

    const-string v6, "No SYSTEMSERVERCLASSPATH found!"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 423
    :cond_17
    :try_start_14
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    .line 424
    iget-object v6, v4, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    move-object/from16 v10, p3

    .line 425
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v10, 0x1

    xor-int/2addr v6, v10

    iput-boolean v6, v7, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-eqz v6, :cond_18

    .line 426
    :try_start_15
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Upgrading from "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") to "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    invoke-static {v12, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_18
    if-nez v6, :cond_19

    .line 427
    iget-boolean v10, v7, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v10, :cond_1a

    .line 428
    :cond_19
    :try_start_16
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[PM]Build Info: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ro.omc.build.id"

    .line 429
    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x5

    .line 430
    invoke-static {v12, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 431
    const-string/jumbo v10, "sys.boot.is_upgrade"

    const-string v12, "1"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :cond_1a
    if-eqz v6, :cond_1b

    .line 432
    :try_start_17
    iget v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_8

    :cond_1b
    const/4 v10, -0x1

    :goto_8
    :try_start_18
    iput v10, v7, Lcom/android/server/pm/PackageManagerService;->mPriorSdkVersion:I

    .line 433
    new-instance v10, Lcom/android/server/pm/InitAppsHelper;

    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v13, v7, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v14, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 434
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemPartitions()Ljava/util/List;

    move-result-object v14

    invoke-direct {v10, v7, v12, v13, v14}, Lcom/android/server/pm/InitAppsHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V

    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-eqz v6, :cond_1c

    .line 435
    :try_start_19
    iget v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    const/16 v12, 0x16

    if-gt v10, v12, :cond_1c

    const/4 v10, 0x1

    goto :goto_9

    :cond_1c
    const/4 v10, 0x0

    :goto_9
    :try_start_1a
    iput-boolean v10, v7, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    if-eqz v6, :cond_1d

    .line 436
    :try_start_1b
    iget v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    const/16 v12, 0x19

    if-ge v10, v12, :cond_1d

    const/4 v10, 0x1

    goto :goto_a

    :cond_1d
    const/4 v10, 0x0

    :goto_a
    :try_start_1c
    iput-boolean v10, v7, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    if-eqz v6, :cond_1e

    .line 437
    :try_start_1d
    iget v6, v4, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    const/16 v10, 0x1d

    if-ge v6, v10, :cond_1e

    const/4 v6, 0x1

    goto :goto_b

    :cond_1e
    const/4 v6, 0x0

    :goto_b
    :try_start_1e
    iput-boolean v6, v7, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    .line 438
    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 439
    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v10
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    if-eqz v10, :cond_20

    .line 441
    :try_start_1f
    new-instance v10, Landroid/util/ArraySet;

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v12

    invoke-direct {v10, v12}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    const/4 v10, 0x0

    .line 442
    :goto_c
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v12

    if-ge v10, v12, :cond_1f

    .line 443
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 444
    :try_start_20
    iget-object v13, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 445
    :try_start_21
    check-cast v13, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    add-int/2addr v10, v12

    goto :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    .line 446
    :cond_1f
    const-string v10, "cross profile intent filter update"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 447
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 448
    :try_start_22
    iget-object v12, v10, Lcom/android/server/pm/PackageManagerServiceInjector;->mCrossProfileIntentFilterHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 449
    iget-object v13, v10, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v12, v13, v10}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/CrossProfileIntentFilterHelper;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 450
    :try_start_23
    invoke-virtual {v10}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->updateDefaultCrossProfileIntentFilter()V

    .line 451
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto :goto_d

    :catchall_2
    move-exception v0

    goto/16 :goto_4

    .line 452
    :cond_20
    :goto_d
    :try_start_24
    iget-boolean v10, v7, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    iget-boolean v12, v7, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    iget-object v13, v7, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    invoke-static {v13, v10, v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->preparePackageParserCache(Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v10

    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    .line 453
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v12

    .line 454
    invoke-virtual {v12}, Lcom/android/server/SystemConfig;->getInitialNonStoppedSystemPackages()Ljava/util/Set;

    move-result-object v12

    iput-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 455
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1110240

    .line 456
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    iput-boolean v12, v7, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    .line 457
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    invoke-virtual {v12, v10}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->onSystemScanning(Ljava/io/File;)V

    .line 458
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v10

    .line 459
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningCachingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object v15

    .line 460
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    move-object v13, v15

    move-object v14, v6

    move-object/from16 v18, v1

    move-object v1, v15

    move-object v15, v10

    move-wide/from16 v16, v8

    :try_start_25
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/pm/InitAppsHelper;->initSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/server/utils/WatchedArrayMap;[IJ)Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v12

    iput-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 461
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    invoke-virtual {v12, v1, v10, v8, v9}, Lcom/android/server/pm/InitAppsHelper;->initNonSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;[IJ)V

    .line 463
    invoke-virtual {v1}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V

    .line 464
    invoke-virtual {v7, v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredButNotReallyRequiredVerifiersLPr(Lcom/android/server/pm/ComputerLocked;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 465
    invoke-virtual {v7, v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredInstallerLPr(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 466
    invoke-virtual {v7, v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredUninstallerLPr(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 467
    invoke-virtual {v7, v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredPermissionControllerLPr(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 468
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->getStorageManagerPackageName(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    .line 469
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->getSetupWizardPackageNameImpl(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 470
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v12, v1}, Lcom/android/server/pm/resolution/ComponentResolver;->fixProtectedFilterPriorities(Ljava/lang/String;)V

    .line 471
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v12, 0x10403b9

    .line 472
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 474
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v12, 0x1040335

    .line 475
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 477
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v12, 0x104033d

    .line 478
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    const v1, 0x1040308

    .line 480
    invoke-virtual {v7, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 482
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v12, 0x104036b

    .line 483
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->getRetailDemoPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    .line 486
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 487
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getOverlayConfigSignaturePackage()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    const v1, 0x104039f

    .line 489
    invoke-virtual {v7, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    const v1, 0x1040307

    .line 491
    invoke-virtual {v7, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    const v1, 0x104033a

    .line 493
    invoke-virtual {v7, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mWearableSensingPackage:Ljava/lang/String;

    .line 495
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 496
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    const/4 v13, 0x0

    .line 497
    invoke-virtual {v1, v13, v13, v12}, Lcom/android/server/pm/SharedLibrariesImpl;->updateAllSharedLibrariesLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 498
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->getAllSharedUsersLPw()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SharedUserSetting;

    .line 499
    iget-object v13, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 500
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    .line 501
    iget-object v14, v12, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 502
    iget-object v14, v14, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    const/4 v15, 0x0

    .line 503
    invoke-interface {v13, v14, v15}, Lcom/android/server/pm/PackageAbiHelper;->getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v13

    .line 504
    invoke-static {v12, v15, v13}, Lcom/android/server/pm/ScanPackageUtils;->applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;

    .line 505
    invoke-virtual {v12}, Lcom/android/server/pm/SharedUserSetting;->fixSeInfoLocked()V

    .line 506
    invoke-virtual {v12}, Lcom/android/server/pm/SharedUserSetting;->updateProcesses()V

    goto :goto_e

    :catchall_3
    move-exception v0

    :goto_f
    move-object v3, v0

    goto/16 :goto_1b

    .line 507
    :cond_21
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/AbstractStatsBase;->read(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 508
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v1}, Lcom/android/server/pm/CompilerStats;->read()V

    .line 509
    const-string v1, "PackageManager"

    const-string v12, "!@Boot_EBS_F: boot_progress_pms_end"

    invoke-static {v1, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/16 v1, 0xc12

    .line 511
    invoke-static {v1, v12, v13}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 512
    const-string v1, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Time to scan packages: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    long-to-float v13, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " seconds"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 514
    invoke-static {v1, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-boolean v1, v7, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v1, :cond_22

    .line 516
    const-string v1, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Partitions fingerprint changed from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v4, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; regranting permissions for internal storage"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_22
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    sget-object v12, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-boolean v13, v7, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    .line 518
    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    .line 519
    :try_start_26
    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, v12, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onStorageVolumeMounted(Ljava/lang/String;Z)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    .line 520
    :try_start_27
    iget v1, v7, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    iput v1, v4, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 521
    iget-boolean v1, v7, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    if-nez v1, :cond_23

    iget-boolean v1, v7, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v1, :cond_24

    .line 522
    :cond_23
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 523
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    .line 524
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v12, 0x1

    .line 525
    invoke-virtual {v1, v12}, Lcom/android/server/pm/UserManagerService$LocalService;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    const/4 v12, 0x0

    .line 526
    :goto_10
    move-object v13, v1

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_24

    .line 527
    iget-object v14, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v14, v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    const/4 v13, 0x1

    add-int/2addr v12, v13

    goto :goto_10

    .line 528
    :cond_24
    iget-boolean v1, v7, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v1, :cond_27

    .line 529
    const-string v1, "PackageManager"

    const-string v12, "Build fingerprint changed; clearing code caches"

    invoke-static {v1, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 530
    :goto_11
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v12

    if-ge v1, v12, :cond_26

    .line 531
    iget-object v12, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 532
    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 533
    sget-object v13, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 534
    iget-object v13, v7, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    const v14, 0x20027

    const/4 v15, -0x1

    invoke-virtual {v13, v12, v15, v14}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    :cond_25
    const/4 v12, 0x1

    add-int/2addr v1, v12

    goto :goto_11

    .line 535
    :cond_26
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, v4, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 536
    sget-object v1, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, v4, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 537
    :cond_27
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v1}, Lcom/android/server/pm/AppDataHelper;->fixAppsDataOnBoot()Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    .line 538
    iget-boolean v1, v7, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    if-eqz v1, :cond_2b

    .line 539
    const-string v1, "PackageManager"

    const-string v12, "Allowlisting all existing apps to hide their icons"

    invoke-static {v1, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    const/4 v12, 0x0

    :goto_12
    if-ge v12, v1, :cond_2b

    .line 541
    iget-object v13, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    .line 542
    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 543
    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v14

    const/4 v15, 0x1

    and-int/2addr v14, v15

    if-eqz v14, :cond_28

    move/from16 p1, v1

    move-object/from16 v16, v6

    move v1, v15

    goto :goto_14

    .line 544
    :cond_28
    sget-object v14, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    move/from16 p1, v1

    move-object/from16 v16, v6

    const/4 v1, 0x0

    .line 545
    invoke-virtual {v13, v1, v15, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    .line 546
    :try_start_28
    iget-object v1, v6, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-eqz v1, :cond_29

    .line 547
    invoke-virtual {v1, v14}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_13

    :cond_29
    const/4 v1, 0x0

    .line 548
    :goto_13
    iget-object v6, v6, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 549
    invoke-virtual {v6, v14}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    if-eqz v1, :cond_2a

    .line 550
    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->onChanged$2()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_4

    :cond_2a
    const/4 v1, 0x1

    :goto_14
    add-int/2addr v12, v1

    move/from16 v1, p1

    move-object/from16 v6, v16

    goto :goto_12

    :catchall_4
    move-exception v0

    :goto_15
    move-object v1, v0

    move-object v3, v1

    goto/16 :goto_1b

    :cond_2b
    const/4 v1, 0x0

    .line 551
    :try_start_29
    iput-boolean v1, v7, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    const/4 v6, 0x3

    .line 552
    iput v6, v4, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 553
    const-string/jumbo v4, "write settings"

    invoke-virtual {v5, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v7, v1}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 555
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 556
    const-string v1, "PackageManager"

    const-string v4, "!@Boot_EBS_F: boot_progress_pms_ready"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v1, 0xc1c

    .line 558
    invoke-static {v1, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 559
    invoke-virtual {v7, v3}, Lcom/android/server/pm/PackageManagerService;->getIntentFilterVerifierComponentNameLPr(Lcom/android/server/pm/ComputerLocked;)Landroid/content/ComponentName;

    move-result-object v12

    .line 560
    invoke-virtual {v7, v3}, Lcom/android/server/pm/PackageManagerService;->getDomainVerificationAgentComponentNameLPr(Lcom/android/server/pm/ComputerLocked;)Landroid/content/ComponentName;

    move-result-object v13

    .line 561
    iget-object v14, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v15, v7, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 562
    move-object v1, v15

    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getCollector()Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    move-result-object v16

    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    move-object/from16 v17, v1

    .line 563
    invoke-static/range {v12 .. v17}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->makeProxy(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/DomainVerificationConnection;)Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v1

    .line 564
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v4, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v4, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setProxy(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 565
    invoke-virtual {v7, v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredServicesExtensionPackageLPr(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 566
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredSharedLibrary(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 567
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v12, 0x0

    .line 568
    invoke-virtual {v3, v4, v5, v6, v12}, Lcom/android/server/pm/ComputerEngine;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 569
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v12

    .line 570
    invoke-virtual {v1, v12, v13}, Lcom/android/server/pm/Settings;->setPermissionControllerVersion(J)V

    .line 571
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredSdkSandboxPackageName(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->buildRequiredSystemPackages()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredSystemPackages:Ljava/util/Set;

    .line 573
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v7, v10}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    .line 574
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 575
    invoke-virtual {v7, v3}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 576
    sget-boolean v12, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v12, :cond_2c

    .line 577
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Set ephemeral resolver: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_2c
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 579
    invoke-virtual {v12, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstantAppResolverConnection(Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;

    move-result-object v12

    iput-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 580
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolverSettingsLPr(Lcom/android/server/pm/ComputerLocked;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    const/4 v1, 0x0

    goto :goto_16

    :cond_2d
    const/4 v1, 0x0

    .line 581
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 582
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 583
    :goto_16
    invoke-virtual {v7, v1}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 584
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 585
    array-length v13, v10

    :goto_17
    if-ge v4, v13, :cond_2e

    aget v14, v10, v4

    .line 586
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v5, v6, v14}, Lcom/android/server/pm/ComputerEngine;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v14

    .line 587
    invoke-virtual {v14}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v14

    .line 588
    invoke-virtual {v12, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    add-int/2addr v4, v14

    goto :goto_17

    .line 589
    :cond_2e
    iget-object v3, v7, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {v3, v12}, Lcom/android/server/pm/dex/DexManager;->load(Ljava/util/Map;)V

    .line 590
    iget-object v3, v7, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v3, v12}, Lcom/android/server/pm/dex/DynamicCodeLogger;->load(Ljava/util/Map;)V

    .line 591
    iget-boolean v3, v7, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v3, :cond_2f

    .line 592
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    const/16 v5, 0xef

    const/16 v6, 0xd

    .line 593
    invoke-static {v5, v6, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 594
    :cond_2f
    iget-boolean v3, v7, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-nez v3, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 595
    :cond_30
    invoke-virtual {v11}, Lcom/android/server/SystemConfig;->getAppMetadataFilePaths()Landroid/util/ArrayMap;

    move-result-object v3

    .line 596
    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 597
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 598
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 599
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_31

    move-object v4, v1

    .line 601
    :cond_31
    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-nez v6, :cond_34

    .line 602
    iget-object v6, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-eqz v6, :cond_32

    .line 603
    invoke-virtual {v6, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    .line 604
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->aslInApkAppMetadataSource()Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x3

    .line 605
    invoke-virtual {v6, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    goto :goto_19

    .line 606
    :cond_32
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set app metadata file for nonexistent package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_19
    const/4 v4, 0x3

    goto :goto_18

    .line 607
    :cond_34
    invoke-virtual {v6, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    .line 608
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->aslInApkAppMetadataSource()Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x3

    .line 609
    invoke-virtual {v6, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    goto :goto_18

    .line 610
    :cond_35
    iget-boolean v1, v7, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v1, :cond_36

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device first boot OS is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 612
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    const-string v4, "android"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageArchiver;->setAppVersion(ILjava/lang/String;)V

    .line 613
    :cond_36
    new-instance v1, Lcom/android/server/pm/ComputerLocked;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    :try_start_2a
    new-instance v3, Lcom/android/server/pm/PackageManagerService$Snapshot;

    const/4 v4, 0x1

    invoke-direct {v3, v7, v4}, Lcom/android/server/pm/PackageManagerService$Snapshot;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    const/4 v4, -0x1

    .line 614
    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/ComputerEngine;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    .line 615
    :try_start_2b
    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 616
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    .line 617
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 618
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getModuleInfoProvider()Lcom/android/server/pm/ModuleInfoProvider;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 619
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 620
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemWrapper:Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;

    .line 621
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;->enablePackageCaches()V

    .line 622
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Installer;->setWarnIfHeld(Ljava/lang/Object;)V

    .line 623
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->readConfigUseRoundIcon(Landroid/content/res/Resources;)V

    .line 624
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/android/server/pm/PackageManagerService;->mServiceStartWithDelay:J

    .line 625
    new-instance v1, Lcom/android/server/pm/FrozenPackageInterceptor;

    iget-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/pm/FrozenPackageInterceptor;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mFrozenPackageInterceptor:Lcom/android/server/pm/FrozenPackageInterceptor;

    .line 626
    const-string v1, "PackageManager"

    const-string v2, "Fix for b/169414761 is applied"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_5
    move-exception v0

    goto/16 :goto_15

    :catchall_6
    move-exception v0

    goto/16 :goto_15

    :catchall_7
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_f

    :catchall_8
    move-exception v0

    move-object/from16 v18, v1

    :goto_1a
    move-object v1, v0

    .line 628
    :try_start_2c
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_9

    :try_start_2d
    throw v1

    :catchall_9
    move-exception v0

    goto :goto_1a

    :catchall_a
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_15

    :catchall_b
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_15

    .line 629
    :goto_1b
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    :try_start_2e
    throw v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_c

    :catchall_c
    move-exception v0

    :goto_1c
    move-object v1, v0

    goto :goto_1d

    :catchall_d
    move-exception v0

    move-object/from16 v18, v1

    goto :goto_1c

    .line 630
    :goto_1d
    :try_start_2f
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    goto :goto_1e

    :catchall_e
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw v1

    :catchall_f
    move-exception v0

    move-object v1, v0

    .line 631
    :try_start_30
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_f

    throw v1
.end method

.method public static decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;
    .locals 6

    .line 1
    :try_start_0
    const-string v0, "X.509"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [Ljava/security/cert/Certificate;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_0

    .line 19
    .line 20
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 21
    .line 22
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, [B

    .line 27
    .line 28
    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 36
    .line 37
    aput-object v4, v1, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    return-object v1

    .line 45
    :goto_1
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    throw p0
.end method

.method public static deleteOatArtifactsOfPackage(Ljava/lang/String;)J
    .locals 5

    .line 1
    const-string v0, "PackageManager"

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-wide/16 v2, -0x1

    .line 24
    .line 25
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4, v1, p0}, Lcom/android/server/art/ArtManagerLocal;->deleteDexoptArtifacts(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)Lcom/android/server/art/model/DeleteResult;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/android/server/art/model/DeleteResult;->getFreedBytes()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-wide v2

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :catch_1
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-wide v2

    .line 62
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-wide v2

    .line 75
    :goto_2
    if-eqz v1, :cond_3

    .line 76
    .line 77
    :try_start_3
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_3
    throw p0

    .line 86
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 87
    .line 88
    const-string v0, "Only the system or shell can delete oat artifacts"

    .line 89
    .line 90
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public static enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x1482

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const-wide/16 v0, 0x0

    .line 33
    .line 34
    invoke-interface {p0, p1, v0, v1, p2}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "Unknown package "

    .line 44
    .line 45
    const-string v1, " on user "

    .line 46
    .line 47
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 56
    .line 57
    const-string v0, "Calling uid "

    .line 58
    .line 59
    const-string v1, " does not own package "

    .line 60
    .line 61
    invoke-static {p2, v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_3
    :goto_0
    return-void
.end method

.method public static ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "Missing required system package: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const-wide/32 v4, 0x200000

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    :try_start_0
    invoke-interface {p0, p1, v4, v5, v6}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-nez v4, :cond_3

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    invoke-interface {p0, p1, v4, v5, v6}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const-string v4, "145981139"

    .line 30
    .line 31
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 32
    .line 33
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 34
    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const-string v6, ""

    .line 40
    .line 41
    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const v5, 0x534e4554

    .line 46
    .line 47
    .line 48
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_0
    const-string v4, "PackageManager"

    .line 55
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    const-string p0, ", but found with extended search."

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-string p0, "."

    .line 70
    .line 71
    :goto_1
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public static extrasForInstallResult(Lcom/android/server/pm/InstallRequest;)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 2
    .line 3
    const/16 v1, -0x70

    .line 4
    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    const-string v2, "android.intent.extra.REPLACING"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/pm/InstallRequest;->mOrigPermission:Ljava/lang/String;

    .line 39
    .line 40
    const-string v2, "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/pm/InstallRequest;->mOrigPackage:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    .line 61
    .line 62
    const-string v1, "android.content.pm.extra.WARNINGS"

    .line 63
    .line 64
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-object v0
.end method

.method public static forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 17
    .line 18
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public static getInstantAppResolverSettingsLPr(Lcom/android/server/pm/ComputerLocked;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.INSTANT_APP_RESOLVER_SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.category.DEFAULT"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const-wide/32 v4, 0xc0000

    .line 25
    .line 26
    .line 27
    move-object v1, p0

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static getRequiredSdkSandboxPackageName(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v1, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "com.android.sdksandbox.SdkSandboxService"

    .line 4
    .line 5
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 9
    .line 10
    .line 11
    move-result v6

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v7, -0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    const-wide/32 v3, 0x1c0000

    .line 16
    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/ComputerEngine;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "There should exactly one sdk sandbox package; found "

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, ": matches="

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public static getRequiredSharedLibrary(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    int-to-long v0, v0

    .line 3
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 4
    .line 5
    const-string v2, "android.ext.shared"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "Expected a package for shared library android.ext.shared"

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "Missing required shared library:android.ext.shared"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public static getSetupWizardPackageNameImpl(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "android.intent.action.MAIN"

    .line 2
    .line 3
    const-string v1, "android.intent.category.SETUP_WIZARD"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 10
    .line 11
    .line 12
    move-result v7

    .line 13
    const/4 v4, 0x0

    .line 14
    const-wide/32 v5, 0x1c0200

    .line 15
    .line 16
    .line 17
    move-object v2, p0

    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "There should probably be exactly one setup wizard; found "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ": matches="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string v0, "PackageManager"

    .line 70
    .line 71
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    return-object p0
.end method

.method public static getStorageManagerPackageName(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v1, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.os.storage.action.MANAGE_STORAGE"

    .line 4
    .line 5
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    const/4 v2, 0x0

    .line 13
    const-wide/32 v3, 0x1c0200

    .line 14
    .line 15
    .line 16
    move-object v0, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "There should probably be exactly one storage manager; found "

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ": matches="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v0, "PackageManager"

    .line 69
    .line 70
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    return-object p0
.end method

.method public static invalidatePackageInfoCache()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChange()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static killApplication(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move-object v3, p0

    .line 12
    move v4, p1

    .line 13
    move v5, p2

    .line 14
    move-object v6, p3

    .line 15
    move v7, p4

    .line 16
    :try_start_1
    invoke-interface/range {v2 .. v7}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;
    .locals 52

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/16 v15, 0x10

    .line 6
    .line 7
    const/16 v4, 0xa

    .line 8
    .line 9
    const/16 v5, 0xe

    .line 10
    .line 11
    const/4 v12, 0x0

    .line 12
    const/4 v11, 0x1

    .line 13
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    move-object v6, v0

    .line 17
    move v7, v12

    .line 18
    :goto_0
    if-gt v7, v5, :cond_2

    .line 19
    .line 20
    :try_start_0
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getSystemPropertyName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-nez v8, :cond_0

    .line 31
    .line 32
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    new-instance v9, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v10, "Reason system property name \""

    .line 46
    .line 47
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, "\" for reason "

    .line 54
    .line 55
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    .line 59
    .line 60
    aget-object v0, v0, v7

    .line 61
    .line 62
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    if-nez v6, :cond_1

    .line 74
    .line 75
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v8, "PMS compiler filter settings are bad."

    .line 78
    .line 79
    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/RuntimeException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    add-int/2addr v7, v11

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    if-nez v6, :cond_16

    .line 88
    .line 89
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 90
    .line 91
    const-string v6, "PackageManagerTiming"

    .line 92
    .line 93
    const-wide/32 v7, 0x40000

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v7, v8, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(JLjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v6, "create package manager"

    .line 100
    .line 101
    invoke-virtual {v0, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v6, Lcom/android/server/pm/PackageManagerTracedLock;

    .line 105
    .line 106
    const-string/jumbo v7, "mLock"

    .line 107
    .line 108
    .line 109
    invoke-direct {v6, v7}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v7, Lcom/android/server/pm/PackageManagerTracedLock;

    .line 113
    .line 114
    const-string v8, "mInstallLock"

    .line 115
    .line 116
    invoke-direct {v7, v8}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v8, "PackageManagerBg"

    .line 120
    .line 121
    invoke-static {v4, v8, v11}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    new-instance v9, Landroid/os/Handler;

    .line 126
    .line 127
    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    sget-object v10, Lcom/android/server/pm/PackageManagerService;->BACKGROUND_HANDLER_CALLBACK:Lcom/android/server/pm/PackageManagerService$2;

    .line 132
    .line 133
    invoke-direct {v9, v8, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 134
    .line 135
    .line 136
    new-instance v41, Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 137
    .line 138
    new-instance v8, Lcom/android/server/pm/PackageAbiHelperImpl;

    .line 139
    .line 140
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 141
    .line 142
    .line 143
    sget-object v10, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    .line 144
    .line 145
    new-instance v5, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 146
    .line 147
    invoke-direct {v5, v12}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 148
    .line 149
    .line 150
    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    .line 151
    .line 152
    invoke-direct {v4, v2, v11}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;I)V

    .line 153
    .line 154
    .line 155
    new-instance v14, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;

    .line 156
    .line 157
    move-object/from16 v3, p1

    .line 158
    .line 159
    invoke-direct {v14, v2, v3, v7, v6}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerTracedLock;)V

    .line 160
    .line 161
    .line 162
    new-instance v12, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;

    .line 163
    .line 164
    invoke-direct {v12, v1, v9, v6}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V

    .line 165
    .line 166
    .line 167
    new-instance v13, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 168
    .line 169
    const/16 v11, 0xf

    .line 170
    .line 171
    invoke-direct {v13, v11}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 172
    .line 173
    .line 174
    new-instance v11, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 175
    .line 176
    invoke-direct {v11, v15}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 177
    .line 178
    .line 179
    new-instance v15, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 180
    .line 181
    const/16 v3, 0x11

    .line 182
    .line 183
    invoke-direct {v15, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 184
    .line 185
    .line 186
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 187
    .line 188
    move-object/from16 v24, v4

    .line 189
    .line 190
    const/16 v4, 0x12

    .line 191
    .line 192
    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 193
    .line 194
    .line 195
    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 196
    .line 197
    move-object/from16 v25, v3

    .line 198
    .line 199
    const/16 v3, 0x13

    .line 200
    .line 201
    invoke-direct {v4, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 202
    .line 203
    .line 204
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 205
    .line 206
    move-object/from16 v26, v4

    .line 207
    .line 208
    const/16 v4, 0x14

    .line 209
    .line 210
    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 211
    .line 212
    .line 213
    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 214
    .line 215
    move-object/from16 v27, v3

    .line 216
    .line 217
    const/16 v3, 0x16

    .line 218
    .line 219
    invoke-direct {v4, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 220
    .line 221
    .line 222
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 223
    .line 224
    move-object/from16 v28, v11

    .line 225
    .line 226
    const/4 v11, 0x1

    .line 227
    invoke-direct {v3, v11}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 228
    .line 229
    .line 230
    move-object/from16 v42, v0

    .line 231
    .line 232
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 233
    .line 234
    const/4 v11, 0x2

    .line 235
    invoke-direct {v0, v11}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 236
    .line 237
    .line 238
    new-instance v11, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    .line 239
    .line 240
    move-object/from16 v29, v15

    .line 241
    .line 242
    const/4 v15, 0x0

    .line 243
    invoke-direct {v11, v2, v15}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;I)V

    .line 244
    .line 245
    .line 246
    move-object/from16 v30, v0

    .line 247
    .line 248
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 249
    .line 250
    const/4 v15, 0x3

    .line 251
    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 252
    .line 253
    .line 254
    new-instance v15, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 255
    .line 256
    move-object/from16 v31, v13

    .line 257
    .line 258
    const/4 v13, 0x4

    .line 259
    invoke-direct {v15, v13}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 260
    .line 261
    .line 262
    move-object/from16 v32, v0

    .line 263
    .line 264
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 265
    .line 266
    const/4 v13, 0x5

    .line 267
    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 268
    .line 269
    .line 270
    new-instance v13, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 271
    .line 272
    move-object/from16 v33, v3

    .line 273
    .line 274
    const/4 v3, 0x6

    .line 275
    invoke-direct {v13, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 276
    .line 277
    .line 278
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 279
    .line 280
    move-object/from16 v34, v4

    .line 281
    .line 282
    const/4 v4, 0x7

    .line 283
    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 284
    .line 285
    .line 286
    new-instance v35, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 287
    .line 288
    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    .line 289
    .line 290
    .line 291
    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 292
    .line 293
    move-object/from16 v36, v3

    .line 294
    .line 295
    const/16 v3, 0x8

    .line 296
    .line 297
    invoke-direct {v4, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 298
    .line 299
    .line 300
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 301
    .line 302
    move-object/from16 v37, v4

    .line 303
    .line 304
    const/16 v4, 0x9

    .line 305
    .line 306
    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 307
    .line 308
    .line 309
    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;

    .line 310
    .line 311
    invoke-direct {v4, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 315
    .line 316
    move-object/from16 v38, v3

    .line 317
    .line 318
    const/16 v3, 0xa

    .line 319
    .line 320
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 321
    .line 322
    .line 323
    new-instance v39, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;

    .line 324
    .line 325
    invoke-direct/range {v39 .. v39}, Ljava/lang/Object;-><init>()V

    .line 326
    .line 327
    .line 328
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 329
    .line 330
    move-object/from16 p2, v1

    .line 331
    .line 332
    const/16 v1, 0x17

    .line 333
    .line 334
    invoke-direct {v3, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 335
    .line 336
    .line 337
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    .line 341
    .line 342
    move-object/from16 v17, v3

    .line 343
    .line 344
    const/4 v3, 0x3

    .line 345
    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;I)V

    .line 346
    .line 347
    .line 348
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 349
    .line 350
    move-object/from16 v19, v1

    .line 351
    .line 352
    const/16 v1, 0xb

    .line 353
    .line 354
    invoke-direct {v3, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 355
    .line 356
    .line 357
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 358
    .line 359
    move-object/from16 v40, v3

    .line 360
    .line 361
    const/16 v3, 0xc

    .line 362
    .line 363
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 364
    .line 365
    .line 366
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    .line 367
    .line 368
    move-object/from16 v43, v13

    .line 369
    .line 370
    const/4 v13, 0x2

    .line 371
    invoke-direct {v3, v2, v13}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;I)V

    .line 372
    .line 373
    .line 374
    move-object/from16 v44, v0

    .line 375
    .line 376
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 377
    .line 378
    const/16 v13, 0xd

    .line 379
    .line 380
    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 381
    .line 382
    .line 383
    new-instance v13, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    .line 384
    .line 385
    move-object/from16 v45, v1

    .line 386
    .line 387
    const/16 v1, 0xe

    .line 388
    .line 389
    invoke-direct {v13, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 390
    .line 391
    .line 392
    move-object/from16 v46, v19

    .line 393
    .line 394
    move-object/from16 v47, v45

    .line 395
    .line 396
    move-object/from16 v45, p2

    .line 397
    .line 398
    move-object/from16 v1, v41

    .line 399
    .line 400
    move-object/from16 v2, p0

    .line 401
    .line 402
    move-object/from16 v16, v25

    .line 403
    .line 404
    move-object/from16 v19, v27

    .line 405
    .line 406
    move-object/from16 v25, v33

    .line 407
    .line 408
    move-object/from16 v27, v36

    .line 409
    .line 410
    move-object/from16 v33, v38

    .line 411
    .line 412
    move-object/from16 v38, v40

    .line 413
    .line 414
    move-object/from16 v40, v3

    .line 415
    .line 416
    move-object/from16 v36, v17

    .line 417
    .line 418
    move-object v3, v6

    .line 419
    move-object/from16 v17, v24

    .line 420
    .line 421
    move-object/from16 v24, v26

    .line 422
    .line 423
    move-object/from16 v26, v34

    .line 424
    .line 425
    move-object/from16 v34, v37

    .line 426
    .line 427
    move-object/from16 v37, v4

    .line 428
    .line 429
    move-object/from16 v4, p1

    .line 430
    .line 431
    move-object/from16 v48, v5

    .line 432
    .line 433
    move-object v5, v7

    .line 434
    move-object v6, v8

    .line 435
    move-object v7, v9

    .line 436
    move-object v8, v10

    .line 437
    move-object/from16 v9, v48

    .line 438
    .line 439
    move-object/from16 v10, v17

    .line 440
    .line 441
    move-object/from16 v22, v11

    .line 442
    .line 443
    move-object/from16 v17, v28

    .line 444
    .line 445
    const/16 v48, 0x1

    .line 446
    .line 447
    move-object v11, v14

    .line 448
    const/16 v49, 0x0

    .line 449
    .line 450
    move-object/from16 v28, v43

    .line 451
    .line 452
    const/4 v14, 0x4

    .line 453
    const/16 v50, 0x2

    .line 454
    .line 455
    move-object/from16 v43, v13

    .line 456
    .line 457
    move-object/from16 v13, v31

    .line 458
    .line 459
    move-object/from16 v14, v17

    .line 460
    .line 461
    move-object/from16 v31, v15

    .line 462
    .line 463
    const/16 v51, 0x10

    .line 464
    .line 465
    move-object/from16 v15, v29

    .line 466
    .line 467
    move-object/from16 v17, v24

    .line 468
    .line 469
    move-object/from16 v18, v19

    .line 470
    .line 471
    move-object/from16 v19, v26

    .line 472
    .line 473
    move-object/from16 v20, v25

    .line 474
    .line 475
    move-object/from16 v21, v30

    .line 476
    .line 477
    move-object/from16 v23, v32

    .line 478
    .line 479
    move-object/from16 v24, v31

    .line 480
    .line 481
    move-object/from16 v25, v44

    .line 482
    .line 483
    move-object/from16 v26, v28

    .line 484
    .line 485
    move-object/from16 v28, v35

    .line 486
    .line 487
    move-object/from16 v29, v34

    .line 488
    .line 489
    move-object/from16 v30, v33

    .line 490
    .line 491
    move-object/from16 v31, v37

    .line 492
    .line 493
    move-object/from16 v32, v45

    .line 494
    .line 495
    move-object/from16 v33, v39

    .line 496
    .line 497
    move-object/from16 v34, v36

    .line 498
    .line 499
    move-object/from16 v35, v46

    .line 500
    .line 501
    move-object/from16 v36, v38

    .line 502
    .line 503
    move-object/from16 v37, v47

    .line 504
    .line 505
    move-object/from16 v38, v40

    .line 506
    .line 507
    move-object/from16 v39, v0

    .line 508
    .line 509
    move-object/from16 v40, v43

    .line 510
    .line 511
    invoke-direct/range {v1 .. v40}, Lcom/android/server/pm/PackageManagerServiceInjector;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageAbiHelperImpl;Landroid/os/Handler;Ljava/util/List;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;)V

    .line 512
    .line 513
    .line 514
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 515
    .line 516
    new-instance v0, Lcom/android/server/pm/PackageManagerService;

    .line 517
    .line 518
    sget-object v19, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 519
    .line 520
    sget-boolean v20, Landroid/os/Build;->IS_ENG:Z

    .line 521
    .line 522
    sget-boolean v21, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 523
    .line 524
    sget-object v23, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 525
    .line 526
    move-object/from16 v16, v0

    .line 527
    .line 528
    move-object/from16 v17, v41

    .line 529
    .line 530
    move/from16 v18, p3

    .line 531
    .line 532
    invoke-direct/range {v16 .. v23}, Lcom/android/server/pm/PackageManagerService;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;ZLjava/lang/String;ZZILjava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual/range {v42 .. v42}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 536
    .line 537
    .line 538
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;

    .line 539
    .line 540
    const/4 v2, 0x4

    .line 541
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    const-wide/32 v4, 0x88e3d87

    .line 549
    .line 550
    .line 551
    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    const-wide/32 v4, 0xa0f6c63

    .line 559
    .line 560
    .line 561
    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 569
    .line 570
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 571
    .line 572
    iget-object v11, v3, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 573
    .line 574
    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 575
    .line 576
    if-nez v4, :cond_4

    .line 577
    .line 578
    iget-boolean v3, v3, Lcom/android/server/pm/UserManagerService;->mUpdatingSystemUserMode:Z

    .line 579
    .line 580
    if-eqz v3, :cond_3

    .line 581
    .line 582
    goto :goto_3

    .line 583
    :cond_3
    move/from16 v12, v49

    .line 584
    .line 585
    goto :goto_4

    .line 586
    :cond_4
    :goto_3
    move/from16 v12, v48

    .line 587
    .line 588
    :goto_4
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    .line 590
    .line 591
    invoke-static {}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    and-int/lit8 v4, v3, 0x2

    .line 596
    .line 597
    if-eqz v4, :cond_5

    .line 598
    .line 599
    move/from16 v5, v48

    .line 600
    .line 601
    goto :goto_5

    .line 602
    :cond_5
    move/from16 v5, v49

    .line 603
    .line 604
    :goto_5
    const-string v6, "UserSystemPackageInstaller"

    .line 605
    .line 606
    if-nez v5, :cond_6

    .line 607
    .line 608
    and-int/lit8 v5, v3, 0x1

    .line 609
    .line 610
    if-eqz v5, :cond_d

    .line 611
    .line 612
    :cond_6
    const-string v5, "Checking that all system packages are whitelisted."

    .line 613
    .line 614
    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .line 616
    .line 617
    invoke-virtual {v11}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistWarnings()Ljava/util/List;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    check-cast v5, Ljava/util/ArrayList;

    .line 622
    .line 623
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 624
    .line 625
    .line 626
    move-result v7

    .line 627
    const-string v8, ") has "

    .line 628
    .line 629
    const-string v9, "checkWhitelistedSystemPackages(mode="

    .line 630
    .line 631
    if-nez v7, :cond_7

    .line 632
    .line 633
    new-instance v5, Ljava/lang/StringBuilder;

    .line 634
    .line 635
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-static {v3}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v7

    .line 642
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    const-string v7, ") has no warnings"

    .line 646
    .line 647
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .line 656
    .line 657
    goto :goto_7

    .line 658
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    .line 659
    .line 660
    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    invoke-static {v3}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v14

    .line 667
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    const-string v14, " warnings:"

    .line 677
    .line 678
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v13

    .line 685
    invoke-static {v6, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    move/from16 v13, v49

    .line 689
    .line 690
    :goto_6
    if-ge v13, v7, :cond_8

    .line 691
    .line 692
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v14

    .line 696
    check-cast v14, Ljava/lang/String;

    .line 697
    .line 698
    invoke-static {v6, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .line 700
    .line 701
    add-int/lit8 v13, v13, 0x1

    .line 702
    .line 703
    goto :goto_6

    .line 704
    :cond_8
    :goto_7
    and-int/2addr v2, v3

    .line 705
    if-eqz v2, :cond_9

    .line 706
    .line 707
    if-eqz v4, :cond_d

    .line 708
    .line 709
    :cond_9
    invoke-virtual {v11, v3}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistErrors(I)Ljava/util/List;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 714
    .line 715
    .line 716
    move-result v5

    .line 717
    if-nez v5, :cond_a

    .line 718
    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    .line 720
    .line 721
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    invoke-static {v3}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    const-string v4, ") has no errors"

    .line 732
    .line 733
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    .line 742
    .line 743
    goto :goto_b

    .line 744
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    .line 745
    .line 746
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    invoke-static {v3}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v9

    .line 753
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    const-string v8, " errors:"

    .line 763
    .line 764
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v7

    .line 771
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    .line 773
    .line 774
    if-eqz v2, :cond_b

    .line 775
    .line 776
    move/from16 v2, v48

    .line 777
    .line 778
    goto :goto_8

    .line 779
    :cond_b
    move/from16 v2, v49

    .line 780
    .line 781
    :goto_8
    xor-int/lit8 v2, v2, 0x1

    .line 782
    .line 783
    move/from16 v7, v49

    .line 784
    .line 785
    :goto_9
    if-ge v7, v5, :cond_d

    .line 786
    .line 787
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v8

    .line 791
    check-cast v8, Ljava/lang/String;

    .line 792
    .line 793
    if-eqz v2, :cond_c

    .line 794
    .line 795
    invoke-static {v6, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    goto :goto_a

    .line 799
    :cond_c
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    .line 801
    .line 802
    :goto_a
    add-int/lit8 v7, v7, 0x1

    .line 803
    .line 804
    goto :goto_9

    .line 805
    :cond_d
    :goto_b
    if-eqz v1, :cond_f

    .line 806
    .line 807
    and-int/lit8 v1, v3, 0x10

    .line 808
    .line 809
    if-eqz v1, :cond_e

    .line 810
    .line 811
    goto :goto_c

    .line 812
    :cond_e
    move/from16 v1, v48

    .line 813
    .line 814
    goto :goto_d

    .line 815
    :cond_f
    :goto_c
    move/from16 v1, v49

    .line 816
    .line 817
    :goto_d
    if-nez v1, :cond_10

    .line 818
    .line 819
    if-nez v12, :cond_10

    .line 820
    .line 821
    goto/16 :goto_10

    .line 822
    .line 823
    :cond_10
    if-eqz v12, :cond_11

    .line 824
    .line 825
    and-int/lit8 v2, v3, 0x1

    .line 826
    .line 827
    if-eqz v2, :cond_15

    .line 828
    .line 829
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    const-string v3, "Reviewing whitelisted packages due to "

    .line 832
    .line 833
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    const-string v3, ""

    .line 837
    .line 838
    if-eqz v12, :cond_12

    .line 839
    .line 840
    const-string v4, "[firstBoot]"

    .line 841
    .line 842
    goto :goto_e

    .line 843
    :cond_12
    move-object v4, v3

    .line 844
    :goto_e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    if-eqz v1, :cond_13

    .line 848
    .line 849
    const-string v3, "[upgrade]"

    .line 850
    .line 851
    :cond_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .line 860
    .line 861
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 862
    .line 863
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v2

    .line 867
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 868
    .line 869
    new-instance v13, Landroid/util/SparseArrayMap;

    .line 870
    .line 871
    invoke-direct {v13}, Landroid/util/SparseArrayMap;-><init>()V

    .line 872
    .line 873
    .line 874
    iget-object v14, v11, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 875
    .line 876
    invoke-virtual {v14}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 877
    .line 878
    .line 879
    move-result-object v15

    .line 880
    array-length v9, v15

    .line 881
    move/from16 v8, v49

    .line 882
    .line 883
    :goto_f
    if-ge v8, v9, :cond_14

    .line 884
    .line 885
    aget v5, v15, v8

    .line 886
    .line 887
    invoke-virtual {v14, v5}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 888
    .line 889
    .line 890
    move-result-object v3

    .line 891
    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 892
    .line 893
    invoke-virtual {v11, v3}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    .line 894
    .line 895
    .line 896
    move-result-object v4

    .line 897
    new-instance v7, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;

    .line 898
    .line 899
    move-object v3, v7

    .line 900
    move v6, v12

    .line 901
    move-object/from16 v16, v11

    .line 902
    .line 903
    move-object v11, v7

    .line 904
    move v7, v1

    .line 905
    move/from16 v49, v8

    .line 906
    .line 907
    move-object v8, v10

    .line 908
    move/from16 v17, v9

    .line 909
    .line 910
    move-object v9, v13

    .line 911
    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v2, v11}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    .line 915
    .line 916
    .line 917
    add-int/lit8 v8, v49, 0x1

    .line 918
    .line 919
    move-object/from16 v11, v16

    .line 920
    .line 921
    move/from16 v9, v17

    .line 922
    .line 923
    goto :goto_f

    .line 924
    :cond_14
    new-instance v1, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;

    .line 925
    .line 926
    invoke-direct {v1, v13}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;-><init>(Landroid/util/SparseArrayMap;)V

    .line 927
    .line 928
    .line 929
    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 930
    .line 931
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 932
    .line 933
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 934
    .line 935
    .line 936
    const/4 v1, -0x1

    .line 937
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 941
    .line 942
    .line 943
    :cond_15
    :goto_10
    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 944
    .line 945
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 946
    .line 947
    .line 948
    const-string/jumbo v2, "package"

    .line 949
    .line 950
    .line 951
    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 952
    .line 953
    .line 954
    new-instance v1, Lcom/android/server/pm/PackageManagerNative;

    .line 955
    .line 956
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerNative;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 957
    .line 958
    .line 959
    const-string/jumbo v2, "package_native"

    .line 960
    .line 961
    .line 962
    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 963
    .line 964
    .line 965
    return-object v0

    .line 966
    :cond_16
    throw v6
.end method

.method public static onChange()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryVersion()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, "_"

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p0, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final addAllPackageProperties(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/android/server/pm/PackageProperty;->addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    .line 65
    .line 66
    return-void
.end method

.method public final addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, p3, v0}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, p4, p5, v1}, Lcom/android/server/pm/UserManagerService;->isCrossProfileIntentFilterAccessible(IIZ)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_6

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 32
    .line 33
    invoke-static {p1, v0, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;II)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p2, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/IntentFilter;->checkDataPathAndSchemeSpecificParts()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_5

    .line 43
    .line 44
    iget-object p1, p2, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    const-string p0, "PackageManager"

    .line 53
    .line 54
    const-string p1, "Cannot set a crossProfile intent filter with no filter actions"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 61
    .line 62
    monitor-enter p1

    .line 63
    :try_start_0
    new-instance v6, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 66
    .line 67
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v7, 0x0

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    move v1, v7

    .line 80
    :goto_0
    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move v0, v7

    .line 92
    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    move-object v0, v6

    .line 97
    move-object v1, p2

    .line 98
    move-object v2, p3

    .line 99
    move v3, p5

    .line 100
    move v4, p6

    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    .line 102
    .line 103
    .line 104
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 105
    .line 106
    invoke-virtual {p3, p4}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {p3, p2}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    if-eqz p2, :cond_4

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result p5

    .line 120
    :goto_2
    if-ge v7, p5, :cond_4

    .line 121
    .line 122
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p6

    .line 126
    check-cast p6, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 127
    .line 128
    iget v0, p6, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 129
    .line 130
    iget v1, v6, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 131
    .line 132
    if-ne v1, v0, :cond_3

    .line 133
    .line 134
    iget-object v0, v6, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v1, p6, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    iget v0, v6, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 145
    .line 146
    iget v1, p6, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 147
    .line 148
    if-ne v0, v1, :cond_3

    .line 149
    .line 150
    iget v0, v6, Lcom/android/server/pm/CrossProfileIntentFilter;->mAccessControlLevel:I

    .line 151
    .line 152
    iget p6, p6, Lcom/android/server/pm/CrossProfileIntentFilter;->mAccessControlLevel:I

    .line 153
    .line 154
    if-ne v0, p6, :cond_3

    .line 155
    .line 156
    monitor-exit p1

    .line 157
    return-void

    .line 158
    :catchall_0
    move-exception p0

    .line 159
    goto :goto_3

    .line 160
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p3, p2, v6}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 168
    .line 169
    .line 170
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    throw p0

    .line 177
    :cond_5
    const-string p0, "246749936"

    .line 178
    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    const p1, 0x534e4554

    .line 188
    .line 189
    .line 190
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 191
    .line 192
    .line 193
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    const-string p1, "Invalid intent data paths or scheme specific parts in the filter."

    .line 196
    .line 197
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p0

    .line 201
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 202
    .line 203
    const-string p1, "CrossProfileIntentFilter cannot be accessed by user "

    .line 204
    .line 205
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0
.end method

.method public final applyUpdatedSystemOverlayPaths()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "PackageManager"

    .line 6
    .line 7
    const-string v1, "Skipped the AndroidApplication overlay paths update - no app yet"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 20
    .line 21
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 26
    .line 27
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 34
    .line 35
    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final buildRequiredSystemPackages()Ljava/util/Set;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mRequiredSystemPackages:Ljava/util/Set;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v1, "CscFeature_Framework_ConfigRequiredSystemPackages"

    .line 34
    .line 35
    const-string v2, ""

    .line 36
    .line 37
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v1, " "

    .line 42
    .line 43
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    const-string v1, ","

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    array-length v1, p0

    .line 60
    const/4 v2, 0x0

    .line 61
    :goto_0
    if-ge v2, v1, :cond_0

    .line 62
    .line 63
    aget-object v3, p0, v2

    .line 64
    .line 65
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-object v0
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 4
    .line 5
    const-string v0, "default:0"

    .line 6
    .line 7
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 17
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/pm/UserNeedsBadgingCache;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :try_start_3
    iget-object v1, v1, Lcom/android/server/pm/UserNeedsBadgingCache;->mUserCache:Landroid/util/SparseBooleanArray;

    .line 23
    .line 24
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 25
    .line 26
    .line 27
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 28
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 29
    .line 30
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/DeletePackageHelper;->removeUnusedPackagesLPw(Lcom/android/server/pm/UserManagerService;I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/android/server/pm/Settings;->removeUserLPw(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 39
    .line 40
    iget-object v1, p1, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 41
    .line 42
    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    :try_start_5
    iget-object p1, p1, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 46
    .line 47
    .line 48
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 49
    :try_start_6
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1, p2}, Lcom/android/server/pm/AppsFilterImpl;->onUserDeleted(Lcom/android/server/pm/Computer;I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 63
    .line 64
    invoke-interface {p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onUserRemoved(I)V

    .line 65
    .line 66
    .line 67
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 68
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->onUserRemoved(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->onUserRemoved(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/app/admin/flags/Flags;->crossUserSuspensionEnabledRo()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    array-length v2, v1

    .line 99
    const/4 v3, 0x0

    .line 100
    :goto_0
    if-ge v3, v2, :cond_1

    .line 101
    .line 102
    aget v4, v1, v3

    .line 103
    .line 104
    if-ne v4, p2, :cond_0

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_0
    new-instance v5, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda4;

    .line 108
    .line 109
    invoke-direct {v5, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 110
    .line 111
    .line 112
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 113
    .line 114
    invoke-virtual {v6, p1, v0, v5, v4}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 115
    .line 116
    .line 117
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    return-void

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_2

    .line 123
    :catchall_1
    move-exception p0

    .line 124
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 125
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 126
    :catchall_2
    move-exception p0

    .line 127
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 128
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 129
    :catchall_3
    move-exception p0

    .line 130
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 131
    :try_start_c
    throw p0

    .line 132
    :goto_2
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 133
    throw p0
.end method

.method public final clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z
    .locals 6

    .line 1
    const-string v0, "PackageManager"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const-string p0, "Attempt to delete null packageName."

    .line 7
    .line 8
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const-string p0, "Package named \'"

    .line 19
    .line 20
    const-string p1, "\' doesn\'t exist."

    .line 21
    .line 22
    invoke-static {p0, p2, p1, v0}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string v0, "SPEG"

    .line 41
    .line 42
    const-string v3, "Skip permissions reset"

    .line 43
    .line 44
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 53
    .line 54
    invoke-interface {v0, v2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 58
    .line 59
    const/4 v3, 0x7

    .line 60
    invoke-virtual {v0, v2, p3, v3}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {v0, p3, v3}, Lcom/android/server/pm/AppDataHelper;->clearKeystoreData(II)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 81
    .line 82
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 85
    .line 86
    invoke-interface {p0, v4}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Landroid/os/storage/StorageManagerInternal;

    .line 91
    .line 92
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/4 v5, 0x1

    .line 97
    if-eqz v4, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0, p3}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_3

    .line 104
    .line 105
    const/4 v1, 0x3

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v3, p3}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_4

    .line 112
    .line 113
    move v1, v5

    .line 114
    :cond_4
    :goto_1
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v0, v2, p0, p3, v1}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    .line 119
    .line 120
    .line 121
    return v5
.end method

.method public final clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "kioskmode"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    :try_start_0
    invoke-interface {v0, p3}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v2, "PackageSettings"

    .line 36
    .line 37
    const-string v3, "Failed talking with kiosk mode service"

    .line 38
    .line 39
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    move-object v0, v1

    .line 43
    :goto_0
    const/4 v2, 0x0

    .line 44
    move v3, v2

    .line 45
    move v4, v3

    .line 46
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 47
    .line 48
    iget-object v6, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-ge v3, v6, :cond_9

    .line 55
    .line 56
    iget-object v6, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    iget-object v5, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Lcom/android/server/pm/PreferredIntentResolver;

    .line 69
    .line 70
    const/4 v7, -0x1

    .line 71
    if-eq p3, v7, :cond_1

    .line 72
    .line 73
    if-eq p3, v6, :cond_1

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterIterator()Lcom/android/server/IntentResolver$IteratorWrapper;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    :cond_2
    :goto_2
    iget-object v8, v7, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    .line 81
    .line 82
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_6

    .line 87
    .line 88
    invoke-virtual {v7}, Lcom/android/server/IntentResolver$IteratorWrapper;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    check-cast v8, Lcom/android/server/pm/PreferredActivity;

    .line 93
    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    iget-object v9, v8, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 97
    .line 98
    iget-object v9, v9, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 99
    .line 100
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_2

    .line 109
    .line 110
    iget-object v9, v8, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 111
    .line 112
    iget-boolean v9, v9, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 113
    .line 114
    if-eqz v9, :cond_2

    .line 115
    .line 116
    :cond_3
    if-nez v1, :cond_4

    .line 117
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    :cond_4
    if-eqz v0, :cond_5

    .line 124
    .line 125
    iget-object v9, v8, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 126
    .line 127
    iget-object v9, v9, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 128
    .line 129
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-nez v9, :cond_2

    .line 138
    .line 139
    :cond_5
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    if-eqz v1, :cond_8

    .line 144
    .line 145
    move v4, v2

    .line 146
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-ge v4, v7, :cond_7

    .line 151
    .line 152
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    check-cast v7, Lcom/android/server/pm/PreferredActivity;

    .line 157
    .line 158
    invoke-virtual {v5, v7}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 159
    .line 160
    .line 161
    const-string v8, "Removing preference<clear>"

    .line 162
    .line 163
    invoke-static {v7, v8}, Lcom/android/server/pm/PreferredActivityLog;->logPreferenceChange(Lcom/android/server/pm/PreferredActivity;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    add-int/lit8 v4, v4, 0x1

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_7
    const/4 v4, 0x1

    .line 170
    invoke-virtual {p2, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 171
    .line 172
    .line 173
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_9
    if-eqz v4, :cond_a

    .line 178
    .line 179
    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 180
    .line 181
    .line 182
    :cond_a
    return-void
.end method

.method public final commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .locals 10

    .line 13
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    if-nez v0, :cond_6

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 17
    iget v2, v2, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-nez p1, :cond_1

    goto :goto_3

    .line 20
    :cond_1
    iget v3, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->mPackageSequence:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    .line 21
    :goto_1
    sget-object v3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    iget-wide v8, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->mStateSequence:J

    cmp-long p1, v6, v8

    if-eqz p1, :cond_3

    move v4, v5

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    .line 22
    sget-object p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->PACKAGES_AND_STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    :goto_2
    move-object v0, p1

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 23
    sget-object p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->PACKAGES_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    .line 24
    sget-object p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 25
    :cond_6
    :goto_3
    sget-object p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-eq v0, p1, :cond_7

    .line 26
    monitor-exit v1

    return-object v0

    .line 27
    :cond_7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object p0

    .line 28
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 29
    iget-object p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz p0, :cond_8

    .line 30
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 31
    :cond_8
    monitor-exit v1

    return-object p1

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final commitPackageStateMutation(Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 3
    iget v2, v2, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mChangedStates:Landroid/util/ArraySet;

    .line 8
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mChangedStates:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget-object p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object p0

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final createNewUser(ILjava/util/Set;[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 11
    .line 12
    move-object v3, p0

    .line 13
    move v5, p1

    .line 14
    move-object v6, p2

    .line 15
    move-object v7, p3

    .line 16
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Settings;->createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 23
    .line 24
    monitor-enter p2

    .line 25
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 29
    .line 30
    .line 31
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    const/16 v0, 0x13

    .line 34
    .line 35
    invoke-virtual {p3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 46
    .line 47
    const-wide/16 v1, 0x2710

    .line 48
    .line 49
    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p3, p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->onUserCreated(Lcom/android/server/pm/Computer;I)V

    .line 59
    .line 60
    .line 61
    monitor-exit p2

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_2
    move-exception p1

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    throw p0
.end method

.method public final deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 2
    .line 3
    iget-object p0, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "android.permission.DELETE_PACKAGES"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    iget-object v1, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v5, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-interface {v5, v3, v4, p0}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(JLjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v4, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/4 v4, 0x1

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    iget-object v5, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 54
    .line 55
    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v3, v5, v4}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    array-length v3, v3

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    const/4 v3, 0x0

    .line 70
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    if-le v3, v4, :cond_1

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    const/4 v5, 0x1

    .line 75
    move-object v1, p1

    .line 76
    move-object v2, p2

    .line 77
    move v3, p3

    .line 78
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const/4 p1, -0x1

    .line 83
    :try_start_1
    invoke-interface {p2, p0, p1, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    :catch_0
    :goto_1
    return-void

    .line 87
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    throw p0
.end method

.method public final deletePreloadsFileCache()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.CLEAR_APP_CACHE"

    .line 4
    .line 5
    const-string v1, "deletePreloadsFileCache"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsFileCacheDirectory()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Deleting preloaded file cache "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "PackageManager"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final enableCompressedPackage(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 6
    .line 7
    const v2, -0x7fffffc0

    .line 8
    .line 9
    .line 10
    or-int/2addr v1, v2

    .line 11
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 21
    .line 22
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string/jumbo v7, "setEnabledSetting"

    .line 27
    .line 28
    .line 29
    const/4 v6, -0x1

    .line 30
    const/16 v8, 0x10

    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    .line 34
    .line 35
    .line 36
    move-result-object v4
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    invoke-virtual {p0, p2, v1, v3}, Lcom/android/server/pm/InstallPackageHelper;->installStubPackageLI(Lcom/android/server/pm/pkg/AndroidPackage;II)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 42
    .line 43
    invoke-virtual {v5, v1}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 47
    .line 48
    iget-object v11, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 49
    .line 50
    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 51
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 52
    .line 53
    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 54
    .line 55
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 56
    .line 57
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x0

    .line 63
    move-object v6, v1

    .line 64
    move-object v7, p1

    .line 65
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    :try_start_3
    const-string v5, "PackageManager"

    .line 73
    .line 74
    const-string/jumbo v6, "updateAllSharedLibrariesLPw failed: "

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v6, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 83
    .line 84
    sget-object v5, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    .line 85
    .line 86
    const/4 v6, -0x1

    .line 87
    invoke-virtual {p1, v1, v5, v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 91
    .line 92
    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 93
    .line 94
    .line 95
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    :try_start_4
    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    .line 98
    .line 99
    :try_start_5
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 100
    .line 101
    const/16 p2, 0x27

    .line 102
    .line 103
    invoke-virtual {p1, v1, v6, p2}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 107
    .line 108
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/pm/dex/DexManager;->notifyPackageUpdated([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_a

    .line 127
    .line 128
    :catchall_1
    move-exception p0

    .line 129
    goto/16 :goto_f

    .line 130
    .line 131
    :goto_1
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 132
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 133
    :catchall_2
    move-exception p1

    .line 134
    :try_start_8
    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catchall_3
    move-exception v1

    .line 139
    :try_start_9
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :goto_2
    throw p1
    :try_end_9
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 143
    :catch_1
    const/4 p1, 0x2

    .line 144
    :try_start_a
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 145
    .line 146
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    const-string/jumbo v7, "setEnabledSetting"

    .line 151
    .line 152
    .line 153
    const/4 v6, -0x1

    .line 154
    const/16 v8, 0x10

    .line 155
    .line 156
    const/4 v9, 0x0

    .line 157
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    .line 158
    .line 159
    .line 160
    move-result-object v1
    :try_end_a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 161
    :try_start_b
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 162
    .line 163
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 164
    .line 165
    monitor-enter v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 166
    :try_start_c
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 167
    .line 168
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 169
    .line 170
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 178
    :try_start_d
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 183
    .line 184
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 185
    .line 186
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    const/4 v6, 0x0

    .line 191
    invoke-virtual {p0, v4, v5, v6, v2}, Lcom/android/server/pm/InstallPackageHelper;->installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 192
    .line 193
    .line 194
    :try_start_e
    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 195
    .line 196
    .line 197
    :try_start_f
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 198
    .line 199
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 200
    .line 201
    monitor-enter v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 202
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 203
    .line 204
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 205
    .line 206
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {v2, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    if-eqz p2, :cond_0

    .line 215
    .line 216
    const-string v2, "android"

    .line 217
    .line 218
    invoke-virtual {p2, p1, v3, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :catchall_4
    move-exception p0

    .line 223
    goto :goto_4

    .line 224
    :cond_0
    :goto_3
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 225
    .line 226
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 227
    .line 228
    .line 229
    monitor-exit v1

    .line 230
    goto :goto_9

    .line 231
    :goto_4
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 232
    :try_start_11
    throw p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 233
    :catchall_5
    move-exception v1

    .line 234
    goto :goto_c

    .line 235
    :catch_2
    move-exception v1

    .line 236
    goto :goto_7

    .line 237
    :catchall_6
    move-exception v2

    .line 238
    goto :goto_5

    .line 239
    :catchall_7
    move-exception v2

    .line 240
    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 241
    :try_start_13
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 242
    :goto_5
    :try_start_14
    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :catchall_8
    move-exception v1

    .line 247
    :try_start_15
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    :goto_6
    throw v2
    :try_end_15
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 251
    :goto_7
    :try_start_16
    const-string v2, "PackageManager"

    .line 252
    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string v5, "Failed to restore system package:"

    .line 259
    .line 260
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-static {v2, v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 275
    .line 276
    .line 277
    :try_start_17
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 278
    .line 279
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 280
    .line 281
    monitor-enter v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 282
    :try_start_18
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 283
    .line 284
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 285
    .line 286
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    invoke-virtual {v2, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    if-eqz p2, :cond_1

    .line 295
    .line 296
    const-string v2, "android"

    .line 297
    .line 298
    invoke-virtual {p2, p1, v3, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    goto :goto_8

    .line 302
    :catchall_9
    move-exception p0

    .line 303
    goto :goto_b

    .line 304
    :cond_1
    :goto_8
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 305
    .line 306
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 307
    .line 308
    .line 309
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 310
    :goto_9
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 311
    .line 312
    .line 313
    move v2, v3

    .line 314
    :goto_a
    return v2

    .line 315
    :goto_b
    :try_start_19
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 316
    :try_start_1a
    throw p0

    .line 317
    :goto_c
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 318
    .line 319
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 320
    .line 321
    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 322
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 323
    .line 324
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 325
    .line 326
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    invoke-virtual {v4, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    if-eqz p2, :cond_2

    .line 335
    .line 336
    const-string v4, "android"

    .line 337
    .line 338
    invoke-virtual {p2, p1, v3, v4}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 339
    .line 340
    .line 341
    goto :goto_d

    .line 342
    :catchall_a
    move-exception p0

    .line 343
    goto :goto_e

    .line 344
    :cond_2
    :goto_d
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 345
    .line 346
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 347
    .line 348
    .line 349
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 350
    :try_start_1c
    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 351
    :goto_e
    :try_start_1d
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 352
    :try_start_1e
    throw p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 353
    :goto_f
    :try_start_1f
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 354
    .line 355
    .line 356
    goto :goto_10

    .line 357
    :catchall_b
    move-exception p1

    .line 358
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    :goto_10
    throw p0
.end method

.method public final flushPackageRestrictionsAsUserInternalLocked(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 28
    .line 29
    const/16 p1, 0xe

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final freeStorage(ILjava/lang/String;J)V
    .locals 19

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    move-wide/from16 v10, p3

    .line 6
    .line 7
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    .line 8
    .line 9
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 10
    .line 11
    const-class v2, Landroid/os/storage/StorageManager;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 14
    .line 15
    invoke-interface {v0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v13

    .line 25
    invoke-virtual {v13}, Ljava/io/File;->getUsableSpace()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    cmp-long v0, v2, v10

    .line 30
    .line 31
    if-ltz v0, :cond_0

    .line 32
    .line 33
    goto/16 :goto_d

    .line 34
    .line 35
    :cond_0
    iget-boolean v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mEnableFreeCacheV2:Z

    .line 36
    .line 37
    const/4 v14, 0x0

    .line 38
    if-eqz v0, :cond_13

    .line 39
    .line 40
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v15

    .line 46
    const/4 v0, 0x1

    .line 47
    and-int/lit8 v2, p1, 0x1

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v0, v14

    .line 53
    :goto_0
    if-eqz v15, :cond_3

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    const-string/jumbo v2, "persist.sys.preloads.file_cache_expired"

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    :cond_2
    iget-object v2, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->deletePreloadsFileCache()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v13}, Ljava/io/File;->getUsableSpace()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    cmp-long v2, v2, v10

    .line 76
    .line 77
    if-ltz v2, :cond_3

    .line 78
    .line 79
    goto/16 :goto_d

    .line 80
    .line 81
    :cond_3
    if-eqz v15, :cond_4

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    .line 88
    .line 89
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {v13}, Ljava/io/File;->getUsableSpace()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    cmp-long v0, v2, v10

    .line 97
    .line 98
    if-ltz v0, :cond_4

    .line 99
    .line 100
    goto/16 :goto_d

    .line 101
    .line 102
    :cond_4
    :try_start_0
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 103
    .line 104
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 105
    .line 106
    iget-object v0, v2, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    :try_start_1
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 114
    .line 115
    const/16 v3, 0x100

    .line 116
    .line 117
    invoke-virtual {v0, v1, v10, v11, v3}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    move-object v3, v0

    .line 126
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catchall_1
    move-exception v0

    .line 131
    move-object v2, v0

    .line 132
    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    :goto_1
    throw v3
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 136
    :catch_0
    :goto_2
    invoke-virtual {v13}, Ljava/io/File;->getUsableSpace()J

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    cmp-long v0, v2, v10

    .line 141
    .line 142
    if-ltz v0, :cond_5

    .line 143
    .line 144
    goto/16 :goto_d

    .line 145
    .line 146
    :cond_5
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 149
    .line 150
    .line 151
    move-result-object v16

    .line 152
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    if-eqz v15, :cond_6

    .line 161
    .line 162
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string/jumbo v3, "unused_static_shared_lib_min_cache_period"

    .line 169
    .line 170
    .line 171
    sget-wide v4, Lcom/android/server/pm/FreeStorageHelper;->FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    .line 172
    .line 173
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 174
    .line 175
    .line 176
    move-result-wide v6

    .line 177
    move-object/from16 v3, v16

    .line 178
    .line 179
    move-wide/from16 v4, p3

    .line 180
    .line 181
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    goto/16 :goto_d

    .line 188
    .line 189
    :cond_6
    const-wide/32 v8, 0x240c8400

    .line 190
    .line 191
    .line 192
    if-eqz v15, :cond_7

    .line 193
    .line 194
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 195
    .line 196
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 197
    .line 198
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string v3, "installed_instant_app_min_cache_period"

    .line 205
    .line 206
    invoke-static {v0, v3, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v6

    .line 210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    const-wide v17, 0x7fffffffffffffffL

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    move-object/from16 v3, v16

    .line 219
    .line 220
    move-wide/from16 v4, p3

    .line 221
    .line 222
    move-wide/from16 v8, v17

    .line 223
    .line 224
    :try_start_5
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z

    .line 225
    .line 226
    .line 227
    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 228
    goto :goto_3

    .line 229
    :catch_1
    move-exception v0

    .line 230
    move-object v2, v0

    .line 231
    const-string v0, "InstantAppRegistry"

    .line 232
    .line 233
    const-string v3, "Error pruning installed instant apps"

    .line 234
    .line 235
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .line 237
    .line 238
    move v0, v14

    .line 239
    :goto_3
    if-eqz v0, :cond_7

    .line 240
    .line 241
    goto/16 :goto_d

    .line 242
    .line 243
    :cond_7
    :try_start_6
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 244
    .line 245
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 246
    .line 247
    iget-object v0, v2, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_2

    .line 250
    .line 251
    .line 252
    :try_start_7
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 253
    .line 254
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 255
    .line 256
    const/16 v3, 0x300

    .line 257
    .line 258
    invoke-virtual {v0, v1, v10, v11, v3}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 259
    .line 260
    .line 261
    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_8
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_8} :catch_2

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :catchall_2
    move-exception v0

    .line 266
    move-object v3, v0

    .line 267
    :try_start_9
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :catchall_3
    move-exception v0

    .line 272
    move-object v2, v0

    .line 273
    :try_start_a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    :goto_4
    throw v3
    :try_end_a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_a .. :try_end_a} :catch_2

    .line 277
    :catch_2
    :goto_5
    invoke-virtual {v13}, Ljava/io/File;->getUsableSpace()J

    .line 278
    .line 279
    .line 280
    move-result-wide v2

    .line 281
    cmp-long v0, v2, v10

    .line 282
    .line 283
    if-ltz v0, :cond_8

    .line 284
    .line 285
    goto/16 :goto_d

    .line 286
    .line 287
    :cond_8
    if-eqz v15, :cond_9

    .line 288
    .line 289
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 290
    .line 291
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 292
    .line 293
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 294
    .line 295
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    const-string/jumbo v3, "uninstalled_instant_app_min_cache_period"

    .line 300
    .line 301
    .line 302
    const-wide/32 v4, 0x240c8400

    .line 303
    .line 304
    .line 305
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 306
    .line 307
    .line 308
    move-result-wide v8

    .line 309
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    const-wide v6, 0x7fffffffffffffffL

    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    move-object/from16 v3, v16

    .line 318
    .line 319
    move-wide/from16 v4, p3

    .line 320
    .line 321
    :try_start_b
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z

    .line 322
    .line 323
    .line 324
    move-result v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 325
    goto :goto_6

    .line 326
    :catch_3
    move-exception v0

    .line 327
    move-object v2, v0

    .line 328
    const-string v0, "InstantAppRegistry"

    .line 329
    .line 330
    const-string v3, "Error pruning uninstalled instant apps"

    .line 331
    .line 332
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .line 334
    .line 335
    move v0, v14

    .line 336
    :goto_6
    if-eqz v0, :cond_9

    .line 337
    .line 338
    goto/16 :goto_d

    .line 339
    .line 340
    :cond_9
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 341
    .line 342
    const-class v2, Landroid/os/storage/StorageManagerInternal;

    .line 343
    .line 344
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 345
    .line 346
    invoke-interface {v0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 351
    .line 352
    invoke-virtual {v13}, Ljava/io/File;->getUsableSpace()J

    .line 353
    .line 354
    .line 355
    move-result-wide v2

    .line 356
    sub-long v2, v10, v2

    .line 357
    .line 358
    const-wide/16 v4, 0x0

    .line 359
    .line 360
    cmp-long v4, v2, v4

    .line 361
    .line 362
    if-lez v4, :cond_a

    .line 363
    .line 364
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/StorageManagerInternal;->freeCache(Ljava/lang/String;J)V

    .line 365
    .line 366
    .line 367
    :cond_a
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 368
    .line 369
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    invoke-static/range {p2 .. p2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    sget-object v3, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Lcom/android/server/pm/PackageInstallerService$1;

    .line 379
    .line 380
    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    new-instance v3, Landroid/util/ArraySet;

    .line 385
    .line 386
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 387
    .line 388
    .line 389
    if-eqz v2, :cond_b

    .line 390
    .line 391
    array-length v4, v2

    .line 392
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 393
    .line 394
    .line 395
    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    :cond_b
    invoke-static/range {p2 .. p2}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    new-instance v2, Landroid/util/ArraySet;

    .line 407
    .line 408
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 409
    .line 410
    .line 411
    if-eqz v1, :cond_c

    .line 412
    .line 413
    array-length v4, v1

    .line 414
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 415
    .line 416
    .line 417
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    :cond_c
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 421
    .line 422
    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 424
    .line 425
    .line 426
    move-result-wide v1

    .line 427
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 428
    .line 429
    monitor-enter v4

    .line 430
    :goto_7
    :try_start_c
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 431
    .line 432
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    if-ge v14, v5, :cond_12

    .line 437
    .line 438
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 439
    .line 440
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 445
    .line 446
    iget-object v6, v5, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 447
    .line 448
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    if-nez v6, :cond_d

    .line 453
    .line 454
    goto :goto_9

    .line 455
    :cond_d
    iget-wide v6, v5, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 456
    .line 457
    sub-long v6, v1, v6

    .line 458
    .line 459
    const-wide/32 v8, 0x1b77400

    .line 460
    .line 461
    .line 462
    cmp-long v6, v6, v8

    .line 463
    .line 464
    if-ltz v6, :cond_10

    .line 465
    .line 466
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    if-nez v6, :cond_e

    .line 471
    .line 472
    move-object v6, v5

    .line 473
    goto :goto_8

    .line 474
    :cond_e
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 475
    .line 476
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    .line 477
    .line 478
    .line 479
    move-result v7

    .line 480
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    .line 485
    .line 486
    :goto_8
    if-nez v6, :cond_f

    .line 487
    .line 488
    const-string v6, "PackageInstaller"

    .line 489
    .line 490
    new-instance v7, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .line 494
    .line 495
    const-string v8, "freeStageDirs: found an orphaned session: "

    .line 496
    .line 497
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    iget v8, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 501
    .line 502
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    const-string v8, " parent="

    .line 506
    .line 507
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    goto :goto_9

    .line 525
    :catchall_4
    move-exception v0

    .line 526
    goto :goto_a

    .line 527
    :cond_f
    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    if-nez v5, :cond_11

    .line 532
    .line 533
    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 534
    .line 535
    .line 536
    goto :goto_9

    .line 537
    :cond_10
    iget-object v5, v5, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 538
    .line 539
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    :cond_11
    :goto_9
    add-int/lit8 v14, v14, 0x1

    .line 543
    .line 544
    goto :goto_7

    .line 545
    :cond_12
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 546
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageInstallerService;->removeStagingDirs(Landroid/util/ArraySet;)V

    .line 547
    .line 548
    .line 549
    goto :goto_c

    .line 550
    :goto_a
    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 551
    throw v0

    .line 552
    :cond_13
    :try_start_e
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 553
    .line 554
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 555
    .line 556
    iget-object v0, v2, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_e .. :try_end_e} :catch_4

    .line 559
    .line 560
    .line 561
    :try_start_f
    iget-object v0, v12, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 562
    .line 563
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 564
    .line 565
    invoke-virtual {v0, v1, v10, v11, v14}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 566
    .line 567
    .line 568
    :try_start_10
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_10
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_10 .. :try_end_10} :catch_4

    .line 569
    .line 570
    .line 571
    goto :goto_c

    .line 572
    :catchall_5
    move-exception v0

    .line 573
    move-object v1, v0

    .line 574
    :try_start_11
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 575
    .line 576
    .line 577
    goto :goto_b

    .line 578
    :catchall_6
    move-exception v0

    .line 579
    move-object v2, v0

    .line 580
    :try_start_12
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 581
    .line 582
    .line 583
    :goto_b
    throw v1
    :try_end_12
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_12 .. :try_end_12} :catch_4

    .line 584
    :catch_4
    :goto_c
    invoke-virtual {v13}, Ljava/io/File;->getUsableSpace()J

    .line 585
    .line 586
    .line 587
    move-result-wide v0

    .line 588
    cmp-long v0, v0, v10

    .line 589
    .line 590
    if-ltz v0, :cond_14

    .line 591
    .line 592
    :goto_d
    return-void

    .line 593
    :cond_14
    new-instance v0, Ljava/io/IOException;

    .line 594
    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    const-string v2, "Failed to free "

    .line 598
    .line 599
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    const-string v2, " on storage device at "

    .line 606
    .line 607
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    throw v0
.end method

.method public final freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/server/pm/PackageFreezer;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    move-object v0, v8

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p0

    .line 9
    move v5, p4

    .line 10
    move-object v6, p5

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageFreezer;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/InstallRequest;Z)V

    .line 12
    .line 13
    .line 14
    return-object v8
.end method

.method public final freezePackageForDelete(IILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;
    .locals 6

    .line 1
    and-int/lit8 p2, p2, 0x8

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/android/server/pm/PackageFreezer;

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/InstallRequest;)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 v5, 0x0

    .line 13
    const/16 v4, 0xd

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p3

    .line 17
    move v2, p1

    .line 18
    move-object v3, p4

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getDomainVerificationAgentComponentNameLPr(Lcom/android/server/pm/ComputerLocked;)Landroid/content/ComponentName;
    .locals 14

    .line 1
    new-instance v2, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.intent.action.DOMAINS_NEED_VERIFICATION"

    .line 4
    .line 5
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v7

    .line 12
    const/4 v3, 0x0

    .line 13
    const-wide/32 v4, 0x1c0000

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v8, -0x1

    .line 20
    const/4 v9, 0x0

    .line 21
    move-object v1, p1

    .line 22
    move v6, v10

    .line 23
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v4, v2

    .line 34
    :goto_0
    const-string v5, "PackageManager"

    .line 35
    .line 36
    if-ge v3, v1, :cond_8

    .line 37
    .line 38
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 43
    .line 44
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    const-string v8, "android.permission.DOMAIN_VERIFICATION_AGENT"

    .line 51
    .line 52
    invoke-virtual {p0, v8, v7, v10}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_0

    .line 57
    .line 58
    const-string v6, "Domain verification agent found but does not hold permission: "

    .line 59
    .line 60
    invoke-static {v6, v7, v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_0
    if-eqz v4, :cond_1

    .line 65
    .line 66
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    .line 67
    .line 68
    iget v8, v4, Landroid/content/pm/ResolveInfo;->priority:I

    .line 69
    .line 70
    if-le v7, v8, :cond_7

    .line 71
    .line 72
    :cond_1
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    iget-object v9, p1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 81
    .line 82
    const/4 v11, 0x0

    .line 83
    :try_start_0
    iget-object v12, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    invoke-virtual {v9, v12, v8}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    const/4 v13, 0x1

    .line 94
    if-nez v12, :cond_2

    .line 95
    .line 96
    iget-object v12, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 97
    .line 98
    iget-boolean v12, v12, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 99
    .line 100
    if-nez v12, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    if-eq v12, v13, :cond_3

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v7}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    invoke-virtual {v9, v12, v8}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-nez v8, :cond_4

    .line 115
    .line 116
    invoke-virtual {v7}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result v11
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_1

    .line 121
    :cond_4
    if-ne v8, v13, :cond_5

    .line 122
    .line 123
    move v11, v13

    .line 124
    :catch_0
    :cond_5
    :goto_1
    if-eqz v11, :cond_6

    .line 125
    .line 126
    move-object v4, v6

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    const-string v6, "Domain verification agent found but not enabled"

    .line 129
    .line 130
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_8
    if-eqz v4, :cond_9

    .line 137
    .line 138
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :cond_9
    const-string p0, "Domain verification agent not found"

    .line 148
    .line 149
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    return-object v2
.end method

.method public final getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x10700fa

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    array-length v0, p0

    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "PackageManager"

    .line 17
    .line 18
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const-string p0, "Ephemeral resolver NOT found; empty package list"

    .line 29
    .line 30
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object v1

    .line 34
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 39
    .line 40
    const/4 v13, 0x0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const/high16 v0, 0x100000

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v0, v13

    .line 47
    :goto_0
    const/high16 v4, 0xc0000

    .line 48
    .line 49
    or-int/2addr v0, v4

    .line 50
    new-instance v5, Landroid/content/Intent;

    .line 51
    .line 52
    const-string v4, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    .line 53
    .line 54
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    int-to-long v7, v0

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v11, -0x1

    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v12, 0x0

    .line 62
    move-object v4, p1

    .line 63
    invoke-interface/range {v4 .. v12}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    const-string p0, "Ephemeral resolver NOT found; no matching intent filters"

    .line 76
    .line 77
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_3
    return-object v1

    .line 81
    :cond_4
    new-instance v4, Landroid/util/ArraySet;

    .line 82
    .line 83
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {v4, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    if-ge v13, v0, :cond_9

    .line 91
    .line 92
    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 97
    .line 98
    iget-object v5, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 99
    .line 100
    if-nez v5, :cond_5

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    const-string v7, ", info:"

    .line 110
    .line 111
    if-nez v6, :cond_7

    .line 112
    .line 113
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 114
    .line 115
    if-nez v6, :cond_7

    .line 116
    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v8, "Ephemeral resolver not in allowed package list; pkg: "

    .line 122
    .line 123
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_6
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_7
    if-eqz v3, :cond_8

    .line 146
    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v0, "Ephemeral resolver found; pkg: "

    .line 150
    .line 151
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_8
    new-instance p1, Landroid/content/ComponentName;

    .line 171
    .line 172
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 173
    .line 174
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 175
    .line 176
    invoke-direct {p1, v5, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-object p1

    .line 180
    :cond_9
    if-eqz v3, :cond_a

    .line 181
    .line 182
    const-string p0, "Ephemeral resolver NOT found"

    .line 183
    .line 184
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    :cond_a
    return-object v1
.end method

.method public final getIntentFilterVerifierComponentNameLPr(Lcom/android/server/pm/ComputerLocked;)Landroid/content/ComponentName;
    .locals 10

    .line 1
    new-instance v2, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    .line 4
    .line 5
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v7

    .line 12
    const-wide/32 v4, 0x1c0000

    .line 13
    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 17
    .line 18
    const-string v3, "application/vnd.android.package-archive"

    .line 19
    .line 20
    const/4 v8, -0x1

    .line 21
    const/4 v9, 0x0

    .line 22
    move-object v1, p1

    .line 23
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    move v3, v1

    .line 34
    move-object v4, v2

    .line 35
    :goto_0
    if-ge v3, v0, :cond_3

    .line 36
    .line 37
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    const-string v7, "android.permission.INTENT_FILTER_VERIFICATION_AGENT"

    .line 50
    .line 51
    invoke-virtual {p0, v7, v6, v1}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    if-eqz v4, :cond_1

    .line 59
    .line 60
    iget v6, v5, Landroid/content/pm/ResolveInfo;->priority:I

    .line 61
    .line 62
    iget v7, v4, Landroid/content/pm/ResolveInfo;->priority:I

    .line 63
    .line 64
    if-le v6, v7, :cond_2

    .line 65
    .line 66
    :cond_1
    move-object v4, v5

    .line 67
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    if-eqz v4, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_4
    const-string p0, "PackageManager"

    .line 82
    .line 83
    const-string p1, "Intent filter verifier not found"

    .line 84
    .line 85
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return-object v2
.end method

.method public final getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v13, Lcom/android/server/pm/KnownPackages;

    .line 4
    .line 5
    move-object v1, v13

    .line 6
    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 19
    .line 20
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 31
    .line 32
    move-object/from16 v16, v13

    .line 33
    .line 34
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mWearableSensingPackage:Ljava/lang/String;

    .line 35
    .line 36
    move-object/from16 v18, v16

    .line 37
    .line 38
    move-object/from16 v19, v1

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 41
    .line 42
    move-object/from16 v16, v1

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    .line 45
    .line 46
    move-object/from16 v17, v0

    .line 47
    .line 48
    move-object/from16 v1, v19

    .line 49
    .line 50
    invoke-direct/range {v1 .. v17}, Lcom/android/server/pm/KnownPackages;-><init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object/from16 v0, p1

    .line 54
    .line 55
    move/from16 v1, p2

    .line 56
    .line 57
    move/from16 v2, p3

    .line 58
    .line 59
    move-object/from16 v3, v18

    .line 60
    .line 61
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method

.method public final getPackageFromComponentString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string/jumbo v2, "package_manager_service"

    .line 6
    .line 7
    .line 8
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 9
    .line 10
    if-nez v3, :cond_15

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    :try_start_0
    const-string v5, "incfs_default_timeouts"

    .line 17
    .line 18
    invoke-static {v2, v5, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    :try_start_1
    const-string v6, "known_digesters_list"

    .line 30
    .line 31
    invoke-static {v2, v6, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x0

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto/16 :goto_c

    .line 50
    .line 51
    :cond_0
    sget-object v2, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->ALL_VERSION_CODES:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    .line 52
    .line 53
    invoke-static {v5}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-string v5, ","

    .line 58
    .line 59
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v5, Ljava/util/ArrayList;

    .line 64
    .line 65
    array-length v6, v1

    .line 66
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    array-length v6, v1

    .line 70
    move v7, v3

    .line 71
    :goto_0
    if-ge v7, v6, :cond_c

    .line 72
    .line 73
    aget-object v8, v1, v7

    .line 74
    .line 75
    const-string v9, ":"

    .line 76
    .line 77
    const/4 v10, 0x4

    .line 78
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    array-length v9, v8

    .line 83
    const/4 v11, 0x1

    .line 84
    if-eq v9, v11, :cond_9

    .line 85
    .line 86
    const/4 v13, 0x2

    .line 87
    if-eq v9, v13, :cond_7

    .line 88
    .line 89
    const/4 v14, 0x3

    .line 90
    if-eq v9, v14, :cond_2

    .line 91
    .line 92
    if-eq v9, v10, :cond_1

    .line 93
    .line 94
    :goto_1
    const/4 v12, 0x0

    .line 95
    goto/16 :goto_b

    .line 96
    .line 97
    :cond_1
    aget-object v9, v8, v14

    .line 98
    .line 99
    invoke-static {v9}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move-object v9, v4

    .line 105
    :goto_2
    aget-object v10, v8, v13

    .line 106
    .line 107
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v14

    .line 111
    if-eqz v14, :cond_4

    .line 112
    .line 113
    :catch_0
    :cond_3
    :goto_3
    move-object v10, v2

    .line 114
    goto :goto_7

    .line 115
    :cond_4
    const-string v14, "-"

    .line 116
    .line 117
    invoke-virtual {v10, v14, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    array-length v14, v10

    .line 122
    if-eq v14, v11, :cond_6

    .line 123
    .line 124
    if-eq v14, v13, :cond_5

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    aget-object v13, v10, v3

    .line 128
    .line 129
    :try_start_2
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v13
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 133
    goto :goto_4

    .line 134
    :catch_1
    const-wide/high16 v13, -0x8000000000000000L

    .line 135
    .line 136
    :goto_4
    aget-object v10, v10, v11

    .line 137
    .line 138
    :try_start_3
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v15
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 142
    :goto_5
    move-wide v11, v15

    .line 143
    goto :goto_6

    .line 144
    :catch_2
    const-wide v15, 0x7fffffffffffffffL

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :goto_6
    cmp-long v10, v13, v11

    .line 151
    .line 152
    if-gtz v10, :cond_3

    .line 153
    .line 154
    new-instance v10, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    .line 155
    .line 156
    invoke-direct {v10, v13, v14, v11, v12}, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;-><init>(JJ)V

    .line 157
    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_6
    :try_start_4
    aget-object v10, v10, v3

    .line 161
    .line 162
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v10

    .line 166
    new-instance v12, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    .line 167
    .line 168
    invoke-direct {v12, v10, v11, v10, v11}, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;-><init>(JJ)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 169
    .line 170
    .line 171
    move-object v10, v12

    .line 172
    :goto_7
    const/4 v11, 0x1

    .line 173
    goto :goto_8

    .line 174
    :cond_7
    move-object v10, v2

    .line 175
    move-object v9, v4

    .line 176
    :goto_8
    aget-object v11, v8, v11

    .line 177
    .line 178
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    if-eqz v12, :cond_8

    .line 183
    .line 184
    goto :goto_9

    .line 185
    :cond_8
    :try_start_5
    invoke-static {v11}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 186
    .line 187
    .line 188
    move-result-object v11
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 189
    goto :goto_a

    .line 190
    :cond_9
    move-object v10, v2

    .line 191
    move-object v9, v4

    .line 192
    :catch_3
    :goto_9
    const/4 v11, 0x0

    .line 193
    :goto_a
    aget-object v8, v8, v3

    .line 194
    .line 195
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    if-eqz v12, :cond_a

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_a
    new-instance v12, Lcom/android/server/pm/PerPackageReadTimeouts;

    .line 203
    .line 204
    invoke-direct {v12, v8, v11, v10, v9}, Lcom/android/server/pm/PerPackageReadTimeouts;-><init>(Ljava/lang/String;[BLcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;)V

    .line 205
    .line 206
    .line 207
    :goto_b
    if-eqz v12, :cond_b

    .line 208
    .line 209
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_c
    move-object v1, v5

    .line 217
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-nez v2, :cond_d

    .line 222
    .line 223
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 224
    .line 225
    :goto_d
    move-object v3, v1

    .line 226
    goto/16 :goto_12

    .line 227
    .line 228
    :cond_d
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 229
    .line 230
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    new-instance v4, Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .line 246
    .line 247
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    move v6, v3

    .line 252
    :goto_e
    if-ge v6, v5, :cond_14

    .line 253
    .line 254
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    check-cast v7, Lcom/android/server/pm/PerPackageReadTimeouts;

    .line 259
    .line 260
    iget-object v8, v7, Lcom/android/server/pm/PerPackageReadTimeouts;->packageName:Ljava/lang/String;

    .line 261
    .line 262
    move-object/from16 v9, p1

    .line 263
    .line 264
    invoke-interface {v9, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    if-nez v8, :cond_e

    .line 269
    .line 270
    goto :goto_11

    .line 271
    :cond_e
    iget v10, v8, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 272
    .line 273
    const/16 v11, 0x2710

    .line 274
    .line 275
    if-ge v10, v11, :cond_f

    .line 276
    .line 277
    goto :goto_11

    .line 278
    :cond_f
    iget-object v10, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 279
    .line 280
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 281
    .line 282
    .line 283
    move-result-wide v11

    .line 284
    iget-object v13, v7, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    .line 285
    .line 286
    iget-wide v14, v13, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->minVersionCode:J

    .line 287
    .line 288
    cmp-long v11, v11, v14

    .line 289
    .line 290
    if-ltz v11, :cond_13

    .line 291
    .line 292
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 293
    .line 294
    .line 295
    move-result-wide v11

    .line 296
    iget-wide v13, v13, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->maxVersionCode:J

    .line 297
    .line 298
    cmp-long v11, v11, v13

    .line 299
    .line 300
    if-lez v11, :cond_10

    .line 301
    .line 302
    goto :goto_11

    .line 303
    :cond_10
    iget-object v11, v7, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    .line 304
    .line 305
    if-eqz v11, :cond_11

    .line 306
    .line 307
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    invoke-virtual {v10, v11}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    .line 312
    .line 313
    .line 314
    move-result v10

    .line 315
    if-nez v10, :cond_11

    .line 316
    .line 317
    goto :goto_11

    .line 318
    :cond_11
    array-length v10, v2

    .line 319
    move v11, v3

    .line 320
    :goto_f
    if-ge v11, v10, :cond_13

    .line 321
    .line 322
    aget v12, v2, v11

    .line 323
    .line 324
    invoke-interface {v8, v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 329
    .line 330
    .line 331
    move-result v13

    .line 332
    if-nez v13, :cond_12

    .line 333
    .line 334
    goto :goto_10

    .line 335
    :cond_12
    iget v13, v8, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 336
    .line 337
    invoke-static {v12, v13}, Landroid/os/UserHandle;->getUid(II)I

    .line 338
    .line 339
    .line 340
    move-result v12

    .line 341
    new-instance v13, Landroid/os/incremental/PerUidReadTimeouts;

    .line 342
    .line 343
    invoke-direct {v13}, Landroid/os/incremental/PerUidReadTimeouts;-><init>()V

    .line 344
    .line 345
    .line 346
    iput v12, v13, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    .line 347
    .line 348
    iget-object v12, v7, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    .line 349
    .line 350
    iget-wide v14, v12, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minTimeUs:J

    .line 351
    .line 352
    iput-wide v14, v13, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    .line 353
    .line 354
    iget-wide v14, v12, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minPendingTimeUs:J

    .line 355
    .line 356
    iput-wide v14, v13, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    .line 357
    .line 358
    iget-wide v14, v12, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->maxPendingTimeUs:J

    .line 359
    .line 360
    iput-wide v14, v13, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    .line 361
    .line 362
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    :goto_10
    add-int/lit8 v11, v11, 0x1

    .line 366
    .line 367
    goto :goto_f

    .line 368
    :cond_13
    :goto_11
    add-int/lit8 v6, v6, 0x1

    .line 369
    .line 370
    goto :goto_e

    .line 371
    :cond_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    new-array v1, v1, [Landroid/os/incremental/PerUidReadTimeouts;

    .line 376
    .line 377
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    check-cast v1, [Landroid/os/incremental/PerUidReadTimeouts;

    .line 382
    .line 383
    goto/16 :goto_d

    .line 384
    .line 385
    :goto_12
    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 386
    .line 387
    goto :goto_13

    .line 388
    :catchall_0
    move-exception v0

    .line 389
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    .line 391
    .line 392
    throw v0

    .line 393
    :catchall_1
    move-exception v0

    .line 394
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 395
    .line 396
    .line 397
    throw v0

    .line 398
    :cond_15
    :goto_13
    return-object v3
.end method

.method public final getRequiredButNotReallyRequiredVerifiersLPr(Lcom/android/server/pm/ComputerLocked;)[Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v2, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    .line 4
    .line 5
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v7

    .line 12
    const-wide/32 v4, 0x1c0000

    .line 13
    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 17
    .line 18
    const-string v3, "application/vnd.android.package-archive"

    .line 19
    .line 20
    const/4 v8, -0x1

    .line 21
    const/4 v9, 0x0

    .line 22
    move-object v1, p1

    .line 23
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const-string p0, "PackageManager"

    .line 34
    .line 35
    const-string p1, "There should probably be a verifier, but, none were found"

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    const/4 v0, 0x2

    .line 44
    if-gt p1, v0, :cond_3

    .line 45
    .line 46
    new-array v0, p1, [Ljava/lang/String;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    :goto_0
    if-ge v1, p1, :cond_2

    .line 50
    .line 51
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    aput-object v2, v0, v1

    .line 64
    .line 65
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_1

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, "Invalid verifier: "

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_2
    return-object v0

    .line 95
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v1, "There must be no more than 2 verifiers; found "

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1
.end method

.method public final getRequiredInstallerLPr(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "android.intent.action.INSTALL_PACKAGE"

    .line 2
    .line 3
    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "content://com.example/foo.apk"

    .line 10
    .line 11
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v8, "application/vnd.android.package-archive"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    const-string v4, "application/vnd.android.package-archive"

    .line 22
    .line 23
    const-wide/32 v5, 0x1c0000

    .line 24
    .line 25
    .line 26
    move-object v2, p1

    .line 27
    move-object v3, v0

    .line 28
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 45
    .line 46
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 47
    .line 48
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 70
    .line 71
    const-string p1, "The installer must be a privileged app"

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0, p1, v0, v8}, Lcom/android/server/pm/PackageManagerService;->throwSystemRequiredPackageState(Lcom/android/server/pm/ComputerLocked;Landroid/content/Intent;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v0, "There must be exactly one installer; found "

    .line 91
    .line 92
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method public final getRequiredPermissionControllerLPr(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "android.intent.action.MANAGE_PERMISSIONS"

    .line 2
    .line 3
    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const-wide/32 v5, 0x1c0000

    .line 12
    .line 13
    .line 14
    move-object v2, p1

    .line 15
    move-object v3, v0

    .line 16
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v2, v3, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 33
    .line 34
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 35
    .line 36
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 58
    .line 59
    const-string p1, "The permissions manager must be a privileged app"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->throwSystemRequiredPackageState(Lcom/android/server/pm/ComputerLocked;Landroid/content/Intent;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 76
    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v0, "There must be exactly one permissions manager; found "

    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0
.end method

.method public final getRequiredServicesExtensionPackageLPr(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x10403b9

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    const-string v0, "Required services extension package is missing, config_servicesExtensionPackage had defined with "

    .line 30
    .line 31
    const-string v1, ", but can not find the package info on the system image, check if the package has a problem."

    .line 32
    .line 33
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string p1, "Required services extension package failed due to config_servicesExtensionPackage is empty."

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final getRequiredUninstallerLPr(Lcom/android/server/pm/ComputerLocked;)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    .line 4
    .line 5
    const-string v2, "android.intent.category.DEFAULT"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string/jumbo v2, "package"

    .line 12
    .line 13
    .line 14
    const-string v3, "foo.bar"

    .line 15
    .line 16
    const/4 v15, 0x0

    .line 17
    invoke-static {v2, v3, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    .line 26
    .line 27
    move-result v13

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 29
    .line 30
    .line 31
    move-result v14

    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x0

    .line 34
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const-wide/32 v7, 0x1c0000

    .line 38
    .line 39
    .line 40
    const-wide/16 v9, 0x0

    .line 41
    .line 42
    move-object/from16 v4, p1

    .line 43
    .line 44
    move-object v5, v1

    .line 45
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 52
    .line 53
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_0
    move-object/from16 v3, p1

    .line 75
    .line 76
    invoke-virtual {v0, v3, v1, v15}, Lcom/android/server/pm/PackageManagerService;->throwSystemRequiredPackageState(Lcom/android/server/pm/ComputerLocked;Landroid/content/Intent;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v3, "There must be exactly one uninstaller; found "

    .line 84
    .line 85
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0
.end method

.method public final getRetailDemoPackageName()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x10403a1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const v2, 0x10403a2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    :try_start_0
    const-string v2, "SHA-256"

    .line 58
    .line 59
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    array-length v4, p0

    .line 68
    const/4 v5, 0x0

    .line 69
    move v6, v5

    .line 70
    :goto_0
    if-ge v6, v4, :cond_2

    .line 71
    .line 72
    aget-object v7, p0, v6

    .line 73
    .line 74
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v7, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    if-eqz v7, :cond_1

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    const-string v0, "PackageManager"

    .line 98
    .line 99
    const-string v1, "Unable to verify signatures as getting the retail demo package name"

    .line 100
    .line 101
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_1
    return-object v3
.end method

.method public final getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 22
    .line 23
    const-string/jumbo p1, "primary_physical"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final getSystemPackageScanFlags(Ljava/io/File;)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    .line 4
    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :goto_0
    const/high16 v1, 0x10000

    .line 14
    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/pm/ScanPartition;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsFile(Ljava/io/File;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget p0, v2, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    .line 30
    .line 31
    or-int/2addr v1, p0

    .line 32
    invoke-virtual {v2, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPrivApp(Ljava/io/File;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const/high16 p1, 0x30000

    .line 39
    .line 40
    or-int v1, p0, p1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    return v1
.end method

.method public final grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V
    .locals 3

    .line 1
    invoke-interface {p1, p5}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2, p4}, Landroid/os/UserHandle;->getUid(II)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v0, :cond_10

    .line 10
    .line 11
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_7

    .line 18
    .line 19
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p1, p2, p5, v0}, Lcom/android/server/pm/Computer;->isInstantAppInternal(IILjava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz p1, :cond_9

    .line 30
    .line 31
    if-nez p6, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 35
    .line 36
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object p6, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter p6

    .line 43
    :try_start_0
    iget-object p5, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 44
    .line 45
    if-nez p5, :cond_2

    .line 46
    .line 47
    monitor-exit p6

    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :cond_2
    iget-object p5, p5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p5

    .line 59
    check-cast p5, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 60
    .line 61
    if-eqz p5, :cond_8

    .line 62
    .line 63
    iget-object p7, p5, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    .line 64
    .line 65
    invoke-virtual {p7, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 66
    .line 67
    .line 68
    move-result p7

    .line 69
    if-nez p7, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object p5, p5, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    .line 73
    .line 74
    invoke-virtual {p5, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 75
    .line 76
    .line 77
    move-result p5

    .line 78
    if-eqz p5, :cond_4

    .line 79
    .line 80
    monitor-exit p6

    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_4
    if-eqz p3, :cond_5

    .line 84
    .line 85
    const-string p5, "android.intent.action.VIEW"

    .line 86
    .line 87
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p7

    .line 91
    invoke-virtual {p5, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p5

    .line 95
    if-eqz p5, :cond_5

    .line 96
    .line 97
    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    if-eqz p3, :cond_5

    .line 102
    .line 103
    const-string p5, "android.intent.category.BROWSABLE"

    .line 104
    .line 105
    invoke-interface {p3, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-eqz p3, :cond_5

    .line 110
    .line 111
    monitor-exit p6

    .line 112
    goto/16 :goto_4

    .line 113
    .line 114
    :cond_5
    iget-object p3, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 115
    .line 116
    iget-object p3, p3, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 117
    .line 118
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    check-cast p3, Lcom/android/server/utils/WatchedSparseArray;

    .line 123
    .line 124
    if-nez p3, :cond_6

    .line 125
    .line 126
    new-instance p3, Lcom/android/server/utils/WatchedSparseArray;

    .line 127
    .line 128
    invoke-direct {p3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 132
    .line 133
    invoke-virtual {p0, p2, p3}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    iget-object p0, p3, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 137
    .line 138
    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    check-cast p0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 143
    .line 144
    if-nez p0, :cond_7

    .line 145
    .line 146
    new-instance p0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 147
    .line 148
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, p4, p0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    iget-object p2, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    .line 155
    .line 156
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 160
    .line 161
    .line 162
    monitor-exit p6

    .line 163
    goto :goto_5

    .line 164
    :cond_8
    :goto_0
    monitor-exit p6

    .line 165
    goto :goto_4

    .line 166
    :goto_1
    monitor-exit p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    throw p0

    .line 168
    :cond_9
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 169
    .line 170
    if-ne v1, p5, :cond_a

    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_a
    iget-object p1, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 177
    .line 178
    monitor-enter p1

    .line 179
    if-eqz p7, :cond_b

    .line 180
    .line 181
    :try_start_1
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 182
    .line 183
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    invoke-virtual {p2, v1, p3}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    goto :goto_2

    .line 192
    :catchall_1
    move-exception p0

    .line 193
    goto :goto_6

    .line 194
    :cond_b
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 195
    .line 196
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    invoke-virtual {p2, v1, p3}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    :goto_2
    iget-boolean p3, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 205
    .line 206
    if-nez p3, :cond_c

    .line 207
    .line 208
    if-eqz p2, :cond_c

    .line 209
    .line 210
    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    .line 211
    .line 212
    :cond_c
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    iget-boolean p1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 214
    .line 215
    if-eqz p1, :cond_d

    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 218
    .line 219
    monitor-enter p1

    .line 220
    :try_start_2
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 221
    .line 222
    invoke-virtual {p3, v1, p5, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 223
    .line 224
    .line 225
    monitor-exit p1

    .line 226
    goto :goto_3

    .line 227
    :catchall_2
    move-exception p0

    .line 228
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 229
    throw p0

    .line 230
    :cond_d
    :goto_3
    if-eqz p2, :cond_e

    .line 231
    .line 232
    invoke-virtual {p0, p0}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 233
    .line 234
    .line 235
    :cond_e
    move v2, p2

    .line 236
    :goto_4
    move v0, v2

    .line 237
    :goto_5
    if-eqz v0, :cond_f

    .line 238
    .line 239
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    .line 240
    .line 241
    .line 242
    :cond_f
    return-void

    .line 243
    :goto_6
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 244
    throw p0

    .line 245
    :cond_10
    :goto_7
    return-void
.end method

.method public final hasSystemFeature(Ljava/lang/String;I)Z
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isMaintenanceModeFeature(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    sget-object v3, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->LOG_DIR:Ljava/io/File;

    .line 12
    .line 13
    const-string/jumbo v3, "persist.sys.disallow_maintenance_mode"

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const-string/jumbo v3, "ril.product_code"

    .line 24
    .line 25
    .line 26
    const-string v4, ""

    .line 27
    .line 28
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/16 v5, 0xb

    .line 37
    .line 38
    if-ge v4, v5, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/16 v4, 0xa

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/16 v6, 0x38

    .line 48
    .line 49
    if-eq v5, v6, :cond_3

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/16 v4, 0x39

    .line 56
    .line 57
    if-ne v3, v4, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string/jumbo v3, "shopdemo"

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    if-ne v0, v1, :cond_4

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v4, "Failed to check shopdemo: "

    .line 78
    .line 79
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v3, "MaintenanceMode"

    .line 94
    .line 95
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    :goto_1
    return v2

    .line 100
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Landroid/content/pm/FeatureInfo;

    .line 107
    .line 108
    if-nez p0, :cond_5

    .line 109
    .line 110
    return v2

    .line 111
    :cond_5
    iget p0, p0, Landroid/content/pm/FeatureInfo;->version:I

    .line 112
    .line 113
    if-lt p0, p2, :cond_6

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    move v1, v2

    .line 117
    :goto_3
    return v1
.end method

.method public final isDeviceUpgrading()Z
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "persist.pm.mock-upgrade"

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    :cond_1
    return v0
.end method

.method public final isLocaleOptimizedPackage(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-wide/16 v1, 0x80

    .line 10
    .line 11
    invoke-interface {p0, p2, v1, v2, p1}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    const-string p1, "com.samsung.android.hasZippedOverlays"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_2
    :goto_0
    const-string p0, "isLocaleOptimizedPackage() -  Non optimized app: "

    .line 33
    .line 34
    const-string p1, ". Proceed with normal install"

    .line 35
    .line 36
    const-string v1, "PackageManager"

    .line 37
    .line 38
    invoke-static {p0, p2, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v0
.end method

.method public final isPackageDeviceAdmin(ILjava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "device_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 18
    .line 19
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 24
    .line 25
    invoke-interface {v2, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v0, :cond_9

    .line 33
    .line 34
    if-eqz v1, :cond_9

    .line 35
    .line 36
    :try_start_0
    invoke-interface {v0, v2}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :goto_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x1

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    return v4

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const/4 v5, -0x1

    .line 63
    if-ne p1, v5, :cond_3

    .line 64
    .line 65
    move-object p1, v3

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    filled-new-array {p1}, [I

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :goto_1
    move v5, v2

    .line 72
    :goto_2
    array-length v6, p1

    .line 73
    if-ge v5, v6, :cond_5

    .line 74
    .line 75
    aget v6, p1, v5

    .line 76
    .line 77
    invoke-interface {v0, p2, v6}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_4

    .line 82
    .line 83
    return v4

    .line 84
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-nez v0, :cond_6

    .line 96
    .line 97
    return v2

    .line 98
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_7
    move-object v3, p1

    .line 106
    :goto_3
    array-length p1, v3

    .line 107
    move v0, v2

    .line 108
    :goto_4
    if-ge v0, p1, :cond_9

    .line 109
    .line 110
    aget v5, v3, v0

    .line 111
    .line 112
    new-instance v6, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;

    .line 113
    .line 114
    invoke-direct {v6, p0, v5}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    .line 115
    .line 116
    .line 117
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_8

    .line 128
    .line 129
    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    .line 130
    .line 131
    .line 132
    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    if-eqz v5, :cond_8

    .line 134
    .line 135
    return v4

    .line 136
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :catch_0
    :cond_9
    return v2
.end method

.method public final isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "android.permission.MANAGE_USERS"

    .line 6
    .line 7
    invoke-interface {p1, v1, v0}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, v0, p2}, Lcom/android/server/pm/Computer;->isCallerSameApp(ILjava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(ILjava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, ""

    .line 38
    .line 39
    const-string p2, "128599183"

    .line 40
    .line 41
    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const p1, 0x534e4554

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    new-instance p0, Ljava/lang/SecurityException;

    .line 52
    .line 53
    const-string p1, "android.permission.MANAGE_USERS permission is required to call this API"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final isRequiredSystemPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSystemPackages:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final isUserRestricted(ILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string p0, "User is restricted: "

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "PackageManager"

    .line 21
    .line 22
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    return p1
.end method

.method public final markPackageAsArchivedIfNeeded(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/ArchivedPackageParcel;Landroid/util/SparseArray;[I)V
    .locals 21

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    if-eqz v1, :cond_7

    .line 11
    .line 12
    if-eqz v2, :cond_7

    .line 13
    .line 14
    iget-object v0, v2, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    .line 15
    .line 16
    if-eqz v0, :cond_7

    .line 17
    .line 18
    if-eqz v3, :cond_7

    .line 19
    .line 20
    if-eqz v4, :cond_7

    .line 21
    .line 22
    array-length v0, v4

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_0
    const/4 v6, 0x0

    .line 28
    iput-object v6, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x10

    .line 34
    .line 35
    invoke-virtual {v1, v0, v5}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 39
    .line 40
    .line 41
    array-length v0, v4

    .line 42
    const/4 v7, 0x0

    .line 43
    move v8, v7

    .line 44
    :goto_0
    if-ge v8, v0, :cond_1

    .line 45
    .line 46
    aget v9, v4, v8

    .line 47
    .line 48
    invoke-virtual {v1, v9}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-virtual {v9, v5, v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 56
    .line 57
    .line 58
    add-int/2addr v8, v5

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 61
    .line 62
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    const-string v0, "PackageManager"

    .line 75
    .line 76
    const-string v1, "Can\'t create archive state: responsible installer is empty"

    .line 77
    .line 78
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    array-length v9, v4

    .line 83
    move v10, v7

    .line 84
    :goto_1
    if-ge v10, v9, :cond_7

    .line 85
    .line 86
    aget v11, v4, v10

    .line 87
    .line 88
    move-object/from16 v12, p0

    .line 89
    .line 90
    iget-object v0, v12, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 93
    .line 94
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    check-cast v13, Ljava/lang/String;

    .line 99
    .line 100
    iget-object v14, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 101
    .line 102
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    const-wide/16 v6, 0x0

    .line 107
    .line 108
    invoke-interface {v14, v8, v6, v7, v11}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const-string v7, "PackageArchiverService"

    .line 113
    .line 114
    if-nez v6, :cond_3

    .line 115
    .line 116
    const-string v0, "Couldn\'t find installer "

    .line 117
    .line 118
    invoke-static {v0, v8, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_2
    const/4 v0, 0x0

    .line 122
    goto/16 :goto_5

    .line 123
    .line 124
    :cond_3
    if-nez v13, :cond_4

    .line 125
    .line 126
    const-string v0, "Couldn\'t get the title of the installer"

    .line 127
    .line 128
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    iget-object v0, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    const-class v6, Landroid/app/ActivityManager;

    .line 135
    .line 136
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/app/ActivityManager;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    new-instance v6, Landroid/content/pm/ArchivedPackageInfo;

    .line 147
    .line 148
    invoke-direct {v6, v2}, Landroid/content/pm/ArchivedPackageInfo;-><init>(Landroid/content/pm/ArchivedPackageParcel;)V

    .line 149
    .line 150
    .line 151
    :try_start_0
    invoke-virtual {v6}, Landroid/content/pm/ArchivedPackageInfo;->getPackageName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    invoke-virtual {v6}, Landroid/content/pm/ArchivedPackageInfo;->getLauncherActivities()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    new-instance v15, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    const/4 v2, 0x0

    .line 173
    :goto_3
    if-ge v2, v5, :cond_5

    .line 174
    .line 175
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v17

    .line 179
    check-cast v17, Landroid/content/pm/ArchivedActivityInfo;

    .line 180
    .line 181
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/ArchivedActivityInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    mul-int/lit8 v4, v2, 0x2

    .line 186
    .line 187
    invoke-static {v14, v3, v11, v4, v0}, Lcom/android/server/pm/PackageArchiver;->storeAdaptiveDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    move/from16 v18, v5

    .line 192
    .line 193
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/ArchivedActivityInfo;->getMonochromeIcon()Landroid/graphics/drawable/Drawable;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    const/16 v16, 0x1

    .line 198
    .line 199
    add-int/lit8 v4, v4, 0x1

    .line 200
    .line 201
    invoke-static {v14, v5, v11, v4, v0}, Lcom/android/server/pm/PackageArchiver;->storeAdaptiveDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    new-instance v5, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 206
    .line 207
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/ArchivedActivityInfo;->getLabel()Ljava/lang/CharSequence;

    .line 208
    .line 209
    .line 210
    move-result-object v19

    .line 211
    move/from16 v20, v0

    .line 212
    .line 213
    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    move-object/from16 v19, v6

    .line 218
    .line 219
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/ArchivedActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-direct {v5, v0, v6, v3, v4}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    const/4 v3, 0x1

    .line 230
    add-int/2addr v2, v3

    .line 231
    move-object/from16 v3, p3

    .line 232
    .line 233
    move-object/from16 v4, p4

    .line 234
    .line 235
    move/from16 v5, v18

    .line 236
    .line 237
    move-object/from16 v6, v19

    .line 238
    .line 239
    move/from16 v0, v20

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :catch_0
    move-exception v0

    .line 243
    goto :goto_4

    .line 244
    :cond_5
    new-instance v0, Lcom/android/server/pm/pkg/ArchiveState;

    .line 245
    .line 246
    invoke-direct {v0, v13, v15}, Lcom/android/server/pm/pkg/ArchiveState;-><init>(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 248
    .line 249
    goto :goto_5

    .line 250
    :goto_4
    const-string v2, "Failed to create archive state"

    .line 251
    .line 252
    invoke-static {v7, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .line 254
    .line 255
    goto/16 :goto_2

    .line 256
    .line 257
    :goto_5
    if-eqz v0, :cond_6

    .line 258
    .line 259
    invoke-virtual {v1, v11}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    iput-object v0, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    .line 264
    .line 265
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 266
    .line 267
    .line 268
    :cond_6
    const/4 v2, 0x1

    .line 269
    add-int/2addr v10, v2

    .line 270
    move-object/from16 v3, p3

    .line 271
    .line 272
    move-object/from16 v4, p4

    .line 273
    .line 274
    move v5, v2

    .line 275
    const/4 v6, 0x0

    .line 276
    const/4 v7, 0x0

    .line 277
    move-object/from16 v2, p2

    .line 278
    .line 279
    goto/16 :goto_1

    .line 280
    .line 281
    :cond_7
    :goto_6
    return-void
.end method

.method public final notifyFirstLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string p0, "Skip first launch notification for "

    .line 16
    .line 17
    const-string p1, "SPEG"

    .line 18
    .line 19
    invoke-static {p0, p2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V
    .locals 4

    .line 4
    const-string/jumbo v0, "result of install: "

    .line 5
    iget-object v1, p1, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v1, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    :goto_0
    if-eqz v1, :cond_3

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 8
    iget-object v1, p1, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v3, v1}, Lcom/android/server/pm/PackageArchiver;->setAppVersion(ILjava/lang/String;)V

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget v0, p1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object v0, p1, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 14
    :goto_1
    invoke-interface {v1}, Landroid/content/pm/IPackageInstallObserver2;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->extrasForInstallResult(Lcom/android/server/pm/InstallRequest;)Landroid/os/Bundle;

    move-result-object p0

    if-nez v0, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    iget-object v2, v0, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 18
    :goto_2
    iget-object v0, p1, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 19
    iget v1, p1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 20
    iget-object p1, p1, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    .line 21
    invoke-interface {v2, v0, v1, p1, p0}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 22
    :catch_0
    const-string p0, "PackageManager"

    const-string p1, "Observer no longer exists."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void
.end method

.method public final notifyInstallObserver(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    :cond_1
    return-void
.end method

.method public final notifyPackageChanged(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageObserverHelper;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 21
    .line 22
    invoke-interface {v2, p1, p2}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageChanged(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method

.method public final onNewUserCreated(IZ)V
    .locals 7

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->writeLegacyPermissionStateTEMP()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 22
    .line 23
    new-instance v6, Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string/jumbo v2, "runtime-permissions.xml"

    .line 30
    .line 31
    .line 32
    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 36
    .line 37
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 38
    .line 39
    move v2, p1

    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSync(ILcom/android/server/pm/Settings$VersionInfo;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Ljava/io/File;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->readLegacyPermissionStateTEMP()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 57
    .line 58
    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    xor-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    monitor-exit p2

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0

    .line 77
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 78
    .line 79
    iget-object p2, p2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 80
    .line 81
    iget-object p2, p2, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 82
    .line 83
    invoke-interface {p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onUserCreated(I)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->grantDefaultPermissions(I)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 92
    .line 93
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 94
    .line 95
    iget-object p2, p2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 96
    .line 97
    iget-object p2, p2, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 98
    .line 99
    invoke-interface {p2, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->setDefaultPermissionGrantFingerprint(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 103
    .line 104
    check-cast p2, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->clearUser(I)V

    .line 107
    .line 108
    .line 109
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    .line 110
    .line 111
    iget-boolean p2, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    .line 112
    .line 113
    if-nez p2, :cond_2

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    sget-boolean p2, Lcom/samsung/android/rune/PMRune;->PM_ENABLE_GMS:Z

    .line 117
    .line 118
    if-eqz p2, :cond_3

    .line 119
    .line 120
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setGmsEnabledSetting(I)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_1
    return-void
.end method

.method public final overlaysInstallComplete(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string/jumbo v1, "overlaysInstallComplete() called with: token = ["

    .line 9
    .line 10
    .line 11
    const-string v2, "], didLaunch = ["

    .line 12
    .line 13
    const-string v3, "], type = ["

    .line 14
    .line 15
    invoke-static {p1, p2, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, "], userId = ["

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, "], targetPackage = ["

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, "], timeoutRunnable = ["

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p6, "]"

    .line 47
    .line 48
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "PackageManager"

    .line 56
    .line 57
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-eqz p3, :cond_3

    .line 65
    .line 66
    const/4 p2, 0x1

    .line 67
    if-eq p3, p2, :cond_2

    .line 68
    .line 69
    const/4 p1, 0x2

    .line 70
    if-eq p3, p1, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1, p5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 85
    .line 86
    move-object v2, p5

    .line 87
    move v4, p4

    .line 88
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZLjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {v3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Lcom/android/server/pm/DeletePackageHelper;->mRunningOverlayInstalls:Landroid/util/SparseArray;

    .line 116
    .line 117
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Lcom/android/server/pm/PackageRemovedInfo;

    .line 122
    .line 123
    iget-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mRunningOverlayInstalls:Landroid/util/SparseArray;

    .line 124
    .line 125
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 126
    .line 127
    .line 128
    if-eqz p2, :cond_4

    .line 129
    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string/jumbo p3, "overlaysInstallComplete(): Calling sendSystemPackageUpdatedBroadcasts for package: "

    .line 133
    .line 134
    .line 135
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object p3, p2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {p1, p3, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 144
    .line 145
    invoke-virtual {p0, p2}, Lcom/android/server/pm/BroadcastHelper;->sendSystemPackageUpdatedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    const/16 p0, 0xa

    .line 150
    .line 151
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    .line 157
    .line 158
    :cond_4
    :goto_0
    return-void
.end method

.method public final performFstrimIfNeeded()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "No disk maintenance in "

    .line 7
    .line 8
    const-string v1, "Only the system can request fstrim"

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const-string v2, "PackageManager"

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v3, "fstrim_mandatory_interval"

    .line 28
    .line 29
    const-wide/32 v4, 0xf731400

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    const-wide/16 v5, 0x0

    .line 37
    .line 38
    cmp-long p0, v3, v5

    .line 39
    .line 40
    if-lez p0, :cond_1

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->lastMaintenance()J

    .line 47
    .line 48
    .line 49
    move-result-wide v7

    .line 50
    sub-long/2addr v5, v7

    .line 51
    cmp-long p0, v5, v3

    .line 52
    .line 53
    if-lez p0, :cond_1

    .line 54
    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, "; running immediately"

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->runMaintenance()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-string/jumbo p0, "storageManager service unavailable!"

    .line 80
    .line 81
    .line 82
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .line 84
    .line 85
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/ComputerEngine;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getUsed()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    :goto_0
    new-instance v4, Lcom/android/server/pm/PackageManagerService$Snapshot;

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    invoke-direct {v4, v0, v5}, Lcom/android/server/pm/PackageManagerService$Snapshot;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    .line 19
    .line 20
    .line 21
    new-instance v11, Lcom/android/server/pm/ComputerEngine;

    .line 22
    .line 23
    move/from16 v5, p2

    .line 24
    .line 25
    invoke-direct {v11, v4, v5}, Lcom/android/server/pm/ComputerEngine;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    iget-object v6, v11, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    sub-long/2addr v4, v1

    .line 47
    long-to-int v1, v4

    .line 48
    iget-object v2, v0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v2

    .line 51
    :try_start_0
    iput v6, v0, Lcom/android/server/pm/SnapshotStatistics;->mPackageCount:I

    .line 52
    .line 53
    iget-object v4, v0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 54
    .line 55
    div-int/lit16 v5, v1, 0x3e8

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->getBin(I)I

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    iget-object v4, v0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 62
    .line 63
    invoke-virtual {v4, v3}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->getBin(I)I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    const/4 v14, 0x1

    .line 68
    const/16 v4, 0x2710

    .line 69
    .line 70
    const/4 v15, 0x0

    .line 71
    if-lt v1, v4, :cond_1

    .line 72
    .line 73
    move/from16 v16, v14

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move/from16 v16, v15

    .line 77
    .line 78
    :goto_1
    const/4 v4, 0x5

    .line 79
    if-gt v3, v4, :cond_2

    .line 80
    .line 81
    move/from16 v17, v14

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move/from16 v17, v15

    .line 85
    .line 86
    :goto_2
    iget-object v4, v0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 87
    .line 88
    aget-object v4, v4, v15

    .line 89
    .line 90
    move v5, v1

    .line 91
    move v6, v3

    .line 92
    move v7, v12

    .line 93
    move v8, v13

    .line 94
    move/from16 v9, v16

    .line 95
    .line 96
    move/from16 v10, v17

    .line 97
    .line 98
    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mrebuild(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V

    .line 99
    .line 100
    .line 101
    iget-object v4, v0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 102
    .line 103
    aget-object v4, v4, v15

    .line 104
    .line 105
    move v5, v1

    .line 106
    move v6, v3

    .line 107
    move v7, v12

    .line 108
    move v8, v13

    .line 109
    move/from16 v9, v16

    .line 110
    .line 111
    move/from16 v10, v17

    .line 112
    .line 113
    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mrebuild(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V

    .line 114
    .line 115
    .line 116
    const/16 v4, 0x7530

    .line 117
    .line 118
    if-lt v1, v4, :cond_3

    .line 119
    .line 120
    iget v4, v0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    .line 121
    .line 122
    add-int/lit8 v5, v4, 0x1

    .line 123
    .line 124
    iput v5, v0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    .line 125
    .line 126
    const/16 v0, 0xa

    .line 127
    .line 128
    if-ge v4, v0, :cond_3

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    goto :goto_4

    .line 133
    :cond_3
    move v14, v15

    .line 134
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v14, :cond_4

    .line 136
    .line 137
    div-int/lit16 v1, v1, 0x3e8

    .line 138
    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const/16 v1, 0xc3b

    .line 152
    .line 153
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    throw v0

    .line 159
    :cond_4
    :goto_5
    return-object v11
.end method

.method public final recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    .line 11
    .line 12
    sget-object v1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;-><init>(IJ)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public final requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 14

    .line 1
    move-object/from16 v6, p2

    .line 2
    .line 3
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static/range {p9 .. p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static/range {p10 .. p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    move-object v0, p1

    .line 22
    move/from16 v2, p8

    .line 23
    .line 24
    move-object/from16 v5, p2

    .line 25
    .line 26
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getApplicationInfoInternal(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    move-object v1, p1

    .line 33
    move/from16 v2, p8

    .line 34
    .line 35
    invoke-interface {p1, v6, v2}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :goto_0
    move-object v10, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v10, v2

    .line 60
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v1, Ljava/io/File;

    .line 66
    .line 67
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    if-eqz p3, :cond_2

    .line 80
    .line 81
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    array-length v1, v1

    .line 86
    const/4 v3, 0x0

    .line 87
    :goto_2
    if-ge v3, v1, :cond_2

    .line 88
    .line 89
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 90
    .line 91
    aget-object v4, v4, v3

    .line 92
    .line 93
    new-instance v5, Ljava/io/File;

    .line 94
    .line 95
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 96
    .line 97
    aget-object v6, v6, v3

    .line 98
    .line 99
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    if-eqz p6, :cond_3

    .line 113
    .line 114
    invoke-static/range {p6 .. p6}, Lcom/android/server/pm/PackageManagerService;->decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :cond_3
    move-object v11, v2

    .line 119
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;

    .line 120
    .line 121
    const/4 v13, 0x0

    .line 122
    move-object v4, v0

    .line 123
    move-object v5, p0

    .line 124
    move-object/from16 v6, p10

    .line 125
    .line 126
    move/from16 v8, p4

    .line 127
    .line 128
    move/from16 v9, p5

    .line 129
    .line 130
    move-object/from16 v12, p7

    .line 131
    .line 132
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;I)V

    .line 133
    .line 134
    .line 135
    move-object/from16 v1, p9

    .line 136
    .line 137
    check-cast v1, Landroid/os/HandlerExecutor;

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_4
    new-instance v0, Landroid/os/ParcelableException;

    .line 144
    .line 145
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 146
    .line 147
    invoke-direct {v1, v6}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    throw v0
.end method

.method public final requestFileChecksums(Ljava/io/File;Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 9
    .line 10
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz p5, :cond_0

    .line 14
    .line 15
    invoke-static/range {p5 .. p5}, Lcom/android/server/pm/PackageManagerService;->decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move-object v8, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v8, v2

    .line 22
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    move-object v3, p1

    .line 29
    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    new-instance v12, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;

    .line 37
    .line 38
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    .line 39
    .line 40
    const/4 v10, 0x1

    .line 41
    move-object v1, v12

    .line 42
    move-object v2, p0

    .line 43
    move/from16 v5, p3

    .line 44
    .line 45
    move/from16 v6, p4

    .line 46
    .line 47
    move-object v7, p2

    .line 48
    move-object/from16 v9, p6

    .line 49
    .line 50
    invoke-direct/range {v1 .. v10}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;I)V

    .line 51
    .line 52
    .line 53
    check-cast v11, Landroid/os/HandlerExecutor;

    .line 54
    .line 55
    invoke-virtual {v11, v12}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    move-object v3, p1

    .line 60
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method public final resolveUserIds(I)[I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x1

    .line 12
    new-array p0, p0, [I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    aput p1, p0, v0

    .line 16
    .line 17
    :goto_0
    return-object p0
.end method

.method public final restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "Failed to restore system package:"

    .line 7
    .line 8
    iget-object v1, p1, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 11
    .line 12
    iget-object v3, p1, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 15
    .line 16
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 17
    .line 18
    monitor-enter v4

    .line 19
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 22
    .line 23
    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 24
    .line 25
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-boolean v5, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v5}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesLI(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 42
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 45
    .line 46
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    :try_start_2
    iget-object v2, v2, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 56
    .line 57
    :goto_0
    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p0, v5, p2, v2, p3}, Lcom/android/server/pm/InstallPackageHelper;->installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 60
    .line 61
    .line 62
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    .line 64
    .line 65
    iget-object p3, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 66
    .line 67
    invoke-interface {p3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStub()Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_2

    .line 72
    .line 73
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 74
    .line 75
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 76
    .line 77
    monitor-enter p3

    .line 78
    :try_start_4
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/pm/InstallPackageHelper;->disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V

    .line 79
    .line 80
    .line 81
    monitor-exit p3

    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    throw p0

    .line 86
    :cond_2
    :goto_1
    return-void

    .line 87
    :catchall_1
    move-exception p3

    .line 88
    goto :goto_4

    .line 89
    :catch_0
    move-exception p3

    .line 90
    goto :goto_3

    .line 91
    :catchall_2
    move-exception p3

    .line 92
    :try_start_5
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catchall_3
    move-exception v2

    .line 97
    :try_start_6
    invoke-virtual {p3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    throw p3
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 101
    :goto_3
    :try_start_7
    const-string v2, "PackageManager"

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, ": "

    .line 114
    .line 115
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcom/android/server/pm/SystemDeleteException;

    .line 133
    .line 134
    invoke-direct {v0, p3}, Lcom/android/server/pm/SystemDeleteException;-><init>(Lcom/android/server/pm/PackageManagerException;)V

    .line 135
    .line 136
    .line 137
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 138
    :goto_4
    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 139
    .line 140
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStub()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_3

    .line 145
    .line 146
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 149
    .line 150
    monitor-enter v0

    .line 151
    :try_start_8
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/pm/InstallPackageHelper;->disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V

    .line 152
    .line 153
    .line 154
    monitor-exit v0

    .line 155
    goto :goto_5

    .line 156
    :catchall_4
    move-exception p0

    .line 157
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 158
    throw p0

    .line 159
    :cond_3
    :goto_5
    throw p3

    .line 160
    :catchall_5
    move-exception p0

    .line 161
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 162
    throw p0
.end method

.method public final restorePermissionsAndUpdateRolesForNewUserInstall(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->restoreDelayedRuntimePermissions(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/DefaultAppProvider;->setDefaultBrowser(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 34
    .line 35
    monitor-enter p2

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf$4(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    monitor-exit p2

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0

    .line 56
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    throw p0
.end method

.method public final schedulePruneUnusedStaticSharedLibraries(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0x1c

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "debug.pm.prune_unused_shared_libraries_delay"

    .line 11
    .line 12
    sget-wide v1, Lcom/android/server/pm/PackageManagerService;->PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

    .line 13
    .line 14
    invoke-static {p1, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final scheduleWritePackageRestrictions(I)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    array-length v1, p1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_0

    .line 19
    .line 20
    aget v3, p1, v2

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    monitor-exit v0

    .line 37
    goto :goto_2

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :goto_2
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 65
    .line 66
    const/16 v0, 0xe

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 75
    .line 76
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-wide/16 v0, 0x2710

    .line 81
    .line 82
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    throw p0
.end method

.method public final scheduleWriteSettings()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/16 v0, 0xd

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-wide/16 v1, 0x2710

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final setEnabledSettingInternalLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageManager$ComponentEnabledSetting;ILjava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {p2, v0, p4, p5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p3, 0x3

    .line 22
    if-eq v0, p3, :cond_0

    .line 23
    .line 24
    if-ne v0, v3, :cond_1

    .line 25
    .line 26
    :cond_0
    const-string p3, "android.permission.SUSPEND_APPS"

    .line 27
    .line 28
    invoke-virtual {p0, p3, v1, p4}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-nez p3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, p4, p1, v1, v4}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    iget-object p5, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 42
    .line 43
    invoke-virtual {p5, p1, p3, p4}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    move p1, v4

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    if-eq v0, v4, :cond_5

    .line 55
    .line 56
    if-eq v0, v3, :cond_3

    .line 57
    .line 58
    const-string p3, "Failed setComponentEnabledSetting: component "

    .line 59
    .line 60
    const-string p5, "/"

    .line 61
    .line 62
    const-string v2, " requested an invalid new component state: "

    .line 63
    .line 64
    invoke-static {p3, v1, p5, p1, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p3, "PackageManager"

    .line 69
    .line 70
    invoke-static {p1, v0, p3}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    move p1, v5

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {p2, p4, v4, v5}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    iget-object p5, p3, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 80
    .line 81
    if-eqz p5, :cond_4

    .line 82
    .line 83
    invoke-virtual {p5, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p5

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    move p5, v5

    .line 89
    :goto_0
    iget-object p3, p3, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 90
    .line 91
    invoke-virtual {p3, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    or-int/2addr p1, p5

    .line 96
    if-eqz p1, :cond_8

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    invoke-virtual {p2, p4, v5, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    iget-object p5, p3, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 107
    .line 108
    if-eqz p5, :cond_6

    .line 109
    .line 110
    invoke-virtual {p5, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p5

    .line 114
    goto :goto_1

    .line 115
    :cond_6
    move p5, v5

    .line 116
    :goto_1
    iget-object p3, p3, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 117
    .line 118
    invoke-virtual {p3, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    or-int/2addr p1, p5

    .line 123
    if-eqz p1, :cond_8

    .line 124
    .line 125
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    invoke-virtual {p2, p4, p1}, Lcom/android/server/pm/PackageSetting;->restoreComponentLPw(ILjava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    :cond_8
    :goto_2
    if-nez p1, :cond_9

    .line 134
    .line 135
    return v5

    .line 136
    :cond_9
    filled-new-array {p4}, [I

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 144
    .line 145
    .line 146
    move-result-wide p1

    .line 147
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .line 149
    .line 150
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    .line 152
    .line 153
    return v4

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    .line 157
    .line 158
    throw p0
.end method

.method public final setKeepUninstalledPackagesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    move v2, p2

    .line 29
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ge v2, v3, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {p1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    iget-object v4, v4, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 49
    .line 50
    move v5, p2

    .line 51
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-ge v5, v6, :cond_2

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 62
    .line 63
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-direct {v4, v3, v5, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    monitor-exit v0

    .line 90
    return-void

    .line 91
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method

.method public final setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p2, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_6

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v2, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {p2, v0}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, p3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_5

    .line 42
    .line 43
    :goto_0
    const-string/jumbo v2, "stop package"

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    const/4 v6, 0x1

    .line 48
    move-object v1, p2

    .line 49
    move v3, v0

    .line 50
    move v4, p1

    .line 51
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v0, p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const/4 v0, 0x0

    .line 59
    if-nez p2, :cond_2

    .line 60
    .line 61
    move-object v1, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-interface {p2, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :goto_1
    if-eqz p2, :cond_6

    .line 68
    .line 69
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eq v2, p4, :cond_6

    .line 74
    .line 75
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    new-instance v9, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;

    .line 84
    .line 85
    move-object v3, v9

    .line 86
    move-object v4, p0

    .line 87
    move v5, p1

    .line 88
    move v6, p4

    .line 89
    move v7, v2

    .line 90
    move-object v8, p3

    .line 91
    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/pm/PackageManagerService;IZZLjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0, p3, v9}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 95
    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    iget-object p2, p2, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 100
    .line 101
    iget-object p2, p2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz p2, :cond_3

    .line 104
    .line 105
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    sget-boolean p2, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 109
    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    if-nez p1, :cond_4

    .line 113
    .line 114
    if-eqz p3, :cond_4

    .line 115
    .line 116
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 117
    .line 118
    invoke-virtual {p2, p3}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->isMonetizedPreloadApp(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_4

    .line 123
    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v0, "Monetized App "

    .line 127
    .line 128
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v0, " opened for first time"

    .line 135
    .line 136
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    const-string v0, "PackageManager"

    .line 144
    .line 145
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    const-string p2, "MONETIZED_APP_OPENED"

    .line 149
    .line 150
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 158
    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string p2, "Permission Denial: attempt to change stopped state from pid="

    .line 162
    .line 163
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string p2, ", uid="

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string p2, ", package="

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p0

    .line 197
    :cond_6
    const/4 v1, 0x0

    .line 198
    :goto_2
    if-nez p4, :cond_7

    .line 199
    .line 200
    new-instance p2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;

    .line 201
    .line 202
    invoke-direct {p2, p0, p3, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    iget-object p4, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 206
    .line 207
    invoke-virtual {p4, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    .line 209
    .line 210
    if-eqz v1, :cond_7

    .line 211
    .line 212
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->stayStopped()Z

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-eqz p2, :cond_7

    .line 217
    .line 218
    const-wide/32 v0, 0x40000

    .line 219
    .line 220
    .line 221
    const-string/jumbo p2, "unstoppedBroadcast"

    .line 222
    .line 223
    .line 224
    invoke-static {v0, v1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 228
    .line 229
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 230
    .line 231
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 232
    .line 233
    invoke-interface {p2, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    .line 238
    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-interface {v2, p3, v8}, Lcom/android/server/pm/Computer;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    new-instance v10, Landroid/os/Bundle;

    .line 252
    .line 253
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 254
    .line 255
    .line 256
    const-wide/16 v2, 0x0

    .line 257
    .line 258
    invoke-virtual {p2, p3, v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    const-string v2, "android.intent.extra.UID"

    .line 263
    .line 264
    invoke-virtual {v10, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    const-string p2, "android.intent.extra.user_handle"

    .line 268
    .line 269
    invoke-virtual {v10, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    const-string p1, "android.intent.extra.TIME"

    .line 273
    .line 274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 275
    .line 276
    .line 277
    move-result-wide v2

    .line 278
    invoke-virtual {v10, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 279
    .line 280
    .line 281
    new-instance p1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;

    .line 282
    .line 283
    move-object v2, p1

    .line 284
    move-object v3, p0

    .line 285
    move-object v4, p3

    .line 286
    move-object v5, v10

    .line 287
    move-object v6, v8

    .line 288
    move-object v7, v9

    .line 289
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    .line 294
    .line 295
    const-string v3, "android.intent.action.PACKAGE_UNSTOPPED"

    .line 296
    .line 297
    const/4 v7, 0x0

    .line 298
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 299
    .line 300
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 301
    .line 302
    const/4 p1, 0x0

    .line 303
    move-object v8, v9

    .line 304
    move-object v9, p0

    .line 305
    move-object v10, p1

    .line 306
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 310
    .line 311
    .line 312
    :cond_7
    return-void
.end method

.method public final setSystemAppHiddenUntilInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e9

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x3e8

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v2, "android.permission.SUSPEND_APPS"

    .line 22
    .line 23
    const-string/jumbo v3, "setSystemAppHiddenUntilInstalled"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_6

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_6

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isCoreApp()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 56
    .line 57
    const-string p1, "Only system or phone callers can modify core apps"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_5
    :goto_2
    new-instance p1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;

    .line 64
    .line 65
    invoke-direct {p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;-><init>(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 69
    .line 70
    .line 71
    :cond_6
    :goto_3
    return-void
.end method

.method public final setSystemAppInstallState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e9

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v0, v2

    .line 19
    :goto_1
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v4, "android.permission.SUSPEND_APPS"

    .line 24
    .line 25
    const-string/jumbo v5, "setSystemAppHiddenUntilInstalled"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-interface {p2, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-eqz p2, :cond_8

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_8

    .line 42
    .line 43
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_3
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isCoreApp()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 58
    .line 59
    const-string p1, "Only system or phone callers can modify core apps"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_5
    :goto_2
    invoke-interface {p2, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-ne p2, p4, :cond_6

    .line 74
    .line 75
    return v3

    .line 76
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    if-eqz p4, :cond_7

    .line 81
    .line 82
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 83
    .line 84
    const/high16 v6, 0x400000

    .line 85
    .line 86
    const/4 v7, 0x3

    .line 87
    const/4 v8, 0x0

    .line 88
    move-object v4, p3

    .line 89
    move v5, p1

    .line 90
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILandroid/content/IntentSender;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    return v2

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_3

    .line 99
    :cond_7
    :try_start_1
    new-instance v4, Landroid/content/pm/VersionedPackage;

    .line 100
    .line 101
    const/4 p2, -0x1

    .line 102
    invoke-direct {v4, p3, p2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    new-instance p2, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    .line 106
    .line 107
    const/4 p3, 0x0

    .line 108
    invoke-direct {p2, p3}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 116
    .line 117
    const/4 v8, 0x0

    .line 118
    const/4 v7, 0x4

    .line 119
    move v6, p1

    .line 120
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    return v2

    .line 127
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_8
    :goto_4
    return v3
.end method

.method public snapshotComputer()Lcom/android/server/pm/Computer;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    move-result-object p0

    return-object p0
.end method

.method public final snapshotComputer(Z)Lcom/android/server/pm/Computer;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    return-object p0

    .line 4
    :cond_0
    sget-object p1, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Computer;

    .line 5
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 7
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/ComputerEngine;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/ComputerEngine;

    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->use()Lcom/android/server/pm/ComputerEngine;

    return-object p0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Computer;

    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 15
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/ComputerEngine;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Computer;

    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v3, :cond_4

    .line 19
    invoke-interface {v3}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 20
    invoke-interface {v3}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/ComputerEngine;

    move-result-object p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_0

    .line 21
    :cond_4
    :try_start_3
    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/PackageManagerService;->rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/ComputerEngine;

    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->use()Lcom/android/server/pm/ComputerEngine;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object p0

    .line 24
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final systemReady()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "Only the system can claim the system is ready"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    check-cast v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v2, v4

    .line 27
    :goto_0
    if-ltz v2, :cond_0

    .line 28
    .line 29
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 30
    .line 31
    check-cast v5, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Ljava/io/File;

    .line 38
    .line 39
    invoke-static {v0, v5}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 46
    .line 47
    :cond_1
    iput-boolean v4, v1, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    .line 48
    .line 49
    new-instance v2, Lcom/android/server/pm/PackageManagerService$4;

    .line 50
    .line 51
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-direct {v2, v1, v5, v0}, Lcom/android/server/pm/PackageManagerService$4;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v5, "enable_ephemeral_feature"

    .line 63
    .line 64
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v7, -0x1

    .line 70
    invoke-virtual {v0, v5, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v5, "instant_apps_enabled"

    .line 80
    .line 81
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v0, v5, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageManagerService$4;->onChange(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 92
    .line 93
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 100
    .line 101
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 102
    .line 103
    iget-object v8, v5, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 104
    .line 105
    monitor-enter v8

    .line 106
    :try_start_0
    iget-boolean v9, v5, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    .line 107
    .line 108
    if-eqz v9, :cond_2

    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    .line 111
    .line 112
    .line 113
    iput-boolean v6, v5, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    goto/16 :goto_16

    .line 118
    .line 119
    :cond_2
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 121
    .line 122
    invoke-interface {v5}, Lcom/android/server/pm/FeatureConfig;->onSystemReady()V

    .line 123
    .line 124
    .line 125
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterBase;->mHandler:Landroid/os/Handler;

    .line 126
    .line 127
    new-instance v8, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;

    .line 128
    .line 129
    const-wide/16 v9, 0x2710

    .line 130
    .line 131
    invoke-direct {v8, v0, v2, v9, v10}, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppsFilterImpl;Landroid/content/pm/PackageManagerInternal;J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    .line 136
    .line 137
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 144
    .line 145
    invoke-static {v0, v6, v2}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;ILandroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const v2, 0x10700d2

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const v5, 0x10700d1

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_3

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_3
    const-string/jumbo v5, "ro.boot.hardware.sku"

    .line 182
    .line 183
    .line 184
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-nez v8, :cond_4

    .line 193
    .line 194
    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_4

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    array-length v5, v0

    .line 206
    move v8, v6

    .line 207
    :goto_2
    if-ge v8, v5, :cond_6

    .line 208
    .line 209
    aget-object v9, v0, v8

    .line 210
    .line 211
    invoke-virtual {v1, v2, v9, v4}, Lcom/android/server/pm/PackageManagerService;->setSystemAppHiddenUntilInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;Z)V

    .line 212
    .line 213
    .line 214
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 215
    .line 216
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    iget-object v10, v10, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 221
    .line 222
    invoke-virtual {v10, v6}, Lcom/android/server/pm/UserManagerService$LocalService;->getUsers(Z)Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    move v11, v6

    .line 227
    :goto_3
    move-object v12, v10

    .line 228
    check-cast v12, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    if-ge v11, v13, :cond_5

    .line 235
    .line 236
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    check-cast v12, Landroid/content/pm/UserInfo;

    .line 241
    .line 242
    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    .line 243
    .line 244
    invoke-virtual {v1, v12, v2, v9, v6}, Lcom/android/server/pm/PackageManagerService;->setSystemAppInstallState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)Z

    .line 245
    .line 246
    .line 247
    add-int/lit8 v11, v11, 0x1

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_6
    :goto_4
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 254
    .line 255
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const-string v2, "compatibility_mode"

    .line 260
    .line 261
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-ne v0, v4, :cond_7

    .line 266
    .line 267
    move v0, v4

    .line 268
    goto :goto_5

    .line 269
    :cond_7
    move v0, v6

    .line 270
    :goto_5
    invoke-static {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setCompatibilityModeEnabled(Z)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 274
    .line 275
    monitor-enter v2

    .line 276
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 277
    .line 278
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 279
    .line 280
    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->systemReady(Lcom/android/server/pm/resolution/ComponentResolver;)Ljava/util/ArrayList;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    move v5, v6

    .line 285
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-ge v5, v8, :cond_8

    .line 290
    .line 291
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 292
    .line 293
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    check-cast v9, Ljava/lang/Integer;

    .line 298
    .line 299
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    invoke-virtual {v8, v9, v6}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    .line 304
    .line 305
    .line 306
    add-int/lit8 v5, v5, 0x1

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :catchall_1
    move-exception v0

    .line 310
    goto/16 :goto_15

    .line 311
    .line 312
    :cond_8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 313
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    const-string v2, "appops"

    .line 319
    .line 320
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    iput-object v2, v0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 329
    .line 330
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 331
    .line 332
    monitor-enter v5

    .line 333
    :try_start_2
    invoke-virtual {v0, v6, v3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    .line 337
    .line 338
    .line 339
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 340
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 341
    .line 342
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Lcom/android/server/pm/UserManagerService$1;

    .line 343
    .line 344
    new-instance v8, Landroid/content/IntentFilter;

    .line 345
    .line 346
    const-string v9, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    .line 347
    .line 348
    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    .line 352
    .line 353
    invoke-virtual {v2, v5, v8, v3, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 354
    .line 355
    .line 356
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 357
    .line 358
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mConfigurationChangeReceiver:Lcom/android/server/pm/UserManagerService$1;

    .line 359
    .line 360
    new-instance v8, Landroid/content/IntentFilter;

    .line 361
    .line 362
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    .line 363
    .line 364
    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    .line 368
    .line 369
    invoke-virtual {v2, v5, v8, v3, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 370
    .line 371
    .line 372
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isAutoLockForPrivateSpaceEnabled()Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v2, :cond_9

    .line 377
    .line 378
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    const/16 v5, -0x2710

    .line 383
    .line 384
    if-eq v2, v5, :cond_9

    .line 385
    .line 386
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 387
    .line 388
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    const-string/jumbo v8, "private_space_auto_lock"

    .line 393
    .line 394
    .line 395
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockSettingsObserver:Lcom/android/server/pm/UserManagerService$SettingsObserver;

    .line 400
    .line 401
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 402
    .line 403
    .line 404
    move-result-object v10

    .line 405
    invoke-virtual {v5, v8, v6, v9, v10}, Landroid/content/ContentResolver;->registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V

    .line 406
    .line 407
    .line 408
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 409
    .line 410
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    const-string/jumbo v8, "private_space_auto_lock"

    .line 415
    .line 416
    .line 417
    const/4 v9, 0x2

    .line 418
    invoke-static {v5, v8, v9, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->setOrUpdateAutoLockPreferenceForPrivateProfile(I)V

    .line 423
    .line 424
    .line 425
    :cond_9
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-eqz v2, :cond_a

    .line 430
    .line 431
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceAutolockOnRestarts()Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-eqz v2, :cond_a

    .line 436
    .line 437
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-eqz v2, :cond_a

    .line 442
    .line 443
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->autoLockPrivateSpace()V

    .line 444
    .line 445
    .line 446
    :cond_a
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 447
    .line 448
    const-class v2, Landroid/os/storage/StorageManager;

    .line 449
    .line 450
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 451
    .line 452
    invoke-interface {v0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 457
    .line 458
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 459
    .line 460
    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 461
    .line 462
    .line 463
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 464
    .line 465
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 466
    .line 467
    const-class v5, Landroid/app/AppOpsManager;

    .line 468
    .line 469
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    check-cast v2, Landroid/app/AppOpsManager;

    .line 474
    .line 475
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 476
    .line 477
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 478
    .line 479
    new-instance v5, Lcom/android/server/pm/StagingManager$Lifecycle;

    .line 480
    .line 481
    iget-object v8, v2, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    .line 482
    .line 483
    invoke-direct {v5, v8}, Lcom/android/server/pm/StagingManager$Lifecycle;-><init>(Landroid/content/Context;)V

    .line 484
    .line 485
    .line 486
    sput-object v2, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    .line 487
    .line 488
    const-class v8, Lcom/android/server/SystemServiceManager;

    .line 489
    .line 490
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    check-cast v8, Lcom/android/server/SystemServiceManager;

    .line 495
    .line 496
    invoke-virtual {v8, v5}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 497
    .line 498
    .line 499
    iget-object v5, v2, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    .line 500
    .line 501
    new-instance v8, Lcom/android/server/pm/StagingManager$2;

    .line 502
    .line 503
    invoke-direct {v8, v2}, Lcom/android/server/pm/StagingManager$2;-><init>(Lcom/android/server/pm/StagingManager;)V

    .line 504
    .line 505
    .line 506
    new-instance v9, Landroid/content/IntentFilter;

    .line 507
    .line 508
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    .line 509
    .line 510
    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 514
    .line 515
    .line 516
    iget-object v2, v2, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    .line 517
    .line 518
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 519
    .line 520
    .line 521
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

    .line 522
    .line 523
    iget-object v5, v2, Lcom/android/server/pm/GentleUpdateHelper;->mContext:Landroid/content/Context;

    .line 524
    .line 525
    const-class v8, Landroid/app/ActivityManager;

    .line 526
    .line 527
    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v5

    .line 531
    check-cast v5, Landroid/app/ActivityManager;

    .line 532
    .line 533
    new-instance v8, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda1;

    .line 534
    .line 535
    invoke-direct {v8, v2}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/GentleUpdateHelper;)V

    .line 536
    .line 537
    .line 538
    const/16 v9, 0x64

    .line 539
    .line 540
    invoke-virtual {v5, v8, v9}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 541
    .line 542
    .line 543
    new-instance v8, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda1;

    .line 544
    .line 545
    invoke-direct {v8, v2}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/GentleUpdateHelper;)V

    .line 546
    .line 547
    .line 548
    const/16 v2, 0x7d

    .line 549
    .line 550
    invoke-virtual {v5, v8, v2}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 551
    .line 552
    .line 553
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 554
    .line 555
    monitor-enter v2

    .line 556
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->readSessionsLocked()V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->expireSessionsLocked()V

    .line 560
    .line 561
    .line 562
    sget-object v5, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 568
    .line 569
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 570
    .line 571
    .line 572
    move-result-object v5

    .line 573
    new-instance v8, Landroid/util/ArraySet;

    .line 574
    .line 575
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 576
    .line 577
    .line 578
    if-eqz v5, :cond_b

    .line 579
    .line 580
    array-length v9, v5

    .line 581
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 582
    .line 583
    .line 584
    invoke-static {v8, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    :cond_b
    move v5, v6

    .line 588
    :goto_7
    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 589
    .line 590
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 591
    .line 592
    .line 593
    move-result v9

    .line 594
    if-ge v5, v9, :cond_c

    .line 595
    .line 596
    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 597
    .line 598
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v9

    .line 602
    check-cast v9, Lcom/android/server/pm/PackageInstallerSession;

    .line 603
    .line 604
    iget v9, v9, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 605
    .line 606
    new-instance v10, Ljava/io/File;

    .line 607
    .line 608
    iget-object v11, v0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 609
    .line 610
    new-instance v12, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    const-string v13, "app_icon."

    .line 613
    .line 614
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    const-string v9, ".png"

    .line 621
    .line 622
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v9

    .line 629
    invoke-direct {v10, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    add-int/lit8 v5, v5, 0x1

    .line 636
    .line 637
    goto :goto_7

    .line 638
    :catchall_2
    move-exception v0

    .line 639
    goto/16 :goto_14

    .line 640
    .line 641
    :cond_c
    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 642
    .line 643
    .line 644
    move-result-object v5

    .line 645
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 646
    .line 647
    .line 648
    move-result v8

    .line 649
    if-eqz v8, :cond_d

    .line 650
    .line 651
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v8

    .line 655
    check-cast v8, Ljava/io/File;

    .line 656
    .line 657
    const-string v9, "PackageInstaller"

    .line 658
    .line 659
    new-instance v10, Ljava/lang/StringBuilder;

    .line 660
    .line 661
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    .line 663
    .line 664
    const-string v11, "Deleting orphan icon "

    .line 665
    .line 666
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v10

    .line 676
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    .line 678
    .line 679
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 680
    .line 681
    .line 682
    goto :goto_8

    .line 683
    :cond_d
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 684
    .line 685
    iget-object v5, v0, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 686
    .line 687
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 688
    .line 689
    .line 690
    invoke-virtual {v0}, Lcom/android/server/pm/utils/RequestThrottle;->runInternal()Z

    .line 691
    .line 692
    .line 693
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 694
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_SPEED_INSTALL:Z

    .line 695
    .line 696
    if-eqz v0, :cond_e

    .line 697
    .line 698
    new-instance v0, Ljava/io/File;

    .line 699
    .line 700
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    const-string v5, "apk-tmp"

    .line 705
    .line 706
    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    if-eqz v2, :cond_e

    .line 714
    .line 715
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 716
    .line 717
    .line 718
    :cond_e
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 719
    .line 720
    iput-boolean v4, v0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 721
    .line 722
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 723
    .line 724
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 725
    .line 726
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->reconcileUsers(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 730
    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    invoke-virtual {v0, v5, v2}, Lcom/android/server/pm/StorageEventHelper;->reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 739
    .line 740
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 741
    .line 742
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 743
    .line 744
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onSystemReady()V

    .line 745
    .line 746
    .line 747
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 748
    .line 749
    if-eqz v0, :cond_f

    .line 750
    .line 751
    const-class v0, Lcom/android/server/pm/SpegService;

    .line 752
    .line 753
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    check-cast v0, Lcom/android/server/pm/SpegService;

    .line 758
    .line 759
    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 760
    .line 761
    if-eqz v0, :cond_f

    .line 762
    .line 763
    iget-object v2, v0, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    .line 764
    .line 765
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    new-instance v5, Lcom/android/server/pm/SpegService$1;

    .line 770
    .line 771
    iget-object v8, v0, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 772
    .line 773
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 774
    .line 775
    invoke-direct {v5, v0, v8, v2}, Lcom/android/server/pm/SpegService$1;-><init>(Lcom/android/server/pm/SpegService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 776
    .line 777
    .line 778
    const-string v0, "device_provisioned"

    .line 779
    .line 780
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    invoke-virtual {v2, v0, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 785
    .line 786
    .line 787
    const-string/jumbo v0, "user_setup_complete"

    .line 788
    .line 789
    .line 790
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    invoke-virtual {v2, v0, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v5, v4}, Lcom/android/server/pm/SpegService$1;->onChange(Z)V

    .line 798
    .line 799
    .line 800
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 801
    .line 802
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    new-instance v10, Landroid/content/IntentFilter;

    .line 806
    .line 807
    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 808
    .line 809
    .line 810
    const-string v2, "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_ON"

    .line 811
    .line 812
    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    const-string v2, "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_OFF"

    .line 816
    .line 817
    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    iget-object v8, v0, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    .line 821
    .line 822
    new-instance v9, Lcom/android/server/pm/SpegService$2;

    .line 823
    .line 824
    invoke-direct {v9, v0}, Lcom/android/server/pm/SpegService$2;-><init>(Lcom/android/server/pm/SpegService;)V

    .line 825
    .line 826
    .line 827
    const-string v11, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    .line 828
    .line 829
    const/4 v12, 0x0

    .line 830
    const/4 v13, 0x2

    .line 831
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 832
    .line 833
    .line 834
    :cond_f
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 835
    .line 836
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 837
    .line 838
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 843
    .line 844
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 845
    .line 846
    invoke-virtual {v2, v4, v4, v6}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    check-cast v2, Ljava/util/ArrayList;

    .line 851
    .line 852
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 853
    .line 854
    .line 855
    move-result v5

    .line 856
    move v8, v6

    .line 857
    :goto_9
    if-ge v8, v5, :cond_11

    .line 858
    .line 859
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v9

    .line 863
    check-cast v9, Landroid/content/pm/UserInfo;

    .line 864
    .line 865
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 866
    .line 867
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 868
    .line 869
    iget-object v10, v10, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 870
    .line 871
    iget-object v10, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 872
    .line 873
    invoke-interface {v10, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v10

    .line 877
    sget-object v11, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 878
    .line 879
    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    move-result v10

    .line 883
    xor-int/2addr v10, v4

    .line 884
    if-eqz v10, :cond_10

    .line 885
    .line 886
    invoke-static {v0, v9}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 891
    .line 892
    goto :goto_9

    .line 893
    :cond_11
    array-length v2, v0

    .line 894
    move v5, v6

    .line 895
    :goto_a
    if-ge v5, v2, :cond_12

    .line 896
    .line 897
    aget v8, v0, v5

    .line 898
    .line 899
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 900
    .line 901
    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->grantDefaultPermissions(I)V

    .line 902
    .line 903
    .line 904
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 905
    .line 906
    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 907
    .line 908
    iget-object v9, v9, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 909
    .line 910
    iget-object v9, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 911
    .line 912
    invoke-interface {v9, v8, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->setDefaultPermissionGrantFingerprint(ILjava/lang/String;)V

    .line 913
    .line 914
    .line 915
    add-int/lit8 v5, v5, 0x1

    .line 916
    .line 917
    goto :goto_a

    .line 918
    :cond_12
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 919
    .line 920
    if-ne v0, v2, :cond_13

    .line 921
    .line 922
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 923
    .line 924
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 925
    .line 926
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 927
    .line 928
    iget-object v0, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;

    .line 929
    .line 930
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 931
    .line 932
    .line 933
    :cond_13
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 934
    .line 935
    if-eqz v0, :cond_1d

    .line 936
    .line 937
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 938
    .line 939
    iget-boolean v2, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    .line 940
    .line 941
    iget-boolean v5, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 942
    .line 943
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 944
    .line 945
    .line 946
    const-string v8, "Monetization Package List: "

    .line 947
    .line 948
    :try_start_4
    iget-object v9, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mBadgeLock:Ljava/lang/Object;

    .line 949
    .line 950
    monitor-enter v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 951
    :try_start_5
    const-string v10, "launcherapps"

    .line 952
    .line 953
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 954
    .line 955
    .line 956
    move-result-object v10

    .line 957
    invoke-static {v10}, Landroid/content/pm/ILauncherApps$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;

    .line 958
    .line 959
    .line 960
    const-class v10, Landroid/content/pm/PackageManagerInternal;

    .line 961
    .line 962
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v10

    .line 966
    check-cast v10, Landroid/content/pm/PackageManagerInternal;

    .line 967
    .line 968
    iput-object v10, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 969
    .line 970
    const-string/jumbo v10, "package"

    .line 971
    .line 972
    .line 973
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 974
    .line 975
    .line 976
    move-result-object v10

    .line 977
    invoke-static {v10}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 978
    .line 979
    .line 980
    move-result-object v10

    .line 981
    iput-object v10, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 982
    .line 983
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->getParsedPackagesList()Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v10

    .line 987
    const-string v11, "Monetization"

    .line 988
    .line 989
    if-eqz v10, :cond_14

    .line 990
    .line 991
    move-object v12, v10

    .line 992
    goto :goto_b

    .line 993
    :cond_14
    const-string v12, "NULL"

    .line 994
    .line 995
    :goto_b
    invoke-virtual {v8, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v8

    .line 999
    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .line 1001
    .line 1002
    iget-object v8, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mContext:Landroid/content/Context;

    .line 1003
    .line 1004
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v8

    .line 1008
    const-string v11, "MONETIZATION_PACKAGES"

    .line 1009
    .line 1010
    invoke-static {v8, v11}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v8

    .line 1014
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v11

    .line 1018
    if-nez v11, :cond_15

    .line 1019
    .line 1020
    const-string v11, ";"

    .line 1021
    .line 1022
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v8

    .line 1026
    array-length v11, v8

    .line 1027
    move v12, v6

    .line 1028
    :goto_c
    if-ge v12, v11, :cond_15

    .line 1029
    .line 1030
    aget-object v13, v8, v12

    .line 1031
    .line 1032
    invoke-virtual {v0, v13, v6, v4, v4}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    .line 1033
    .line 1034
    .line 1035
    add-int/lit8 v12, v12, 0x1

    .line 1036
    .line 1037
    goto :goto_c

    .line 1038
    :cond_15
    iget-object v8, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1039
    .line 1040
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1041
    .line 1042
    .line 1043
    move-result v8

    .line 1044
    if-eqz v8, :cond_16

    .line 1045
    .line 1046
    iget-object v8, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mContext:Landroid/content/Context;

    .line 1047
    .line 1048
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v8

    .line 1052
    const-string v11, "galaxy_app_store_india_nudge_packages"

    .line 1053
    .line 1054
    invoke-static {v8, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v8

    .line 1058
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1059
    .line 1060
    .line 1061
    move-result v11

    .line 1062
    if-nez v11, :cond_16

    .line 1063
    .line 1064
    const-string v11, ";"

    .line 1065
    .line 1066
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v8

    .line 1070
    array-length v11, v8

    .line 1071
    move v12, v6

    .line 1072
    :goto_d
    if-ge v12, v11, :cond_16

    .line 1073
    .line 1074
    aget-object v13, v8, v12

    .line 1075
    .line 1076
    invoke-virtual {v0, v13, v6, v6, v4}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    .line 1077
    .line 1078
    .line 1079
    add-int/lit8 v12, v12, 0x1

    .line 1080
    .line 1081
    goto :goto_d

    .line 1082
    :catchall_3
    move-exception v0

    .line 1083
    goto/16 :goto_11

    .line 1084
    .line 1085
    :cond_16
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v8

    .line 1089
    const/4 v11, 0x4

    .line 1090
    if-nez v8, :cond_1b

    .line 1091
    .line 1092
    const-string v8, ";"

    .line 1093
    .line 1094
    invoke-virtual {v10, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v8

    .line 1098
    array-length v10, v8

    .line 1099
    move v12, v6

    .line 1100
    move v13, v12

    .line 1101
    :goto_e
    if-ge v12, v10, :cond_1a

    .line 1102
    .line 1103
    aget-object v14, v8, v12

    .line 1104
    .line 1105
    const-string v15, "-"

    .line 1106
    .line 1107
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1108
    .line 1109
    .line 1110
    move-result v15

    .line 1111
    if-eq v15, v7, :cond_17

    .line 1112
    .line 1113
    invoke-virtual {v14, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v14

    .line 1117
    :cond_17
    iget-object v15, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsForBadge:Landroid/util/ArraySet;

    .line 1118
    .line 1119
    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1120
    .line 1121
    .line 1122
    if-eqz v2, :cond_18

    .line 1123
    .line 1124
    :try_start_6
    iget-object v15, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1125
    .line 1126
    invoke-virtual {v15, v6, v14}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    .line 1127
    .line 1128
    .line 1129
    move-result v15
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1130
    goto :goto_f

    .line 1131
    :catch_0
    move v15, v6

    .line 1132
    :goto_f
    if-eqz v15, :cond_18

    .line 1133
    .line 1134
    :try_start_7
    const-string v13, "Monetization"

    .line 1135
    .line 1136
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1139
    .line 1140
    .line 1141
    const-string v7, "Monetized pkg: "

    .line 1142
    .line 1143
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    .line 1149
    const-string v7, " launched for user"

    .line 1150
    .line 1151
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v7

    .line 1158
    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual {v0, v14, v6, v4, v4}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    .line 1162
    .line 1163
    .line 1164
    move v13, v4

    .line 1165
    :cond_18
    const-string v7, "com.truecaller"

    .line 1166
    .line 1167
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v7

    .line 1171
    if-eqz v7, :cond_19

    .line 1172
    .line 1173
    if-eqz v5, :cond_19

    .line 1174
    .line 1175
    invoke-virtual {v0, v11, v14}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->modifyAppState(ILjava/lang/String;)V

    .line 1176
    .line 1177
    .line 1178
    iput-boolean v6, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mIsTruecallerSettingsUpdated:Z

    .line 1179
    .line 1180
    :cond_19
    add-int/lit8 v12, v12, 0x1

    .line 1181
    .line 1182
    const/4 v7, -0x1

    .line 1183
    goto :goto_e

    .line 1184
    :cond_1a
    if-eqz v13, :cond_1c

    .line 1185
    .line 1186
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->writeSettingsForMonetization(Z)V

    .line 1187
    .line 1188
    .line 1189
    goto :goto_10

    .line 1190
    :cond_1b
    const-string v2, "SUP"

    .line 1191
    .line 1192
    iget-object v4, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mSalesCode:Ljava/lang/String;

    .line 1193
    .line 1194
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v2

    .line 1198
    if-eqz v2, :cond_1c

    .line 1199
    .line 1200
    if-eqz v5, :cond_1c

    .line 1201
    .line 1202
    const-string v2, "com.truecaller"

    .line 1203
    .line 1204
    invoke-virtual {v0, v11, v2}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->modifyAppState(ILjava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    iput-boolean v6, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mIsTruecallerSettingsUpdated:Z

    .line 1208
    .line 1209
    :cond_1c
    :goto_10
    monitor-exit v9

    .line 1210
    goto :goto_12

    .line 1211
    :goto_11
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1212
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1213
    :catch_1
    move-exception v0

    .line 1214
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1215
    .line 1216
    const-string v4, "Monetization Exception: "

    .line 1217
    .line 1218
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v0

    .line 1225
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v0

    .line 1232
    const/4 v2, 0x5

    .line 1233
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    :cond_1d
    :goto_12
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 1237
    .line 1238
    if-eqz v0, :cond_1e

    .line 1239
    .line 1240
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1241
    .line 1242
    new-instance v2, Lcom/android/server/pm/PackageManagerService$5;

    .line 1243
    .line 1244
    const/4 v4, 0x0

    .line 1245
    invoke-direct {v2, v1, v4}, Lcom/android/server/pm/PackageManagerService$5;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    .line 1246
    .line 1247
    .line 1248
    new-instance v4, Landroid/content/IntentFilter;

    .line 1249
    .line 1250
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    .line 1251
    .line 1252
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1256
    .line 1257
    .line 1258
    :cond_1e
    new-instance v0, Landroid/content/IntentFilter;

    .line 1259
    .line 1260
    const-string v2, "android.intent.action.OVERLAY_CHANGED"

    .line 1261
    .line 1262
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1263
    .line 1264
    .line 1265
    const-string/jumbo v2, "package"

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1272
    .line 1273
    new-instance v4, Lcom/android/server/pm/PackageManagerService$5;

    .line 1274
    .line 1275
    const/4 v5, 0x1

    .line 1276
    invoke-direct {v4, v1, v5}, Lcom/android/server/pm/PackageManagerService$5;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1280
    .line 1281
    .line 1282
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 1283
    .line 1284
    iget-object v0, v2, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    .line 1285
    .line 1286
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    const v4, 0x1040320

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v0

    .line 1297
    iput-object v0, v2, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    .line 1298
    .line 1299
    iget-object v0, v2, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    .line 1300
    .line 1301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1302
    .line 1303
    .line 1304
    move-result v0

    .line 1305
    const-string v4, "PackageManager.ModuleInfoProvider"

    .line 1306
    .line 1307
    if-eqz v0, :cond_1f

    .line 1308
    .line 1309
    const-string v0, "No configured module metadata provider."

    .line 1310
    .line 1311
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    .line 1313
    .line 1314
    goto :goto_13

    .line 1315
    :cond_1f
    :try_start_9
    iget-object v0, v2, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1316
    .line 1317
    if-nez v0, :cond_20

    .line 1318
    .line 1319
    const-string/jumbo v0, "package"

    .line 1320
    .line 1321
    .line 1322
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v0

    .line 1326
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    iput-object v0, v2, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1331
    .line 1332
    :cond_20
    iget-object v0, v2, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1333
    .line 1334
    iget-object v5, v2, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    .line 1335
    .line 1336
    const-wide/16 v7, 0x80

    .line 1337
    .line 1338
    invoke-interface {v0, v5, v7, v8, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    iget-object v5, v2, Lcom/android/server/pm/ModuleInfoProvider;->mContext:Landroid/content/Context;

    .line 1343
    .line 1344
    iget-object v7, v2, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    .line 1345
    .line 1346
    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v5

    .line 1350
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v4
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    .line 1354
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1355
    .line 1356
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1357
    .line 1358
    const-string v5, "android.content.pm.MODULE_METADATA"

    .line 1359
    .line 1360
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1361
    .line 1362
    .line 1363
    move-result v0

    .line 1364
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v0

    .line 1368
    invoke-virtual {v2, v0, v4}, Lcom/android/server/pm/ModuleInfoProvider;->loadModuleMetadata(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V

    .line 1369
    .line 1370
    .line 1371
    goto :goto_13

    .line 1372
    :catch_2
    move-exception v0

    .line 1373
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    const-string v7, "Unable to discover metadata package: "

    .line 1376
    .line 1377
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1378
    .line 1379
    .line 1380
    iget-object v2, v2, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    .line 1381
    .line 1382
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v2

    .line 1389
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1390
    .line 1391
    .line 1392
    :goto_13
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 1393
    .line 1394
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->restoreAndApplyStagedSessionIfNeeded()V

    .line 1395
    .line 1396
    .line 1397
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 1398
    .line 1399
    const-string/jumbo v0, "package_manager_service"

    .line 1400
    .line 1401
    .line 1402
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1403
    .line 1404
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 1405
    .line 1406
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;

    .line 1407
    .line 1408
    invoke-direct {v3, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1409
    .line 1410
    .line 1411
    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v1, v6}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 1415
    .line 1416
    .line 1417
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getDexUseManagerLocal()Lcom/android/server/art/DexUseManagerLocal;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v0

    .line 1421
    if-eqz v0, :cond_21

    .line 1422
    .line 1423
    invoke-virtual {v0}, Lcom/android/server/art/DexUseManagerLocal;->systemReady()V

    .line 1424
    .line 1425
    .line 1426
    :cond_21
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackageInterceptor:Lcom/android/server/pm/FrozenPackageInterceptor;

    .line 1427
    .line 1428
    if-eqz v0, :cond_22

    .line 1429
    .line 1430
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1431
    .line 1432
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v2

    .line 1436
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1437
    .line 1438
    iget-object v0, v0, Lcom/android/server/pm/FrozenPackageInterceptor;->mActivityInterceptorCallback:Lcom/android/server/pm/FrozenPackageInterceptor$1;

    .line 1439
    .line 1440
    const/4 v3, 0x6

    .line 1441
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    .line 1442
    .line 1443
    .line 1444
    :cond_22
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    .line 1445
    .line 1446
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->onSystemReady()V

    .line 1447
    .line 1448
    .line 1449
    return-void

    .line 1450
    :goto_14
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1451
    throw v0

    .line 1452
    :catchall_4
    move-exception v0

    .line 1453
    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1454
    throw v0

    .line 1455
    :goto_15
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1456
    throw v0

    .line 1457
    :goto_16
    :try_start_d
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1458
    throw v0
.end method

.method public final throwSystemRequiredPackageState(Lcom/android/server/pm/ComputerLocked;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-wide/32 v3, 0x1e0200

    .line 2
    .line 3
    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p1

    .line 6
    move-object v1, p2

    .line 7
    move-object v2, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    :try_start_0
    const-string v3, "ApplicationPolicy"

    .line 68
    .line 69
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    const/16 v3, 0x14

    .line 76
    .line 77
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_1

    .line 98
    .line 99
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Ljava/util/Map$Entry;

    .line 104
    .line 105
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 110
    .line 111
    iget v5, v5, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 112
    .line 113
    if-eq v5, v3, :cond_0

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 121
    .line 122
    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_0
    move-exception p0

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v4, "Fail to find Required Package Disabler : "

    .line 129
    .line 130
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 144
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v4, "RequiredPackage can not be queried. pkg: "

    .line 148
    .line 149
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 153
    .line 154
    const-string v4, ", enabled: "

    .line 155
    .line 156
    const-string v5, ", lastDisableCaller: "

    .line 157
    .line 158
    invoke-static {v2, p1, v4, v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p1, ", isHidden: "

    .line 165
    .line 166
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string p1, ", isInstalled: "

    .line 173
    .line 174
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p1, ", isSuspended: "

    .line 181
    .line 182
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p0

    .line 196
    :cond_2
    return-void
.end method

.method public final unsuspendForSuspendingPackage(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-interface {p2}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v2, v1, [Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, [Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1, p3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;

    .line 26
    .line 27
    invoke-direct {v2, p3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;-><init>(Landroid/content/pm/UserPackage;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/app/admin/flags/Flags;->crossUserSuspensionEnabledRo()Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 35
    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    if-nez p4, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    array-length p1, p0

    .line 48
    :goto_0
    if-ge v1, p1, :cond_2

    .line 49
    .line 50
    aget p3, p0, v1

    .line 51
    .line 52
    invoke-virtual {v3, p2, v0, v2, p3}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    invoke-virtual {v3, p2, v0, v2, p1}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 7

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    invoke-interface {v2, v1, v3, v4, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const-string v4, "The calling UID ("

    .line 26
    .line 27
    if-eqz v3, :cond_9

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const v5, 0x104038a

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_8

    .line 43
    .line 44
    const-wide/32 v5, 0x100000

    .line 45
    .line 46
    .line 47
    invoke-interface {v2, v3, v5, v6, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v5, -0x1

    .line 52
    if-eq v3, v5, :cond_7

    .line 53
    .line 54
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_7

    .line 59
    .line 60
    invoke-interface {v2, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 67
    .line 68
    if-eqz v3, :cond_6

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_0

    .line 75
    .line 76
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 77
    .line 78
    iget-boolean v3, v3, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 79
    .line 80
    if-eqz v3, :cond_6

    .line 81
    .line 82
    :cond_0
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-interface {v2, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->componentExists(Landroid/content/ComponentName;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    invoke-interface {v0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const/4 v2, 0x0

    .line 101
    if-nez v0, :cond_1

    .line 102
    .line 103
    move-object v3, v2

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v3, Ljava/lang/String;

    .line 108
    .line 109
    :goto_0
    if-nez v0, :cond_2

    .line 110
    .line 111
    move-object v0, v2

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Ljava/lang/Integer;

    .line 116
    .line 117
    :goto_1
    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_3

    .line 122
    .line 123
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda0;

    .line 131
    .line 132
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 136
    .line 137
    .line 138
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p2, p4, v1, p1}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponent(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 148
    .line 149
    const/4 p1, 0x1

    .line 150
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-nez p2, :cond_4

    .line 155
    .line 156
    const-wide/16 p2, 0x3e8

    .line 157
    .line 158
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    .line 160
    .line 161
    :cond_4
    return-void

    .line 162
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 163
    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string p3, "Component "

    .line 167
    .line 168
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string p1, " not found"

    .line 175
    .line 176
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p0

    .line 187
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 188
    .line 189
    const-string p2, "Changing the label is not allowed for "

    .line 190
    .line 191
    invoke-static {p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 200
    .line 201
    const-string p1, ") is not allowed to change a component\'s label or icon"

    .line 202
    .line 203
    invoke-static {v0, v4, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0

    .line 211
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    .line 212
    .line 213
    const-string p1, "There is no package defined as allowed to change a component\'s label or icon"

    .line 214
    .line 215
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p0

    .line 219
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    .line 220
    .line 221
    const-string p1, ") does not match the target UID"

    .line 222
    .line 223
    invoke-static {v0, v4, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p0

    .line 231
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 232
    .line 233
    const-string p1, "Must specify a component"

    .line 234
    .line 235
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p0
.end method

.method public final updateInstantAppInstallerLocked(Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    move-object/from16 v2, p1

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 v1, 0x1

    .line 25
    const-string v2, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    new-array v5, v5, [Ljava/lang/String;

    .line 34
    .line 35
    const-string v6, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE_TEST"

    .line 36
    .line 37
    aput-object v6, v5, v3

    .line 38
    .line 39
    aput-object v2, v5, v1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-array v5, v1, [Ljava/lang/String;

    .line 43
    .line 44
    aput-object v2, v5, v3

    .line 45
    .line 46
    :goto_0
    if-eqz v4, :cond_2

    .line 47
    .line 48
    move v2, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/high16 v2, 0x100000

    .line 51
    .line 52
    :goto_1
    const/high16 v6, -0x7ff40000

    .line 53
    .line 54
    or-int/2addr v2, v6

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    new-instance v13, Landroid/content/Intent;

    .line 60
    .line 61
    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v6, "android.intent.category.DEFAULT"

    .line 65
    .line 66
    invoke-virtual {v13, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    new-instance v6, Ljava/io/File;

    .line 70
    .line 71
    const-string v7, "foo.apk"

    .line 72
    .line 73
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const-string v7, "application/vnd.android.package-archive"

    .line 81
    .line 82
    invoke-virtual {v13, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    array-length v14, v5

    .line 86
    move v11, v3

    .line 87
    const/4 v6, 0x0

    .line 88
    :goto_2
    const-string v9, "PackageManager"

    .line 89
    .line 90
    sget-boolean v16, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    .line 91
    .line 92
    if-ge v11, v14, :cond_4

    .line 93
    .line 94
    aget-object v10, v5, v11

    .line 95
    .line 96
    invoke-virtual {v13, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    int-to-long v7, v2

    .line 100
    const/16 v17, 0x0

    .line 101
    .line 102
    const-string v18, "application/vnd.android.package-archive"

    .line 103
    .line 104
    move-object v6, v12

    .line 105
    move-wide/from16 v19, v7

    .line 106
    .line 107
    move-object v7, v13

    .line 108
    move-object/from16 v8, v18

    .line 109
    .line 110
    move-object v15, v9

    .line 111
    move-object v1, v10

    .line 112
    move-wide/from16 v9, v19

    .line 113
    .line 114
    move/from16 v19, v11

    .line 115
    .line 116
    move/from16 v11, v17

    .line 117
    .line 118
    invoke-interface/range {v6 .. v11}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_5

    .line 127
    .line 128
    if-eqz v16, :cond_3

    .line 129
    .line 130
    const-string v7, "Instant App installer not found with "

    .line 131
    .line 132
    invoke-static {v7, v1, v15}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    add-int/lit8 v11, v19, 0x1

    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    goto :goto_2

    .line 139
    :cond_4
    move-object v15, v9

    .line 140
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_8

    .line 149
    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 155
    .line 156
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 157
    .line 158
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 159
    .line 160
    const-string v5, "android.permission.INSTALL_PACKAGES"

    .line 161
    .line 162
    invoke-virtual {v0, v5, v2, v3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_6

    .line 167
    .line 168
    if-eqz v4, :cond_7

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_9

    .line 180
    .line 181
    const/4 v1, 0x0

    .line 182
    goto :goto_4

    .line 183
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    const/4 v2, 0x1

    .line 188
    if-ne v1, v2, :cond_d

    .line 189
    .line 190
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 195
    .line 196
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 201
    .line 202
    :goto_4
    if-nez v1, :cond_b

    .line 203
    .line 204
    if-eqz v16, :cond_a

    .line 205
    .line 206
    const-string v1, "Clear ephemeral installer activity"

    .line 207
    .line 208
    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    :cond_a
    const/4 v1, 0x0

    .line 212
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 213
    .line 214
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChange()V

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_b
    if-eqz v16, :cond_c

    .line 219
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v3, "Set ephemeral installer activity: "

    .line 223
    .line 224
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    :cond_c
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 242
    .line 243
    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 244
    .line 245
    or-int/lit16 v2, v2, 0x120

    .line 246
    .line 247
    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 248
    .line 249
    const/4 v2, 0x1

    .line 250
    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 251
    .line 252
    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 253
    .line 254
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 255
    .line 256
    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 257
    .line 258
    iput v2, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 259
    .line 260
    iput v2, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 261
    .line 262
    iput-boolean v2, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 263
    .line 264
    const v1, 0x588000

    .line 265
    .line 266
    .line 267
    iput v1, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 268
    .line 269
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChange()V

    .line 270
    .line 271
    .line 272
    :goto_5
    return-void

    .line 273
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 274
    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v2, "There must be at most one ephemeral installer; found "

    .line 278
    .line 279
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v0
.end method

.method public final updateLocaleOverlaysForPackage(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;)V
    .locals 9

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    const-string v0, "PackageManager"

    .line 4
    .line 5
    const-string/jumbo v1, "updateLocaleOverlaysForPackage() called with null packageName"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    move-object v2, p0

    .line 13
    move v3, p1

    .line 14
    move v4, p2

    .line 15
    move-object v5, p3

    .line 16
    move v6, p4

    .line 17
    move-object v7, p5

    .line 18
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :try_start_0
    new-instance v8, Lcom/android/server/pm/OverlayChangeObserverImpl;

    .line 29
    .line 30
    move-object v1, v8

    .line 31
    move v2, p1

    .line 32
    move v3, p2

    .line 33
    move-object v4, p3

    .line 34
    move v5, p4

    .line 35
    move-object v6, p5

    .line 36
    move-object v7, p0

    .line 37
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/OverlayChangeObserverImpl;-><init>(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    iget-object v2, v8, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mTimeoutRunnable:Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;

    .line 43
    .line 44
    const-wide/16 v3, 0x7530

    .line 45
    .line 46
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p5, p1, p4, v8}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->applyLocalesForPackage(Ljava/lang/String;IILcom/android/server/pm/OverlayChangeObserverImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const/4 v7, 0x0

    .line 55
    move-object v1, p0

    .line 56
    move v2, p1

    .line 57
    move v3, p2

    .line 58
    move-object v4, p3

    .line 59
    move v5, p4

    .line 60
    move-object v6, p5

    .line 61
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method public final updatePackagesIfNeeded()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "Only the system can request package update"

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move v0, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    move v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->hasBcpApexesChanged()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    const/16 v0, 0xd

    .line 36
    .line 37
    :goto_0
    invoke-static {v0}, Lcom/android/server/pm/dex/DexoptOptions;->convertToArtServiceDexoptReason(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v4, "Starting boot dexopt for reason "

    .line 42
    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v4, "PackageManager"

    .line 48
    .line 49
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    iput-wide v4, p0, Lcom/android/server/pm/DexOptHelper;->mBootDexoptStartTime:J

    .line 57
    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v0}, Lcom/android/server/pm/dex/DexoptOptions;->convertToArtServiceDexoptReason(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    new-instance v8, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda11;

    .line 71
    .line 72
    invoke-direct {v8, p0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/DexOptHelper;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v7, v1, v8}, Lcom/android/server/art/ArtManagerLocal;->onBoot(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x4

    .line 79
    if-ne v0, v2, :cond_4

    .line 80
    .line 81
    const-string v1, "DEXOPT to compile designatedPkgs for boot-after-ota"

    .line 82
    .line 83
    invoke-static {p0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v1, Lcom/android/server/pm/DexOptHelper;->designatedPkgs:[Ljava/lang/String;

    .line 87
    .line 88
    :goto_1
    const/4 v2, 0x5

    .line 89
    if-ge v3, v2, :cond_4

    .line 90
    .line 91
    aget-object v2, v1, v3

    .line 92
    .line 93
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    :try_start_0
    new-instance v7, Lcom/android/server/art/model/DexoptParams$Builder;

    .line 102
    .line 103
    const-string v8, "boot-after-ota"

    .line 104
    .line 105
    invoke-direct {v7, v8}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string/jumbo v8, "speed-profile"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v8}, Lcom/android/server/art/model/DexoptParams$Builder;->setCompilerFilter(Ljava/lang/String;)Lcom/android/server/art/model/DexoptParams$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {v8, v6, v2, v7}, Lcom/android/server/art/ArtManagerLocal;->dexoptPackage(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/DexoptResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    if-eqz v6, :cond_2

    .line 127
    .line 128
    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 129
    .line 130
    .line 131
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    if-eqz v6, :cond_3

    .line 136
    .line 137
    :try_start_1
    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catchall_1
    move-exception v0

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    :goto_2
    throw p0

    .line 146
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v2, "Finish boot dexopt for "

    .line 149
    .line 150
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Lcom/android/server/pm/dex/DexoptOptions;->convertToArtServiceDexoptReason(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v0, " takes "

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 166
    .line 167
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 168
    .line 169
    .line 170
    move-result-wide v2

    .line 171
    sub-long/2addr v2, v4

    .line 172
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 173
    .line 174
    .line 175
    move-result-wide v2

    .line 176
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string/jumbo v0, "ms"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_5
    return-void
.end method

.method public final updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    array-length v1, p2

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_3

    .line 12
    .line 13
    aget v2, p2, v1

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mUserIdToSequenceToPackage:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/util/SparseArray;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    new-instance v3, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mUserIdToSequenceToPackage:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumbers:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Ljava/util/Map;

    .line 45
    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    new-instance v4, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v5, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumbers:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/Integer;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget v2, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 74
    .line 75
    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget v2, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 79
    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    add-int/lit8 v1, v1, -0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    iget p1, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 91
    .line 92
    add-int/lit8 p1, p1, 0x1

    .line 93
    .line 94
    iput p1, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 95
    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method

.method public final verifyHoldLockToken(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "holdLock:"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-ne p1, p0, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 33
    .line 34
    const-string p1, "Invalid holdLock() token"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 41
    .line 42
    const-string/jumbo p1, "null holdLockToken"

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 50
    .line 51
    const-string p1, "holdLock requires a debuggable build"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v3, p0

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v7, "System app: "

    .line 15
    .line 16
    const-string v8, "Downgrade detected: "

    .line 17
    .line 18
    const-string v9, "Downgrade detected on app uninstalled with DELETE_KEEP_DATA: "

    .line 19
    .line 20
    const-string v5, "Required installed version code was "

    .line 21
    .line 22
    const-string v6, "Required installed version code was "

    .line 23
    .line 24
    const-string v10, "Required installed version code was "

    .line 25
    .line 26
    iget-object v11, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 27
    .line 28
    if-nez v11, :cond_0

    .line 29
    .line 30
    const-string v0, "Package verifiers are not set"

    .line 31
    .line 32
    const/16 v1, -0x16

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_0
    const/high16 v11, 0x20000

    .line 45
    .line 46
    and-int/2addr v11, v4

    .line 47
    const/4 v12, 0x0

    .line 48
    const/4 v13, 0x1

    .line 49
    const-wide/16 v14, -0x1

    .line 50
    .line 51
    const/16 v16, -0x19

    .line 52
    .line 53
    const/16 v17, -0x79

    .line 54
    .line 55
    if-eqz v11, :cond_5

    .line 56
    .line 57
    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-wide/32 v6, 0x40000000

    .line 66
    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    invoke-interface {v3, v5, v6, v7, v8}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v6, "PackageManager"

    .line 74
    .line 75
    if-nez v3, :cond_1

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v1, "Attempting to install new APEX package "

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    const/16 v1, -0x17

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_1
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 107
    .line 108
    .line 109
    move-result-wide v9

    .line 110
    cmp-long v7, v1, v14

    .line 111
    .line 112
    if-eqz v7, :cond_2

    .line 113
    .line 114
    cmp-long v7, v9, v1

    .line 115
    .line 116
    if-eqz v7, :cond_2

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v3, "Installed version of APEX package "

    .line 121
    .line 122
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v3, " does not match required. Active version: "

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v3, " required: "

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :cond_2
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 162
    .line 163
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 164
    .line 165
    and-int/lit8 v1, v1, 0x2

    .line 166
    .line 167
    if-eqz v1, :cond_3

    .line 168
    .line 169
    move v8, v13

    .line 170
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    .line 171
    .line 172
    .line 173
    move-result-wide v0

    .line 174
    invoke-static {v4, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_4

    .line 179
    .line 180
    cmp-long v2, v0, v9

    .line 181
    .line 182
    if-gez v2, :cond_4

    .line 183
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v3, "Downgrade of APEX package "

    .line 187
    .line 188
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v3, " is not allowed. Active version: "

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v3, " attempted: "

    .line 203
    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_5
    iget-object v11, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 238
    .line 239
    iget-object v12, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 240
    .line 241
    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 242
    .line 243
    monitor-enter v12

    .line 244
    :try_start_0
    iget-object v13, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 245
    .line 246
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 247
    .line 248
    invoke-virtual {v13, v11}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 249
    .line 250
    .line 251
    move-result-object v13

    .line 252
    if-nez v13, :cond_7

    .line 253
    .line 254
    cmp-long v0, v1, v14

    .line 255
    .line 256
    if-eqz v0, :cond_6

    .line 257
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v1, " but package is not installed"

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    const-string v1, "PackageManager"

    .line 276
    .line 277
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    monitor-exit v12

    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    :catchall_0
    move-exception v0

    .line 292
    goto/16 :goto_2

    .line 293
    .line 294
    :cond_6
    const/4 v0, 0x1

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    const/4 v1, 0x0

    .line 300
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    monitor-exit v12

    .line 305
    goto/16 :goto_1

    .line 306
    .line 307
    :cond_7
    iget-object v10, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 308
    .line 309
    cmp-long v14, v1, v14

    .line 310
    .line 311
    if-eqz v14, :cond_9

    .line 312
    .line 313
    if-nez v10, :cond_8

    .line 314
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v1, " but package is not installed"

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    const-string v1, "PackageManager"

    .line 333
    .line 334
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    monitor-exit v12

    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :cond_8
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 349
    .line 350
    .line 351
    move-result-wide v14

    .line 352
    cmp-long v6, v14, v1

    .line 353
    .line 354
    if-eqz v6, :cond_9

    .line 355
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v1, " but actual installed version is "

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 370
    .line 371
    .line 372
    move-result-wide v1

    .line 373
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    const-string v1, "PackageManager"

    .line 381
    .line 382
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    monitor-exit v12

    .line 394
    goto/16 :goto_1

    .line 395
    .line 396
    :cond_9
    if-nez v10, :cond_a

    .line 397
    .line 398
    const/16 v1, 0x20

    .line 399
    .line 400
    invoke-virtual {v13, v1}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    .line 405
    .line 406
    .line 407
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    if-nez v1, :cond_d

    .line 409
    .line 410
    :try_start_1
    iget-wide v1, v13, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 411
    .line 412
    iget v3, v13, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    .line 413
    .line 414
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    move-object/from16 v6, p1

    .line 423
    .line 424
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(JI[Ljava/lang/String;[ILandroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    .line 426
    .line 427
    goto/16 :goto_0

    .line 428
    .line 429
    :catch_0
    move-exception v0

    .line 430
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    const-string v1, "PackageManager"

    .line 447
    .line 448
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    monitor-exit v12

    .line 460
    goto/16 :goto_1

    .line 461
    .line 462
    :cond_a
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->isSdkLibrary()Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-nez v1, :cond_d

    .line 467
    .line 468
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    .line 473
    .line 474
    .line 475
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    if-nez v1, :cond_b

    .line 477
    .line 478
    :try_start_3
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 479
    .line 480
    .line 481
    move-result-wide v1

    .line 482
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    move-object/from16 v6, p1

    .line 495
    .line 496
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(JI[Ljava/lang/String;[ILandroid/content/pm/PackageInfoLite;)V
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    .line 498
    .line 499
    goto/16 :goto_0

    .line 500
    .line 501
    :catch_1
    move-exception v0

    .line 502
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    const-string v1, "PackageManager"

    .line 519
    .line 520
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    monitor-exit v12

    .line 532
    goto :goto_1

    .line 533
    :cond_b
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    if-eqz v1, :cond_d

    .line 538
    .line 539
    iget-object v1, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 540
    .line 541
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 542
    .line 543
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    if-eqz v1, :cond_c

    .line 553
    .line 554
    iget-object v10, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 555
    .line 556
    :cond_c
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 557
    .line 558
    if-nez v1, :cond_d

    .line 559
    .line 560
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    .line 561
    .line 562
    .line 563
    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 564
    if-nez v1, :cond_d

    .line 565
    .line 566
    :try_start_5
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 567
    .line 568
    .line 569
    move-result-wide v1

    .line 570
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    move-object/from16 v6, p1

    .line 583
    .line 584
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(JI[Ljava/lang/String;[ILandroid/content/pm/PackageInfoLite;)V
    :try_end_5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 585
    .line 586
    .line 587
    goto :goto_0

    .line 588
    :catch_2
    move-exception v0

    .line 589
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    const-string v2, " cannot be downgraded to older than its preloaded version on the system image. "

    .line 598
    .line 599
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    const-string v1, "PackageManager"

    .line 614
    .line 615
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    monitor-exit v12

    .line 627
    goto :goto_1

    .line 628
    :cond_d
    :goto_0
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 629
    const/4 v0, 0x1

    .line 630
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    const/4 v1, 0x0

    .line 635
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    :goto_1
    return-object v0

    .line 640
    :goto_2
    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 641
    throw v0
.end method

.method public final waitForAppDataPrepared()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "prepackageinstaller"

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    :try_start_0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4, v1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 21
    .line 22
    iget-object v4, v0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 23
    .line 24
    iget-object v5, v0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 27
    .line 28
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->runPrePackageInstaller()Ljava/util/concurrent/Future;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const-string/jumbo v4, "wait for pre-installing"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v4}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto/16 :goto_8

    .line 49
    .line 50
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "Install took "

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    sub-long/2addr v4, v2

    .line 69
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string/jumbo v1, "ms"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "PrePackageInstaller"

    .line 83
    .line 84
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    const/4 v2, 0x0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const-string v3, "/system/etc/system_to_data_app_list.xml"

    .line 99
    .line 100
    invoke-static {v3}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 105
    .line 106
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 113
    .line 114
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 115
    .line 116
    monitor-enter v5

    .line 117
    :try_start_1
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 118
    .line 119
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 120
    .line 121
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 122
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    move v7, v2

    .line 127
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_2

    .line 132
    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    check-cast v8, Ljava/lang/String;

    .line 138
    .line 139
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 140
    .line 141
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 142
    .line 143
    iget-object v9, v9, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 144
    .line 145
    iget-object v9, v9, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 146
    .line 147
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 152
    .line 153
    if-eqz v9, :cond_1

    .line 154
    .line 155
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 156
    .line 157
    if-nez v10, :cond_1

    .line 158
    .line 159
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-nez v10, :cond_1

    .line 164
    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v10, "Clear non-installed migration package "

    .line 171
    .line 172
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    const/4 v8, 0x5

    .line 183
    invoke-static {v8, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 187
    .line 188
    invoke-virtual {v7, v9, v4}, Lcom/android/server/pm/RemovePackageHelper;->removePackageData(Lcom/android/server/pm/PackageSetting;[I)V

    .line 189
    .line 190
    .line 191
    move v7, v1

    .line 192
    goto :goto_1

    .line 193
    :catchall_1
    move-exception p0

    .line 194
    goto :goto_2

    .line 195
    :cond_2
    if-eqz v7, :cond_3

    .line 196
    .line 197
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 198
    .line 199
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 206
    .line 207
    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;Z)V

    .line 208
    .line 209
    .line 210
    :cond_3
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 211
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 212
    goto :goto_4

    .line 213
    :catchall_2
    move-exception p0

    .line 214
    goto :goto_3

    .line 215
    :goto_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 216
    :try_start_5
    throw p0

    .line 217
    :goto_3
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 218
    throw p0

    .line 219
    :cond_4
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 220
    .line 221
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 222
    .line 223
    iget-object v4, v3, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 224
    .line 225
    iget-object v5, v3, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 226
    .line 227
    iget-object v3, v3, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 228
    .line 229
    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    check-cast v3, Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    .line 234
    .line 235
    iget-boolean v4, v3, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsOmcInit:Z

    .line 236
    .line 237
    if-nez v4, :cond_6

    .line 238
    .line 239
    iget-boolean v3, v3, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    .line 240
    .line 241
    if-eqz v3, :cond_5

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_5
    move v1, v2

    .line 245
    :cond_6
    :goto_5
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 246
    .line 247
    const-string v4, "com.sec.android.app.samsungapps"

    .line 248
    .line 249
    const-string/jumbo v5, "ro.csc.sales_code"

    .line 250
    .line 251
    .line 252
    const-string/jumbo v6, "persist.omc.sales_code"

    .line 253
    .line 254
    .line 255
    const-string v7, "android:system_alert_window"

    .line 256
    .line 257
    if-nez v0, :cond_7

    .line 258
    .line 259
    if-eqz v1, :cond_a

    .line 260
    .line 261
    :cond_7
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    if-eqz v9, :cond_8

    .line 270
    .line 271
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v9

    .line 279
    if-nez v9, :cond_a

    .line 280
    .line 281
    const-string v9, "VZW"

    .line 282
    .line 283
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    if-eqz v8, :cond_a

    .line 288
    .line 289
    new-instance v8, Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .line 293
    .line 294
    const-string v9, "com.verizon.mips.services"

    .line 295
    .line 296
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    const-string v9, "com.vzw.hss.myverizon"

    .line 300
    .line 301
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    const-string v9, "com.verizon.pushtotalkplus"

    .line 305
    .line 306
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    const-class v9, Landroid/app/AppOpsManager;

    .line 310
    .line 311
    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    check-cast v9, Landroid/app/AppOpsManager;

    .line 316
    .line 317
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    :catch_0
    :cond_9
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v10

    .line 325
    if-eqz v10, :cond_a

    .line 326
    .line 327
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    check-cast v10, Ljava/lang/String;

    .line 332
    .line 333
    :try_start_6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    invoke-virtual {v11, v10, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    if-eqz v11, :cond_9

    .line 342
    .line 343
    iget-object v12, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 344
    .line 345
    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 346
    .line 347
    .line 348
    move-result v12

    .line 349
    if-eqz v12, :cond_9

    .line 350
    .line 351
    iget-object v11, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 352
    .line 353
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 354
    .line 355
    invoke-virtual {v9, v7, v11, v10, v2}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 356
    .line 357
    .line 358
    goto :goto_6

    .line 359
    :cond_a
    if-nez v0, :cond_b

    .line 360
    .line 361
    if-eqz v1, :cond_e

    .line 362
    .line 363
    :cond_b
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    if-eqz v6, :cond_c

    .line 372
    .line 373
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    :cond_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-nez v5, :cond_e

    .line 382
    .line 383
    const-string v5, "TMB"

    .line 384
    .line 385
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_e

    .line 390
    .line 391
    const-string v1, "com.sprint.sdcplus"

    .line 392
    .line 393
    invoke-static {v1}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    const-class v5, Landroid/app/AppOpsManager;

    .line 398
    .line 399
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    check-cast v5, Landroid/app/AppOpsManager;

    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    :catch_1
    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 410
    .line 411
    .line 412
    move-result v6

    .line 413
    if-eqz v6, :cond_e

    .line 414
    .line 415
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    check-cast v6, Ljava/lang/String;

    .line 420
    .line 421
    :try_start_7
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    invoke-virtual {v8, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    if-eqz v8, :cond_d

    .line 430
    .line 431
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 432
    .line 433
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 434
    .line 435
    .line 436
    move-result v9

    .line 437
    if-eqz v9, :cond_d

    .line 438
    .line 439
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 440
    .line 441
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 442
    .line 443
    invoke-virtual {v5, v7, v8, v6, v2}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 444
    .line 445
    .line 446
    goto :goto_7

    .line 447
    :cond_e
    if-eqz v0, :cond_f

    .line 448
    .line 449
    :try_start_8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    if-eqz v0, :cond_f

    .line 458
    .line 459
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 460
    .line 461
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-eqz v1, :cond_f

    .line 466
    .line 467
    const-class v1, Landroid/app/AppOpsManager;

    .line 468
    .line 469
    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    check-cast v1, Landroid/app/AppOpsManager;

    .line 474
    .line 475
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 476
    .line 477
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 478
    .line 479
    invoke-virtual {v1, v7, v0, v4, v2}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 480
    .line 481
    .line 482
    :catch_2
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    .line 483
    .line 484
    if-nez v0, :cond_10

    .line 485
    .line 486
    return-void

    .line 487
    :cond_10
    const-string/jumbo v1, "wait for prepareAppData"

    .line 488
    .line 489
    .line 490
    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    const/4 v0, 0x0

    .line 494
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    .line 495
    .line 496
    return-void

    .line 497
    :goto_8
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw p0
.end method

.method public final writeSettings(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/16 v2, 0xd

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 12
    .line 13
    const/16 v2, 0xe

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 22
    .line 23
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 27
    .line 28
    .line 29
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    :try_start_4
    throw p0

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 38
    throw p0
.end method

.method public final writeSettingsLPrTEMP(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 14
    .line 15
    invoke-interface {v2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 19
    .line 20
    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
