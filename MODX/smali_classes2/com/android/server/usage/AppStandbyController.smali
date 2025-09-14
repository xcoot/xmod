.class public Lcom/android/server/usage/AppStandbyController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usage/AppStandbyInternal;
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# static fields
.field static final DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

.field static final DEFAULT_SCREEN_TIME_THRESHOLDS:[J

.field static final MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

.field static final MINIMUM_SCREEN_TIME_THRESHOLDS:[J

.field public static final THRESHOLD_BUCKETS:[I


# instance fields
.field public final mActiveAdminApps:Landroid/util/SparseArray;

.field public final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mAdminProtectedPackages:Landroid/util/SparseArray;

.field public volatile mAppIdleEnabled:Z

.field public final mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

.field public final mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppStandbyElapsedThresholds:[J

.field public final mAppStandbyProperties:Ljava/util/Map;

.field public mAppStandbyScreenThresholds:[J

.field public mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final mAppsToRestoreToRare:Landroid/util/SparseSetArray;

.field public volatile mBroadcastResponseExemptedPermissions:Ljava/lang/String;

.field public volatile mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

.field public volatile mBroadcastResponseExemptedRoles:Ljava/lang/String;

.field public volatile mBroadcastResponseExemptedRolesList:Ljava/util/List;

.field public volatile mBroadcastResponseFgThresholdState:I

.field public volatile mBroadcastResponseWindowDurationMillis:J

.field public volatile mBroadcastSessionsDurationMs:J

.field public volatile mBroadcastSessionsWithResponseDurationMs:J

.field public mCachedDeviceProvisioningPackage:Ljava/lang/String;

.field public volatile mCachedNetworkScorer:Ljava/lang/String;

.field public volatile mCachedNetworkScorerAtMillis:J

.field public mCarrierPrivilegedApps:Ljava/util/List;

.field public final mCarrierPrivilegedLock:Lcom/android/server/usage/AppStandbyController$Lock;

.field public mCheckIdleIntervalMillis:J

.field public final mContext:Landroid/content/Context;

.field public final mDisplayListener:Lcom/android/server/usage/AppStandbyController$2;

.field public mExemptedSyncScheduledDozeTimeoutMillis:J

.field public mExemptedSyncScheduledNonDozeTimeoutMillis:J

.field public mExemptedSyncStartTimeoutMillis:J

.field public final mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

.field public mHaveCarrierPrivilegedApps:Z

.field public final mHeadlessSystemApps:Landroid/util/ArraySet;

.field public mInitialForegroundServiceStartTimeoutMillis:J

.field public final mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

.field public volatile mIsCharging:Z

.field public mLinkCrossProfileApps:Z

.field public volatile mNoteResponseEventForAllBroadcastSessions:Z

.field public mNotificationSeenPromotedBucket:I

.field public mNotificationSeenTimeoutMillis:J

.field public final mPackageAccessListeners:Ljava/util/ArrayList;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPendingIdleStateChecks:Landroid/util/SparseLongArray;

.field public mPendingInitializeDefaults:Z

.field public volatile mPendingOneTimeCheckIdleStates:Z

.field public mPredictionTimeoutMillis:J

.field public mRetainNotificationSeenImpactForPreTApps:Z

.field public mSlicePinnedTimeoutMillis:J

.field public mStrongUsageTimeoutMillis:J

.field public mSyncAdapterTimeoutMillis:J

.field public final mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

.field public mSystemInteractionTimeoutMillis:J

.field public final mSystemPackagesAppIds:Ljava/util/ArrayList;

.field public mSystemServicesReady:Z

.field public mSystemUpdateUsageTimeoutMillis:J

.field public mTriggerQuotaBumpOnNotificationSeen:Z

.field public mUnexemptedSyncScheduledTimeoutMillis:J


# direct methods
.method public static -$$Nest$minformListeners(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIIZ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x28

    .line 5
    .line 6
    if-lt p3, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    monitor-enter v7

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v8, v1

    .line 31
    check-cast v8, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 32
    .line 33
    move-object v1, v8

    .line 34
    move-object v2, p1

    .line 35
    move v3, p2

    .line 36
    move v4, v0

    .line 37
    move v5, p3

    .line 38
    move v6, p4

    .line 39
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZII)V

    .line 40
    .line 41
    .line 42
    if-eqz p5, :cond_1

    .line 43
    .line 44
    invoke-virtual {v8, p1, p2}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onUserInteractionStarted(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    monitor-exit v7

    .line 51
    return-void

    .line 52
    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public static -$$Nest$minformParoleStateChanged(Lcom/android/server/usage/AppStandbyController;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    monitor-exit v1

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public static -$$Nest$mreportContentProviderUsage(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v11, p3

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    move-object/from16 v1, p1

    .line 12
    .line 13
    invoke-static {v1, v11}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v12

    .line 17
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 18
    .line 19
    iget-object v13, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v14

    .line 25
    array-length v10, v12

    .line 26
    const/4 v1, 0x0

    .line 27
    move v8, v1

    .line 28
    :goto_0
    if-ge v8, v10, :cond_3

    .line 29
    .line 30
    aget-object v2, v12, v8

    .line 31
    .line 32
    move-object/from16 v9, p2

    .line 33
    .line 34
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    :cond_1
    move/from16 v20, v8

    .line 41
    .line 42
    move/from16 v18, v10

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    invoke-virtual {v13, v2, v3, v4, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0, v11, v2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v16

    .line 71
    iget-object v6, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 72
    .line 73
    monitor-enter v6

    .line 74
    :try_start_0
    iget-wide v4, v0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    .line 76
    const/16 v7, 0xa

    .line 77
    .line 78
    const/16 v17, 0x8

    .line 79
    .line 80
    move-object/from16 v1, p0

    .line 81
    .line 82
    move/from16 v3, p3

    .line 83
    .line 84
    move-wide/from16 v18, v4

    .line 85
    .line 86
    move v4, v7

    .line 87
    move/from16 v5, v17

    .line 88
    .line 89
    move-object/from16 v17, v6

    .line 90
    .line 91
    move-wide v6, v14

    .line 92
    move/from16 v20, v8

    .line 93
    .line 94
    move-wide/from16 v8, v18

    .line 95
    .line 96
    move/from16 v18, v10

    .line 97
    .line 98
    move-object/from16 v10, v16

    .line 99
    .line 100
    :try_start_1
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 101
    .line 102
    .line 103
    monitor-exit v17

    .line 104
    goto :goto_2

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto :goto_1

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    move-object/from16 v17, v6

    .line 109
    .line 110
    :goto_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw v0

    .line 112
    :goto_2
    add-int/lit8 v8, v20, 0x1

    .line 113
    .line 114
    move/from16 v10, v18

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    :goto_3
    return-void
.end method

.method public static -$$Nest$mtriggerListenerQuotaBump(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->triggerTemporaryQuotaBump(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    monitor-exit v0

    .line 34
    :goto_1
    return-void

    .line 35
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v1, v0, [J

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    .line 8
    .line 9
    new-array v1, v0, [J

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    .line 15
    .line 16
    new-array v1, v0, [J

    .line 17
    .line 18
    fill-array-data v1, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    .line 22
    .line 23
    new-array v0, v0, [J

    .line 24
    .line 25
    fill-array-data v0, :array_3

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    .line 29
    .line 30
    const/16 v0, 0x28

    .line 31
    .line 32
    const/16 v1, 0x2d

    .line 33
    .line 34
    const/16 v2, 0xa

    .line 35
    .line 36
    const/16 v3, 0x14

    .line 37
    .line 38
    const/16 v4, 0x1e

    .line 39
    .line 40
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 8
        0x0
        0x0
        0x36ee80
        0x6ddd00
        0x1499700
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x1b7740
        0x36ee80
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_2
    .array-data 8
        0x0
        0x2932e00
        0x5265c00
        0xa4cb800
        0x2932e000
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_3
    .array-data 8
        0x0
        0x36ee80
        0x36ee80
        0x6ddd00
        0xdbba00
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Injector;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p1, v1}, Lcom/android/server/usage/AppStandbyController$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/android/server/usage/AppStandbyController$Lock;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v1, Lcom/android/server/usage/AppStandbyController$Lock;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 37
    .line 38
    new-instance v1, Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 44
    .line 45
    new-instance v1, Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 51
    .line 52
    new-instance v1, Landroid/util/ArraySet;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 58
    .line 59
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 66
    .line 67
    new-instance v1, Landroid/util/SparseLongArray;

    .line 68
    .line 69
    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    .line 73
    .line 74
    new-instance v1, Landroid/util/SparseIntArray;

    .line 75
    .line 76
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    .line 83
    .line 84
    const-wide/16 v3, 0x0

    .line 85
    .line 86
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 87
    .line 88
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 89
    .line 90
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    .line 91
    .line 92
    aget-wide v3, v1, v2

    .line 93
    .line 94
    const-wide/16 v5, 0x4

    .line 95
    .line 96
    div-long/2addr v3, v5

    .line 97
    const-wide/32 v5, 0xdbba00

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 105
    .line 106
    sget-object v3, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    .line 107
    .line 108
    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 109
    .line 110
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 111
    .line 112
    const-wide/32 v3, 0x36ee80

    .line 113
    .line 114
    .line 115
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 116
    .line 117
    const-wide/32 v3, 0x2932e00

    .line 118
    .line 119
    .line 120
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 121
    .line 122
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    .line 123
    .line 124
    const/16 v1, 0x14

    .line 125
    .line 126
    iput v1, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    .line 127
    .line 128
    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    .line 130
    .line 131
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    .line 132
    .line 133
    const-wide/32 v7, 0x6ddd00

    .line 134
    .line 135
    .line 136
    iput-wide v7, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 137
    .line 138
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    .line 139
    .line 140
    const-wide/32 v3, 0x927c0

    .line 141
    .line 142
    .line 143
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    .line 144
    .line 145
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 146
    .line 147
    iput-wide v5, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 148
    .line 149
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 150
    .line 151
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    .line 152
    .line 153
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 154
    .line 155
    const-wide/32 v3, 0x1b7740

    .line 156
    .line 157
    .line 158
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .line 159
    .line 160
    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    .line 161
    .line 162
    const-wide/32 v3, 0x1d4c0

    .line 163
    .line 164
    .line 165
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    .line 166
    .line 167
    const/4 v5, 0x2

    .line 168
    iput v5, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    .line 169
    .line 170
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    .line 171
    .line 172
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    .line 173
    .line 174
    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    .line 175
    .line 176
    const-string v2, ""

    .line 177
    .line 178
    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    .line 179
    .line 180
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 181
    .line 182
    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    .line 183
    .line 184
    const-string v3, ""

    .line 185
    .line 186
    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    .line 187
    .line 188
    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    .line 189
    .line 190
    new-instance v2, Landroid/util/ArrayMap;

    .line 191
    .line 192
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    .line 196
    .line 197
    new-instance v2, Landroid/util/SparseSetArray;

    .line 198
    .line 199
    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    .line 200
    .line 201
    .line 202
    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    .line 203
    .line 204
    new-instance v2, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    .line 210
    .line 211
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 212
    .line 213
    new-instance v1, Lcom/android/server/usage/AppStandbyController$2;

    .line 214
    .line 215
    invoke-direct {v1, p0}, Lcom/android/server/usage/AppStandbyController$2;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    .line 216
    .line 217
    .line 218
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Lcom/android/server/usage/AppStandbyController$2;

    .line 219
    .line 220
    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 221
    .line 222
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 225
    .line 226
    new-instance v7, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 227
    .line 228
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mLooper:Landroid/os/Looper;

    .line 229
    .line 230
    invoke-direct {v7, p0, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V

    .line 231
    .line 232
    .line 233
    iput-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 234
    .line 235
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 240
    .line 241
    new-instance v0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    .line 242
    .line 243
    const/4 v1, 0x1

    .line 244
    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    .line 245
    .line 246
    .line 247
    new-instance v1, Landroid/content/IntentFilter;

    .line 248
    .line 249
    const-string v3, "android.os.action.CHARGING"

    .line 250
    .line 251
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const-string v3, "android.os.action.DISCHARGING"

    .line 255
    .line 256
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string v3, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 260
    .line 261
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    .line 266
    .line 267
    monitor-enter p1

    .line 268
    :try_start_0
    new-instance v0, Lcom/android/server/usage/AppIdleHistory;

    .line 269
    .line 270
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 275
    .line 276
    .line 277
    move-result-wide v3

    .line 278
    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    .line 279
    .line 280
    .line 281
    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 282
    .line 283
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    new-instance v5, Landroid/content/IntentFilter;

    .line 285
    .line 286
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 290
    .line 291
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    .line 295
    .line 296
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 300
    .line 301
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string/jumbo p1, "package"

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    new-instance v3, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    .line 311
    .line 312
    const/4 p1, 0x0

    .line 313
    invoke-direct {v3, p0, p1}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    .line 314
    .line 315
    .line 316
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 317
    .line 318
    const/4 v6, 0x0

    .line 319
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :catchall_0
    move-exception p0

    .line 324
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    throw p0
.end method

.method public static getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_3

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-gt p1, v3, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-object v4, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 24
    .line 25
    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    cmp-long v4, v4, p2

    .line 30
    .line 31
    if-lez v4, :cond_2

    .line 32
    .line 33
    return v3

    .line 34
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public final addActiveDeviceAdmin(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/Set;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
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
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final checkAndUpdateStandbyState(IIJLjava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v9, p1

    .line 4
    .line 5
    move-wide/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v12, p5

    .line 8
    .line 9
    if-gtz p2, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    invoke-virtual {v1, v12, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    return-void

    .line 19
    :cond_0
    move/from16 v1, p2

    .line 20
    .line 21
    :goto_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2, v12, v9}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1, v9, v12}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(IILjava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    const/16 v1, 0xa

    .line 45
    .line 46
    if-gt v13, v1, :cond_2

    .line 47
    .line 48
    iget-object v14, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 49
    .line 50
    monitor-enter v14

    .line 51
    :try_start_1
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 52
    .line 53
    invoke-virtual {v1, v9, v12, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;J)Z

    .line 54
    .line 55
    .line 56
    move-result v15

    .line 57
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    const/16 v4, 0x100

    .line 61
    .line 62
    move/from16 v2, p1

    .line 63
    .line 64
    move v3, v13

    .line 65
    move-wide/from16 v5, p3

    .line 66
    .line 67
    move-object/from16 v7, p5

    .line 68
    .line 69
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 73
    .line 74
    invoke-virtual {v1, v9, v12, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;J)Z

    .line 75
    .line 76
    .line 77
    move-result v16

    .line 78
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    const/16 v4, 0x100

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    move-object/from16 v1, p0

    .line 83
    .line 84
    move/from16 v2, p1

    .line 85
    .line 86
    move v3, v13

    .line 87
    move-wide/from16 v5, p3

    .line 88
    .line 89
    move-object/from16 v7, p5

    .line 90
    .line 91
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IIIJLjava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    move v10, v9

    .line 95
    :goto_1
    move/from16 v1, v16

    .line 96
    .line 97
    goto/16 :goto_b

    .line 98
    .line 99
    :catchall_0
    move-exception v0

    .line 100
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    throw v0

    .line 102
    :cond_2
    iget-object v14, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 103
    .line 104
    monitor-enter v14

    .line 105
    :try_start_3
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 106
    .line 107
    invoke-virtual {v2, v9, v12, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;J)Z

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 112
    .line 113
    invoke-virtual {v2, v9, v12, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(ILjava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iget v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 118
    .line 119
    const v4, 0xff00

    .line 120
    .line 121
    .line 122
    and-int/2addr v4, v3

    .line 123
    const/16 v5, 0x400

    .line 124
    .line 125
    if-ne v4, v5, :cond_3

    .line 126
    .line 127
    monitor-exit v14

    .line 128
    return-void

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    goto/16 :goto_c

    .line 131
    .line 132
    :cond_3
    iget v5, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 133
    .line 134
    const/16 v6, 0x32

    .line 135
    .line 136
    if-ne v5, v6, :cond_4

    .line 137
    .line 138
    monitor-exit v14

    .line 139
    return-void

    .line 140
    :cond_4
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    iget-wide v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 145
    .line 146
    const-wide/16 v16, 0x0

    .line 147
    .line 148
    cmp-long v7, v7, v16

    .line 149
    .line 150
    if-lez v7, :cond_5

    .line 151
    .line 152
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 153
    .line 154
    invoke-virtual {v7, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v7

    .line 158
    move/from16 p2, v5

    .line 159
    .line 160
    move/from16 v18, v6

    .line 161
    .line 162
    iget-wide v5, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 163
    .line 164
    sub-long/2addr v7, v5

    .line 165
    iget-wide v5, v0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    .line 166
    .line 167
    cmp-long v5, v7, v5

    .line 168
    .line 169
    if-lez v5, :cond_6

    .line 170
    .line 171
    const/4 v5, 0x1

    .line 172
    goto :goto_2

    .line 173
    :cond_5
    move/from16 p2, v5

    .line 174
    .line 175
    move/from16 v18, v6

    .line 176
    .line 177
    :cond_6
    const/4 v5, 0x0

    .line 178
    :goto_2
    const/16 v6, 0x200

    .line 179
    .line 180
    const/16 v7, 0x100

    .line 181
    .line 182
    if-eq v4, v7, :cond_7

    .line 183
    .line 184
    const/16 v8, 0x300

    .line 185
    .line 186
    if-eq v4, v8, :cond_7

    .line 187
    .line 188
    if-eq v4, v6, :cond_7

    .line 189
    .line 190
    if-eqz v5, :cond_9

    .line 191
    .line 192
    :cond_7
    if-nez v5, :cond_8

    .line 193
    .line 194
    iget v8, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 195
    .line 196
    if-lt v8, v1, :cond_8

    .line 197
    .line 198
    const/16 v6, 0x28

    .line 199
    .line 200
    if-gt v8, v6, :cond_8

    .line 201
    .line 202
    const/16 v3, 0x501

    .line 203
    .line 204
    move v6, v8

    .line 205
    goto :goto_4

    .line 206
    :cond_8
    if-ne v4, v7, :cond_a

    .line 207
    .line 208
    iget v4, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 209
    .line 210
    and-int/lit16 v4, v4, 0xff

    .line 211
    .line 212
    const/4 v6, 0x2

    .line 213
    if-eq v4, v6, :cond_9

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_9
    move/from16 v6, v18

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_a
    :goto_3
    invoke-virtual {v0, v9, v12, v10, v11}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(ILjava/lang/String;J)I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    const/16 v3, 0x200

    .line 224
    .line 225
    :goto_4
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 226
    .line 227
    invoke-virtual {v4, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    .line 228
    .line 229
    .line 230
    move-result-wide v7

    .line 231
    invoke-static {v2, v6, v7, v8}, Lcom/android/server/usage/AppStandbyController;->getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    move/from16 v18, v3

    .line 236
    .line 237
    const/4 v3, -0x1

    .line 238
    if-eq v4, v3, :cond_d

    .line 239
    .line 240
    if-eq v4, v1, :cond_c

    .line 241
    .line 242
    iget v1, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 243
    .line 244
    if-ne v1, v4, :cond_b

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_b
    const/16 v3, 0x307

    .line 248
    .line 249
    :goto_5
    move v1, v3

    .line 250
    move v6, v4

    .line 251
    goto :goto_7

    .line 252
    :cond_c
    :goto_6
    iget v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_d
    move/from16 v1, v18

    .line 256
    .line 257
    :goto_7
    iget-wide v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 258
    .line 259
    cmp-long v16, v3, v16

    .line 260
    .line 261
    if-ltz v16, :cond_e

    .line 262
    .line 263
    iget-wide v9, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 264
    .line 265
    cmp-long v9, v9, v3

    .line 266
    .line 267
    if-lez v9, :cond_e

    .line 268
    .line 269
    sub-long/2addr v7, v3

    .line 270
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 271
    .line 272
    iget-wide v3, v3, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    .line 273
    .line 274
    cmp-long v3, v7, v3

    .line 275
    .line 276
    if-ltz v3, :cond_e

    .line 277
    .line 278
    iget v1, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 279
    .line 280
    const/16 v6, 0x2d

    .line 281
    .line 282
    :cond_e
    move v9, v1

    .line 283
    move/from16 v1, p2

    .line 284
    .line 285
    if-le v6, v13, :cond_f

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :cond_f
    move v13, v6

    .line 289
    :goto_8
    if-ne v1, v13, :cond_11

    .line 290
    .line 291
    if-eqz v5, :cond_10

    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_10
    move/from16 v10, p1

    .line 295
    .line 296
    move/from16 v16, v15

    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_11
    :goto_9
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 300
    .line 301
    const/4 v8, 0x0

    .line 302
    move/from16 v2, p1

    .line 303
    .line 304
    move v3, v13

    .line 305
    move v4, v9

    .line 306
    move-wide/from16 v5, p3

    .line 307
    .line 308
    move-object/from16 v7, p5

    .line 309
    .line 310
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    .line 311
    .line 312
    .line 313
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 314
    .line 315
    move/from16 v10, p1

    .line 316
    .line 317
    move-wide/from16 v5, p3

    .line 318
    .line 319
    invoke-virtual {v1, v10, v12, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;J)Z

    .line 320
    .line 321
    .line 322
    move-result v11

    .line 323
    const/4 v8, 0x0

    .line 324
    move-object/from16 v1, p0

    .line 325
    .line 326
    move/from16 v2, p1

    .line 327
    .line 328
    move v3, v13

    .line 329
    move v4, v9

    .line 330
    move-wide/from16 v5, p3

    .line 331
    .line 332
    move-object/from16 v7, p5

    .line 333
    .line 334
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IIIJLjava/lang/String;Z)V

    .line 335
    .line 336
    .line 337
    move/from16 v16, v11

    .line 338
    .line 339
    :goto_a
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 340
    goto/16 :goto_1

    .line 341
    .line 342
    :goto_b
    if-eq v15, v1, :cond_12

    .line 343
    .line 344
    invoke-virtual {v0, v10, v12, v1}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(ILjava/lang/String;Z)V

    .line 345
    .line 346
    .line 347
    :cond_12
    return-void

    .line 348
    :goto_c
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 349
    throw v0
.end method

.method public checkIdleStates(I)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v8

    .line 11
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    const/4 v10, -0x1

    .line 25
    if-eq v7, v10, :cond_1

    .line 26
    .line 27
    invoke-static {v9, v7}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 28
    .line 29
    .line 30
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    return v8

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_3

    .line 36
    :cond_1
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v11

    .line 45
    move v13, v8

    .line 46
    :goto_0
    array-length v1, v9

    .line 47
    if-ge v13, v1, :cond_4

    .line 48
    .line 49
    aget v14, v9, v13

    .line 50
    .line 51
    if-eq v7, v10, :cond_2

    .line 52
    .line 53
    if-eq v7, v14, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    .line 58
    const/16 v2, 0x200

    .line 59
    .line 60
    invoke-virtual {v1, v2, v14}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    move v4, v8

    .line 69
    :goto_1
    if-ge v4, v6, :cond_3

    .line 70
    .line 71
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 76
    .line 77
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 80
    .line 81
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 82
    .line 83
    move-object/from16 v1, p0

    .line 84
    .line 85
    move v2, v14

    .line 86
    move/from16 v16, v4

    .line 87
    .line 88
    move-object/from16 v17, v5

    .line 89
    .line 90
    move-wide v4, v11

    .line 91
    move/from16 v18, v6

    .line 92
    .line 93
    move-object/from16 v6, v17

    .line 94
    .line 95
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(IIJLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v4, v16, 0x1

    .line 99
    .line 100
    move/from16 v6, v18

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    const/4 v0, 0x1

    .line 107
    return v0

    .line 108
    :goto_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    throw v0
.end method

.method public clearAppIdleForPackage(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final clearCarrierPrivilegedApps()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final clearLastUsedTimestampsForTest(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-static {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const-wide/32 p1, -0x80000000

    .line 21
    .line 22
    .line 23
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 26
    .line 27
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 28
    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string p1, "Carrier privileged apps (have="

    .line 2
    .line 3
    const-string v0, "Flags: "

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/usage/Flags;->avoidIdleCheck()Z

    .line 9
    .line 10
    .line 11
    const-string v0, "    com.android.server.usage.avoid_idle_check: false"

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, "): "

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 50
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 51
    .line 52
    .line 53
    const-string p1, "Settings:"

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p1, "  mCheckIdleIntervalMillis="

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 64
    .line 65
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 69
    .line 70
    .line 71
    const-string p1, "  mStrongUsageTimeoutMillis="

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 77
    .line 78
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 82
    .line 83
    .line 84
    const-string p1, "  mNotificationSeenTimeoutMillis="

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 90
    .line 91
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 95
    .line 96
    .line 97
    const-string p1, "  mNotificationSeenPromotedBucket="

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    .line 103
    .line 104
    invoke-static {p1}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 112
    .line 113
    .line 114
    const-string p1, "  mTriggerQuotaBumpOnNotificationSeen="

    .line 115
    .line 116
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    .line 120
    .line 121
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 125
    .line 126
    .line 127
    const-string p1, "  mRetainNotificationSeenImpactForPreTApps="

    .line 128
    .line 129
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    .line 133
    .line 134
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 138
    .line 139
    .line 140
    const-string p1, "  mSlicePinnedTimeoutMillis="

    .line 141
    .line 142
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    .line 146
    .line 147
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 151
    .line 152
    .line 153
    const-string p1, "  mSyncAdapterTimeoutMillis="

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    .line 159
    .line 160
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 164
    .line 165
    .line 166
    const-string p1, "  mSystemInteractionTimeoutMillis="

    .line 167
    .line 168
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 172
    .line 173
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 177
    .line 178
    .line 179
    const-string p1, "  mInitialForegroundServiceStartTimeoutMillis="

    .line 180
    .line 181
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .line 185
    .line 186
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 190
    .line 191
    .line 192
    const-string p1, "  mPredictionTimeoutMillis="

    .line 193
    .line 194
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    .line 198
    .line 199
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 203
    .line 204
    .line 205
    const-string p1, "  mExemptedSyncScheduledNonDozeTimeoutMillis="

    .line 206
    .line 207
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 211
    .line 212
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 216
    .line 217
    .line 218
    const-string p1, "  mExemptedSyncScheduledDozeTimeoutMillis="

    .line 219
    .line 220
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 224
    .line 225
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 229
    .line 230
    .line 231
    const-string p1, "  mExemptedSyncStartTimeoutMillis="

    .line 232
    .line 233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 237
    .line 238
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 242
    .line 243
    .line 244
    const-string p1, "  mUnexemptedSyncScheduledTimeoutMillis="

    .line 245
    .line 246
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    .line 250
    .line 251
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 255
    .line 256
    .line 257
    const-string p1, "  mSystemUpdateUsageTimeoutMillis="

    .line 258
    .line 259
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 263
    .line 264
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 268
    .line 269
    .line 270
    const-string p1, "  mBroadcastResponseWindowDurationMillis="

    .line 271
    .line 272
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    .line 276
    .line 277
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 281
    .line 282
    .line 283
    const-string p1, "  mBroadcastResponseFgThresholdState="

    .line 284
    .line 285
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    .line 289
    .line 290
    invoke-static {p1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 298
    .line 299
    .line 300
    const-string p1, "  mBroadcastSessionsDurationMs="

    .line 301
    .line 302
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    .line 306
    .line 307
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 311
    .line 312
    .line 313
    const-string p1, "  mBroadcastSessionsWithResponseDurationMs="

    .line 314
    .line 315
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    .line 319
    .line 320
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 324
    .line 325
    .line 326
    const-string p1, "  mNoteResponseEventForAllBroadcastSessions="

    .line 327
    .line 328
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    .line 332
    .line 333
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 337
    .line 338
    .line 339
    const-string p1, "  mBroadcastResponseExemptedRoles="

    .line 340
    .line 341
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 350
    .line 351
    .line 352
    const-string p1, "  mBroadcastResponseExemptedPermissions="

    .line 353
    .line 354
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 366
    .line 367
    .line 368
    const-string p1, "mAppIdleEnabled="

    .line 369
    .line 370
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 374
    .line 375
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 376
    .line 377
    .line 378
    const-string p1, " mIsCharging="

    .line 379
    .line 380
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    .line 384
    .line 385
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 389
    .line 390
    .line 391
    const-string/jumbo p1, "mScreenThresholds="

    .line 392
    .line 393
    .line 394
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 398
    .line 399
    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    const-string p1, "mElapsedThresholds="

    .line 407
    .line 408
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 412
    .line 413
    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 421
    .line 422
    .line 423
    const-string p1, "mHeadlessSystemApps=["

    .line 424
    .line 425
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 429
    .line 430
    monitor-enter p1

    .line 431
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 432
    .line 433
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    add-int/lit8 v0, v0, -0x1

    .line 438
    .line 439
    :goto_0
    if-ltz v0, :cond_1

    .line 440
    .line 441
    const-string v1, "  "

    .line 442
    .line 443
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 447
    .line 448
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    check-cast v1, Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    if-eqz v0, :cond_0

    .line 458
    .line 459
    const-string v1, ","

    .line 460
    .line 461
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    goto :goto_1

    .line 465
    :catchall_0
    move-exception p0

    .line 466
    goto/16 :goto_b

    .line 467
    .line 468
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 469
    .line 470
    goto :goto_0

    .line 471
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    const-string p1, "]"

    .line 473
    .line 474
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 478
    .line 479
    .line 480
    const-string/jumbo p1, "mSystemPackagesAppIds=["

    .line 481
    .line 482
    .line 483
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    .line 487
    .line 488
    monitor-enter v0

    .line 489
    :try_start_2
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    .line 490
    .line 491
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 492
    .line 493
    .line 494
    move-result p1

    .line 495
    add-int/lit8 p1, p1, -0x1

    .line 496
    .line 497
    :goto_2
    if-ltz p1, :cond_3

    .line 498
    .line 499
    const-string v1, "  "

    .line 500
    .line 501
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    if-eqz p1, :cond_2

    .line 514
    .line 515
    const-string v1, ","

    .line 516
    .line 517
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    goto :goto_3

    .line 521
    :catchall_1
    move-exception p0

    .line 522
    goto/16 :goto_a

    .line 523
    .line 524
    :cond_2
    :goto_3
    add-int/lit8 p1, p1, -0x1

    .line 525
    .line 526
    goto :goto_2

    .line 527
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 528
    const-string p1, "]"

    .line 529
    .line 530
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 534
    .line 535
    .line 536
    const-string p1, "mActiveAdminApps=["

    .line 537
    .line 538
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 542
    .line 543
    monitor-enter p1

    .line 544
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 545
    .line 546
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    const/4 v1, 0x0

    .line 551
    move v2, v1

    .line 552
    :goto_4
    if-ge v2, v0, :cond_5

    .line 553
    .line 554
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 555
    .line 556
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    const-string v4, " "

    .line 561
    .line 562
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 566
    .line 567
    .line 568
    const-string v3, ": "

    .line 569
    .line 570
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 574
    .line 575
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    add-int/lit8 v3, v0, -0x1

    .line 583
    .line 584
    if-eq v2, v3, :cond_4

    .line 585
    .line 586
    const-string v3, ","

    .line 587
    .line 588
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    goto :goto_5

    .line 592
    :catchall_2
    move-exception p0

    .line 593
    goto :goto_9

    .line 594
    :cond_4
    :goto_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 595
    .line 596
    .line 597
    add-int/lit8 v2, v2, 0x1

    .line 598
    .line 599
    goto :goto_4

    .line 600
    :cond_5
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 601
    const-string p1, "]"

    .line 602
    .line 603
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 607
    .line 608
    .line 609
    const-string p1, "mAdminProtectedPackages=["

    .line 610
    .line 611
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 615
    .line 616
    monitor-enter v0

    .line 617
    :try_start_4
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 618
    .line 619
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 620
    .line 621
    .line 622
    move-result p1

    .line 623
    :goto_6
    if-ge v1, p1, :cond_7

    .line 624
    .line 625
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 626
    .line 627
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 628
    .line 629
    .line 630
    move-result v2

    .line 631
    const-string v3, " "

    .line 632
    .line 633
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 637
    .line 638
    .line 639
    const-string v2, ": "

    .line 640
    .line 641
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 645
    .line 646
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    add-int/lit8 v2, p1, -0x1

    .line 654
    .line 655
    if-eq v1, v2, :cond_6

    .line 656
    .line 657
    const-string v2, ","

    .line 658
    .line 659
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    goto :goto_7

    .line 663
    :catchall_3
    move-exception p0

    .line 664
    goto :goto_8

    .line 665
    :cond_6
    :goto_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 666
    .line 667
    .line 668
    add-int/lit8 v1, v1, 0x1

    .line 669
    .line 670
    goto :goto_6

    .line 671
    :cond_7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 672
    const-string p1, "]"

    .line 673
    .line 674
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 678
    .line 679
    .line 680
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 681
    .line 682
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->dump(Ljava/io/PrintWriter;)V

    .line 683
    .line 684
    .line 685
    return-void

    .line 686
    :goto_8
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 687
    throw p0

    .line 688
    :goto_9
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 689
    throw p0

    .line 690
    :goto_a
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 691
    throw p0

    .line 692
    :goto_b
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 693
    throw p0

    .line 694
    :catchall_4
    move-exception p0

    .line 695
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 696
    throw p0
.end method

.method public final dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public flushHandler(J)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final flushToDisk()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-object v4, v1, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x0

    .line 22
    :goto_0
    if-ge v5, v4, :cond_0

    .line 23
    .line 24
    iget-object v6, v1, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(IJ)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    iget-wide v3, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 46
    .line 47
    iget-wide v5, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 48
    .line 49
    sub-long v5, v1, v5

    .line 50
    .line 51
    add-long/2addr v5, v3

    .line 52
    iput-wide v5, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 53
    .line 54
    iput-wide v1, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    .line 57
    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public forceIdleState(Ljava/lang/String;IZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move/from16 v10, p2

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v11

    .line 16
    if-gez v11, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0, v11, v10, v9}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(IILjava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v7, 0x28

    .line 24
    .line 25
    if-eqz p3, :cond_2

    .line 26
    .line 27
    if-ge v1, v7, :cond_2

    .line 28
    .line 29
    const-string v0, "AppStandbyController"

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "Tried to force an app to be idle when its min bucket is "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v12

    .line 62
    move-object/from16 v1, p0

    .line 63
    .line 64
    move-object/from16 v2, p1

    .line 65
    .line 66
    move v3, v11

    .line 67
    move/from16 v4, p2

    .line 68
    .line 69
    move-wide v5, v12

    .line 70
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    iget-object v15, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 75
    .line 76
    monitor-enter v15

    .line 77
    :try_start_0
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 78
    .line 79
    if-eqz p3, :cond_5

    .line 80
    .line 81
    invoke-virtual {v1, v10, v9, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(ILjava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 86
    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    add-int/lit8 v3, v3, -0x1

    .line 94
    .line 95
    :goto_0
    if-ltz v3, :cond_4

    .line 96
    .line 97
    iget-object v4, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 98
    .line 99
    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-ge v4, v7, :cond_3

    .line 104
    .line 105
    iget-object v4, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 106
    .line 107
    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 108
    .line 109
    .line 110
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    const/16 v2, 0x400

    .line 114
    .line 115
    move v4, v2

    .line 116
    move/from16 v16, v7

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    const/16 v2, 0xa

    .line 120
    .line 121
    const/16 v3, 0x303

    .line 122
    .line 123
    move/from16 v16, v2

    .line 124
    .line 125
    move v4, v3

    .line 126
    :goto_1
    const/4 v8, 0x0

    .line 127
    move/from16 v2, p2

    .line 128
    .line 129
    move/from16 v3, v16

    .line 130
    .line 131
    move-wide v5, v12

    .line 132
    move-object/from16 v7, p1

    .line 133
    .line 134
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    move-object/from16 v1, p0

    .line 139
    .line 140
    move-object/from16 v2, p1

    .line 141
    .line 142
    move v3, v11

    .line 143
    move/from16 v4, p2

    .line 144
    .line 145
    move-wide v5, v12

    .line 146
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    const/16 v4, 0x400

    .line 151
    .line 152
    const/4 v8, 0x0

    .line 153
    move/from16 v2, p2

    .line 154
    .line 155
    move/from16 v3, v16

    .line 156
    .line 157
    move-object/from16 v7, p1

    .line 158
    .line 159
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IIIJLjava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    if-eq v14, v11, :cond_6

    .line 163
    .line 164
    invoke-virtual {v0, v10, v9, v11}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(ILjava/lang/String;Z)V

    .line 165
    .line 166
    .line 167
    :cond_6
    return-void

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    throw v0
.end method

.method public getActiveAdminAppsForTest(I)Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/Set;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public getAdminProtectedPackagesForTest(I)Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/Set;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final getAppId(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    const v0, 0x400200

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    return p0

    .line 13
    :catch_0
    const/4 p0, -0x1

    .line 14
    return p0
.end method

.method public getAppIdleHistoryForTest()Lcom/android/server/usage/AppIdleHistory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getAppMinBucket(IILjava/lang/String;)I
    .locals 12

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return v2

    .line 12
    :cond_1
    const/16 v1, 0x2710

    .line 13
    .line 14
    if-ge p1, v1, :cond_2

    .line 15
    .line 16
    return v2

    .line 17
    :cond_2
    const-string v1, "android"

    .line 18
    .line 19
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    return v2

    .line 26
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 27
    .line 28
    const/16 v3, 0xa

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v1, :cond_15

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 35
    .line 36
    iget v6, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    .line 37
    .line 38
    const/16 v7, 0x1f4

    .line 39
    .line 40
    if-ge v6, v7, :cond_4

    .line 41
    .line 42
    move v1, v5

    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    .line 45
    .line 46
    monitor-enter v6

    .line 47
    :try_start_0
    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    .line 48
    .line 49
    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 54
    :goto_0
    if-eqz v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    invoke-virtual {p0, p3, p2}, Lcom/android/server/usage/AppStandbyController;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 65
    .line 66
    monitor-enter v1

    .line 67
    :try_start_1
    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 68
    .line 69
    const/4 v7, -0x1

    .line 70
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->contains(I)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_7

    .line 75
    .line 76
    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Ljava/util/Set;

    .line 83
    .line 84
    invoke-interface {v6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_7

    .line 89
    .line 90
    monitor-exit v1

    .line 91
    move v6, v4

    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto/16 :goto_6

    .line 95
    .line 96
    :cond_7
    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 97
    .line 98
    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->contains(I)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_8

    .line 103
    .line 104
    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 105
    .line 106
    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Ljava/util/Set;

    .line 111
    .line 112
    invoke-interface {v6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_8

    .line 117
    .line 118
    move v6, v4

    .line 119
    goto :goto_1

    .line 120
    :cond_8
    move v6, v5

    .line 121
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_2
    if-eqz v6, :cond_9

    .line 123
    .line 124
    return v2

    .line 125
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 126
    .line 127
    .line 128
    move-result-wide v6

    .line 129
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v1, :cond_a

    .line 132
    .line 133
    iget-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 134
    .line 135
    const-wide/16 v10, 0x1388

    .line 136
    .line 137
    sub-long v10, v6, v10

    .line 138
    .line 139
    cmp-long v1, v8, v10

    .line 140
    .line 141
    if-gez v1, :cond_b

    .line 142
    .line 143
    :cond_a
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    const-string/jumbo v8, "network_score"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Landroid/net/NetworkScoreManager;

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    .line 161
    .line 162
    iput-wide v6, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 163
    .line 164
    :cond_b
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_c

    .line 171
    .line 172
    return v2

    .line 173
    :cond_c
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    .line 178
    .line 179
    monitor-enter v6

    .line 180
    :try_start_2
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    .line 181
    .line 182
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    if-ltz v7, :cond_d

    .line 187
    .line 188
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    .line 189
    .line 190
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-nez v1, :cond_e

    .line 195
    .line 196
    monitor-exit v6

    .line 197
    return v2

    .line 198
    :catchall_1
    move-exception p0

    .line 199
    goto/16 :goto_5

    .line 200
    .line 201
    :cond_d
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 202
    .line 203
    const/16 v8, 0x80

    .line 204
    .line 205
    invoke-virtual {v7, v8, v1, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    .line 210
    .line 211
    invoke-virtual {v8, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 212
    .line 213
    .line 214
    if-nez v7, :cond_e

    .line 215
    .line 216
    monitor-exit v6

    .line 217
    return v2

    .line 218
    :cond_e
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 219
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 220
    .line 221
    if-eqz v1, :cond_f

    .line 222
    .line 223
    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 224
    .line 225
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, p3, p2}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_f

    .line 233
    .line 234
    return v3

    .line 235
    :cond_f
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 236
    .line 237
    if-nez v1, :cond_10

    .line 238
    .line 239
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    const v6, 0x104033f

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 253
    .line 254
    :cond_10
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_11

    .line 261
    .line 262
    return v2

    .line 263
    :cond_11
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 264
    .line 265
    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mWellbeingApp:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    const/16 v6, 0x14

    .line 272
    .line 273
    if-eqz v1, :cond_12

    .line 274
    .line 275
    return v6

    .line 276
    :cond_12
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 277
    .line 278
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    iget-object p2, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 283
    .line 284
    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 285
    .line 286
    invoke-virtual {p2, p1, p3}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(ILjava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-nez v1, :cond_14

    .line 291
    .line 292
    const-wide/32 v7, 0xfa7a8de

    .line 293
    .line 294
    .line 295
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-static {v7, v8, p3, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-nez v1, :cond_13

    .line 304
    .line 305
    invoke-virtual {p2, p1, p3}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(ILjava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-eqz p1, :cond_13

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_13
    move p1, v5

    .line 313
    goto :goto_4

    .line 314
    :cond_14
    :goto_3
    move p1, v4

    .line 315
    :goto_4
    if-eqz p1, :cond_15

    .line 316
    .line 317
    return v6

    .line 318
    :goto_5
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 319
    throw p0

    .line 320
    :goto_6
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 321
    throw p0

    .line 322
    :catchall_2
    move-exception p0

    .line 323
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 324
    throw p0

    .line 325
    :cond_15
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 326
    .line 327
    monitor-enter p1

    .line 328
    :try_start_6
    iget-boolean p2, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 329
    .line 330
    if-nez p2, :cond_16

    .line 331
    .line 332
    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 333
    .line 334
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 335
    .line 336
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p2

    .line 340
    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 341
    .line 342
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    iput-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 347
    .line 348
    iput-boolean v4, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 349
    .line 350
    :cond_16
    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 351
    .line 352
    if-eqz p2, :cond_17

    .line 353
    .line 354
    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    monitor-exit p1

    .line 359
    goto :goto_7

    .line 360
    :catchall_3
    move-exception p0

    .line 361
    goto :goto_8

    .line 362
    :cond_17
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 363
    :goto_7
    if-eqz v5, :cond_18

    .line 364
    .line 365
    return v2

    .line 366
    :cond_18
    invoke-virtual {p0, p3}, Lcom/android/server/usage/AppStandbyController;->isHeadlessSystemApp(Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    if-eqz p1, :cond_19

    .line 371
    .line 372
    return v3

    .line 373
    :cond_19
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 374
    .line 375
    const-string p1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 376
    .line 377
    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    move-result p0

    .line 381
    if-nez p0, :cond_1a

    .line 382
    .line 383
    const/16 p0, 0x1e

    .line 384
    .line 385
    return p0

    .line 386
    :cond_1a
    return v0

    .line 387
    :goto_8
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 388
    throw p0
.end method

.method public final getAppMinStandbyBucket(Ljava/lang/String;IIZ)I
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 4
    .line 5
    iget-object p4, p4, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 6
    .line 7
    invoke-virtual {p4, p3, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    const/16 p0, 0x32

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 17
    .line 18
    monitor-enter p4

    .line 19
    :try_start_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(IILjava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    monitor-exit p4

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final getAppStandbyBucket(Ljava/lang/String;IJZ)I
    .locals 0

    .line 1
    iget-boolean p3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x5

    .line 6
    return p0

    .line 7
    :cond_0
    if-eqz p5, :cond_1

    .line 8
    .line 9
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 10
    .line 11
    iget-object p3, p3, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 12
    .line 13
    invoke-virtual {p3, p2, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    const/16 p0, 0xa

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 23
    .line 24
    monitor-enter p3

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    const/16 p0, 0x32

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 42
    .line 43
    :goto_0
    monitor-exit p3

    .line 44
    return p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final getAppStandbyBucketReason(Ljava/lang/String;IJ)I
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 2
    .line 3
    monitor-enter p3

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-static {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget p2, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 18
    .line 19
    :cond_0
    monitor-exit p3

    .line 20
    return p2

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final getAppStandbyBuckets(I)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 5
    .line 6
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v1, :cond_1

    .line 23
    .line 24
    new-instance v4, Landroid/app/usage/AppStandbyInfo;

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/String;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 39
    .line 40
    iget v6, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/16 v6, 0xa

    .line 44
    .line 45
    :goto_1
    invoke-direct {v4, v5, v6}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    monitor-exit v0

    .line 55
    return-object v2

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getBroadcastResponseExemptedPermissions()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBroadcastResponseExemptedRoles()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBroadcastResponseFgThresholdState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    .line 2
    .line 3
    return p0
.end method

.method public final getBroadcastResponseWindowDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getBroadcastSessionsDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getBroadcastSessionsWithResponseDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getBucketForLocked(ILjava/lang/String;J)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p1, p2, v2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-wide v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 19
    .line 20
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    cmp-long p2, v3, v5

    .line 23
    .line 24
    if-ltz p2, :cond_3

    .line 25
    .line 26
    iget-wide v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 27
    .line 28
    cmp-long p2, v3, v5

    .line 29
    .line 30
    if-gez p2, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-wide v5, v0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 34
    .line 35
    iget-boolean p2, v0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    iget-wide v7, v0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 40
    .line 41
    sub-long v7, p3, v7

    .line 42
    .line 43
    add-long/2addr v5, v7

    .line 44
    :cond_1
    sub-long/2addr v5, v3

    .line 45
    invoke-virtual {v0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    iget-wide v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 50
    .line 51
    sub-long/2addr p2, v3

    .line 52
    array-length p1, v1

    .line 53
    add-int/lit8 p1, p1, -0x1

    .line 54
    .line 55
    :goto_0
    if-ltz p1, :cond_4

    .line 56
    .line 57
    aget-wide v3, v1, p1

    .line 58
    .line 59
    cmp-long p4, v5, v3

    .line 60
    .line 61
    if-ltz p4, :cond_2

    .line 62
    .line 63
    aget-wide v3, p0, p1

    .line 64
    .line 65
    cmp-long p4, p2, v3

    .line 66
    .line 67
    if-ltz p4, :cond_2

    .line 68
    .line 69
    move v2, p1

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    :goto_1
    const/4 v2, -0x1

    .line 75
    :cond_4
    :goto_2
    if-ltz v2, :cond_5

    .line 76
    .line 77
    sget-object p0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    .line 78
    .line 79
    aget p0, p0, v2

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    const/16 p0, 0x32

    .line 83
    .line 84
    :goto_3
    return p0
.end method

.method public final getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-ltz v0, :cond_2

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isCrossProfile()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    .line 44
    .line 45
    invoke-virtual {v2, p2, v0}, Landroid/content/pm/CrossProfileAppsInternal;->verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    .line 53
    .line 54
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/CrossProfileAppsInternal;->getTargetUserProfiles(Ljava/lang/String;I)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    if-ltz v0, :cond_3

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string p1, "Null package retrieved for UID "

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p1, "AppStandbyController"

    .line 78
    .line 79
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :goto_1
    return-object p0

    .line 87
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p0
.end method

.method public final getEstimatedLaunchTime(Ljava/lang/String;I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-static {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    iget-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    cmp-long p1, p1, v1

    .line 32
    .line 33
    if-gez p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-wide p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const-wide p0, 0x7fffffffffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :goto_1
    monitor-exit v0

    .line 45
    return-wide p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final getIdleUidsForUser(I)[I
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-boolean v0, v6, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, "getIdleUidsForUser"

    .line 11
    .line 12
    const-wide/16 v7, 0x40

    .line 13
    .line 14
    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v6, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v9

    .line 26
    iget-object v0, v6, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 29
    .line 30
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    move/from16 v11, p1

    .line 37
    .line 38
    invoke-virtual {v0, v11, v3, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(IIJ)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v12

    .line 42
    if-nez v12, :cond_1

    .line 43
    .line 44
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_1
    new-instance v13, Landroid/util/SparseBooleanArray;

    .line 48
    .line 49
    invoke-direct {v13}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v14, 0x1

    .line 57
    sub-int/2addr v0, v14

    .line 58
    move v4, v0

    .line 59
    const/16 v16, 0x0

    .line 60
    .line 61
    :goto_0
    if-ltz v4, :cond_7

    .line 62
    .line 63
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object v5, v0

    .line 68
    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 69
    .line 70
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 71
    .line 72
    invoke-virtual {v13, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-gez v3, :cond_2

    .line 77
    .line 78
    move/from16 v17, v14

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {v13, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    move/from16 v17, v0

    .line 86
    .line 87
    :goto_1
    if-eqz v17, :cond_3

    .line 88
    .line 89
    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 90
    .line 91
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 92
    .line 93
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    move-object/from16 v0, p0

    .line 98
    .line 99
    move v15, v3

    .line 100
    move/from16 v3, p1

    .line 101
    .line 102
    move/from16 v18, v4

    .line 103
    .line 104
    move-object v7, v5

    .line 105
    move-wide v4, v9

    .line 106
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    move v0, v14

    .line 113
    goto :goto_2

    .line 114
    :cond_3
    move v15, v3

    .line 115
    move/from16 v18, v4

    .line 116
    .line 117
    move-object v7, v5

    .line 118
    :cond_4
    const/4 v0, 0x0

    .line 119
    :goto_2
    if-eqz v17, :cond_5

    .line 120
    .line 121
    if-nez v0, :cond_5

    .line 122
    .line 123
    add-int/lit8 v16, v16, 0x1

    .line 124
    .line 125
    :cond_5
    if-gez v15, :cond_6

    .line 126
    .line 127
    iget v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 128
    .line 129
    invoke-virtual {v13, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    invoke-virtual {v13, v15, v0}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 134
    .line 135
    .line 136
    :goto_3
    add-int/lit8 v4, v18, -0x1

    .line 137
    .line 138
    const-wide/16 v7, 0x40

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_7
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    sub-int v0, v0, v16

    .line 146
    .line 147
    new-array v1, v0, [I

    .line 148
    .line 149
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    sub-int/2addr v2, v14

    .line 154
    :goto_4
    if-ltz v2, :cond_9

    .line 155
    .line 156
    invoke-virtual {v13, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_8

    .line 161
    .line 162
    add-int/lit8 v0, v0, -0x1

    .line 163
    .line 164
    invoke-virtual {v13, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    aput v3, v1, v0

    .line 169
    .line 170
    :cond_8
    add-int/lit8 v2, v2, -0x1

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_9
    const-wide/16 v2, 0x40

    .line 174
    .line 175
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 176
    .line 177
    .line 178
    return-object v1
.end method

.method public final getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {p2, p1, v3}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-wide v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 27
    .line 28
    const-wide/high16 v5, -0x8000000000000000L

    .line 29
    .line 30
    cmp-long p2, v3, v5

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-wide p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 40
    .line 41
    sub-long/2addr v0, p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    :goto_1
    monitor-exit v2

    .line 49
    return-wide v0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final getTimeSinceLastUsedByUser(Ljava/lang/String;I)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {p2, p1, v3}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-wide v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 27
    .line 28
    const-wide/high16 v5, -0x8000000000000000L

    .line 29
    .line 30
    cmp-long p2, v3, v5

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    const-wide/16 v5, 0x0

    .line 35
    .line 36
    cmp-long p2, v3, v5

    .line 37
    .line 38
    if-gtz p2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iget-wide p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 46
    .line 47
    sub-long/2addr v0, p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    :goto_1
    monitor-exit v2

    .line 55
    return-wide v0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final initializeDefaultsForSystemApps(I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 6
    .line 7
    const/4 v12, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iput-boolean v12, v0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v1, "AppStandbyController"

    .line 14
    .line 15
    const-string v2, "Initializing defaults for system apps on user "

    .line 16
    .line 17
    const-string v3, ", appIdleEnabled="

    .line 18
    .line 19
    invoke-static {v11, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-boolean v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 24
    .line 25
    invoke-static {v1, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v13

    .line 37
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    const/16 v2, 0x200

    .line 40
    .line 41
    invoke-virtual {v1, v2, v11}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v15

    .line 45
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 50
    .line 51
    monitor-enter v10

    .line 52
    const/4 v1, 0x0

    .line 53
    move v7, v1

    .line 54
    :goto_0
    if-ge v7, v9, :cond_2

    .line 55
    .line 56
    :try_start_0
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 61
    .line 62
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 75
    .line 76
    iget-wide v4, v0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 77
    .line 78
    add-long v16, v13, v4

    .line 79
    .line 80
    invoke-virtual {v1, v11}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2, v3, v12}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 85
    .line 86
    .line 87
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    const-wide/16 v18, 0x0

    .line 89
    .line 90
    const/16 v5, 0xa

    .line 91
    .line 92
    const/4 v6, 0x6

    .line 93
    move/from16 v4, p1

    .line 94
    .line 95
    move/from16 v20, v7

    .line 96
    .line 97
    move-wide/from16 v7, v18

    .line 98
    .line 99
    move/from16 v18, v9

    .line 100
    .line 101
    move-object/from16 v19, v10

    .line 102
    .line 103
    move-wide/from16 v9, v16

    .line 104
    .line 105
    :try_start_1
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    move-object/from16 v19, v10

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_1
    move/from16 v20, v7

    .line 114
    .line 115
    move/from16 v18, v9

    .line 116
    .line 117
    move-object/from16 v19, v10

    .line 118
    .line 119
    :goto_1
    add-int/lit8 v7, v20, 0x1

    .line 120
    .line 121
    move/from16 v9, v18

    .line 122
    .line 123
    move-object/from16 v10, v19

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    move-object/from16 v19, v10

    .line 127
    .line 128
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 129
    .line 130
    invoke-virtual {v0, v11, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(IJ)V

    .line 131
    .line 132
    .line 133
    monitor-exit v19

    .line 134
    return-void

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    :goto_2
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    throw v0
.end method

.method public isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/Set;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    return p0

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final isAppIdleEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .locals 3

    .line 5
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, p3, p1, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;J)Z

    move-result p4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    .line 8
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(IILjava/lang/String;)I

    move-result p0

    const/16 p1, 0x28

    if-lt p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final isAppIdleFiltered(Ljava/lang/String;IJZ)Z
    .locals 6

    if-eqz p5, :cond_0

    .line 1
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 2
    iget-object p5, p5, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 3
    invoke-virtual {p5, p2, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p0

    return p0
.end method

.method public final isHeadlessSystemApp(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final isInParole()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final maybeInformListeners(IIIJLjava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 2
    .line 3
    monitor-enter p4

    .line 4
    :try_start_0
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 5
    .line 6
    invoke-virtual {p5, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object p5

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {p5, p6, v0}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 12
    .line 13
    .line 14
    move-result-object p5

    .line 15
    iget v0, p5, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 16
    .line 17
    if-eq v0, p2, :cond_1

    .line 18
    .line 19
    iput p2, p5, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 20
    .line 21
    sget-object p5, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    .line 22
    .line 23
    invoke-virtual {p5}, Lcom/android/server/usage/AppStandbyController$Pool;->obtain()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p5

    .line 27
    check-cast p5, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    .line 28
    .line 29
    if-nez p5, :cond_0

    .line 30
    .line 31
    new-instance p5, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    .line 32
    .line 33
    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iput-object p6, p5, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    iput p1, p5, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    .line 39
    .line 40
    iput p2, p5, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    .line 41
    .line 42
    iput p3, p5, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    .line 43
    .line 44
    iput-boolean p7, p5, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 47
    .line 48
    const/4 p1, 0x3

    .line 49
    invoke-virtual {p0, p1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    monitor-exit p4

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final maybeUnrestrictApp(Ljava/lang/String;IIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 6
    .line 7
    monitor-enter v9

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 18
    .line 19
    move-object/from16 v7, p1

    .line 20
    .line 21
    move/from16 v3, p2

    .line 22
    .line 23
    invoke-virtual {v2, v3, v7, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(ILjava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v4, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 28
    .line 29
    const/16 v8, 0x2d

    .line 30
    .line 31
    if-ne v4, v8, :cond_2

    .line 32
    .line 33
    iget v2, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 34
    .line 35
    const v4, 0xff00

    .line 36
    .line 37
    .line 38
    and-int/2addr v4, v2

    .line 39
    move/from16 v10, p3

    .line 40
    .line 41
    if-eq v4, v10, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    and-int/lit16 v4, v2, 0xff

    .line 45
    .line 46
    if-ne v4, v1, :cond_1

    .line 47
    .line 48
    or-int v1, p5, p6

    .line 49
    .line 50
    const/16 v2, 0x28

    .line 51
    .line 52
    move v4, v1

    .line 53
    move v8, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    not-int v1, v1

    .line 56
    and-int/2addr v1, v2

    .line 57
    move v4, v1

    .line 58
    :goto_0
    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 59
    .line 60
    const/16 v17, 0x0

    .line 61
    .line 62
    move/from16 v11, p2

    .line 63
    .line 64
    move v12, v8

    .line 65
    move v13, v4

    .line 66
    move-wide v14, v5

    .line 67
    move-object/from16 v16, p1

    .line 68
    .line 69
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    move-object/from16 v1, p0

    .line 74
    .line 75
    move/from16 v2, p2

    .line 76
    .line 77
    move v3, v8

    .line 78
    move-object/from16 v7, p1

    .line 79
    .line 80
    move v8, v10

    .line 81
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IIIJLjava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    monitor-exit v9

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    :goto_1
    monitor-exit v9

    .line 89
    return-void

    .line 90
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw v0
.end method

.method public maybeUnrestrictBuggyApp(Ljava/lang/String;I)V
    .locals 7

    .line 1
    const/16 v5, 0x100

    .line 2
    .line 3
    const/4 v6, 0x1

    .line 4
    const/16 v3, 0x600

    .line 5
    .line 6
    const/4 v4, 0x4

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v2, p2

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppStandbyController;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final maybeUpdateHeadlessSystemAppCache(Landroid/content/pm/PackageInfo;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v1, "android.intent.action.MAIN"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "android.intent.category.LAUNCHER"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 42
    .line 43
    const v2, 0x1c0200

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/AppStandbyController;->updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public final notifyBatteryStats(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    const/16 v1, 0x2000

    .line 4
    .line 5
    invoke-virtual {v0, p2, v1, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/16 p3, 0xf

    .line 18
    .line 19
    invoke-interface {p0, p3, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/16 p3, 0x10

    .line 30
    .line 31
    invoke-interface {p0, p3, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAdminDataAvailable()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    const/16 v2, 0x1f4

    .line 6
    .line 7
    if-ne p1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v3, "deviceidle"

    .line 13
    .line 14
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 23
    .line 24
    const-string v3, "batterystats"

    .line 25
    .line 26
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 35
    .line 36
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 43
    .line 44
    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 45
    .line 46
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string v4, "display"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 55
    .line 56
    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 57
    .line 58
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-class v4, Landroid/os/PowerManager;

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Landroid/os/PowerManager;

    .line 67
    .line 68
    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 69
    .line 70
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    const-class v4, Landroid/os/BatteryManager;

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/os/BatteryManager;

    .line 79
    .line 80
    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryManager:Landroid/os/BatteryManager;

    .line 81
    .line 82
    const-class v3, Landroid/content/pm/CrossProfileAppsInternal;

    .line 83
    .line 84
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Landroid/content/pm/CrossProfileAppsInternal;

    .line 89
    .line 90
    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    .line 91
    .line 92
    const-class v3, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 93
    .line 94
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 99
    .line 100
    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 101
    .line 102
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    const-string v4, "activity"

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Landroid/app/ActivityManager;

    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_0

    .line 117
    .line 118
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_2

    .line 123
    .line 124
    :cond_0
    const-wide/32 v3, 0x2932e00

    .line 125
    .line 126
    .line 127
    iput-wide v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    if-ne p1, v1, :cond_2

    .line 131
    .line 132
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getWellbeingPackageName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mWellbeingApp:Ljava/lang/String;

    .line 143
    .line 144
    :cond_2
    :goto_0
    iput p1, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    .line 145
    .line 146
    if-ne p1, v2, :cond_8

    .line 147
    .line 148
    const-string p1, "AppStandbyController"

    .line 149
    .line 150
    const-string v0, "Setting app idle enabled state"

    .line 151
    .line 152
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 156
    .line 157
    if-eqz p1, :cond_3

    .line 158
    .line 159
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 160
    .line 161
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 166
    .line 167
    invoke-virtual {p1, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 168
    .line 169
    .line 170
    :cond_3
    new-instance p1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;

    .line 171
    .line 172
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 173
    .line 174
    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const-string v1, "app_standby_enabled"

    .line 184
    .line 185
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const/4 v2, 0x0

    .line 190
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 191
    .line 192
    .line 193
    const-string v1, "adaptive_battery_management_enabled"

    .line 194
    .line 195
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const-string v1, "app_standby"

    .line 212
    .line 213
    invoke-static {v1, v0, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 217
    .line 218
    new-array v3, v2, [Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {p1, v0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->processProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateSettings()V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 234
    .line 235
    const-class v0, Landroid/appwidget/AppWidgetManager;

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Landroid/appwidget/AppWidgetManager;

    .line 242
    .line 243
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 244
    .line 245
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 246
    .line 247
    const-class v0, Landroid/app/AppOpsManager;

    .line 248
    .line 249
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Landroid/app/AppOpsManager;

    .line 254
    .line 255
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 256
    .line 257
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 258
    .line 259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    const-string p1, "appops"

    .line 263
    .line 264
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-static {p1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    :try_start_0
    new-instance v0, Lcom/android/server/usage/AppStandbyController$1;

    .line 273
    .line 274
    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    .line 275
    .line 276
    .line 277
    const/16 v1, 0x80

    .line 278
    .line 279
    const/4 v3, 0x0

    .line 280
    invoke-interface {p1, v1, v3, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :catch_0
    move-exception p1

    .line 285
    const-string v0, "AppStandbyController"

    .line 286
    .line 287
    const-string v1, "Failed start watching for app op"

    .line 288
    .line 289
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .line 291
    .line 292
    :goto_1
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 293
    .line 294
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Lcom/android/server/usage/AppStandbyController$2;

    .line 295
    .line 296
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 297
    .line 298
    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 299
    .line 300
    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 304
    .line 305
    monitor-enter v0

    .line 306
    :try_start_1
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 307
    .line 308
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 309
    .line 310
    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 311
    .line 312
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    const/4 v3, 0x2

    .line 321
    const/4 v4, 0x1

    .line 322
    if-ne v1, v3, :cond_4

    .line 323
    .line 324
    move v1, v4

    .line 325
    goto :goto_2

    .line 326
    :cond_4
    move v1, v2

    .line 327
    :goto_2
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 328
    .line 329
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 333
    .line 334
    .line 335
    move-result-wide v5

    .line 336
    invoke-virtual {p1, v5, v6, v1}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(JZ)V

    .line 337
    .line 338
    .line 339
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    iput-boolean v4, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 341
    .line 342
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 343
    .line 344
    monitor-enter p1

    .line 345
    :try_start_2
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 346
    .line 347
    invoke-virtual {v0, v2}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    .line 357
    .line 358
    if-nez p1, :cond_5

    .line 359
    .line 360
    if-nez v0, :cond_6

    .line 361
    .line 362
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 363
    .line 364
    .line 365
    :cond_6
    invoke-static {}, Lcom/android/server/usage/Flags;->avoidIdleCheck()Z

    .line 366
    .line 367
    .line 368
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    .line 369
    .line 370
    if-eqz p1, :cond_7

    .line 371
    .line 372
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 373
    .line 374
    .line 375
    :cond_7
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 376
    .line 377
    const v0, 0x205c2000

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    :goto_3
    if-ge v2, v0, :cond_9

    .line 389
    .line 390
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 395
    .line 396
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    .line 397
    .line 398
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 399
    .line 400
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    add-int/lit8 v2, v2, 0x1

    .line 412
    .line 413
    goto :goto_3

    .line 414
    :catchall_0
    move-exception p0

    .line 415
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    throw p0

    .line 417
    :catchall_1
    move-exception p0

    .line 418
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 419
    throw p0

    .line 420
    :cond_8
    if-ne p1, v1, :cond_9

    .line 421
    .line 422
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 423
    .line 424
    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryManager:Landroid/os/BatteryManager;

    .line 425
    .line 426
    invoke-virtual {p1}, Landroid/os/BatteryManager;->isCharging()Z

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 431
    .line 432
    .line 433
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 434
    .line 435
    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;

    .line 436
    .line 437
    const/4 v1, 0x0

    .line 438
    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    .line 443
    .line 444
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 445
    .line 446
    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;

    .line 447
    .line 448
    const/4 v1, 0x1

    .line 449
    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    .line 454
    .line 455
    :cond_9
    return-void
.end method

.method public final onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x6

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x7

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/16 v1, 0xe

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0xd

    .line 31
    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x13

    .line 35
    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 47
    .line 48
    monitor-enter v8

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v9

    .line 58
    move-object v1, p0

    .line 59
    move v2, v0

    .line 60
    move v3, p1

    .line 61
    move-wide v4, v9

    .line 62
    move-object v6, p2

    .line 63
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(IIJLjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    const/4 v1, 0x0

    .line 71
    move v11, v1

    .line 72
    :goto_0
    if-ge v11, p1, :cond_2

    .line 73
    .line 74
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/os/UserHandle;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    move-object v1, p0

    .line 85
    move v2, v0

    .line 86
    move-wide v4, v9

    .line 87
    move-object v6, p2

    .line 88
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(IIJLjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v11, v11, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    monitor-exit v8

    .line 97
    :cond_3
    return-void

    .line 98
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method

.method public final onUserRemoved(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 12
    .line 13
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 17
    .line 18
    .line 19
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 20
    :try_start_2
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 21
    .line 22
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 26
    .line 27
    .line 28
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 35
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 36
    :catchall_2
    move-exception p0

    .line 37
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 38
    :try_start_8
    throw p0

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 40
    throw p0
.end method

.method public final postCheckIdleStates(I)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 27
    .line 28
    const/4 p1, 0x5

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method public final postOneTimeCheckIdleStates()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    .line 4
    .line 5
    const/16 v1, 0x1f4

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Pool;->obtain()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object p1, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->name:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    iput p3, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->userId:I

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 23
    .line 24
    const/16 p1, 0x8

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final postReportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 2
    .line 3
    const/16 v0, 0xd

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final postReportSyncScheduled(Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 2
    .line 3
    const/16 v0, 0xc

    .line 4
    .line 5
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final removeListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final reportEventLocked(IIJLjava/lang/String;)V
    .locals 30

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v7, p2

    .line 6
    .line 7
    move-wide/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    iget-object v1, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 12
    .line 13
    invoke-virtual {v1, v7, v6, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;J)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget-object v1, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 18
    .line 19
    invoke-virtual {v1, v7, v6, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(ILjava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v1, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 24
    .line 25
    iget v15, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 26
    .line 27
    const/16 v9, 0xe

    .line 28
    .line 29
    const/16 v10, 0x13

    .line 30
    .line 31
    const/4 v11, 0x7

    .line 32
    const/4 v12, 0x6

    .line 33
    const/16 v19, 0x0

    .line 34
    .line 35
    const/16 v14, 0xa

    .line 36
    .line 37
    const/4 v13, 0x1

    .line 38
    if-eq v0, v13, :cond_6

    .line 39
    .line 40
    const/4 v13, 0x2

    .line 41
    if-eq v0, v13, :cond_5

    .line 42
    .line 43
    if-eq v0, v12, :cond_4

    .line 44
    .line 45
    if-eq v0, v11, :cond_3

    .line 46
    .line 47
    if-eq v0, v14, :cond_7

    .line 48
    .line 49
    if-eq v0, v10, :cond_2

    .line 50
    .line 51
    const/16 v13, 0xd

    .line 52
    .line 53
    if-eq v0, v13, :cond_1

    .line 54
    .line 55
    if-eq v0, v9, :cond_0

    .line 56
    .line 57
    move/from16 v13, v19

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/16 v13, 0x9

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v13, v14

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/16 v13, 0xf

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v13, 0x3

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 v13, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_5
    const/4 v13, 0x5

    .line 73
    goto :goto_0

    .line 74
    :cond_6
    const/4 v13, 0x4

    .line 75
    :cond_7
    :goto_0
    move/from16 v17, v15

    .line 76
    .line 77
    or-int/lit16 v15, v13, 0x300

    .line 78
    .line 79
    move/from16 v18, v15

    .line 80
    .line 81
    const/4 v15, -0x1

    .line 82
    if-ne v0, v14, :cond_b

    .line 83
    .line 84
    iget-boolean v0, v8, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    .line 85
    .line 86
    if-eqz v0, :cond_9

    .line 87
    .line 88
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 91
    .line 92
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 93
    .line 94
    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 103
    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    goto :goto_1

    .line 111
    :cond_8
    const/16 v0, 0x2710

    .line 112
    .line 113
    :goto_1
    const/16 v9, 0x21

    .line 114
    .line 115
    if-ge v0, v9, :cond_9

    .line 116
    .line 117
    const/16 v0, 0x14

    .line 118
    .line 119
    const-wide/32 v9, 0x2932e00

    .line 120
    .line 121
    .line 122
    :goto_2
    move-wide/from16 v20, v9

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_9
    iget-boolean v0, v8, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    .line 126
    .line 127
    if-eqz v0, :cond_a

    .line 128
    .line 129
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 130
    .line 131
    invoke-virtual {v0, v11, v7, v15, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 136
    .line 137
    .line 138
    :cond_a
    iget v0, v8, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    .line 139
    .line 140
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :goto_3
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 144
    .line 145
    const-wide/16 v22, 0x0

    .line 146
    .line 147
    add-long v24, v4, v20

    .line 148
    .line 149
    move-object v10, v2

    .line 150
    move-object/from16 v11, p5

    .line 151
    .line 152
    move/from16 v12, p2

    .line 153
    .line 154
    move/from16 v16, v13

    .line 155
    .line 156
    const/16 v26, 0x1

    .line 157
    .line 158
    move v13, v0

    .line 159
    move v0, v14

    .line 160
    move/from16 v14, v16

    .line 161
    .line 162
    move/from16 v29, v3

    .line 163
    .line 164
    move v3, v15

    .line 165
    move/from16 v27, v17

    .line 166
    .line 167
    move/from16 v28, v18

    .line 168
    .line 169
    move-wide/from16 v15, v22

    .line 170
    .line 171
    move-wide/from16 v17, v24

    .line 172
    .line 173
    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    .line 174
    .line 175
    .line 176
    move-wide/from16 v9, v20

    .line 177
    .line 178
    goto/16 :goto_4

    .line 179
    .line 180
    :cond_b
    move/from16 v29, v3

    .line 181
    .line 182
    move/from16 v16, v13

    .line 183
    .line 184
    move v3, v15

    .line 185
    move/from16 v27, v17

    .line 186
    .line 187
    move/from16 v28, v18

    .line 188
    .line 189
    const/16 v26, 0x1

    .line 190
    .line 191
    move v15, v14

    .line 192
    if-ne v0, v9, :cond_c

    .line 193
    .line 194
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 195
    .line 196
    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    .line 197
    .line 198
    add-long v17, v4, v10

    .line 199
    .line 200
    const/16 v13, 0x14

    .line 201
    .line 202
    const-wide/16 v20, 0x0

    .line 203
    .line 204
    move-object v10, v2

    .line 205
    move-object/from16 v11, p5

    .line 206
    .line 207
    move/from16 v12, p2

    .line 208
    .line 209
    move/from16 v14, v16

    .line 210
    .line 211
    move v0, v15

    .line 212
    move-wide/from16 v15, v20

    .line 213
    .line 214
    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    .line 215
    .line 216
    .line 217
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_c
    if-ne v0, v12, :cond_d

    .line 221
    .line 222
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 223
    .line 224
    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 225
    .line 226
    add-long v17, v4, v10

    .line 227
    .line 228
    const/16 v13, 0xa

    .line 229
    .line 230
    const-wide/16 v20, 0x0

    .line 231
    .line 232
    move-object v10, v2

    .line 233
    move-object/from16 v11, p5

    .line 234
    .line 235
    move/from16 v12, p2

    .line 236
    .line 237
    move/from16 v14, v16

    .line 238
    .line 239
    move v0, v15

    .line 240
    move-wide/from16 v15, v20

    .line 241
    .line 242
    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    .line 243
    .line 244
    .line 245
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_d
    if-ne v0, v10, :cond_f

    .line 249
    .line 250
    const/16 v0, 0x32

    .line 251
    .line 252
    if-eq v1, v0, :cond_e

    .line 253
    .line 254
    return-void

    .line 255
    :cond_e
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 256
    .line 257
    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .line 258
    .line 259
    add-long v17, v4, v10

    .line 260
    .line 261
    const/16 v13, 0xa

    .line 262
    .line 263
    const-wide/16 v20, 0x0

    .line 264
    .line 265
    move-object v10, v2

    .line 266
    move-object/from16 v11, p5

    .line 267
    .line 268
    move/from16 v12, p2

    .line 269
    .line 270
    move/from16 v14, v16

    .line 271
    .line 272
    move v0, v15

    .line 273
    move-wide/from16 v15, v20

    .line 274
    .line 275
    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    .line 276
    .line 277
    .line 278
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_f
    move v0, v15

    .line 282
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 283
    .line 284
    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 285
    .line 286
    add-long v17, v4, v10

    .line 287
    .line 288
    const/16 v13, 0xa

    .line 289
    .line 290
    move-object v10, v2

    .line 291
    move-object/from16 v11, p5

    .line 292
    .line 293
    move/from16 v12, p2

    .line 294
    .line 295
    move/from16 v14, v16

    .line 296
    .line 297
    move-wide/from16 v15, p3

    .line 298
    .line 299
    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    .line 300
    .line 301
    .line 302
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 303
    .line 304
    :goto_4
    iget v11, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 305
    .line 306
    if-eq v11, v1, :cond_11

    .line 307
    .line 308
    iget-object v1, v8, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 309
    .line 310
    const/16 v11, 0xb

    .line 311
    .line 312
    invoke-virtual {v1, v11, v7, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v1, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 317
    .line 318
    .line 319
    iget v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 320
    .line 321
    if-ne v3, v0, :cond_10

    .line 322
    .line 323
    const v0, 0xff00

    .line 324
    .line 325
    .line 326
    and-int v0, v27, v0

    .line 327
    .line 328
    const/16 v1, 0x300

    .line 329
    .line 330
    if-eq v0, v1, :cond_10

    .line 331
    .line 332
    move/from16 v9, v26

    .line 333
    .line 334
    goto :goto_5

    .line 335
    :cond_10
    move/from16 v9, v19

    .line 336
    .line 337
    :goto_5
    move-object/from16 v0, p0

    .line 338
    .line 339
    move/from16 v1, p2

    .line 340
    .line 341
    move-object v10, v2

    .line 342
    move v2, v3

    .line 343
    move/from16 v11, v29

    .line 344
    .line 345
    move/from16 v3, v28

    .line 346
    .line 347
    move-wide/from16 v4, p3

    .line 348
    .line 349
    move-object v12, v6

    .line 350
    move-object/from16 v6, p5

    .line 351
    .line 352
    move v13, v7

    .line 353
    move v7, v9

    .line 354
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IIIJLjava/lang/String;Z)V

    .line 355
    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_11
    move-object v10, v2

    .line 359
    move-object v12, v6

    .line 360
    move v13, v7

    .line 361
    move/from16 v11, v29

    .line 362
    .line 363
    :goto_6
    iget v0, v10, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 364
    .line 365
    const/16 v1, 0x28

    .line 366
    .line 367
    if-lt v0, v1, :cond_12

    .line 368
    .line 369
    move/from16 v0, v26

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_12
    move/from16 v0, v19

    .line 373
    .line 374
    :goto_7
    if-eq v11, v0, :cond_13

    .line 375
    .line 376
    invoke-virtual {v8, v13, v12, v0}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(ILjava/lang/String;Z)V

    .line 377
    .line 378
    .line 379
    :cond_13
    return-void
.end method

.method public final reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v1, p2

    .line 3
    move-wide/from16 v2, p5

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    move/from16 v5, p4

    .line 8
    .line 9
    move-object v6, p1

    .line 10
    move-wide/from16 v7, p7

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(IJIILjava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_0

    .line 21
    .line 22
    move-object/from16 v2, p9

    .line 23
    .line 24
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/os/UserHandle;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    move-object v4, p0

    .line 35
    move-wide/from16 v6, p5

    .line 36
    .line 37
    move/from16 v8, p3

    .line 38
    .line 39
    move/from16 v9, p4

    .line 40
    .line 41
    move-object v10, p1

    .line 42
    move-wide/from16 v11, p7

    .line 43
    .line 44
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(IJIILjava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public final reportNoninteractiveUsageLocked(IJIILjava/lang/String;J)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p6

    .line 6
    .line 7
    move-wide/from16 v13, p7

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 10
    .line 11
    add-long v9, p2, v13

    .line 12
    .line 13
    invoke-virtual {v1, v11}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v2, v12, v3}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 19
    .line 20
    .line 21
    move-result-object v15

    .line 22
    const-wide/16 v7, 0x0

    .line 23
    .line 24
    move-object v2, v15

    .line 25
    move-object/from16 v3, p6

    .line 26
    .line 27
    move/from16 v4, p1

    .line 28
    .line 29
    move/from16 v5, p4

    .line 30
    .line 31
    move/from16 v6, p5

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 37
    .line 38
    const/16 v2, 0xb

    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    invoke-virtual {v1, v2, v11, v3, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 46
    .line 47
    .line 48
    iget v2, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 49
    .line 50
    iget v3, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    move-object/from16 v0, p0

    .line 54
    .line 55
    move/from16 v1, p1

    .line 56
    .line 57
    move-wide/from16 v4, p2

    .line 58
    .line 59
    move-object/from16 v6, p6

    .line 60
    .line 61
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IIIJLjava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final restoreAppsToRare(Ljava/util/Set;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v9

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v7, v0

    .line 25
    check-cast v7, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 28
    .line 29
    invoke-virtual {v0, p2, v7}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(ILjava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string v0, "Tried to restore bucket for uninstalled app: "

    .line 36
    .line 37
    const-string v1, "AppStandbyController"

    .line 38
    .line 39
    invoke-static {v0, v7, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    .line 43
    .line 44
    invoke-virtual {v0, p2, v7}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v6, 0x0

    .line 49
    move-object v1, p0

    .line 50
    move-object v2, v7

    .line 51
    move v3, p2

    .line 52
    move-wide v4, v9

    .line 53
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/16 v1, 0x32

    .line 58
    .line 59
    if-ne v0, v1, :cond_0

    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    const/16 v4, 0x102

    .line 63
    .line 64
    const/16 v3, 0x28

    .line 65
    .line 66
    move-object v1, p0

    .line 67
    move v2, p2

    .line 68
    move-wide v5, v9

    .line 69
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 74
    .line 75
    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda2;

    .line 76
    .line 77
    invoke-direct {v0, p0, p2}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    .line 78
    .line 79
    .line 80
    const-wide/32 v1, 0x1b77400

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final restrictApp(Ljava/lang/String;II)V
    .locals 1

    const/16 v0, 0x600

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/usage/AppStandbyController;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method public final restrictApp(Ljava/lang/String;III)V
    .locals 8

    const/16 v0, 0x600

    .line 2
    const-string v1, "AppStandbyController"

    if-eq p3, v0, :cond_0

    const/16 v0, 0x400

    if-eq p3, v0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Tried to restrict app "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for an unsupported reason"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    const-string p0, "Tried to restrict uninstalled app: "

    .line 6
    invoke-static {p0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const v0, 0xff00

    and-int/2addr p3, v0

    and-int/lit16 p4, p4, 0xff

    or-int v3, p3, p4

    .line 7
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v2, 0x2d

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p2

    move-object v6, p1

    .line 9
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    return-void
.end method

.method public final setActiveAdminApps(Ljava/util/Set;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final setAdminProtectedPackages(Ljava/util/Set;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 24
    .line 25
    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Landroid/app/admin/flags/Flags;->disallowUserControlBgUsageFix()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/usage/Flags;->avoidIdleCheck()Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppStandbyController;->postCheckIdleStates(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void

    .line 40
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method

.method public final setAppIdleAsync(Ljava/lang/String;ZI)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p0, v0, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public setAppIdleEnabled(Z)V
    .locals 2

    .line 1
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    check-cast v0, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 32
    .line 33
    if-eq v1, p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eq p1, v1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 48
    .line 49
    const/16 v1, 0x9

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :goto_1
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    throw p0
.end method

.method public final setAppStandbyBucket(IIIJLjava/lang/String;Z)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v1, p3

    move-wide/from16 v11, p4

    move-object/from16 v13, p6

    .line 8
    const-string v2, "Tried to restrict recently used app: "

    const-string v3, "Tried to set bucket of uninstalled app: "

    iget-boolean v4, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v4, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v14, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v14

    .line 10
    :try_start_0
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4, v9, v13}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v14

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    .line 13
    :cond_1
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, v9, v13, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(ILjava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v3

    const v4, 0xff00

    and-int v5, v1, v4

    const/16 v6, 0x500

    if-ne v5, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 14
    :goto_0
    iget v7, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_3

    monitor-exit v14

    return-void

    :cond_3
    const/16 v8, 0x32

    if-eq v7, v8, :cond_4

    if-ne v10, v8, :cond_5

    :cond_4
    if-eqz v6, :cond_5

    .line 15
    monitor-exit v14

    return-void

    .line 16
    :cond_5
    iget v8, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/2addr v4, v8

    const/16 v8, 0x600

    if-ne v4, v8, :cond_6

    const/16 v17, 0x1

    goto :goto_1

    :cond_6
    const/16 v17, 0x0

    :goto_1
    const/16 v15, 0x400

    if-eqz v6, :cond_8

    if-eq v4, v15, :cond_7

    if-eqz v17, :cond_8

    .line 17
    :cond_7
    monitor-exit v14

    return-void

    :cond_8
    if-ne v5, v8, :cond_9

    const/16 v18, 0x1

    goto :goto_2

    :cond_9
    const/16 v18, 0x0

    :goto_2
    const/16 v15, 0x2d

    const/16 v8, 0x28

    if-ne v7, v10, :cond_e

    if-eqz v17, :cond_e

    if-eqz v18, :cond_e

    if-ne v10, v15, :cond_a

    .line 18
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 19
    invoke-virtual {v2, v9}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v4

    const/4 v5, 0x1

    .line 20
    invoke-static {v4, v13, v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v4

    .line 21
    invoke-virtual {v2, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 22
    iput v1, v4, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 23
    :cond_a
    iget v2, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x600

    or-int/2addr v2, v4

    and-int/lit16 v1, v1, 0xff

    or-int v4, v2, v1

    .line 24
    iget v1, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-lt v1, v8, :cond_b

    const/4 v15, 0x1

    goto :goto_3

    :cond_b
    const/4 v15, 0x0

    .line 25
    :goto_3
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move v12, v8

    const/4 v11, 0x0

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    if-lt v10, v12, :cond_c

    const/4 v11, 0x1

    :cond_c
    if-eq v15, v11, :cond_d

    .line 26
    invoke-virtual {v0, v9, v13, v11}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(ILjava/lang/String;Z)V

    .line 27
    :cond_d
    monitor-exit v14

    return-void

    :cond_e
    const/16 v8, 0x400

    move-object/from16 v18, v2

    if-ne v5, v8, :cond_f

    const/4 v8, 0x1

    goto :goto_4

    :cond_f
    const/4 v8, 0x0

    :goto_4
    const/16 v2, 0x200

    if-ne v7, v15, :cond_12

    if-ne v4, v2, :cond_10

    if-eqz v6, :cond_12

    const/16 v4, 0x28

    if-lt v10, v4, :cond_12

    .line 28
    monitor-exit v14

    return-void

    :cond_10
    const/16 v4, 0x300

    if-ne v5, v4, :cond_11

    and-int/lit16 v4, v1, 0xff

    const/4 v5, 0x3

    if-eq v4, v5, :cond_12

    const/4 v5, 0x4

    if-ne v4, v5, :cond_11

    goto :goto_5

    :cond_11
    if-nez v8, :cond_12

    .line 29
    monitor-exit v14

    return-void

    :cond_12
    :goto_5
    if-ne v10, v15, :cond_16

    .line 30
    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 31
    invoke-virtual {v5, v9}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v7

    const/4 v15, 0x1

    .line 32
    invoke-static {v7, v13, v15}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v7

    .line 33
    invoke-virtual {v5, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 34
    iput v1, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    if-eqz v8, :cond_14

    .line 35
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_13

    and-int/lit16 v4, v1, 0xff

    const/4 v5, 0x2

    if-eq v4, v5, :cond_13

    .line 36
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 37
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    filled-new-array/range {p6 .. p6}, [Ljava/lang/Object;

    move-result-object v8

    const v2, 0x1040200

    invoke-virtual {v7, v2, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    .line 39
    invoke-static {v4, v5, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_13
    const/4 v8, 0x0

    .line 41
    const-string v2, "AppStandbyController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " restricted by user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_14
    const/4 v8, 0x0

    .line 42
    iget-wide v4, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 43
    iget-wide v8, v2, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    add-long/2addr v4, v8

    sub-long/2addr v4, v11

    const-wide/16 v7, 0x0

    cmp-long v2, v4, v7

    if-lez v2, :cond_15

    .line 44
    const-string v2, "AppStandbyController"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " due to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xb

    move/from16 v9, p1

    const/4 v2, -0x1

    .line 46
    invoke-virtual {v0, v1, v9, v2, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 48
    monitor-exit v14

    return-void

    :cond_15
    move/from16 v9, p1

    goto :goto_6

    :cond_16
    const/4 v15, 0x1

    :goto_6
    if-eqz v6, :cond_1a

    .line 49
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v4

    .line 50
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iput-wide v4, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 52
    iput v10, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 53
    invoke-static {v3, v10, v4, v5}, Lcom/android/server/usage/AppStandbyController;->getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_19

    const/16 v4, 0xa

    if-eq v2, v4, :cond_18

    .line 54
    iget v1, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v1, v2, :cond_17

    goto :goto_8

    :cond_17
    const/16 v1, 0x307

    :goto_7
    move/from16 v19, v1

    goto :goto_9

    .line 55
    :cond_18
    :goto_8
    iget v1, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_7

    :cond_19
    const/16 v2, 0x28

    if-ne v10, v2, :cond_1a

    .line 56
    invoke-virtual {v0, v9, v13, v11, v12}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(ILjava/lang/String;J)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_1a

    move v2, v4

    const/16 v19, 0x200

    goto :goto_9

    :cond_1a
    move/from16 v19, v1

    move v2, v10

    .line 57
    :goto_9
    :try_start_1
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v13, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 58
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v0, v1, v9, v13}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(IILjava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :catch_0
    const/16 v8, 0x32

    .line 59
    :goto_a
    :try_start_2
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 60
    iget v1, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v8, 0x28

    if-lt v1, v8, :cond_1b

    move v7, v15

    goto :goto_b

    :cond_1b
    const/4 v7, 0x0

    .line 61
    :goto_b
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, v19

    move-wide/from16 v5, p4

    move v15, v7

    move-object/from16 v7, p6

    move v11, v8

    const/16 v16, 0x0

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    if-lt v10, v11, :cond_1c

    const/4 v1, 0x1

    goto :goto_c

    :cond_1c
    move/from16 v1, v16

    :goto_c
    if-eq v15, v1, :cond_1d

    .line 62
    invoke-virtual {v0, v9, v13, v1}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(ILjava/lang/String;Z)V

    .line 63
    :cond_1d
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, v19

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    .line 64
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IIIJLjava/lang/String;Z)V

    return-void

    .line 65
    :goto_d
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;III)V
    .locals 9

    .line 4
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p1

    .line 7
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    return-void
.end method

.method public final setAppStandbyBucket(Ljava/lang/String;IIII)V
    .locals 1

    .line 1
    new-instance v0, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBuckets(Ljava/util/List;III)V

    return-void
.end method

.method public final setAppStandbyBucketForMARs(Ljava/lang/String;IIIZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move/from16 v10, p2

    .line 6
    .line 7
    move/from16 v1, p3

    .line 8
    .line 9
    const/16 v2, 0x700

    .line 10
    .line 11
    move/from16 v11, p4

    .line 12
    .line 13
    if-eq v11, v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/16 v3, 0xa

    .line 17
    .line 18
    if-lt v1, v3, :cond_3

    .line 19
    .line 20
    const/16 v3, 0x32

    .line 21
    .line 22
    if-gt v1, v3, :cond_3

    .line 23
    .line 24
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 25
    .line 26
    invoke-virtual {v3, v10, v9}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(ILjava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    const-string v0, "AppStandbyController"

    .line 33
    .line 34
    const-string v1, "Tried to restrict uninstalled app: "

    .line 35
    .line 36
    invoke-static {v1, v9, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v12

    .line 49
    iget-object v14, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 50
    .line 51
    monitor-enter v14

    .line 52
    :try_start_0
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 53
    .line 54
    invoke-virtual {v3, v10, v9, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(ILjava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-nez p6, :cond_2

    .line 59
    .line 60
    iget v3, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 61
    .line 62
    const v4, 0xff00

    .line 63
    .line 64
    .line 65
    and-int/2addr v3, v4

    .line 66
    if-ne v3, v2, :cond_2

    .line 67
    .line 68
    const/16 v1, 0x2d

    .line 69
    .line 70
    :cond_2
    move v15, v1

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_1

    .line 74
    :goto_0
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 75
    .line 76
    move/from16 v2, p2

    .line 77
    .line 78
    move v3, v15

    .line 79
    move/from16 v4, p4

    .line 80
    .line 81
    move-wide v5, v12

    .line 82
    move-object/from16 v7, p1

    .line 83
    .line 84
    move/from16 v8, p5

    .line 85
    .line 86
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const/4 v8, 0x0

    .line 91
    move-object/from16 v1, p0

    .line 92
    .line 93
    move/from16 v2, p2

    .line 94
    .line 95
    move v3, v15

    .line 96
    move/from16 v4, p4

    .line 97
    .line 98
    move-wide v5, v12

    .line 99
    move-object/from16 v7, p1

    .line 100
    .line 101
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IIIJLjava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :goto_1
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw v0

    .line 107
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string v2, "Cannot set the standby bucket to "

    .line 110
    .line 111
    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0
.end method

.method public final setAppStandbyBuckets(Ljava/util/List;III)V
    .locals 17

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p3

    .line 4
    .line 5
    const-string/jumbo v5, "setAppStandbyBucket"

    .line 6
    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    move/from16 v0, p4

    .line 12
    .line 13
    move/from16 v1, p3

    .line 14
    .line 15
    move/from16 v2, p2

    .line 16
    .line 17
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v10

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz v9, :cond_1

    .line 23
    .line 24
    const/16 v1, 0x7d0

    .line 25
    .line 26
    if-ne v9, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v11, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 32
    move v11, v1

    .line 33
    :goto_1
    const/16 v1, 0x3e8

    .line 34
    .line 35
    invoke-static {v9, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    move/from16 v2, p4

    .line 46
    .line 47
    if-ne v2, v1, :cond_3

    .line 48
    .line 49
    :cond_2
    if-eqz v11, :cond_4

    .line 50
    .line 51
    :cond_3
    const/16 v1, 0x400

    .line 52
    .line 53
    :goto_2
    move v12, v1

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->isCore(I)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    const/16 v1, 0x600

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    const/16 v1, 0x500

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    iget-object v1, v8, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v14

    .line 80
    move v7, v0

    .line 81
    :goto_4
    if-ge v7, v13, :cond_9

    .line 82
    .line 83
    move-object/from16 v6, p1

    .line 84
    .line 85
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/app/usage/AppStandbyInfo;

    .line 90
    .line 91
    iget-object v4, v0, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 92
    .line 93
    iget v2, v0, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    .line 94
    .line 95
    const/16 v0, 0xa

    .line 96
    .line 97
    if-lt v2, v0, :cond_8

    .line 98
    .line 99
    const/16 v0, 0x32

    .line 100
    .line 101
    if-gt v2, v0, :cond_8

    .line 102
    .line 103
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 106
    .line 107
    const-wide/32 v5, 0x4c0000

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4, v5, v6, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eq v0, v9, :cond_7

    .line 115
    .line 116
    if-ltz v0, :cond_6

    .line 117
    .line 118
    move-object/from16 v0, p0

    .line 119
    .line 120
    move v1, v10

    .line 121
    move v3, v12

    .line 122
    move-object v6, v4

    .line 123
    move-wide v4, v14

    .line 124
    move/from16 v16, v7

    .line 125
    .line 126
    move v7, v11

    .line 127
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v7, v16, 0x1

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_6
    move-object v6, v4

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    const-string v1, "Cannot set standby bucket for non existent package ("

    .line 137
    .line 138
    const-string v2, ")"

    .line 139
    .line 140
    invoke-static {v1, v6, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string v1, "Cannot set your own standby bucket"

    .line 151
    .line 152
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    const-string v1, "Cannot set the standby bucket to "

    .line 159
    .line 160
    invoke-static {v2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_9
    return-void
.end method

.method public final setAppStandbyBucketsForMARs(Ljava/util/List;IIIZZ)V
    .locals 11

    .line 1
    const/16 v0, 0x700

    .line 2
    .line 3
    move v8, p4

    .line 4
    if-eq v8, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v9, v1

    .line 13
    :goto_0
    if-ge v9, v0, :cond_1

    .line 14
    .line 15
    move-object v10, p1

    .line 16
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/app/usage/AppStandbyInfo;

    .line 21
    .line 22
    iget-object v2, v1, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 23
    .line 24
    move-object v1, p0

    .line 25
    move v3, p2

    .line 26
    move v4, p3

    .line 27
    move v5, p4

    .line 28
    move/from16 v6, p5

    .line 29
    .line 30
    move/from16 v7, p6

    .line 31
    .line 32
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucketForMARs(Ljava/lang/String;IIIZZ)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v9, v9, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public setChargingState(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 8
    .line 9
    const/16 v0, 0x9

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final setEstimatedLaunchTime(Ljava/lang/String;IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-static {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final setLastJobRunTime(Ljava/lang/String;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {p2, p1, v1}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide p2

    .line 19
    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final shouldNoteResponseEventForAllBroadcastSessions()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    .line 2
    .line 3
    return p0
.end method

.method public final updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method
