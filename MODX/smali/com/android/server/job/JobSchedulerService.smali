.class public final Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field public static final QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

.field public static final sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

.field public static final sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sInitialJobEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sInitialJobEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sInitialJwiEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sInitialJwiEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sJobMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sJwiMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static sSystemClock:Ljava/time/Clock;

.field public static sUptimeMillisClock:Ljava/time/Clock;

.field public static sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;


# instance fields
.field public final mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public final mBackingUpUids:Landroid/util/SparseBooleanArray;

.field final mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

.field public final mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field public final mBroadcastReceiver:Lcom/android/server/job/JobSchedulerService$3;

.field public final mCancelJobDueToUserRemovalConsumer:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

.field public final mChangedJobList:Landroid/util/ArraySet;

.field public final mCloudMediaProviderPackages:Landroid/util/SparseArray;

.field public final mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field public final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field public final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field public final mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

.field public final mControllers:Ljava/util/List;

.field public final mDebuggableApps:Landroid/util/ArrayMap;

.field public final mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

.field public final mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field public final mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

.field public final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field public final mIsUidActivePredicate:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

.field public final mJobCountBuffer:Lcom/android/internal/util/RingBuffer;

.field public final mJobCounter:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;

.field public final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field final mJobRestrictions:Ljava/util/List;

.field public final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field public final mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mJobTimeUpdater:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

.field public final mJobs:Lcom/android/server/job/JobStore;

.field public mLastCancelledJobIndex:I

.field public final mLastCancelledJobTimeElapsed:[J

.field public final mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

.field public mLastCompletedJobIndex:I

.field public final mLastCompletedJobTimeElapsed:[J

.field public final mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

.field public mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public final mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

.field public final mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

.field public final mPendingJobReasonCache:Landroid/util/SparseArrayMap;

.field public final mPermissionCache:Landroid/util/SparseArray;

.field public final mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

.field public final mQuotaController:Lcom/android/server/job/controllers/QuotaController;

.field public final mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

.field public final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

.field public mReadyToRock:Z

.field public mReportedActive:Z

.field public final mRestrictiveControllers:Ljava/util/List;

.field public final mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

.field public mStartedUsers:[I

.field public final mStorageController:Lcom/android/server/job/controllers/StorageController;

.field public final mTimeSetReceiver:Lcom/android/server/job/JobSchedulerService$3;

.field public final mUidBiasOverride:Landroid/util/SparseIntArray;

.field public final mUidCapabilities:Landroid/util/SparseIntArray;

.field public final mUidObserver:Lcom/android/server/job/JobSchedulerService$4;

.field public final mUidProcStates:Landroid/util/SparseIntArray;

.field public final mUidToPackageCache:Landroid/util/SparseSetArray;

.field public final mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;


# direct methods
.method public static -$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "android"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const-string p0, "Can\'t cancel all jobs for system package"

    .line 14
    const-string p1, "JobScheduler"

    .line 16
    invoke-static {p1, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 22
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 27
    iget-object v2, v1, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 29
    iget-object v2, v2, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/util/ArraySet;

    .line 37
    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_1
    if-eqz p3, :cond_2

    .line 44
    iget-object v1, v1, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 46
    invoke-virtual {v1, p2, v0}, Lcom/android/server/job/JobStore$JobSet;->getJobsBySourceUid(ILjava/util/Set;)V

    .line 49
    :cond_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 52
    move-result p2

    .line 53
    add-int/lit8 p2, p2, -0x1

    .line 55
    :goto_0
    if-ltz p2, :cond_5

    .line 57
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    move-object v3, v1

    .line 62
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 64
    iget-object v1, v3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 66
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 80
    if-eqz p3, :cond_4

    .line 82
    iget-object v1, v3, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 90
    :cond_3
    const/4 v4, 0x0

    .line 91
    const/16 v5, 0xd

    .line 93
    move-object v2, p0

    .line 94
    move v6, p4

    .line 95
    move-object v7, p5

    .line 96
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 99
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    :goto_1
    return-void
.end method

.method public static -$$Nest$mgetPendingJob(IILcom/android/server/job/JobSchedulerService;Ljava/lang/String;)Landroid/app/job/JobInfo;
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 6
    invoke-virtual {p2, p0}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 13
    move-result p2

    .line 14
    add-int/lit8 p2, p2, -0x1

    .line 16
    :goto_0
    if-ltz p2, :cond_1

    .line 18
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 24
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 26
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    .line 29
    move-result v2

    .line 30
    if-ne v2, p1, :cond_0

    .line 32
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 34
    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 40
    iget-object p0, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 42
    monitor-exit v0

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    monitor-exit v0

    .line 50
    const/4 p0, 0x0

    .line 51
    :goto_1
    return-object p0

    .line 52
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public static -$$Nest$mgetPendingJobs(Lcom/android/server/job/JobSchedulerService;I)Landroid/util/ArrayMap;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 21
    move-result p1

    .line 22
    add-int/lit8 p1, p1, -0x1

    .line 24
    :goto_0
    if-ltz p1, :cond_1

    .line 26
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 32
    iget-object v3, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/util/List;

    .line 40
    if-nez v3, :cond_0

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v4, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    :goto_1
    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 57
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 p1, p1, -0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    monitor-exit v1

    .line 64
    return-object v0

    .line 65
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public static -$$Nest$mgetPendingJobsInNamespace(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 18
    move-result v1

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 21
    :goto_0
    if-ltz v1, :cond_1

    .line 23
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 29
    iget-object v3, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 31
    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 37
    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 39
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    monitor-exit v0

    .line 49
    return-object p1

    .line 50
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public static -$$Nest$mhasPermission(IILcom/android/server/job/JobSchedulerService;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/util/SparseArrayMap;

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 16
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 19
    iget-object v2, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v2, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Boolean;

    .line 33
    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result p0

    .line 39
    monitor-exit v0

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2, p3, p1, p0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_2

    .line 51
    const/4 p0, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 54
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v1, p1, p3, p2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    monitor-exit v0

    .line 62
    :goto_2
    return p0

    .line 63
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public static -$$Nest$mmaybeQueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    const/16 v1, 0x8

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 14
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 17
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    const-string v0, "JobScheduler"

    .line 23
    const-string v1, "Maybe queuing ready jobs..."

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->clearPendingJobQueue()V

    .line 31
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 34
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 36
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    .line 38
    invoke-virtual {v0, p0}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcessLocked()V

    .line 44
    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "JobScheduler"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 10
    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    .line 12
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 18
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    .line 20
    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, v1, v2}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Ljava/time/ZoneId;I)V

    .line 26
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 28
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-direct {v0, v1, v2}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Ljava/time/ZoneId;I)V

    .line 34
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 36
    new-instance v0, Lcom/android/server/utils/quota/Category;

    .line 38
    const-string v1, ".schedulePersisted()"

    .line 40
    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    .line 43
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 45
    new-instance v0, Lcom/android/server/utils/quota/Category;

    .line 47
    const-string v1, ".schedulePersisted out-of-quota logged"

    .line 49
    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    .line 52
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    .line 54
    new-instance v0, Lcom/android/server/utils/quota/Category;

    .line 56
    const-string/jumbo v1, "timeout-uij"

    .line 59
    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    .line 62
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

    .line 64
    new-instance v0, Lcom/android/server/utils/quota/Category;

    .line 66
    const-string/jumbo v1, "timeout-ej"

    .line 69
    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    .line 72
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

    .line 74
    new-instance v0, Lcom/android/server/utils/quota/Category;

    .line 76
    const-string/jumbo v1, "timeout-reg"

    .line 79
    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    .line 82
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

    .line 84
    new-instance v0, Lcom/android/server/utils/quota/Category;

    .line 86
    const-string/jumbo v1, "timeout-total"

    .line 89
    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    .line 92
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

    .line 94
    new-instance v0, Lcom/android/server/utils/quota/Category;

    .line 96
    const-string v1, "anr"

    .line 98
    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    .line 101
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

    .line 103
    new-instance v0, Lcom/android/server/utils/quota/Category;

    .line 105
    const-string/jumbo v1, "disabled"

    .line 108
    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    .line 111
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    .line 113
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 115
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 117
    const/16 v2, 0x19

    .line 119
    const/4 v3, 0x0

    .line 120
    const/high16 v4, 0x40a00000    # 5.0f

    .line 122
    const v5, 0x3fb33333    # 1.4f

    .line 125
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 128
    const-string/jumbo v5, "job_scheduler.value_hist_w_uid_enqueued_work_items_high_water_mark"

    .line 131
    invoke-direct {v0, v5, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 134
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 136
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 138
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 140
    const/16 v5, 0x32

    .line 142
    const/high16 v6, 0x42000000    # 32.0f

    .line 144
    const v7, 0x3fa7ae14    # 1.31f

    .line 147
    invoke-direct {v1, v5, v3, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 150
    const-string/jumbo v8, "job_scheduler.value_hist_initial_job_estimated_network_download_kilobytes"

    .line 153
    invoke-direct {v0, v8, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 156
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 158
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 160
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 162
    invoke-direct {v1, v5, v3, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 165
    const-string/jumbo v8, "job_scheduler.value_hist_initial_jwi_estimated_network_download_kilobytes"

    .line 168
    invoke-direct {v0, v8, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 171
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 173
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 175
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 177
    invoke-direct {v1, v5, v3, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 180
    const-string/jumbo v8, "job_scheduler.value_hist_initial_job_estimated_network_upload_kilobytes"

    .line 183
    invoke-direct {v0, v8, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 186
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 188
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 190
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 192
    invoke-direct {v1, v5, v3, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 195
    const-string/jumbo v5, "job_scheduler.value_hist_initial_jwi_estimated_network_upload_kilobytes"

    .line 198
    invoke-direct {v0, v5, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 201
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 203
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 205
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 207
    const v5, 0x3fe147ae    # 1.76f

    .line 210
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 213
    const-string/jumbo v6, "job_scheduler.value_hist_w_uid_job_minimum_chunk_kilobytes"

    .line 216
    invoke-direct {v0, v6, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 219
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sJobMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 221
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 223
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 225
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 228
    const-string/jumbo v2, "job_scheduler.value_hist_w_uid_jwi_minimum_chunk_kilobytes"

    .line 231
    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 234
    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sJwiMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 6
    const-class v1, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;

    .line 8
    const/16 v2, 0x96

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 13
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobCountBuffer:Lcom/android/internal/util/RingBuffer;

    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 22
    new-instance v1, Lcom/android/server/job/JobPackageTracker;

    .line 24
    invoke-direct {v1}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 29
    new-instance v1, Landroid/util/SparseArray;

    .line 31
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    .line 36
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 38
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;

    .line 43
    new-instance v1, Landroid/util/SparseArray;

    .line 45
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 50
    new-instance v1, Lcom/android/server/job/PendingJobQueue;

    .line 52
    invoke-direct {v1}, Lcom/android/server/job/PendingJobQueue;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 57
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    .line 59
    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 61
    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    .line 64
    const/16 v2, 0x14

    .line 66
    new-array v3, v2, [Lcom/android/server/job/controllers/JobStatus;

    .line 68
    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    .line 70
    new-array v3, v2, [J

    .line 72
    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    .line 74
    iput v1, p0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    .line 76
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 78
    if-eqz v3, :cond_0

    .line 80
    move v4, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move v4, v1

    .line 83
    :goto_0
    new-array v4, v4, [Lcom/android/server/job/controllers/JobStatus;

    .line 85
    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    .line 87
    if-eqz v3, :cond_1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    move v2, v1

    .line 91
    :goto_1
    new-array v2, v2, [J

    .line 93
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobTimeElapsed:[J

    .line 95
    new-instance v2, Landroid/util/SparseIntArray;

    .line 97
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 100
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 102
    new-instance v2, Landroid/util/SparseIntArray;

    .line 104
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 107
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    .line 109
    new-instance v2, Landroid/util/SparseIntArray;

    .line 111
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 114
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 116
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 118
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 121
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 123
    new-instance v2, Landroid/util/ArrayMap;

    .line 125
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 128
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    .line 130
    new-instance v2, Landroid/util/SparseSetArray;

    .line 132
    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    .line 135
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 137
    new-instance v2, Landroid/util/ArraySet;

    .line 139
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 142
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 144
    new-instance v2, Landroid/util/SparseArrayMap;

    .line 146
    invoke-direct {v2}, Landroid/util/SparseArrayMap;-><init>()V

    .line 149
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 151
    new-instance v2, Lcom/android/server/job/JobSchedulerService$3;

    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-direct {v2, v3, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(ILjava/lang/Object;)V

    .line 157
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Lcom/android/server/job/JobSchedulerService$3;

    .line 159
    new-instance v2, Lcom/android/server/job/JobSchedulerService$4;

    .line 161
    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 164
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Lcom/android/server/job/JobSchedulerService$4;

    .line 166
    new-instance v2, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    .line 168
    invoke-direct {v2, p0, v3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    .line 171
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    .line 173
    new-instance v2, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    .line 175
    const/4 v3, 0x2

    .line 176
    invoke-direct {v2, p0, v3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    .line 179
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mCancelJobDueToUserRemovalConsumer:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    .line 181
    new-instance v2, Lcom/android/server/job/JobSchedulerService$3;

    .line 183
    const/4 v3, 0x1

    .line 184
    invoke-direct {v2, v3, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(ILjava/lang/Object;)V

    .line 187
    new-instance v3, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    .line 189
    const/4 v4, 0x0

    .line 190
    invoke-direct {v3, p0, v4}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    .line 193
    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    .line 195
    new-instance v3, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    .line 197
    invoke-direct {v3, p0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 200
    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    .line 202
    new-instance v3, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    .line 204
    invoke-direct {v3, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 207
    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    .line 209
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 211
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 217
    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 219
    const-class v3, Landroid/app/ActivityManagerInternal;

    .line 221
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 224
    move-result-object v3

    .line 225
    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 227
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 232
    new-instance v3, Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 234
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 241
    move-result-object v4

    .line 242
    invoke-direct {v3, p0, v4}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    .line 245
    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 247
    new-instance v4, Lcom/android/server/job/JobSchedulerService$Constants;

    .line 249
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 252
    sget v5, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 254
    iput v5, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 256
    sget v5, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 258
    iput v5, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 260
    const-wide/32 v5, 0x1c61a0

    .line 263
    iput-wide v5, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_CPU_ONLY_JOB_BATCH_DELAY_MS:J

    .line 265
    iput-wide v5, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    .line 267
    const v7, 0x3f666666    # 0.9f

    .line 270
    iput v7, v4, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    .line 272
    const/high16 v7, 0x3f000000    # 0.5f

    .line 274
    iput v7, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    .line 276
    const-wide/16 v8, 0x2710

    .line 278
    iput-wide v8, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    .line 280
    iput-wide v8, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    .line 282
    const/4 v8, 0x3

    .line 283
    iput v8, v4, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    .line 285
    iput v7, v4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    .line 287
    iput v7, v4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    .line 289
    const/4 v9, 0x1

    .line 290
    iput-boolean v9, v4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    .line 292
    const-wide/32 v10, 0xea60

    .line 295
    iput-wide v10, v4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    .line 297
    iput v7, v4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

    .line 299
    new-instance v7, Landroid/util/SparseIntArray;

    .line 301
    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 304
    iput-object v7, v4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    .line 306
    iput-wide v5, v4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_MAX_CONNECTIVITY_JOB_BATCH_DELAY_MS:J

    .line 308
    const-wide/32 v5, 0x36ee80

    .line 311
    iput-wide v5, v4, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    .line 313
    iput-boolean v9, v4, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    .line 315
    const/16 v5, 0xfa

    .line 317
    iput v5, v4, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    .line 319
    iput-wide v10, v4, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    .line 321
    iput-boolean v9, v4, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    .line 323
    iput-boolean v1, v4, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    .line 325
    iput-boolean v9, v4, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    .line 327
    const/4 v5, 0x2

    .line 328
    iput v5, v4, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    .line 330
    const/4 v5, 0x5

    .line 331
    iput v5, v4, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    .line 333
    iput v8, v4, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

    .line 335
    const/16 v6, 0xa

    .line 337
    iput v6, v4, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

    .line 339
    const-wide/32 v6, 0x5265c00

    .line 342
    iput-wide v6, v4, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    .line 344
    iput v8, v4, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

    .line 346
    const-wide/32 v12, 0x1499700

    .line 349
    iput-wide v12, v4, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

    .line 351
    const-wide/32 v12, 0x1b7740

    .line 354
    iput-wide v12, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 356
    const-wide/32 v12, 0x927c0

    .line 359
    iput-wide v12, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    .line 361
    const-wide/32 v12, 0x2bf20

    .line 364
    iput-wide v12, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    .line 366
    sget-wide v12, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_GUARANTEE_MS:J

    .line 368
    iput-wide v12, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    .line 370
    sget-wide v12, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_UI_LIMIT_MS:J

    .line 372
    iput-wide v12, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    .line 374
    const v12, 0x3faccccd    # 1.35f

    .line 377
    iput v12, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

    .line 379
    sget-wide v12, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 381
    iput-wide v12, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 383
    iput-wide v6, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

    .line 385
    iput-boolean v1, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

    .line 387
    iput-boolean v9, v4, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    .line 389
    const v6, 0x186a0

    .line 392
    iput v6, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    .line 394
    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService$Constants;->copyTransportBatchThresholdDefaults()V

    .line 397
    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 399
    new-instance v4, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 401
    invoke-direct {v4, p0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 404
    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 406
    new-instance v4, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 408
    invoke-direct {v4, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 411
    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 413
    new-instance v4, Lcom/android/server/job/JobConcurrencyManager;

    .line 415
    new-instance v6, Lcom/android/server/job/JobConcurrencyManager$Injector;

    .line 417
    invoke-direct {v6}, Lcom/android/server/job/JobConcurrencyManager$Injector;-><init>()V

    .line 420
    invoke-direct {v4, p0, v6}, Lcom/android/server/job/JobConcurrencyManager;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager$Injector;)V

    .line 423
    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 425
    new-instance v4, Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    .line 427
    invoke-direct {v4, p0}, Lcom/android/server/job/JobSchedulerService$StandbyTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 430
    const-class v6, Landroid/app/usage/UsageStatsManagerInternal;

    .line 432
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 435
    move-result-object v6

    .line 436
    check-cast v6, Landroid/app/usage/UsageStatsManagerInternal;

    .line 438
    sput-object v6, Lcom/android/server/job/JobSchedulerService;->sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 440
    new-instance v6, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;

    .line 442
    invoke-direct {v6, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 445
    new-instance v7, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 447
    invoke-direct {v7, p1, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    .line 450
    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 452
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    .line 455
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    .line 457
    invoke-virtual {v7, v6, v9, v10, v11}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 460
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    .line 462
    const v12, 0x7fffffff

    .line 465
    invoke-virtual {v7, v6, v12, v10, v11}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 468
    const-class v6, Lcom/android/server/usage/AppStandbyInternal;

    .line 470
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 473
    move-result-object v6

    .line 474
    check-cast v6, Lcom/android/server/usage/AppStandbyInternal;

    .line 476
    iput-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 478
    invoke-interface {v6, v4}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 481
    const-class v4, Landroid/os/BatteryStatsInternal;

    .line 483
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 486
    move-result-object v4

    .line 487
    check-cast v4, Landroid/os/BatteryStatsInternal;

    .line 489
    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 491
    const-class v4, Lcom/android/server/job/JobSchedulerInternal;

    .line 493
    new-instance v6, Lcom/android/server/job/JobSchedulerService$LocalService;

    .line 495
    invoke-direct {v6, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 498
    invoke-virtual {p0, v4, v6}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 501
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 503
    invoke-direct {v4, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 506
    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 508
    sget-object v6, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    .line 510
    monitor-enter v6

    .line 511
    :try_start_0
    sget-object v7, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    .line 513
    if-nez v7, :cond_2

    .line 515
    new-instance v7, Lcom/android/server/job/JobStore;

    .line 517
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 520
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 523
    move-result-object v10

    .line 524
    invoke-direct {v7, v0, v10}, Lcom/android/server/job/JobStore;-><init>(Ljava/lang/Object;Ljava/io/File;)V

    .line 527
    sput-object v7, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    .line 529
    goto :goto_2

    .line 530
    :catchall_0
    move-exception p0

    .line 531
    goto/16 :goto_3

    .line 533
    :cond_2
    :goto_2
    sget-object v0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    .line 535
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 538
    iget-object v6, v0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    .line 540
    new-instance v7, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    .line 542
    iget-object v10, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 544
    iget-boolean v11, v0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    .line 546
    invoke-direct {v7, v0, v10, v11, v4}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;ZLjava/util/concurrent/CountDownLatch;)V

    .line 549
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 552
    new-instance v4, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 554
    invoke-direct {v4, p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 557
    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 559
    const-string v6, "android.intent.action.BATTERY_LOW"

    .line 561
    const-string v7, "android.intent.action.BATTERY_OKAY"

    .line 563
    const-string v10, "android.os.action.CHARGING"

    .line 565
    const-string v11, "android.os.action.DISCHARGING"

    .line 567
    const-string v12, "android.intent.action.BATTERY_LEVEL_CHANGED"

    .line 569
    invoke-static {v6, v7, v10, v11, v12}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 572
    move-result-object v6

    .line 573
    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 575
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 580
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 586
    move-result-object v7

    .line 587
    invoke-virtual {v7, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 590
    iget-object v6, v4, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 592
    invoke-virtual {v6, v4}, Landroid/os/BatteryManagerInternal;->registerChargingPolicyChangeListener(Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;)V

    .line 595
    iget-object v6, v4, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 597
    invoke-virtual {v6}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    .line 600
    move-result v6

    .line 601
    iput v6, v4, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryLevel:I

    .line 603
    iget-object v6, v4, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 605
    invoke-virtual {v6}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    .line 608
    move-result v6

    .line 609
    xor-int/2addr v6, v9

    .line 610
    iput-boolean v6, v4, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    .line 612
    iget-object v6, v4, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 614
    const/16 v7, 0xf

    .line 616
    invoke-virtual {v6, v7}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    .line 619
    move-result v6

    .line 620
    iput-boolean v6, v4, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    .line 622
    iget-object v6, v4, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 624
    invoke-virtual {v6}, Landroid/os/BatteryManagerInternal;->getChargingPolicy()I

    .line 627
    move-result v6

    .line 628
    iput v6, v4, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    .line 630
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 632
    invoke-direct {v4, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 635
    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 637
    new-instance v4, Ljava/util/ArrayList;

    .line 639
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 642
    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 644
    new-instance v6, Lcom/android/server/job/controllers/PrefetchController;

    .line 646
    invoke-direct {v6, p0}, Lcom/android/server/job/controllers/PrefetchController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 649
    iput-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 651
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    new-instance v7, Lcom/android/server/job/controllers/FlexibilityController;

    .line 656
    invoke-direct {v7, p0, v6}, Lcom/android/server/job/controllers/FlexibilityController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/PrefetchController;)V

    .line 659
    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 661
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    new-instance v6, Lcom/android/server/job/controllers/ConnectivityController;

    .line 666
    invoke-direct {v6, p0, v7}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 669
    iput-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 671
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance v9, Lcom/android/server/job/controllers/TimeController;

    .line 676
    invoke-direct {v9, p0}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 679
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    new-instance v9, Lcom/android/server/job/controllers/IdleController;

    .line 684
    invoke-direct {v9, p0, v7}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 687
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    new-instance v10, Lcom/android/server/job/controllers/BatteryController;

    .line 692
    invoke-direct {v10, p0, v7}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 695
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    new-instance v7, Lcom/android/server/job/controllers/StorageController;

    .line 700
    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/StorageController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 703
    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    .line 705
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    new-instance v7, Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 710
    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/BackgroundJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 713
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    new-instance v11, Lcom/android/server/job/controllers/ContentObserverController;

    .line 718
    invoke-direct {v11, p0}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 721
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    new-instance v11, Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 726
    invoke-direct {v11, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 729
    iput-object v11, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 731
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    new-instance v11, Lcom/android/server/job/controllers/QuotaController;

    .line 736
    invoke-direct {v11, p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 739
    iput-object v11, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    .line 741
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    new-instance v7, Lcom/android/server/job/controllers/ComponentController;

    .line 746
    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/ComponentController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 749
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    new-instance v7, Lcom/android/server/job/controllers/UidRestrictController;

    .line 754
    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/UidRestrictController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 757
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    new-instance v4, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    .line 762
    const/4 v7, 0x1

    .line 763
    invoke-direct {v4, p0, v7}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    .line 766
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 769
    new-instance v3, Ljava/util/ArrayList;

    .line 771
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 774
    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    .line 776
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    new-instance v3, Ljava/util/ArrayList;

    .line 787
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 790
    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 792
    new-instance v4, Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 794
    const/4 v6, 0x4

    .line 795
    const/16 v7, 0xc

    .line 797
    invoke-direct {v4, p0, v6, v7, v5}, Lcom/android/server/job/restrictions/JobRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;III)V

    .line 800
    iput v1, v4, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 802
    new-instance v5, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;

    .line 804
    invoke-direct {v5, v4}, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;-><init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V

    .line 807
    new-instance v7, Landroid/content/IntentFilter;

    .line 809
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 812
    const-string/jumbo v9, "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

    .line 815
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 821
    move-result-object v9

    .line 822
    invoke-virtual {v9, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 825
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    new-instance v4, Lcom/android/server/job/restrictions/OlafRestriction;

    .line 830
    const/16 v5, 0xd

    .line 832
    const/16 v7, 0xb

    .line 834
    invoke-direct {v4, p0, v7, v8, v5}, Lcom/android/server/job/restrictions/JobRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;III)V

    .line 837
    iput-boolean v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mForceRestricted:Z

    .line 839
    iput-boolean v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    .line 841
    iput v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafUid:I

    .line 843
    iput-boolean v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mForceDisabled:Z

    .line 845
    new-instance v1, Landroid/util/ArrayMap;

    .line 847
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 850
    iput-object v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->isSystemAppCache:Landroid/util/ArrayMap;

    .line 852
    new-instance v1, Lcom/android/server/job/restrictions/OlafRestriction$1;

    .line 854
    invoke-direct {v1, v4}, Lcom/android/server/job/restrictions/OlafRestriction$1;-><init>(Lcom/android/server/job/restrictions/OlafRestriction;)V

    .line 857
    const-string/jumbo v5, "com.samsung.intent.action.OLAF_STATE_CHANGED"

    .line 860
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 863
    move-result-object v5

    .line 864
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 867
    move-result-object v7

    .line 868
    invoke-virtual {v7, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 871
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 873
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 876
    move-result-object v1

    .line 877
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 879
    iput-object v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 881
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 884
    move-result-object v1

    .line 885
    const-class v5, Landroid/os/PowerExemptionManager;

    .line 887
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 890
    move-result-object v1

    .line 891
    check-cast v1, Landroid/os/PowerExemptionManager;

    .line 893
    iput-object v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 895
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    iget-boolean v0, v0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    .line 900
    if-nez v0, :cond_3

    .line 902
    const-string v0, "JobScheduler"

    .line 904
    const-string v1, "!!! RTC not yet good; tracking time updates for job scheduling"

    .line 906
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    new-instance v0, Landroid/content/IntentFilter;

    .line 911
    const-string v1, "android.intent.action.TIME_SET"

    .line 913
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 919
    :cond_3
    new-instance p1, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;

    .line 921
    invoke-direct {p1, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 924
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobCounter:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;

    .line 926
    new-instance p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    .line 928
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 931
    const-wide/16 v0, 0x0

    .line 933
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOverrideNone:J

    .line 935
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchExpedited:J

    .line 937
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchStandbyBucket:J

    .line 939
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchPrefetch:J

    .line 941
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchPrefetch:J

    .line 943
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchAttempts:J

    .line 945
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchNetwork:J

    .line 947
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchNetwork:J

    .line 949
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOthers:J

    .line 951
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchOthers:J

    .line 953
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    .line 955
    new-instance p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    .line 957
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 960
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->batchDealyExpired:J

    .line 962
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->notEnoughDeadline:J

    .line 964
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->exemptedStandbyBucket:J

    .line 966
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->activeNetwork:J

    .line 968
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->procState:J

    .line 970
    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->deferrable:J

    .line 972
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    .line 974
    return-void

    .line 975
    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    throw p0
.end method

.method public static safelyScaleBytesToKBForHistogram(J)I
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 3
    div-long/2addr p0, v0

    .line 4
    const-wide/32 v0, 0x7fffffff

    .line 7
    cmp-long v0, p0, v0

    .line 9
    if-lez v0, :cond_0

    .line 11
    const p0, 0x7fffffff

    .line 14
    return p0

    .line 15
    :cond_0
    const-wide/32 v0, -0x80000000

    .line 18
    cmp-long v0, p0, v0

    .line 20
    if-gez v0, :cond_1

    .line 22
    const/high16 p0, -0x80000000

    .line 24
    return p0

    .line 25
    :cond_1
    long-to-int p0, p0

    .line 26
    return p0
.end method

.method public static standbyBucketForPackage(ILjava/lang/String;J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    .line 8
    move-result p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    .line 14
    move-result p2

    .line 15
    sget-boolean p3, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    .line 17
    if-eqz p3, :cond_1

    .line 19
    new-instance p3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, "/"

    .line 29
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string p0, " standby bucket index: "

    .line 37
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    const-string p1, "JobScheduler"

    .line 49
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    return p2
.end method

.method public static standbyBucketToBucketIndex(I)I
    .locals 2

    .line 1
    const/16 v0, 0x32

    .line 3
    if-ne p0, v0, :cond_0

    .line 5
    const/4 p0, 0x4

    .line 6
    return p0

    .line 7
    :cond_0
    const/16 v0, 0x28

    .line 9
    const/4 v1, 0x5

    .line 10
    if-le p0, v0, :cond_1

    .line 12
    return v1

    .line 13
    :cond_1
    const/16 v0, 0x1e

    .line 15
    if-le p0, v0, :cond_2

    .line 17
    const/4 p0, 0x3

    .line 18
    return p0

    .line 19
    :cond_2
    const/16 v0, 0x14

    .line 21
    if-le p0, v0, :cond_3

    .line 23
    const/4 p0, 0x2

    .line 24
    return p0

    .line 25
    :cond_3
    const/16 v0, 0xa

    .line 27
    if-le p0, v0, :cond_4

    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_4
    if-le p0, v1, :cond_5

    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_5
    const/4 p0, 0x6

    .line 36
    return p0
.end method


# virtual methods
.method public final adjustJobBias(Lcom/android/server/job/controllers/JobStatus;I)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    const/16 v3, 0x28

    .line 9
    if-ge v2, v3, :cond_7

    .line 11
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 18
    iget-object v5, v3, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 20
    iget-object v5, v5, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Landroid/util/ArrayMap;

    .line 28
    const/4 v6, 0x0

    .line 29
    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 31
    if-nez v5, :cond_0

    .line 33
    move-object v5, v6

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 41
    :goto_0
    iget-object v7, v3, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 43
    const/4 v8, 0x0

    .line 44
    aget-object v9, v7, v8

    .line 46
    if-eqz v9, :cond_2

    .line 48
    iget-object v9, v9, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 50
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/util/ArrayMap;

    .line 56
    if-nez v4, :cond_1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    move-object v6, v1

    .line 64
    check-cast v6, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 66
    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 68
    if-nez v6, :cond_3

    .line 70
    const/4 v1, 0x0

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 74
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    .line 77
    move-result-wide v9

    .line 78
    if-eqz v5, :cond_4

    .line 80
    invoke-virtual {v5, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    .line 83
    move-result-wide v11

    .line 84
    invoke-virtual {v5, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    .line 87
    move-result-wide v4

    .line 88
    add-long/2addr v4, v11

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    const-wide/16 v4, 0x0

    .line 92
    :goto_2
    iget-object v1, v3, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 94
    invoke-virtual {v1, v9, v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    .line 97
    move-result-wide v11

    .line 98
    if-eqz v6, :cond_5

    .line 100
    invoke-virtual {v6, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    .line 103
    move-result-wide v13

    .line 104
    invoke-virtual {v6, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    .line 107
    move-result-wide v15

    .line 108
    add-long/2addr v15, v13

    .line 109
    add-long/2addr v4, v15

    .line 110
    aget-object v1, v7, v8

    .line 112
    invoke-virtual {v1, v9, v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    .line 115
    move-result-wide v6

    .line 116
    add-long/2addr v11, v6

    .line 117
    :cond_5
    long-to-float v1, v4

    .line 118
    long-to-float v3, v11

    .line 119
    div-float/2addr v1, v3

    .line 120
    :goto_3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 122
    iget v3, v0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    .line 124
    cmpl-float v3, v1, v3

    .line 126
    if-ltz v3, :cond_6

    .line 128
    add-int/lit8 v0, v2, -0x50

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    .line 133
    cmpl-float v0, v1, v0

    .line 135
    if-ltz v0, :cond_7

    .line 137
    add-int/lit8 v0, v2, -0x28

    .line 139
    goto :goto_4

    .line 140
    :cond_7
    move v0, v2

    .line 141
    :goto_4
    return v0
.end method

.method public final areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 3
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 5
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 8
    move-result v0

    .line 9
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v2

    .line 15
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 17
    if-ne v2, p1, :cond_0

    .line 19
    return v0

    .line 20
    :cond_0
    if-eqz v0, :cond_1

    .line 22
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 24
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    move-result p1

    .line 28
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    :goto_0
    return p0
.end method

.method public final cancelJob(IIIILjava/lang/String;)Z
    .locals 9

    .line 1
    const-string/jumbo v0, "cancel() called by app, callingUid="

    .line 4
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 9
    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 11
    invoke-virtual {v2, p1, p2, p5}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    .line 14
    move-result-object p5

    .line 15
    if-eqz p5, :cond_0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string p3, " uid="

    .line 27
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, " jobId="

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v8

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v3, p0

    .line 48
    move-object v4, p5

    .line 49
    move v6, p4

    .line 50
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 58
    const/4 p0, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 p0, 0x0

    .line 61
    :goto_1
    monitor-exit v1

    .line 62
    return p0

    .line 63
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public final cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    .locals 76

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move/from16 v15, p4

    .line 9
    const-string v14, "JobScheduler"

    .line 11
    sget-boolean v70, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 13
    if-eqz v70, :cond_0

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    const-string v4, "CANCEL: "

    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 39
    const/4 v13, 0x1

    .line 40
    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 43
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 45
    invoke-virtual {v3, v1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 51
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 53
    invoke-virtual {v3, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 56
    :cond_1
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 58
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 61
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 63
    move/from16 v12, p3

    .line 65
    move-object/from16 v4, p5

    .line 67
    invoke-virtual {v3, v1, v12, v15, v4}, Lcom/android/server/job/JobConcurrencyManager;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z

    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_4

    .line 73
    iget v3, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 75
    iget v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 77
    iget-boolean v5, v1, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    .line 79
    if-eqz v5, :cond_2

    .line 81
    filled-new-array {v4, v3}, [I

    .line 84
    move-result-object v4

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    new-array v6, v13, [I

    .line 88
    const/4 v7, 0x0

    .line 89
    aput v4, v6, v7

    .line 91
    move-object v4, v6

    .line 92
    :goto_0
    iget-object v6, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 94
    if-eqz v5, :cond_3

    .line 96
    const/4 v5, 0x0

    .line 97
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 100
    move-result-object v5

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    filled-new-array {v6}, [Ljava/lang/String;

    .line 105
    move-result-object v5

    .line 106
    :goto_1
    iget v9, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 108
    invoke-virtual {v1, v13}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 111
    move-result v16

    .line 112
    const/4 v6, 0x2

    .line 113
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 116
    move-result v17

    .line 117
    const/16 v7, 0x8

    .line 119
    invoke-virtual {v1, v7}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 122
    move-result v18

    .line 123
    const/high16 v8, -0x80000000

    .line 125
    invoke-virtual {v1, v8}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 128
    move-result v19

    .line 129
    const/high16 v10, 0x40000000    # 2.0f

    .line 131
    invoke-virtual {v1, v10}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 134
    move-result v20

    .line 135
    const/4 v11, 0x4

    .line 136
    invoke-virtual {v1, v11}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 139
    move-result v22

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 143
    move-result v23

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    .line 147
    move-result v24

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 151
    move-result v25

    .line 152
    iget-object v11, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 154
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 157
    move-result v26

    .line 158
    iget-object v11, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 160
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getPriority()I

    .line 163
    move-result v27

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 167
    move-result v28

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    .line 171
    move-result v29

    .line 172
    iget-object v11, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 174
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    .line 177
    move-result-wide v30

    .line 178
    invoke-virtual {v1, v10}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 181
    move-result v32

    .line 182
    invoke-virtual {v1, v13}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 185
    move-result v33

    .line 186
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 189
    move-result v34

    .line 190
    invoke-virtual {v1, v7}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 193
    move-result v35

    .line 194
    invoke-virtual {v1, v8}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 197
    move-result v36

    .line 198
    const/4 v6, 0x4

    .line 199
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 202
    move-result v39

    .line 203
    const/high16 v6, 0x10000000

    .line 205
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 208
    move-result v41

    .line 209
    const/high16 v6, 0x4000000

    .line 211
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 214
    move-result v42

    .line 215
    iget-object v6, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 217
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    .line 220
    move-result v43

    .line 221
    iget-object v6, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 223
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 226
    move-result v44

    .line 227
    iget-object v6, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 229
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    .line 232
    move-result-wide v45

    .line 233
    iget-wide v10, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 235
    iget-wide v7, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    .line 240
    move-result v48

    .line 241
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 243
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 246
    move-result v3

    .line 247
    invoke-static {v3}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    .line 250
    move-result v49

    .line 251
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 253
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    .line 256
    move-result-wide v59

    .line 257
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 259
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getFlexMillis()J

    .line 262
    move-result-wide v61

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    .line 266
    move-result v63

    .line 267
    const/high16 v3, 0x200000

    .line 269
    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 272
    move-result v64

    .line 273
    iget v6, v1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 275
    iget v3, v1, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    .line 280
    move-result-object v68

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    .line 284
    move-result-object v69

    .line 285
    const-wide/16 v57, 0x0

    .line 287
    iget-boolean v13, v1, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    .line 289
    move/from16 v65, v13

    .line 291
    const/16 v13, 0x8

    .line 293
    move/from16 v67, v3

    .line 295
    move v3, v13

    .line 296
    iget-object v13, v1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 298
    move/from16 v66, v6

    .line 300
    move-object v6, v13

    .line 301
    const/4 v13, 0x3

    .line 302
    move-wide/from16 v71, v7

    .line 304
    move v7, v13

    .line 305
    iget-wide v7, v1, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    .line 307
    move-wide/from16 v73, v10

    .line 309
    move-wide v10, v7

    .line 310
    const/16 v21, 0x0

    .line 312
    const-wide/16 v37, 0x0

    .line 314
    const/16 v40, 0x0

    .line 316
    iget-object v7, v1, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    .line 318
    move-object/from16 v50, v7

    .line 320
    const-wide/16 v51, 0x0

    .line 322
    const-wide/16 v53, 0x0

    .line 324
    const-wide/16 v55, 0x0

    .line 326
    move/from16 v8, p4

    .line 328
    move/from16 v12, v16

    .line 330
    const/16 v75, 0x1

    .line 332
    move/from16 v13, v17

    .line 334
    move-object v7, v14

    .line 335
    move/from16 v14, v18

    .line 337
    move/from16 v15, v19

    .line 339
    move/from16 v16, v20

    .line 341
    move/from16 v17, v22

    .line 343
    move/from16 v18, v23

    .line 345
    move/from16 v19, v24

    .line 347
    move/from16 v20, v25

    .line 349
    move/from16 v22, p3

    .line 351
    move/from16 v23, v26

    .line 353
    move/from16 v24, v27

    .line 355
    move/from16 v25, v28

    .line 357
    move/from16 v26, v29

    .line 359
    move-wide/from16 v27, v30

    .line 361
    move/from16 v29, v32

    .line 363
    move/from16 v30, v33

    .line 365
    move/from16 v31, v34

    .line 367
    move/from16 v32, v35

    .line 369
    move/from16 v33, v36

    .line 371
    move/from16 v34, v39

    .line 373
    move/from16 v35, v41

    .line 375
    move/from16 v36, v42

    .line 377
    move/from16 v39, v43

    .line 379
    move/from16 v41, v44

    .line 381
    move-wide/from16 v42, v45

    .line 383
    move-wide/from16 v44, v73

    .line 385
    move-wide/from16 v46, v71

    .line 387
    move-object v0, v7

    .line 388
    const/4 v7, 0x3

    .line 389
    invoke-static/range {v3 .. v69}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;)V

    .line 392
    goto :goto_2

    .line 393
    :cond_4
    move/from16 v75, v13

    .line 395
    move-object v0, v14

    .line 396
    :goto_2
    if-eqz v2, :cond_6

    .line 398
    if-eqz v70, :cond_5

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    .line 402
    const-string v4, "Tracking replacement job "

    .line 404
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 410
    move-result-object v4

    .line 411
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    move-result-object v3

    .line 418
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_5
    move-object/from16 v0, p0

    .line 423
    invoke-virtual {v0, v2, v1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 426
    goto :goto_3

    .line 427
    :cond_6
    move-object/from16 v0, p0

    .line 429
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 432
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    .line 434
    array-length v3, v2

    .line 435
    if-lez v3, :cond_7

    .line 437
    if-nez p4, :cond_7

    .line 439
    iget v3, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    .line 441
    aput-object v1, v2, v3

    .line 443
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 445
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 451
    move-result-wide v4

    .line 452
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobTimeElapsed:[J

    .line 454
    aput-wide v4, v1, v3

    .line 456
    iget v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    .line 458
    add-int/lit8 v1, v1, 0x1

    .line 460
    array-length v2, v2

    .line 461
    rem-int/2addr v1, v2

    .line 462
    iput v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    .line 464
    :cond_7
    return-void
.end method

.method public final cancelJobsForUid(IIIZZLjava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move-object/from16 v7, p6

    .line 5
    const/16 v2, 0x3e8

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_1

    .line 10
    if-eqz p5, :cond_0

    .line 12
    if-nez v7, :cond_1

    .line 14
    :cond_0
    const-string v0, "JobScheduler"

    .line 16
    const-string v1, "Can\'t cancel all jobs for system uid"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return v3

    .line 22
    :cond_1
    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v8

    .line 25
    :try_start_0
    new-instance v9, Landroid/util/ArraySet;

    .line 27
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 30
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 32
    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 34
    iget-object v2, v2, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/util/ArraySet;

    .line 42
    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {v9, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 47
    :cond_2
    if-eqz p4, :cond_3

    .line 49
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 51
    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 53
    invoke-virtual {v2, p1, v9}, Lcom/android/server/job/JobStore$JobSet;->getJobsBySourceUid(ILjava/util/Set;)V

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    :goto_0
    move v10, v3

    .line 60
    :goto_1
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 63
    move-result v1

    .line 64
    if-ge v10, v1, :cond_6

    .line 66
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    move-object v2, v1

    .line 71
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 73
    if-eqz p5, :cond_4

    .line 75
    iget-object v1, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 77
    invoke-static {v7, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_5

    .line 83
    :cond_4
    const/4 v3, 0x0

    .line 84
    move-object v1, p0

    .line 85
    move v4, p2

    .line 86
    move v5, p3

    .line 87
    move-object/from16 v6, p7

    .line 89
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 92
    const/4 v1, 0x1

    .line 93
    move v3, v1

    .line 94
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_6
    monitor-exit v8

    .line 98
    return v3

    .line 99
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw v0
.end method

.method public final checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/job/restrictions/JobRestriction;

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 29
    return-object v1

    .line 30
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final clearPendingJobQueue()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 12
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 14
    invoke-virtual {v3, v2}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    iput p0, v0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 21
    iget-object v2, v0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 26
    move-result v2

    .line 27
    sub-int/2addr v2, v1

    .line 28
    :goto_1
    if-ltz v2, :cond_1

    .line 30
    iget-object v1, v0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 38
    iget-object v3, v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 40
    check-cast v3, Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 45
    iput p0, v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 47
    iget-object v3, v0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    .line 49
    check-cast v3, Landroid/util/Pools$SimplePool;

    .line 51
    invoke-virtual {v3, v1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v2, v2, -0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object p0, v0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 62
    iget-object p0, v0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 64
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->clear()V

    .line 67
    return-void
.end method

.method public final deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/os/WorkSource;->isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z

    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 11
    new-instance p0, Landroid/os/WorkSource;

    .line 13
    invoke-direct {p0}, Landroid/os/WorkSource;-><init>()V

    .line 16
    invoke-virtual {p0}, Landroid/os/WorkSource;->createWorkChain()Landroid/os/WorkSource$WorkChain;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    .line 23
    move-result-object p1

    .line 24
    const/16 p2, 0x3e8

    .line 26
    const-string v0, "JobScheduler"

    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    .line 31
    return-object p0

    .line 32
    :cond_0
    if-nez p2, :cond_1

    .line 34
    new-instance p0, Landroid/os/WorkSource;

    .line 36
    invoke-direct {p0, p1}, Landroid/os/WorkSource;-><init>(I)V

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Landroid/os/WorkSource;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 45
    :goto_0
    return-object p0
.end method

.method public final dumpInternal(Landroid/util/IndentingPrintWriter;I)V
    .locals 20
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v8, p1

    .line 5
    move/from16 v9, p2

    .line 7
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 10
    move-result v1

    .line 11
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 13
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    .line 16
    move-result-wide v10

    .line 17
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 19
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService$1;->millis()J

    .line 22
    move-result-wide v12

    .line 23
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 25
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    .line 28
    move-result-wide v6

    .line 29
    new-instance v14, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {v14, v1, v2}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(II)V

    .line 35
    iget-object v15, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 37
    monitor-enter v15

    .line 38
    :try_start_0
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 40
    invoke-virtual {v2, v8}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 43
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 45
    check-cast v2, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v2

    .line 51
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lcom/android/server/job/controllers/StateController;

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 66
    invoke-virtual {v3, v8}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto/16 :goto_15

    .line 76
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v3, "  [BatchNetworkJob] JobCountForMaybeReadyJobs: "

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobCountBuffer:Lcom/android/internal/util/RingBuffer;

    .line 94
    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 97
    move-result v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 108
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobCountBuffer:Lcom/android/internal/util/RingBuffer;

    .line 110
    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 113
    move-result-object v2

    .line 114
    check-cast v2, [Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;

    .line 116
    const/4 v3, 0x0

    .line 117
    :goto_1
    array-length v5, v2

    .line 118
    if-ge v3, v5, :cond_1

    .line 120
    aget-object v5, v2, v3

    .line 122
    invoke-virtual {v5}, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;->toString()Ljava/lang/String;

    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 134
    goto :goto_1

    .line 135
    :cond_1
    const-string v2, "  [BatchNetworkJob] version = 2"

    .line 137
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    const-string v3, "  [BatchNetworkJob] DeferrableNetworkJob = "

    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    .line 152
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->toString()Ljava/lang/String;

    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const-string v3, "  [BatchNetworkJob] AcceptCount: "

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    .line 178
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->toString()Ljava/lang/String;

    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 192
    const-string v2, "Aconfig flags:"

    .line 194
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 200
    const-string/jumbo v2, "com.android.server.job.batch_active_bucket_jobs"

    .line 203
    invoke-static {}, Lcom/android/server/job/Flags;->batchActiveBucketJobs()Z

    .line 206
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 208
    invoke-virtual {v8, v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 214
    const-string/jumbo v2, "com.android.server.job.batch_connectivity_jobs_per_network"

    .line 217
    invoke-static {}, Lcom/android/server/job/Flags;->batchConnectivityJobsPerNetwork()Z

    .line 220
    invoke-virtual {v8, v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 226
    const-string v2, "Force batch connectivity jobs: true"

    .line 228
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 234
    const-string/jumbo v2, "com.android.server.job.do_not_force_rush_execution_at_boot"

    .line 237
    invoke-static {}, Lcom/android/server/job/Flags;->doNotForceRushExecutionAtBoot()Z

    .line 240
    invoke-virtual {v8, v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 246
    const-string v2, "android.app.job.backup_jobs_exemption"

    .line 248
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->backupJobsExemption()Z

    .line 251
    move-result v3

    .line 252
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v8, v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 268
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 270
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 273
    move-result v2

    .line 274
    const/4 v5, 0x1

    .line 275
    sub-int/2addr v2, v5

    .line 276
    :goto_2
    if-ltz v2, :cond_2

    .line 278
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 280
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 283
    move-result-object v3

    .line 284
    check-cast v3, Lcom/android/server/job/restrictions/JobRestriction;

    .line 286
    invoke-virtual {v3, v8}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    .line 289
    add-int/lit8 v2, v2, -0x1

    .line 291
    goto :goto_2

    .line 292
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 295
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 297
    invoke-virtual {v2, v8}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 303
    const-string v2, "Power connected: "

    .line 305
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 308
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 310
    iget-boolean v2, v2, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    .line 312
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 315
    const-string v2, "Battery charging: "

    .line 317
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 320
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 322
    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$fgetmCharging(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)Z

    .line 325
    move-result v2

    .line 326
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 329
    const-string v2, "Considered charging: "

    .line 331
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 334
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 336
    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$misConsideredCharging(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)Z

    .line 339
    move-result v2

    .line 340
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 343
    const-string v2, "Battery level: "

    .line 345
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 348
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 350
    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$fgetmBatteryLevel(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)I

    .line 353
    move-result v2

    .line 354
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 357
    const-string v2, "Battery not low: "

    .line 359
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 364
    iget-boolean v2, v2, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    .line 366
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 369
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 371
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isMonitoring()Z

    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_3

    .line 377
    const-string v2, "MONITORING: seq="

    .line 379
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 382
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 384
    iget v2, v2, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    .line 386
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 389
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    .line 394
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    const-string v3, "Started users: "

    .line 399
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 404
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 407
    move-result-object v3

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 421
    const-string v2, "Media Cloud Providers: "

    .line 423
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 426
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    .line 428
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 434
    const-string v2, "Registered "

    .line 436
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 439
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 441
    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 443
    invoke-virtual {v2}, Lcom/android/server/job/JobStore$JobSet;->size()I

    .line 446
    move-result v2

    .line 447
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 450
    const-string v2, " jobs:"

    .line 452
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 458
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 460
    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 462
    invoke-virtual {v2}, Lcom/android/server/job/JobStore$JobSet;->size()I

    .line 465
    move-result v2

    .line 466
    if-lez v2, :cond_a

    .line 468
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 470
    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 472
    invoke-virtual {v2}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    .line 475
    move-result-object v2

    .line 476
    new-instance v3, Lcom/android/server/job/JobSchedulerService$6;

    .line 478
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 481
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 484
    check-cast v2, Ljava/util/ArrayList;

    .line 486
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 489
    move-result-object v2

    .line 490
    const/4 v3, 0x0

    .line 491
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 494
    move-result v16

    .line 495
    if-eqz v16, :cond_9

    .line 497
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 500
    move-result-object v16

    .line 501
    move-object/from16 v4, v16

    .line 503
    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 505
    invoke-virtual {v14, v4}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    .line 508
    move-result v16

    .line 509
    if-nez v16, :cond_4

    .line 511
    goto :goto_3

    .line 512
    :cond_4
    const-string v3, "JOB "

    .line 514
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v4, v8}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 520
    const-string v3, ": "

    .line 522
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    .line 528
    move-result-object v3

    .line 529
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 535
    invoke-virtual {v4, v8, v5, v12, v13}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 538
    const-string v3, "Restricted due to:"

    .line 540
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    .line 546
    move-result-object v3

    .line 547
    if-eqz v3, :cond_5

    .line 549
    move v3, v5

    .line 550
    goto :goto_4

    .line 551
    :cond_5
    const/4 v3, 0x0

    .line 552
    :goto_4
    if-eqz v3, :cond_8

    .line 554
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 556
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 559
    move-result v5

    .line 560
    const/16 v16, 0x1

    .line 562
    add-int/lit8 v5, v5, -0x1

    .line 564
    :goto_5
    if-ltz v5, :cond_7

    .line 566
    move-object/from16 v17, v2

    .line 568
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 570
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 573
    move-result-object v2

    .line 574
    check-cast v2, Lcom/android/server/job/restrictions/JobRestriction;

    .line 576
    move-wide/from16 v18, v10

    .line 578
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 581
    move-result v10

    .line 582
    invoke-virtual {v2, v4, v10}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 585
    move-result v10

    .line 586
    if-eqz v10, :cond_6

    .line 588
    iget v2, v2, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    .line 590
    const-string v10, " "

    .line 592
    invoke-virtual {v8, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 595
    invoke-static {v2}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    .line 598
    move-result-object v2

    .line 599
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 602
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 604
    move-object/from16 v2, v17

    .line 606
    move-wide/from16 v10, v18

    .line 608
    goto :goto_5

    .line 609
    :cond_7
    move-object/from16 v17, v2

    .line 611
    move-wide/from16 v18, v10

    .line 613
    goto :goto_6

    .line 614
    :cond_8
    move-object/from16 v17, v2

    .line 616
    move-wide/from16 v18, v10

    .line 618
    const-string v2, " none"

    .line 620
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 623
    :goto_6
    const-string v2, "."

    .line 625
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 628
    const-string v2, "Ready: "

    .line 630
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 636
    move-result v2

    .line 637
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 640
    const-string v2, " (job="

    .line 642
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 645
    iget v2, v4, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 647
    invoke-virtual {v4, v2}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 650
    move-result v2

    .line 651
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 654
    const-string v2, " user="

    .line 656
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 662
    move-result v2

    .line 663
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 666
    const-string v2, " !restricted="

    .line 668
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 671
    xor-int/lit8 v2, v3, 0x1

    .line 673
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 676
    const-string v2, " !pending="

    .line 678
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 681
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 683
    invoke-virtual {v2, v4}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 686
    move-result v2

    .line 687
    const/4 v3, 0x1

    .line 688
    xor-int/2addr v2, v3

    .line 689
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 692
    const-string v2, " !active="

    .line 694
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 697
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 699
    iget-object v2, v2, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 701
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 704
    move-result v2

    .line 705
    const/4 v3, 0x1

    .line 706
    xor-int/2addr v2, v3

    .line 707
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 710
    const-string v2, " !backingup="

    .line 712
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 715
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 717
    iget v3, v4, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 719
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 722
    move-result v2

    .line 723
    const/4 v3, 0x1

    .line 724
    xor-int/2addr v2, v3

    .line 725
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 728
    const-string v2, " comp="

    .line 730
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 736
    move-result v2

    .line 737
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 740
    const-string v2, ")"

    .line 742
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 748
    move-object/from16 v2, v17

    .line 750
    move-wide/from16 v10, v18

    .line 752
    const/4 v3, 0x1

    .line 753
    const/4 v5, 0x1

    .line 754
    goto/16 :goto_3

    .line 756
    :cond_9
    move-wide/from16 v18, v10

    .line 758
    goto :goto_7

    .line 759
    :cond_a
    move-wide/from16 v18, v10

    .line 761
    const/4 v3, 0x0

    .line 762
    :goto_7
    if-nez v3, :cond_b

    .line 764
    const-string v2, "None."

    .line 766
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 769
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 772
    const/4 v2, 0x0

    .line 773
    :goto_8
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 775
    check-cast v3, Ljava/util/ArrayList;

    .line 777
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 780
    move-result v3

    .line 781
    if-ge v2, v3, :cond_c

    .line 783
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    .line 788
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 793
    check-cast v4, Ljava/util/ArrayList;

    .line 795
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 798
    move-result-object v4

    .line 799
    check-cast v4, Lcom/android/server/job/controllers/StateController;

    .line 801
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 804
    move-result-object v4

    .line 805
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 808
    move-result-object v4

    .line 809
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    const-string v4, ":"

    .line 814
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 820
    move-result-object v3

    .line 821
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 827
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 829
    check-cast v3, Ljava/util/ArrayList;

    .line 831
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 834
    move-result-object v3

    .line 835
    check-cast v3, Lcom/android/server/job/controllers/StateController;

    .line 837
    invoke-virtual {v3, v8, v14}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 843
    add-int/lit8 v2, v2, 0x1

    .line 845
    goto :goto_8

    .line 846
    :cond_c
    const/4 v2, 0x0

    .line 847
    const/4 v3, 0x0

    .line 848
    :goto_9
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 850
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 853
    move-result v4

    .line 854
    const/4 v10, -0x1

    .line 855
    if-ge v3, v4, :cond_10

    .line 857
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 859
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 862
    move-result v4

    .line 863
    if-eq v1, v10, :cond_d

    .line 865
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 868
    move-result v5

    .line 869
    if-ne v1, v5, :cond_f

    .line 871
    :cond_d
    if-nez v2, :cond_e

    .line 873
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 876
    const-string v2, "Uid proc states:"

    .line 878
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 881
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 884
    const/4 v2, 0x1

    .line 885
    :cond_e
    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 888
    move-result-object v4

    .line 889
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 892
    const-string v4, ": "

    .line 894
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 897
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 899
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 902
    move-result v4

    .line 903
    invoke-static {v4}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 906
    move-result-object v4

    .line 907
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 910
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 912
    goto :goto_9

    .line 913
    :cond_10
    if-eqz v2, :cond_11

    .line 915
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 918
    :cond_11
    const/4 v2, 0x0

    .line 919
    const/4 v3, 0x0

    .line 920
    :goto_a
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 922
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 925
    move-result v4

    .line 926
    if-ge v3, v4, :cond_15

    .line 928
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 930
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 933
    move-result v4

    .line 934
    if-eq v1, v10, :cond_12

    .line 936
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 939
    move-result v5

    .line 940
    if-ne v1, v5, :cond_14

    .line 942
    :cond_12
    if-nez v2, :cond_13

    .line 944
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 947
    const-string v2, "Uid bias overrides:"

    .line 949
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 955
    const/4 v2, 0x1

    .line 956
    :cond_13
    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 959
    move-result-object v4

    .line 960
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 963
    const-string v4, ": "

    .line 965
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 968
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 970
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 973
    move-result v4

    .line 974
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 977
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 979
    goto :goto_a

    .line 980
    :cond_15
    if-eqz v2, :cond_16

    .line 982
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 985
    :cond_16
    const/4 v2, 0x0

    .line 986
    const/4 v3, 0x0

    .line 987
    :goto_b
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    .line 989
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 992
    move-result v4

    .line 993
    if-ge v3, v4, :cond_1a

    .line 995
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    .line 997
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 1000
    move-result v4

    .line 1001
    if-eq v1, v10, :cond_17

    .line 1003
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 1006
    move-result v5

    .line 1007
    if-ne v1, v5, :cond_19

    .line 1009
    :cond_17
    if-nez v2, :cond_18

    .line 1011
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1014
    const-string v2, "Uid capabilities:"

    .line 1016
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1022
    const/4 v2, 0x1

    .line 1023
    :cond_18
    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 1026
    move-result-object v4

    .line 1027
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1030
    const-string v4, ": "

    .line 1032
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    .line 1037
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 1040
    move-result v4

    .line 1041
    invoke-static {v4}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    .line 1044
    move-result-object v4

    .line 1045
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    :cond_19
    add-int/lit8 v3, v3, 0x1

    .line 1050
    goto :goto_b

    .line 1051
    :cond_1a
    if-eqz v2, :cond_1b

    .line 1053
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1056
    :cond_1b
    const/4 v2, 0x0

    .line 1057
    const/4 v3, 0x0

    .line 1058
    :goto_c
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 1060
    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    .line 1063
    move-result v4

    .line 1064
    if-ge v3, v4, :cond_1e

    .line 1066
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 1068
    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 1071
    move-result v4

    .line 1072
    if-eq v9, v10, :cond_1c

    .line 1074
    if-eq v9, v4, :cond_1c

    .line 1076
    goto :goto_d

    .line 1077
    :cond_1c
    if-nez v2, :cond_1d

    .line 1079
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1082
    const-string v2, "Cached UID->package map:"

    .line 1084
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1090
    const/4 v2, 0x1

    .line 1091
    :cond_1d
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1094
    const-string v5, ": "

    .line 1096
    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1099
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 1101
    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 1104
    move-result-object v4

    .line 1105
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1108
    :goto_d
    add-int/lit8 v3, v3, 0x1

    .line 1110
    goto :goto_c

    .line 1111
    :cond_1e
    if-eqz v2, :cond_1f

    .line 1113
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1116
    :cond_1f
    const/4 v2, 0x0

    .line 1117
    const/4 v3, 0x0

    .line 1118
    :goto_e
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 1120
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    .line 1123
    move-result v4

    .line 1124
    if-ge v3, v4, :cond_23

    .line 1126
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 1128
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 1131
    move-result v4

    .line 1132
    if-eq v1, v10, :cond_20

    .line 1134
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 1137
    move-result v5

    .line 1138
    if-ne v1, v5, :cond_22

    .line 1140
    :cond_20
    if-nez v2, :cond_21

    .line 1142
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1145
    const-string v2, "Backing up uids:"

    .line 1147
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1153
    const/4 v2, 0x1

    .line 1154
    goto :goto_f

    .line 1155
    :cond_21
    const-string v5, ", "

    .line 1157
    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1160
    :goto_f
    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 1163
    move-result-object v4

    .line 1164
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1167
    :cond_22
    add-int/lit8 v3, v3, 0x1

    .line 1169
    goto :goto_e

    .line 1170
    :cond_23
    if-eqz v2, :cond_24

    .line 1172
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1175
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1178
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1181
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 1183
    invoke-virtual {v2, v8, v1}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/IndentingPrintWriter;I)V

    .line 1186
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1189
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 1191
    invoke-virtual {v2, v8, v1}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/IndentingPrintWriter;I)Z

    .line 1194
    move-result v1

    .line 1195
    if-eqz v1, :cond_25

    .line 1197
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1200
    :cond_25
    const-string v1, "Pending queue:"

    .line 1202
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1205
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1208
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 1210
    const/4 v4, 0x1

    .line 1211
    iput-boolean v4, v1, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 1213
    const/4 v1, 0x0

    .line 1214
    const/16 v16, 0x0

    .line 1216
    :goto_10
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 1218
    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    .line 1221
    move-result-object v2

    .line 1222
    if-eqz v2, :cond_28

    .line 1224
    add-int/2addr v1, v4

    .line 1225
    invoke-virtual {v14, v2}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    .line 1228
    move-result v3

    .line 1229
    if-nez v3, :cond_26

    .line 1231
    goto :goto_10

    .line 1232
    :cond_26
    if-nez v16, :cond_27

    .line 1234
    move/from16 v16, v4

    .line 1236
    :cond_27
    const-string v3, "Pending #"

    .line 1238
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1244
    const-string v3, ": "

    .line 1246
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 1252
    move-result-object v3

    .line 1253
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1259
    const/4 v5, 0x0

    .line 1260
    invoke-virtual {v2, v8, v5, v12, v13}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 1263
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 1266
    move-result v3

    .line 1267
    const-string v11, "Evaluated bias: "

    .line 1269
    invoke-virtual {v8, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1272
    invoke-static {v3}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    .line 1275
    move-result-object v3

    .line 1276
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    const-string v3, "Enq: "

    .line 1281
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1284
    iget-wide v2, v2, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    .line 1286
    sub-long/2addr v2, v6

    .line 1287
    invoke-static {v2, v3, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1290
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1293
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1296
    goto :goto_10

    .line 1297
    :cond_28
    const/4 v5, 0x0

    .line 1298
    if-nez v16, :cond_29

    .line 1300
    const-string v1, "None"

    .line 1302
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1308
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1311
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 1313
    move-object/from16 v2, p1

    .line 1315
    move-object v3, v14

    .line 1316
    move v11, v4

    .line 1317
    move-wide v4, v12

    .line 1318
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/JobConcurrencyManager;->dumpContextInfoLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;JJ)V

    .line 1321
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1324
    const-string v1, "Recently completed jobs:"

    .line 1326
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1332
    move v5, v11

    .line 1333
    const/4 v4, 0x0

    .line 1334
    :goto_11
    const/16 v1, 0x14

    .line 1336
    if-gt v5, v1, :cond_2c

    .line 1338
    iget v2, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    .line 1340
    add-int/2addr v2, v1

    .line 1341
    sub-int/2addr v2, v5

    .line 1342
    rem-int/2addr v2, v1

    .line 1343
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    .line 1345
    aget-object v1, v1, v2

    .line 1347
    if-eqz v1, :cond_2b

    .line 1349
    invoke-virtual {v14, v1}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    .line 1352
    move-result v3

    .line 1353
    if-nez v3, :cond_2a

    .line 1355
    goto :goto_12

    .line 1356
    :cond_2a
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    .line 1358
    aget-wide v2, v3, v2

    .line 1360
    invoke-static {v2, v3, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1363
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1366
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1369
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1372
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 1375
    move-result-object v2

    .line 1376
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {v1, v8, v11, v12, v13}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 1382
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1385
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1388
    move v4, v11

    .line 1389
    :cond_2b
    :goto_12
    add-int/lit8 v5, v5, 0x1

    .line 1391
    goto :goto_11

    .line 1392
    :cond_2c
    if-nez v4, :cond_2d

    .line 1394
    const-string v1, "None"

    .line 1396
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1402
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1405
    move v5, v11

    .line 1406
    const/4 v4, 0x0

    .line 1407
    :goto_13
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    .line 1409
    array-length v2, v1

    .line 1410
    if-gt v5, v2, :cond_31

    .line 1412
    iget v2, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    .line 1414
    array-length v3, v1

    .line 1415
    add-int/2addr v2, v3

    .line 1416
    sub-int/2addr v2, v5

    .line 1417
    array-length v3, v1

    .line 1418
    rem-int/2addr v2, v3

    .line 1419
    aget-object v1, v1, v2

    .line 1421
    if-eqz v1, :cond_30

    .line 1423
    invoke-virtual {v14, v1}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    .line 1426
    move-result v3

    .line 1427
    if-nez v3, :cond_2e

    .line 1429
    goto :goto_14

    .line 1430
    :cond_2e
    if-nez v4, :cond_2f

    .line 1432
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1435
    const-string v3, "Recently cancelled jobs:"

    .line 1437
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1443
    move v4, v11

    .line 1444
    :cond_2f
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobTimeElapsed:[J

    .line 1446
    aget-wide v2, v3, v2

    .line 1448
    invoke-static {v2, v3, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1451
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1454
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1457
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1460
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 1463
    move-result-object v2

    .line 1464
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v1, v8, v11, v12, v13}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 1470
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1473
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1476
    :cond_30
    :goto_14
    add-int/lit8 v5, v5, 0x1

    .line 1478
    goto :goto_13

    .line 1479
    :cond_31
    if-nez v4, :cond_32

    .line 1481
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1484
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1487
    :cond_32
    if-ne v9, v10, :cond_33

    .line 1489
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1492
    const-string/jumbo v1, "mReadyToRock="

    .line 1495
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1498
    iget-boolean v1, v0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 1500
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1503
    const-string/jumbo v1, "mReportedActive="

    .line 1506
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1509
    iget-boolean v1, v0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1511
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1514
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1517
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 1519
    move-object/from16 v2, p1

    .line 1521
    move-wide/from16 v3, v18

    .line 1523
    move-wide v5, v12

    .line 1524
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobConcurrencyManager;->dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V

    .line 1527
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1530
    const-string v1, "PersistStats: "

    .line 1532
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1535
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 1537
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 1539
    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1542
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1546
    return-void

    .line 1547
    :goto_15
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1548
    throw v0
.end method

.method public final dumpInternalProto(Ljava/io/FileDescriptor;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 5
    move-object/from16 v2, p1

    .line 7
    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 10
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 13
    move-result v2

    .line 14
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 16
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    .line 19
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    move-result-wide v3

    .line 28
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 30
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    .line 33
    move-result-wide v5

    .line 34
    new-instance v7, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    .line 36
    const/4 v8, 0x0

    .line 37
    invoke-direct {v7, v2, v8}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(II)V

    .line 40
    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 42
    monitor-enter v8

    .line 43
    const-wide v9, 0x10b00000001L

    .line 48
    :try_start_0
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 51
    move-result-wide v11

    .line 52
    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 54
    invoke-virtual {v13, v1}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 57
    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 59
    check-cast v13, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v13

    .line 65
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v14

    .line 69
    if-eqz v14, :cond_0

    .line 71
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v14

    .line 75
    check-cast v14, Lcom/android/server/job/controllers/StateController;

    .line 77
    invoke-virtual {v14, v1}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto/16 :goto_b

    .line 84
    :cond_0
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 87
    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 89
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 92
    move-result v11

    .line 93
    const/4 v12, 0x1

    .line 94
    sub-int/2addr v11, v12

    .line 95
    :goto_1
    if-ltz v11, :cond_1

    .line 97
    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 99
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v13

    .line 103
    check-cast v13, Lcom/android/server/job/restrictions/JobRestriction;

    .line 105
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    add-int/lit8 v11, v11, -0x1

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 113
    array-length v13, v11

    .line 114
    const/4 v15, 0x0

    .line 115
    :goto_2
    if-ge v15, v13, :cond_2

    .line 117
    aget v14, v11, v15

    .line 119
    move/from16 v16, v13

    .line 121
    const-wide v12, 0x20500000002L

    .line 126
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 129
    add-int/lit8 v15, v15, 0x1

    .line 131
    move/from16 v13, v16

    .line 133
    const/4 v12, 0x1

    .line 134
    goto :goto_2

    .line 135
    :cond_2
    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 137
    invoke-virtual {v11, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 140
    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 142
    iget-object v11, v11, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 144
    invoke-virtual {v11}, Lcom/android/server/job/JobStore$JobSet;->size()I

    .line 147
    move-result v11

    .line 148
    if-lez v11, :cond_6

    .line 150
    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 152
    iget-object v11, v11, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 154
    invoke-virtual {v11}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    .line 157
    move-result-object v11

    .line 158
    new-instance v14, Lcom/android/server/job/JobSchedulerService$6;

    .line 160
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {v11, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    check-cast v11, Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    move-result-object v11

    .line 172
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    move-result v14

    .line 176
    if-eqz v14, :cond_6

    .line 178
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    move-result-object v14

    .line 182
    check-cast v14, Lcom/android/server/job/controllers/JobStatus;

    .line 184
    const-wide v12, 0x20b00000003L

    .line 189
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 192
    move-result-wide v12

    .line 193
    invoke-virtual {v14, v1, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 196
    invoke-virtual {v7, v14}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    .line 199
    move-result v15

    .line 200
    if-nez v15, :cond_3

    .line 202
    goto :goto_3

    .line 203
    :cond_3
    const/4 v15, 0x1

    .line 204
    invoke-virtual {v14, v1, v15, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;ZJ)V

    .line 207
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 210
    move-result v15

    .line 211
    const-wide v9, 0x1080000000aL

    .line 216
    invoke-virtual {v1, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 219
    iget v9, v14, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 221
    invoke-virtual {v14, v9}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 224
    move-result v9

    .line 225
    move-object v15, v11

    .line 226
    const-wide v10, 0x10800000003L

    .line 231
    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 234
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 237
    move-result v9

    .line 238
    const-wide v10, 0x10800000004L

    .line 243
    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 246
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    .line 249
    move-result-object v9

    .line 250
    if-eqz v9, :cond_4

    .line 252
    const/4 v9, 0x1

    .line 253
    :goto_4
    const-wide v10, 0x1080000000bL

    .line 258
    goto :goto_5

    .line 259
    :cond_4
    const/4 v9, 0x0

    .line 260
    goto :goto_4

    .line 261
    :goto_5
    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 264
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 266
    invoke-virtual {v9, v14}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 269
    move-result v9

    .line 270
    const-wide v10, 0x10800000005L

    .line 275
    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 278
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 280
    iget-object v9, v9, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 282
    invoke-virtual {v9, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 285
    move-result v9

    .line 286
    const-wide v10, 0x10800000006L

    .line 291
    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 294
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 296
    iget v10, v14, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 298
    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 301
    move-result v9

    .line 302
    const-wide v10, 0x10800000007L

    .line 307
    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 310
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 313
    move-result v9

    .line 314
    const-wide v10, 0x10800000008L

    .line 319
    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 322
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 324
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 327
    move-result-object v9

    .line 328
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    move-result v10

    .line 332
    if-eqz v10, :cond_5

    .line 334
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    move-result-object v10

    .line 338
    check-cast v10, Lcom/android/server/job/restrictions/JobRestriction;

    .line 340
    move-wide/from16 v17, v5

    .line 342
    const-wide v5, 0x20b0000000cL

    .line 347
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 350
    move-result-wide v5

    .line 351
    iget v11, v10, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    .line 353
    move-wide/from16 v19, v3

    .line 355
    const-wide v3, 0x10e00000001L

    .line 360
    invoke-virtual {v1, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 363
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 366
    move-result v3

    .line 367
    invoke-virtual {v10, v14, v3}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 370
    move-result v3

    .line 371
    const-wide v10, 0x10800000002L

    .line 376
    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 379
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 382
    move-wide/from16 v5, v17

    .line 384
    move-wide/from16 v3, v19

    .line 386
    goto :goto_6

    .line 387
    :cond_5
    move-wide/from16 v19, v3

    .line 389
    move-wide/from16 v17, v5

    .line 391
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 394
    move-object v11, v15

    .line 395
    move-wide/from16 v5, v17

    .line 397
    move-wide/from16 v3, v19

    .line 399
    const-wide v9, 0x10b00000001L

    .line 404
    goto/16 :goto_3

    .line 406
    :cond_6
    move-wide/from16 v19, v3

    .line 408
    move-wide/from16 v17, v5

    .line 410
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 412
    check-cast v3, Ljava/util/ArrayList;

    .line 414
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 417
    move-result-object v3

    .line 418
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    move-result v4

    .line 422
    if-eqz v4, :cond_7

    .line 424
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    move-result-object v4

    .line 428
    check-cast v4, Lcom/android/server/job/controllers/StateController;

    .line 430
    invoke-virtual {v4, v1, v7}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    .line 433
    goto :goto_7

    .line 434
    :cond_7
    const/4 v3, 0x0

    .line 435
    :goto_8
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 437
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 440
    move-result v4

    .line 441
    const/4 v5, -0x1

    .line 442
    if-ge v3, v4, :cond_a

    .line 444
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 446
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 449
    move-result v4

    .line 450
    if-eq v2, v5, :cond_8

    .line 452
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 455
    move-result v5

    .line 456
    if-ne v2, v5, :cond_9

    .line 458
    :cond_8
    const-wide v5, 0x20b00000005L

    .line 463
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 466
    move-result-wide v5

    .line 467
    const-wide v9, 0x10500000001L

    .line 472
    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 475
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 477
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 480
    move-result v4

    .line 481
    const-wide v9, 0x11100000002L

    .line 486
    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 489
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 492
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 494
    goto :goto_8

    .line 495
    :cond_a
    const/4 v3, 0x0

    .line 496
    :goto_9
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 498
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    .line 501
    move-result v4

    .line 502
    if-ge v3, v4, :cond_d

    .line 504
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 506
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 509
    move-result v4

    .line 510
    if-eq v2, v5, :cond_b

    .line 512
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 515
    move-result v6

    .line 516
    if-ne v2, v6, :cond_c

    .line 518
    :cond_b
    const-wide v6, 0x20500000006L

    .line 523
    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 526
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 528
    goto :goto_9

    .line 529
    :cond_d
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 531
    invoke-virtual {v3, v2, v1}, Lcom/android/server/job/JobPackageTracker;->dump(ILandroid/util/proto/ProtoOutputStream;)V

    .line 534
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 536
    invoke-virtual {v3, v2, v1}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(ILandroid/util/proto/ProtoOutputStream;)V

    .line 539
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 541
    const/4 v3, 0x1

    .line 542
    iput-boolean v3, v2, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 544
    :goto_a
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 546
    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    .line 549
    move-result-object v2

    .line 550
    if-eqz v2, :cond_e

    .line 552
    const-wide v3, 0x20b00000009L

    .line 557
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 560
    move-result-wide v3

    .line 561
    const-wide v6, 0x10b00000001L

    .line 566
    invoke-virtual {v2, v1, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 569
    move-wide/from16 v9, v19

    .line 571
    const/4 v11, 0x0

    .line 572
    invoke-virtual {v2, v1, v11, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;ZJ)V

    .line 575
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 578
    move-result v12

    .line 579
    const-wide v13, 0x11100000003L

    .line 584
    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 587
    iget-wide v12, v2, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    .line 589
    sub-long v12, v17, v12

    .line 591
    const-wide v14, 0x10300000004L

    .line 596
    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 599
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 602
    move-wide/from16 v19, v9

    .line 604
    goto :goto_a

    .line 605
    :cond_e
    move/from16 v2, p2

    .line 607
    move-wide/from16 v9, v19

    .line 609
    if-ne v2, v5, :cond_f

    .line 611
    iget-boolean v2, v0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 613
    const-wide v3, 0x1080000000bL

    .line 618
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 621
    iget-boolean v2, v0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 623
    const-wide v3, 0x1080000000cL

    .line 628
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 631
    :cond_f
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 633
    invoke-virtual {v2, v1, v9, v10}, Lcom/android/server/job/JobConcurrencyManager;->dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 636
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 638
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 640
    const-wide v2, 0x10b00000015L

    .line 645
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 648
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 652
    return-void

    .line 653
    :goto_b
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 654
    throw v0
.end method

.method public evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    :goto_0
    if-ltz v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 23
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 31
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getBias()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1e

    .line 9
    if-lt v0, v1, :cond_0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(Lcom/android/server/job/controllers/JobStatus;I)I

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 18
    const/4 v2, 0x0

    .line 19
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 21
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(Lcom/android/server/job/controllers/JobStatus;I)I

    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(Lcom/android/server/job/controllers/JobStatus;I)I

    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZI)I
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "executeCancelCommand(): "

    .line 8
    const-string v1, "/"

    .line 10
    const-string v2, " "

    .line 12
    invoke-static {p3, v0, p2, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "JobScheduler"

    .line 18
    invoke-static {v0, p6, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 21
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 24
    move-result-object v0

    .line 25
    const-wide/16 v1, 0x0

    .line 27
    invoke-interface {v0, p2, v1, v2, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 30
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    move v2, v0

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    const/4 v0, -0x1

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    if-gez v2, :cond_1

    .line 37
    const-string p0, "Package "

    .line 39
    const-string p3, " not found."

    .line 41
    invoke-static {p1, p0, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/16 p0, -0x3e8

    .line 46
    return p0

    .line 47
    :cond_1
    const-string v0, " in user "

    .line 49
    if-nez p5, :cond_2

    .line 51
    new-instance p4, Ljava/lang/StringBuilder;

    .line 53
    const-string p5, "Canceling all jobs for "

    .line 55
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const/4 v4, 0x0

    .line 75
    const-string/jumbo v8, "cancel shell command for package"

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v7, 0x0

    .line 81
    const/16 v3, 0xd

    .line 83
    move-object v1, p0

    .line 84
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_3

    .line 90
    const-string p0, "No matching jobs found."

    .line 92
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const-string p5, "Canceling job "

    .line 98
    const-string v1, "/#"

    .line 100
    invoke-static {p6, p5, p2, v1, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move-result-object p2

    .line 104
    invoke-static {p2, p3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 107
    const/16 v4, 0x7d0

    .line 109
    const/16 v5, 0xd

    .line 111
    move-object v1, p0

    .line 112
    move v3, p6

    .line 113
    move-object v6, p4

    .line 114
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJob(IIIILjava/lang/String;)Z

    .line 117
    move-result p0

    .line 118
    if-nez p0, :cond_3

    .line 120
    const-string p0, "No matching job found."

    .line 122
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 126
    return p0
.end method

.method public final executeRunCommand(IILjava/lang/String;Ljava/lang/String;ZZ)I
    .locals 6

    .line 1
    const-string v0, "JobScheduler"

    .line 3
    const-string/jumbo v1, "executeRunCommand(): "

    .line 6
    const-string v2, "/"

    .line 8
    const-string v3, "/"

    .line 10
    invoke-static {v1, p3, v2, p4, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, " "

    .line 16
    const-string v3, " s="

    .line 18
    invoke-static {p1, p2, v2, v3, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 21
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    const-string v2, " f="

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 45
    const/4 v2, 0x0

    .line 46
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 49
    move-result-object v3

    .line 50
    const/4 v4, -0x1

    .line 51
    if-eq p1, v4, :cond_0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move p1, v2

    .line 55
    :goto_0
    const-wide/16 v4, 0x0

    .line 57
    invoke-interface {v3, p3, v4, v5, p1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 60
    move-result p1

    .line 61
    if-gez p1, :cond_1

    .line 63
    const/16 p0, -0x3e8

    .line 65
    return p0

    .line 66
    :cond_1
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 68
    monitor-enter p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 71
    iget-object v3, v3, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 73
    invoke-virtual {v3, p1, p2, p4}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    .line 76
    move-result-object p1

    .line 77
    if-nez p1, :cond_2

    .line 79
    monitor-exit p3

    .line 80
    const/16 p0, -0x3e9

    .line 82
    return p0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto/16 :goto_6

    .line 86
    :cond_2
    if-eqz p6, :cond_3

    .line 88
    const/4 p2, 0x3

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    if-eqz p5, :cond_4

    .line 92
    move p2, v1

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    const/4 p2, 0x2

    .line 95
    :goto_1
    iput p2, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 97
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 99
    check-cast p2, Ljava/util/ArrayList;

    .line 101
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 104
    move-result p2

    .line 105
    sub-int/2addr p2, v1

    .line 106
    :goto_2
    if-ltz p2, :cond_5

    .line 108
    iget-object p4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 110
    check-cast p4, Ljava/util/ArrayList;

    .line 112
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object p4

    .line 116
    check-cast p4, Lcom/android/server/job/controllers/StateController;

    .line 118
    invoke-virtual {p4, p1}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 121
    add-int/lit8 p2, p2, -0x1

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 126
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    .line 129
    move-result p2

    .line 130
    const/16 p4, -0x3ea

    .line 132
    if-nez p2, :cond_7

    .line 134
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_6

    .line 140
    const/high16 p2, 0x10000000

    .line 142
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 145
    move-result p5

    .line 146
    if-nez p5, :cond_6

    .line 148
    invoke-virtual {p1, p2, v1}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_6

    .line 154
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 156
    new-instance p5, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;

    .line 158
    const/4 p6, 0x5

    .line 159
    invoke-direct {p5, p6, p1, v0, p2}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;-><init>(ILcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;)V

    .line 162
    const-wide/16 v3, 0x3e8

    .line 164
    invoke-virtual {p2, p5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    goto :goto_3

    .line 168
    :cond_6
    iput v2, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 170
    monitor-exit p3

    .line 171
    return p4

    .line 172
    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 175
    :goto_3
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 178
    const-wide/16 p5, 0x7

    .line 180
    invoke-virtual {v0, p5, p6, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 183
    goto :goto_4

    .line 184
    :catch_0
    move-exception p2

    .line 185
    const-string p3, "JobScheduler"

    .line 187
    const-string p5, "Couldn\'t wait for asynchronous constraint change"

    .line 189
    invoke-static {p3, p5, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :goto_4
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 194
    monitor-enter p2

    .line 195
    :try_start_3
    iget p3, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 197
    invoke-virtual {p1, p3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    .line 200
    move-result p3

    .line 201
    if-nez p3, :cond_8

    .line 203
    iput v2, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 205
    monitor-exit p2

    .line 206
    return p4

    .line 207
    :catchall_1
    move-exception p0

    .line 208
    goto :goto_5

    .line 209
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    .line 212
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 215
    monitor-exit p2

    .line 216
    return v2

    .line 217
    :goto_5
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    throw p0

    .line 219
    :goto_6
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    :try_start_5
    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 221
    :catch_1
    return v2
.end method

.method public final executeStopCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    const-string v1, "JobScheduler"

    .line 8
    const-string/jumbo v2, "executeStopJobCommand(): "

    .line 11
    const-string v3, "/"

    .line 13
    const-string v4, " "

    .line 15
    move-object/from16 v7, p2

    .line 17
    move/from16 v8, p3

    .line 19
    invoke-static {v8, v2, v7, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v2

    .line 23
    const-string v3, ": "

    .line 25
    const-string v4, "("

    .line 27
    move/from16 v11, p6

    .line 29
    move/from16 v12, p7

    .line 31
    invoke-static {v11, v12, v3, v4, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 34
    invoke-static/range {p8 .. p8}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v3, ")"

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object/from16 v7, p2

    .line 56
    move/from16 v8, p3

    .line 58
    move/from16 v11, p6

    .line 60
    move/from16 v12, p7

    .line 62
    :goto_0
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 64
    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 67
    move-object v6, p1

    .line 68
    move-object/from16 v7, p2

    .line 70
    move/from16 v8, p3

    .line 72
    move-object/from16 v9, p4

    .line 74
    move/from16 v10, p5

    .line 76
    move/from16 v11, p6

    .line 78
    move/from16 v12, p7

    .line 80
    move/from16 v13, p8

    .line 82
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/job/JobConcurrencyManager;->executeStopCommandLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)Z

    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_1

    .line 88
    const-string v0, "No matching executing jobs found."

    .line 90
    move-object v2, p1

    .line 91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    goto :goto_2

    .line 97
    :cond_1
    :goto_1
    monitor-exit v1

    .line 98
    return-void

    .line 99
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw v0
.end method

.method public getConnectivityController()Lcom/android/server/job/controllers/ConnectivityController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 3
    return-object p0
.end method

.method public final getEstimatedNetworkBytes(IIILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 1
    const-string/jumbo v0, "get-estimated-network-bytes "

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 8
    move-result-object v2

    .line 9
    const/4 v3, -0x1

    .line 10
    if-eq p1, v3, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v1

    .line 14
    :goto_0
    const-wide/16 v3, 0x0

    .line 16
    invoke-interface {v2, p5, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 19
    move-result p1

    .line 20
    if-gez p1, :cond_1

    .line 22
    const-string/jumbo p0, "unknown("

    .line 25
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    const-string p0, ")"

    .line 33
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    const/16 p0, -0x3e8

    .line 38
    return p0

    .line 39
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 41
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 44
    iget-object v3, v3, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 46
    invoke-virtual {v3, p1, p2, p6}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    .line 49
    move-result-object v3

    .line 50
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 52
    if-eqz v4, :cond_2

    .line 54
    const-string v4, "JobScheduler"

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, "/"

    .line 66
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v0, "/"

    .line 74
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, ": "

    .line 82
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_4

    .line 98
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 100
    const-string/jumbo p0, "unknown("

    .line 103
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    invoke-static {p4, p1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 109
    const-string p0, "/jid"

    .line 111
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 117
    const-string p0, ")"

    .line 119
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    monitor-exit v2

    .line 123
    const/16 p0, -0x3e9

    .line 125
    return p0

    .line 126
    :cond_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 128
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/server/job/JobConcurrencyManager;->getEstimatedNetworkBytesLocked(IILjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    .line 131
    move-result-object p0

    .line 132
    if-nez p0, :cond_4

    .line 134
    iget-wide p0, v3, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 136
    iget-wide p5, v3, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 138
    goto :goto_2

    .line 139
    :cond_4
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 141
    check-cast p1, Ljava/lang/Long;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 146
    move-result-wide p1

    .line 147
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 149
    check-cast p0, Ljava/lang/Long;

    .line 151
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 154
    move-result-wide p5

    .line 155
    move-wide p0, p1

    .line 156
    :goto_2
    if-nez p3, :cond_5

    .line 158
    invoke-virtual {p4, p0, p1}, Ljava/io/PrintWriter;->println(J)V

    .line 161
    goto :goto_3

    .line 162
    :cond_5
    invoke-virtual {p4, p5, p6}, Ljava/io/PrintWriter;->println(J)V

    .line 165
    :goto_3
    invoke-virtual {p4}, Ljava/io/PrintWriter;->println()V

    .line 168
    monitor-exit v2

    .line 169
    goto :goto_5

    .line 170
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :catch_0
    :goto_5
    return v1
.end method

.method public final getJobState(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 5

    .line 1
    const-string/jumbo v0, "get-job-state "

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 8
    move-result-object v2

    .line 9
    const/4 v3, -0x1

    .line 10
    if-eq p3, v3, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p3, v1

    .line 14
    :goto_0
    const-wide/16 v3, 0x0

    .line 16
    invoke-interface {v2, p2, v3, v4, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 19
    move-result p3

    .line 20
    if-gez p3, :cond_1

    .line 22
    const-string/jumbo p0, "unknown("

    .line 25
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    const-string p0, ")"

    .line 33
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    const/16 p0, -0x3e8

    .line 38
    return p0

    .line 39
    :cond_1
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 41
    monitor-enter p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 44
    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 46
    invoke-virtual {v2, p3, p5, p4}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    .line 49
    move-result-object v2

    .line 50
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 52
    if-eqz v3, :cond_2

    .line 54
    const-string v3, "JobScheduler"

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string p4, "/"

    .line 66
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string p4, "/"

    .line 74
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string p4, ": "

    .line 82
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p4

    .line 92
    invoke-static {v3, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto/16 :goto_5

    .line 99
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 101
    const-string/jumbo p0, "unknown("

    .line 104
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    invoke-static {p1, p3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 110
    const-string p0, "/jid"

    .line 112
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(I)V

    .line 118
    const-string p0, ")"

    .line 120
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    monitor-exit p2

    .line 124
    const/16 p0, -0x3e9

    .line 126
    return p0

    .line 127
    :cond_3
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 129
    invoke-virtual {p3, v2}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 132
    move-result p3

    .line 133
    const/4 p4, 0x1

    .line 134
    if-eqz p3, :cond_4

    .line 136
    const-string/jumbo p3, "pending"

    .line 139
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    move p3, p4

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    move p3, v1

    .line 145
    :goto_2
    iget-object p5, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 147
    iget-object p5, p5, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 149
    invoke-virtual {p5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 152
    move-result p5

    .line 153
    if-eqz p5, :cond_6

    .line 155
    if-eqz p3, :cond_5

    .line 157
    const-string p3, " "

    .line 159
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    :cond_5
    const-string p3, "active"

    .line 164
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    move p3, p4

    .line 168
    :cond_6
    iget-object p5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 170
    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 172
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 175
    move-result v0

    .line 176
    invoke-static {p5, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 179
    move-result p5

    .line 180
    if-nez p5, :cond_8

    .line 182
    if-eqz p3, :cond_7

    .line 184
    const-string p3, " "

    .line 186
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    :cond_7
    const-string/jumbo p3, "user-stopped"

    .line 192
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    move p3, p4

    .line 196
    :cond_8
    iget-object p5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 198
    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 200
    invoke-static {p5, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 203
    move-result p5

    .line 204
    if-nez p5, :cond_a

    .line 206
    if-eqz p3, :cond_9

    .line 208
    const-string p3, " "

    .line 210
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    :cond_9
    const-string/jumbo p3, "source-user-stopped"

    .line 216
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    move p3, p4

    .line 220
    :cond_a
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 222
    iget p5, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 224
    invoke-virtual {p0, p5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 227
    move-result p0

    .line 228
    if-eqz p0, :cond_c

    .line 230
    if-eqz p3, :cond_b

    .line 232
    const-string p0, " "

    .line 234
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    :cond_b
    const-string p0, "backing-up"

    .line 239
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    move p3, p4

    .line 243
    :cond_c
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 246
    move-result-object p0

    .line 247
    iget-object p5, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 249
    invoke-virtual {p5}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 252
    move-result-object p5

    .line 253
    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 255
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 258
    move-result v0

    .line 259
    const-wide/32 v3, 0x10000000

    .line 262
    invoke-interface {p0, p5, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 265
    move-result-object p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    if-eqz p0, :cond_d

    .line 268
    goto :goto_3

    .line 269
    :catch_0
    :cond_d
    if-eqz p3, :cond_e

    .line 271
    :try_start_3
    const-string p0, " "

    .line 273
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    :cond_e
    const-string/jumbo p0, "no-component"

    .line 279
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    move p3, p4

    .line 283
    :goto_3
    iget p0, v2, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 285
    invoke-virtual {v2, p0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 288
    move-result p0

    .line 289
    if-eqz p0, :cond_10

    .line 291
    if-eqz p3, :cond_f

    .line 293
    const-string p0, " "

    .line 295
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    :cond_f
    const-string/jumbo p0, "ready"

    .line 301
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    goto :goto_4

    .line 305
    :cond_10
    move p4, p3

    .line 306
    :goto_4
    if-nez p4, :cond_11

    .line 308
    const-string/jumbo p0, "waiting"

    .line 311
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    :cond_11
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 317
    monitor-exit p2

    .line 318
    goto :goto_6

    .line 319
    :goto_5
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 320
    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 321
    :catch_1
    :goto_6
    return v1
.end method

.method public final getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 12
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v3

    .line 18
    const-string v4, "android.permission.RUN_USER_INITIATED_JOBS"

    .line 20
    const/4 v5, -0x1

    .line 21
    invoke-static {v3, v4, v5, v1, v2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 29
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    .line 32
    move-result v2

    .line 33
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    const-string/jumbo v4, "timeout-uij"

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 46
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 48
    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    .line 50
    monitor-exit v0

    .line 51
    return-wide p0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_3

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 60
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 62
    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 64
    monitor-exit v0

    .line 65
    return-wide p0

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 72
    const-string/jumbo v1, "timeout-ej"

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string/jumbo v1, "timeout-reg"

    .line 79
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 87
    iget-wide v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 92
    iget-wide v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 94
    :goto_1
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 96
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    .line 99
    move-result v5

    .line 100
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_4

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 113
    iget-wide v2, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    .line 115
    :goto_2
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J

    .line 120
    move-result-wide p0

    .line 121
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    .line 124
    move-result-wide p0

    .line 125
    monitor-exit v0

    .line 126
    return-wide p0

    .line 127
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    throw p0
.end method

.method public final getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 12
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v3

    .line 18
    const-string v4, "android.permission.RUN_USER_INITIATED_JOBS"

    .line 20
    const/4 v5, -0x1

    .line 21
    invoke-static {v3, v4, v5, v1, v2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_a

    .line 27
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 29
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    .line 32
    move-result v2

    .line 33
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    const-string/jumbo v4, "timeout-uij"

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 48
    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_5

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 56
    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 58
    :goto_0
    iget-object v3, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 60
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_9

    .line 66
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 68
    iget-boolean v4, v3, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

    .line 70
    if-eqz v4, :cond_8

    .line 72
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 74
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    iget-wide v4, p1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 79
    iget-wide v6, p1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 81
    const-wide/16 v8, -0x1

    .line 83
    cmp-long v10, v4, v8

    .line 85
    if-nez v10, :cond_1

    .line 87
    cmp-long v10, v6, v8

    .line 89
    if-nez v10, :cond_1

    .line 91
    :goto_1
    move-wide v3, v8

    .line 92
    goto :goto_3

    .line 93
    :cond_1
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 95
    if-nez p1, :cond_2

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 101
    move-result-object p1

    .line 102
    if-nez p1, :cond_3

    .line 104
    const/4 p1, 0x0

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    iget-object p1, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 108
    :goto_2
    if-nez p1, :cond_4

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    .line 114
    move-result v3

    .line 115
    int-to-long v10, v3

    .line 116
    invoke-static {v4, v5, v10, v11}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    .line 119
    move-result-wide v3

    .line 120
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    .line 123
    move-result p1

    .line 124
    int-to-long v10, p1

    .line 125
    invoke-static {v6, v7, v10, v11}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    .line 128
    move-result-wide v5

    .line 129
    cmp-long p1, v3, v8

    .line 131
    if-nez p1, :cond_5

    .line 133
    move-wide v3, v5

    .line 134
    goto :goto_3

    .line 135
    :cond_5
    cmp-long p1, v5, v8

    .line 137
    if-nez p1, :cond_6

    .line 139
    goto :goto_3

    .line 140
    :cond_6
    add-long/2addr v3, v5

    .line 141
    :goto_3
    cmp-long p1, v3, v8

    .line 143
    if-nez p1, :cond_7

    .line 145
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 147
    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 149
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    .line 152
    move-result-wide p0

    .line 153
    monitor-exit v0

    .line 154
    return-wide p0

    .line 155
    :cond_7
    long-to-float p1, v3

    .line 156
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 158
    iget v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

    .line 160
    mul-float/2addr p1, v3

    .line 161
    float-to-long v3, p1

    .line 162
    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 164
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 167
    move-result-wide p0

    .line 168
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    .line 171
    move-result-wide p0

    .line 172
    monitor-exit v0

    .line 173
    return-wide p0

    .line 174
    :cond_8
    iget-wide p0, v3, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    .line 176
    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 178
    invoke-static {p0, p1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 181
    move-result-wide p0

    .line 182
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    .line 185
    move-result-wide p0

    .line 186
    monitor-exit v0

    .line 187
    return-wide p0

    .line 188
    :cond_9
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 190
    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    .line 192
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    .line 195
    move-result-wide p0

    .line 196
    monitor-exit v0

    .line 197
    return-wide p0

    .line 198
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_c

    .line 204
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 207
    move-result p1

    .line 208
    const/4 v1, 0x5

    .line 209
    if-eq p1, v1, :cond_b

    .line 211
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 213
    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    .line 215
    goto :goto_4

    .line 216
    :cond_b
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 218
    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    .line 220
    const-wide/32 v1, 0x493e0

    .line 223
    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 226
    move-result-wide p0

    .line 227
    :goto_4
    monitor-exit v0

    .line 228
    return-wide p0

    .line 229
    :cond_c
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 231
    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    .line 233
    monitor-exit v0

    .line 234
    return-wide p0

    .line 235
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    throw p0
.end method

.method public final getPackagesForUidLocked(I)Landroid/util/ArraySet;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 19
    array-length v2, v1

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_0

    .line 23
    aget-object v4, v1, v3

    .line 25
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 27
    invoke-virtual {v5, p1, v4}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 35
    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 38
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    :cond_1
    return-object v0
.end method

.method public final getPendingJobReason(IILjava/lang/String;)I
    .locals 5

    .line 4
    const-string/jumbo v0, "getPendingJobReason("

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 8
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasonLocked(IILjava/lang/String;)I

    move-result v1

    .line 11
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 12
    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 13
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 15
    :try_start_2
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-nez v2, :cond_2

    .line 16
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p3, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_2

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {v2, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    .line 20
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 21
    :goto_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public getPendingJobReason(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 2
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    .line 3
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReason(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPendingJobReasonLocked(IILjava/lang/String;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 3
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 11
    const/4 p0, -0x2

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 19
    const/4 p0, -0x1

    .line 20
    return p0

    .line 21
    :cond_1
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 23
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 26
    move-result p2

    .line 27
    const-string/jumbo p3, "getPendingJobReasonLocked: "

    .line 30
    const-string v0, "JobScheduler"

    .line 32
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 34
    if-eqz v1, :cond_2

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, " ready="

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    const/16 v2, 0xf

    .line 65
    const/16 v3, 0xc

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x1

    .line 69
    if-nez p2, :cond_14

    .line 71
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 73
    not-int p0, p0

    .line 74
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 76
    iget p3, p1, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    .line 78
    or-int/2addr p2, p3

    .line 79
    const/high16 v0, 0x3600000

    .line 81
    or-int/2addr p2, v0

    .line 82
    and-int/2addr p0, p2

    .line 83
    const/high16 p2, 0x400000

    .line 85
    and-int/2addr p2, p0

    .line 86
    if-eqz p2, :cond_4

    .line 88
    iget-boolean p0, p1, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    .line 90
    if-eqz p0, :cond_3

    .line 92
    const/4 v2, 0x3

    .line 93
    goto/16 :goto_1

    .line 95
    :cond_3
    :goto_0
    move v2, v3

    .line 96
    goto/16 :goto_1

    .line 98
    :cond_4
    and-int/lit8 p2, p0, 0x2

    .line 100
    const/4 v0, 0x4

    .line 101
    const/4 v1, 0x2

    .line 102
    if-eqz p2, :cond_6

    .line 104
    and-int/lit8 p0, p3, 0x2

    .line 106
    if-eqz p0, :cond_5

    .line 108
    move v2, v0

    .line 109
    goto/16 :goto_1

    .line 111
    :cond_5
    move v2, v1

    .line 112
    goto/16 :goto_1

    .line 114
    :cond_6
    and-int/lit8 p2, p0, 0x1

    .line 116
    if-eqz p2, :cond_7

    .line 118
    and-int/lit8 p0, p3, 0x1

    .line 120
    if-eqz p0, :cond_5

    .line 122
    const/4 v2, 0x5

    .line 123
    goto/16 :goto_1

    .line 125
    :cond_7
    const/high16 p2, 0x10000000

    .line 127
    and-int/2addr p2, p0

    .line 128
    if-eqz p2, :cond_8

    .line 130
    const/4 v2, 0x6

    .line 131
    goto/16 :goto_1

    .line 133
    :cond_8
    const/high16 p2, 0x4000000

    .line 135
    and-int/2addr p2, p0

    .line 136
    if-eqz p2, :cond_9

    .line 138
    const/4 v2, 0x7

    .line 139
    goto :goto_1

    .line 140
    :cond_9
    const/high16 p2, 0x2000000

    .line 142
    and-int/2addr p2, p0

    .line 143
    if-eqz p2, :cond_a

    .line 145
    goto :goto_0

    .line 146
    :cond_a
    const/high16 p2, 0x200000

    .line 148
    and-int/2addr p2, p0

    .line 149
    if-eqz p2, :cond_b

    .line 151
    const/16 v2, 0xd

    .line 153
    goto :goto_1

    .line 154
    :cond_b
    and-int/lit8 p2, p0, 0x4

    .line 156
    if-eqz p2, :cond_c

    .line 158
    and-int/lit8 p0, p3, 0x4

    .line 160
    if-eqz p0, :cond_5

    .line 162
    const/16 v2, 0x8

    .line 164
    goto :goto_1

    .line 165
    :cond_c
    const/high16 p2, 0x800000

    .line 167
    and-int/2addr p2, p0

    .line 168
    if-eqz p2, :cond_d

    .line 170
    const/16 v2, 0xa

    .line 172
    goto :goto_1

    .line 173
    :cond_d
    and-int/lit8 p2, p0, 0x8

    .line 175
    if-eqz p2, :cond_e

    .line 177
    const/16 v2, 0xb

    .line 179
    goto :goto_1

    .line 180
    :cond_e
    const/high16 p2, -0x80000000

    .line 182
    and-int/2addr p2, p0

    .line 183
    if-eqz p2, :cond_f

    .line 185
    const/16 v2, 0x9

    .line 187
    goto :goto_1

    .line 188
    :cond_f
    const/high16 p2, 0x1000000

    .line 190
    and-int/2addr p0, p2

    .line 191
    if-eqz p0, :cond_10

    .line 193
    const/16 v2, 0xe

    .line 195
    goto :goto_1

    .line 196
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 199
    move-result p0

    .line 200
    const-string p2, "JobScheduler.JobStatus"

    .line 202
    if-ne p0, v0, :cond_11

    .line 204
    const-string p0, "App in NEVER bucket querying pending job reason"

    .line 206
    invoke-static {p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    goto :goto_1

    .line 210
    :cond_11
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    .line 212
    if-eqz p0, :cond_12

    .line 214
    move v2, v5

    .line 215
    goto :goto_1

    .line 216
    :cond_12
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 218
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 221
    move-result p0

    .line 222
    if-nez p0, :cond_13

    .line 224
    const-string p0, "Unknown reason job isn\'t ready"

    .line 226
    invoke-static {p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_13
    move v2, v4

    .line 230
    :goto_1
    return v2

    .line 231
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 234
    move-result p2

    .line 235
    if-eqz v1, :cond_15

    .line 237
    new-instance v6, Ljava/lang/StringBuilder;

    .line 239
    invoke-direct {v6, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v7, " userStarted="

    .line 251
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v6

    .line 261
    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_15
    if-nez p2, :cond_16

    .line 266
    return v2

    .line 267
    :cond_16
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 269
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 271
    invoke-virtual {p2, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 274
    move-result p2

    .line 275
    if-eqz v1, :cond_17

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    .line 279
    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 285
    move-result-object v6

    .line 286
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v6, " backingUp="

    .line 291
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v2

    .line 301
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_17
    if-eqz p2, :cond_18

    .line 306
    return v5

    .line 307
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    .line 310
    move-result-object p2

    .line 311
    if-eqz v1, :cond_19

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    .line 315
    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 321
    move-result-object v6

    .line 322
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v6, " restriction="

    .line 327
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    move-result-object v2

    .line 337
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_19
    if-eqz p2, :cond_1a

    .line 342
    iget p0, p2, Lcom/android/server/job/restrictions/JobRestriction;->mPendingReason:I

    .line 344
    return p0

    .line 345
    :cond_1a
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 347
    invoke-virtual {p2, p1}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 350
    move-result p2

    .line 351
    if-eqz v1, :cond_1b

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    .line 355
    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 361
    move-result-object v6

    .line 362
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v6, " pending="

    .line 367
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object v2

    .line 377
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1b
    if-eqz p2, :cond_1c

    .line 382
    return v3

    .line 383
    :cond_1c
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 385
    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 387
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 390
    move-result p2

    .line 391
    if-eqz v1, :cond_1d

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    .line 395
    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 401
    move-result-object v3

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v3, " active="

    .line 407
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    move-result-object v2

    .line 417
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1d
    if-eqz p2, :cond_1e

    .line 422
    return v4

    .line 423
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 426
    move-result p0

    .line 427
    if-eqz v1, :cond_1f

    .line 429
    new-instance p2, Ljava/lang/StringBuilder;

    .line 431
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 437
    move-result-object p1

    .line 438
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string p1, " componentUsable="

    .line 443
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    move-result-object p1

    .line 453
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1f
    if-nez p0, :cond_20

    .line 458
    return v5

    .line 459
    :cond_20
    return v4
.end method

.method public getQuotaController()Lcom/android/server/job/controllers/QuotaController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    .line 3
    return-object p0
.end method

.method public getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;II)Lcom/android/server/job/controllers/JobStatus;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v15, p1

    .line 5
    move/from16 v13, p2

    .line 7
    move/from16 v1, p3

    .line 9
    const/16 v2, 0xb

    .line 11
    const-string v3, "JobScheduler"

    .line 13
    if-ne v1, v2, :cond_0

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "Dropping "

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, " because of user stop"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    .line 48
    return-object v0

    .line 49
    :cond_0
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    move-result-wide v4

    .line 58
    iget-object v14, v15, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 60
    invoke-virtual {v14}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    .line 63
    move-result-wide v6

    .line 64
    const/16 v2, 0xa

    .line 66
    const/16 v11, 0xd

    .line 68
    iget v8, v15, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 70
    iget v9, v15, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    .line 72
    if-eq v1, v2, :cond_2

    .line 74
    const/4 v2, 0x3

    .line 75
    if-eq v1, v2, :cond_2

    .line 77
    const/16 v2, 0xc

    .line 79
    if-eq v1, v2, :cond_2

    .line 81
    if-ne v13, v11, :cond_1

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    :goto_0
    add-int/lit8 v8, v8, 0x1

    .line 89
    :goto_1
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 91
    iget v1, v12, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    .line 93
    div-int v1, v9, v1

    .line 95
    add-int/2addr v1, v8

    .line 96
    if-nez v1, :cond_3

    .line 98
    const-wide/16 v1, 0x0

    .line 100
    :goto_2
    move-wide v3, v1

    .line 101
    goto :goto_4

    .line 102
    :cond_3
    invoke-virtual {v14}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_6

    .line 108
    const/4 v10, 0x1

    .line 109
    if-eq v2, v10, :cond_4

    .line 111
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 113
    if-eqz v2, :cond_4

    .line 115
    const-string v2, "Unrecognised back-off policy, defaulting to exponential."

    .line 117
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_4
    iget-wide v2, v12, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    .line 122
    cmp-long v16, v6, v2

    .line 124
    if-gez v16, :cond_5

    .line 126
    move-wide v6, v2

    .line 127
    :cond_5
    long-to-float v2, v6

    .line 128
    sub-int/2addr v1, v10

    .line 129
    invoke-static {v2, v1}, Ljava/lang/Math;->scalb(FI)F

    .line 132
    move-result v1

    .line 133
    float-to-long v1, v1

    .line 134
    goto :goto_3

    .line 135
    :cond_6
    iget-wide v2, v12, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    .line 137
    cmp-long v10, v6, v2

    .line 139
    if-gez v10, :cond_7

    .line 141
    move-wide v6, v2

    .line 142
    :cond_7
    int-to-long v1, v1

    .line 143
    mul-long/2addr v1, v6

    .line 144
    :goto_3
    const-wide/32 v6, 0x112a880

    .line 147
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 150
    move-result-wide v1

    .line 151
    add-long/2addr v1, v4

    .line 152
    goto :goto_2

    .line 153
    :goto_4
    new-instance v10, Lcom/android/server/job/controllers/JobStatus;

    .line 155
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 157
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    .line 160
    move-result-wide v16

    .line 161
    iget-wide v5, v15, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    .line 163
    const-wide v18, 0x7fffffffffffffffL

    .line 168
    iget-wide v1, v15, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    .line 170
    move-wide/from16 v20, v1

    .line 172
    move-object v1, v10

    .line 173
    move-object/from16 v2, p1

    .line 175
    move-wide/from16 v22, v5

    .line 177
    move-wide/from16 v5, v18

    .line 179
    move v7, v8

    .line 180
    move v8, v9

    .line 181
    move-object/from16 v24, v10

    .line 183
    move-wide/from16 v9, v20

    .line 185
    move-object/from16 v25, v12

    .line 187
    move-wide/from16 v11, v16

    .line 189
    move v0, v13

    .line 190
    move-object/from16 v16, v14

    .line 192
    move-wide/from16 v13, v22

    .line 194
    invoke-direct/range {v1 .. v14}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIJJJ)V

    .line 197
    const/16 v1, 0xd

    .line 199
    if-ne v0, v1, :cond_8

    .line 201
    move-object/from16 v0, v24

    .line 203
    iget v1, v0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 205
    or-int/lit8 v1, v1, 0x2

    .line 207
    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 209
    goto :goto_5

    .line 210
    :cond_8
    move-object/from16 v0, v24

    .line 212
    :goto_5
    iget-wide v1, v0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    .line 214
    move-object/from16 v3, v25

    .line 216
    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

    .line 218
    cmp-long v1, v1, v3

    .line 220
    if-ltz v1, :cond_9

    .line 222
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_9

    .line 228
    iget v1, v0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 230
    or-int/lit8 v1, v1, 0x4

    .line 232
    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 234
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_a

    .line 240
    iget-wide v1, v15, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 242
    iput-wide v1, v0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 244
    :cond_a
    const/4 v1, 0x0

    .line 245
    move-object/from16 v2, p0

    .line 247
    :goto_6
    iget-object v3, v2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 249
    check-cast v3, Ljava/util/ArrayList;

    .line 251
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 254
    move-result v3

    .line 255
    if-ge v1, v3, :cond_b

    .line 257
    iget-object v3, v2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 259
    check-cast v3, Ljava/util/ArrayList;

    .line 261
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    move-result-object v3

    .line 265
    check-cast v3, Lcom/android/server/job/controllers/StateController;

    .line 267
    invoke-virtual {v3, v0, v15}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    .line 272
    goto :goto_6

    .line 273
    :cond_b
    return-object v0
.end method

.method public getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 22

    .line 1
    move-object/from16 v1, p1

    .line 3
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v2

    .line 12
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    .line 15
    move-result-wide v4

    .line 16
    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 18
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    .line 21
    move-result-wide v6

    .line 22
    const-wide v8, 0x757b12c00L

    .line 27
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 30
    move-result-wide v6

    .line 31
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 34
    move-result-wide v4

    .line 35
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    .line 38
    move-result-wide v6

    .line 39
    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 41
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    .line 44
    move-result-wide v8

    .line 45
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 48
    move-result-wide v8

    .line 49
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 52
    move-result-wide v6

    .line 53
    iget-wide v8, v1, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 55
    const-wide/16 v10, 0x0

    .line 57
    cmp-long v0, v8, v10

    .line 59
    const-string v12, "JobScheduler"

    .line 61
    if-ltz v0, :cond_0

    .line 63
    const-wide v13, 0x7fffffffffffffffL

    .line 68
    cmp-long v0, v8, v13

    .line 70
    if-nez v0, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    const-string v13, "Invalid periodic job original latest run time: "

    .line 76
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-static {v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    move-wide v8, v2

    .line 90
    :cond_1
    sub-long v13, v2, v8

    .line 92
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    .line 95
    move-result-wide v13

    .line 96
    cmp-long v0, v2, v8

    .line 98
    const-wide/16 v15, 0x6

    .line 100
    sget-boolean v17, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 102
    if-lez v0, :cond_6

    .line 104
    if-eqz v17, :cond_2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    const-string v10, "Periodic job ran after its intended window by "

    .line 110
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    const-string v10, " ms"

    .line 118
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_2
    div-long v10, v13, v4

    .line 130
    const-wide/16 v18, 0x1

    .line 132
    add-long v18, v10, v18

    .line 134
    cmp-long v0, v4, v6

    .line 136
    if-eqz v0, :cond_4

    .line 138
    sub-long v20, v4, v6

    .line 140
    rem-long/2addr v13, v4

    .line 141
    sub-long v20, v20, v13

    .line 143
    div-long v13, v6, v15

    .line 145
    cmp-long v0, v20, v13

    .line 147
    if-gtz v0, :cond_4

    .line 149
    if-eqz v17, :cond_3

    .line 151
    const-string v0, "Custom flex job ran too close to next window."

    .line 153
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_3
    const-wide/16 v13, 0x2

    .line 158
    add-long v18, v10, v13

    .line 160
    :cond_4
    mul-long v18, v18, v4

    .line 162
    add-long v18, v18, v8

    .line 164
    move-wide/from16 v8, v18

    .line 166
    :cond_5
    const-wide/16 v10, 0x0

    .line 168
    goto :goto_0

    .line 169
    :cond_6
    add-long/2addr v8, v4

    .line 170
    const-wide/32 v10, 0x1b7740

    .line 173
    cmp-long v0, v13, v10

    .line 175
    if-gez v0, :cond_5

    .line 177
    div-long v15, v4, v15

    .line 179
    cmp-long v0, v13, v15

    .line 181
    if-gez v0, :cond_5

    .line 183
    sub-long v13, v15, v13

    .line 185
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 188
    move-result-wide v10

    .line 189
    :goto_0
    cmp-long v0, v8, v2

    .line 191
    if-gez v0, :cond_7

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    const-string v10, "Rescheduling calculated latest runtime in the past: "

    .line 197
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v0

    .line 207
    invoke-static {v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v14, Lcom/android/server/job/controllers/JobStatus;

    .line 212
    add-long/2addr v4, v2

    .line 213
    sub-long v2, v4, v6

    .line 215
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 217
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 220
    move-result-wide v8

    .line 221
    const/4 v7, 0x0

    .line 222
    iget-wide v10, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    .line 224
    const/4 v6, 0x0

    .line 225
    const-wide/16 v12, 0x0

    .line 227
    move-object v0, v14

    .line 228
    move-object/from16 v1, p1

    .line 230
    invoke-direct/range {v0 .. v13}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIJJJ)V

    .line 233
    return-object v14

    .line 234
    :cond_7
    sub-long/2addr v4, v10

    .line 235
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 238
    move-result-wide v2

    .line 239
    sub-long v2, v8, v2

    .line 241
    if-eqz v17, :cond_8

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    const-string v4, "Rescheduling executed periodic. New execution window ["

    .line 247
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    const-wide/16 v4, 0x3e8

    .line 252
    div-long v6, v2, v4

    .line 254
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 257
    const-string v6, ", "

    .line 259
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    div-long v4, v8, v4

    .line 264
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 267
    const-string v4, "]s"

    .line 269
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object v0

    .line 276
    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_8
    new-instance v14, Lcom/android/server/job/controllers/JobStatus;

    .line 281
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 283
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 286
    move-result-wide v10

    .line 287
    const/4 v7, 0x0

    .line 288
    iget-wide v12, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    .line 290
    const/4 v6, 0x0

    .line 291
    const-wide/16 v15, 0x0

    .line 293
    move-object v0, v14

    .line 294
    move-object/from16 v1, p1

    .line 296
    move-wide v4, v8

    .line 297
    move-wide v8, v10

    .line 298
    move-wide v10, v12

    .line 299
    move-wide v12, v15

    .line 300
    invoke-direct/range {v0 .. v13}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIJJJ)V

    .line 303
    return-object v14
.end method

.method public final getTransferredNetworkBytes(IIILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p2

    .line 5
    move-object/from16 v2, p4

    .line 7
    move-object/from16 v3, p5

    .line 9
    move-object/from16 v4, p6

    .line 11
    const-string/jumbo v5, "get-transferred-network-bytes "

    .line 14
    const/4 v6, 0x0

    .line 15
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 18
    move-result-object v7

    .line 19
    const/4 v8, -0x1

    .line 20
    move/from16 v9, p1

    .line 22
    if-eq v9, v8, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v9, v6

    .line 26
    :goto_0
    const-wide/16 v10, 0x0

    .line 28
    invoke-interface {v7, v3, v10, v11, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 31
    move-result v7

    .line 32
    if-gez v7, :cond_1

    .line 34
    const-string/jumbo v0, "unknown("

    .line 37
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    invoke-virtual/range {p4 .. p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    const-string v0, ")"

    .line 45
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    const/16 v0, -0x3e8

    .line 50
    return v0

    .line 51
    :cond_1
    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 53
    monitor-enter v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :try_start_1
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 56
    iget-object v9, v9, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 58
    invoke-virtual {v9, v7, v1, v4}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    .line 61
    move-result-object v9

    .line 62
    sget-boolean v12, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 64
    if-eqz v12, :cond_2

    .line 66
    const-string v12, "JobScheduler"

    .line 68
    new-instance v13, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v5, "//"

    .line 81
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v5, ": "

    .line 89
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v5

    .line 99
    invoke-static {v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto :goto_4

    .line 105
    :cond_2
    :goto_1
    if-nez v9, :cond_3

    .line 107
    const-string/jumbo v0, "unknown("

    .line 110
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    invoke-static {v2, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 116
    const-string v0, "/jid"

    .line 118
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 124
    const-string v0, ")"

    .line 126
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    monitor-exit v8

    .line 130
    const/16 v0, -0x3e9

    .line 132
    return v0

    .line 133
    :cond_3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 135
    invoke-virtual {v0, v7, v1, v3, v4}, Lcom/android/server/job/JobConcurrencyManager;->getTransferredNetworkBytesLocked(IILjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    .line 138
    move-result-object v0

    .line 139
    if-nez v0, :cond_4

    .line 141
    move-wide v0, v10

    .line 142
    goto :goto_2

    .line 143
    :cond_4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 145
    check-cast v1, Ljava/lang/Long;

    .line 147
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 150
    move-result-wide v10

    .line 151
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 153
    check-cast v0, Ljava/lang/Long;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 158
    move-result-wide v0

    .line 159
    move-wide v14, v0

    .line 160
    move-wide v0, v10

    .line 161
    move-wide v10, v14

    .line 162
    :goto_2
    if-nez p3, :cond_5

    .line 164
    invoke-virtual {v2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 167
    goto :goto_3

    .line 168
    :cond_5
    invoke-virtual {v2, v10, v11}, Ljava/io/PrintWriter;->println(J)V

    .line 171
    :goto_3
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintWriter;->println()V

    .line 174
    monitor-exit v8

    .line 175
    goto :goto_5

    .line 176
    :goto_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 178
    :catch_0
    :goto_5
    return v6
.end method

.method public final getUidBias(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 10
    move-result p0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final getUidProcState(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 10
    move-result p0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final isBatteryCharging()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 6
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

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

.method public final isBatteryNotLow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 6
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    .line 3
    const-string v1, "JobScheduler"

    .line 5
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 7
    if-nez v0, :cond_1

    .line 9
    if-eqz v2, :cond_0

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v0, "isComponentUsable: "

    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, " component not present"

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 42
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 44
    invoke-virtual {p0, v0, v3}, Landroid/app/ActivityManagerInternal;->isAppBad(Ljava/lang/String;I)Z

    .line 47
    move-result p0

    .line 48
    if-eqz v2, :cond_2

    .line 50
    if-eqz p0, :cond_2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    const-string v2, "App is bad for "

    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string p1, " so not runnable"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    xor-int/lit8 p0, p0, 0x1

    .line 80
    return p0
.end method

.method public final isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 3
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 23
    :goto_0
    if-ltz v0, :cond_2

    .line 25
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 27
    check-cast v2, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 35
    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 37
    if-ne v3, p1, :cond_1

    .line 39
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    .line 42
    move-result p0

    .line 43
    xor-int/lit8 v1, p0, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v0, "JobScheduler.Concurrency"

    .line 51
    const-string v2, "Couldn\'t find long running job on a context"

    .line 53
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 58
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 61
    if-eqz p1, :cond_4

    .line 63
    sget-object p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    .line 65
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 67
    if-eqz p1, :cond_3

    .line 69
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->mRunningJobSet:Ljava/util/Set;

    .line 71
    check-cast p0, Ljava/util/HashSet;

    .line 73
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    :cond_4
    :goto_1
    return v1
.end method

.method public final isPowerConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 6
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result p0

    return p0
.end method

.method public final isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 10

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 4
    :goto_1
    const-string/jumbo v3, "isReadyToBeExecutedLocked: "

    const-string v4, "JobScheduler"

    sget-boolean v5, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ready="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v0, :cond_4

    .line 6
    const-string p0, "android.jobscheduler.cts.jobtestapp"

    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "    NOT READY: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    .line 10
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    iget v8, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v5, :cond_5

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " exists="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " userStarted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " backingUp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v0, :cond_b

    if-eqz v6, :cond_b

    if-eqz v7, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v0

    if-eqz v0, :cond_7

    return v2

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz p2, :cond_8

    .line 14
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 15
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    if-eqz v5, :cond_9

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pending="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " active="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {v4, p2, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_9
    if-nez v0, :cond_b

    if-eqz v1, :cond_a

    goto :goto_3

    .line 18
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0

    :cond_b
    :goto_3
    return v2
.end method

.method public maybeProcessBuggyJob(Lcom/android/server/job/controllers/JobStatus;I)V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ne p2, v0, :cond_0

    .line 6
    move v0, v2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    if-nez v0, :cond_4

    .line 11
    iget-wide v3, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    .line 13
    const-wide/16 v5, 0x0

    .line 15
    cmp-long v3, v3, v5

    .line 17
    if-lez v3, :cond_4

    .line 19
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 21
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 24
    move-result-wide v3

    .line 25
    iget-wide v5, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    .line 27
    sub-long/2addr v3, v5

    .line 28
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 30
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 32
    if-eqz v0, :cond_2

    .line 34
    iget-wide v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    .line 36
    cmp-long v0, v3, v5

    .line 38
    if-ltz v0, :cond_1

    .line 40
    :goto_1
    move v1, v2

    .line 41
    :cond_1
    move v0, v1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 45
    if-eqz v0, :cond_3

    .line 47
    iget-wide v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    .line 49
    cmp-long v0, v3, v5

    .line 51
    if-ltz v0, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    iget-wide v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    .line 56
    cmp-long v0, v3, v5

    .line 58
    if-ltz v0, :cond_1

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    :goto_2
    const/4 v1, 0x4

    .line 62
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 64
    if-eqz v0, :cond_7

    .line 66
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    .line 69
    move-result v0

    .line 70
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 74
    iget-boolean v4, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 76
    if-eqz v4, :cond_5

    .line 78
    const-string/jumbo v4, "timeout-uij"

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    iget-boolean v4, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 84
    if-eqz v4, :cond_6

    .line 86
    const-string/jumbo v4, "timeout-ej"

    .line 89
    goto :goto_3

    .line 90
    :cond_6
    const-string/jumbo v4, "timeout-reg"

    .line 93
    :goto_3
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 96
    const-string/jumbo v4, "timeout-total"

    .line 99
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_7

    .line 105
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 107
    invoke-interface {v4, v3, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 110
    :cond_7
    const/16 v0, 0xc

    .line 112
    if-ne p2, v0, :cond_8

    .line 114
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 116
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 119
    move-result p2

    .line 120
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 122
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    const-string v0, "anr"

    .line 132
    invoke-virtual {v2, p2, p1, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_8

    .line 138
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 140
    invoke-interface {p0, p1, p2, v1}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 143
    :cond_8
    return-void
.end method

.method public final maybeRunPendingJobsLocked()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "pending queue: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 15
    iget v1, v1, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 17
    const-string v2, " jobs."

    .line 19
    const-string v3, "JobScheduler"

    .line 21
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 26
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    .line 29
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 32
    return-void
.end method

.method public notePendingUserRequestedAppStopInternal(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 8
    move-result v0

    .line 9
    if-gez v0, :cond_0

    .line 11
    const-string p0, "JobScheduler"

    .line 13
    const-string p1, "Asked to stop jobs of an unknown package"

    .line 15
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 24
    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/job/JobConcurrencyManager;->markJobsForUserStopLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 36
    move-result p2

    .line 37
    add-int/lit8 p2, p2, -0x1

    .line 39
    :goto_0
    if-ltz p2, :cond_3

    .line 41
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Lcom/android/server/job/controllers/JobStatus;

    .line 47
    iget v0, p3, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 49
    or-int/lit8 v0, v0, 0x2

    .line 51
    iput v0, p3, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 53
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 55
    invoke-virtual {v0, p3}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 63
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 66
    iget v3, p3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 68
    iget-object v4, p3, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 70
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Landroid/util/SparseIntArray;

    .line 76
    if-nez v2, :cond_1

    .line 78
    new-instance v2, Landroid/util/SparseIntArray;

    .line 80
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 83
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 85
    iget v4, p3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 87
    iget-object v5, p3, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 89
    invoke-virtual {v3, v4, v5, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_2

    .line 95
    :cond_1
    :goto_1
    iget-object p3, p3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 97
    invoke-virtual {p3}, Landroid/app/job/JobInfo;->getId()I

    .line 100
    move-result p3

    .line 101
    const/16 v3, 0xf

    .line 103
    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    monitor-exit v0

    .line 107
    goto :goto_3

    .line 108
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    throw p0

    .line 110
    :catchall_1
    move-exception p0

    .line 111
    goto :goto_4

    .line 112
    :cond_2
    :goto_3
    add-int/lit8 p2, p2, -0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    monitor-exit v1

    .line 116
    return-void

    .line 117
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 12

    .line 1
    const/16 v0, 0x1e0

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const-string p1, "JobScheduler"

    .line 13
    const-string v0, "Couldn\'t wait on controller tracking start latch"

    .line 15
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    goto/16 :goto_3

    .line 25
    :catch_1
    const-string p0, "JobScheduler"

    .line 27
    const-string p1, "Couldn\'t wait on job store loading latch"

    .line 29
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    goto/16 :goto_3

    .line 34
    :cond_0
    const/16 v0, 0x1f4

    .line 36
    const/4 v1, 0x1

    .line 37
    if-ne v0, p1, :cond_2

    .line 39
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 47
    move-result-object v0

    .line 48
    const-string/jumbo v2, "jobscheduler"

    .line 51
    invoke-static {v2, v0, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 54
    const/4 v0, 0x0

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    .line 57
    invoke-static {v2, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 64
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 66
    check-cast p1, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result p1

    .line 72
    sub-int/2addr p1, v1

    .line 73
    :goto_1
    if-ltz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 77
    check-cast v0, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 85
    invoke-virtual {v0}, Lcom/android/server/job/controllers/StateController;->onSystemServicesReady()V

    .line 88
    add-int/lit8 p1, p1, -0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const-class p1, Lcom/android/server/AppStateTracker;

    .line 93
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/android/server/AppStateTracker;

    .line 99
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    check-cast p1, Lcom/android/server/AppStateTrackerImpl;

    .line 104
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 106
    const-class p1, Landroid/os/storage/StorageManagerInternal;

    .line 108
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/os/storage/StorageManagerInternal;

    .line 114
    new-instance v0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;

    .line 116
    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManagerInternal;->registerCloudProviderChangeListener(Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V

    .line 122
    new-instance v5, Landroid/content/IntentFilter;

    .line 124
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    const-string p1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 129
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 134
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    .line 139
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string p1, "android.intent.action.PACKAGE_RESTARTED"

    .line 144
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string p1, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 149
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string/jumbo p1, "package"

    .line 155
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 161
    move-result-object v2

    .line 162
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Lcom/android/server/job/JobSchedulerService$3;

    .line 164
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 166
    const/4 v6, 0x0

    .line 167
    const/4 v7, 0x0

    .line 168
    move-object v4, p1

    .line 169
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 172
    new-instance v9, Landroid/content/IntentFilter;

    .line 174
    const-string v0, "android.intent.action.UID_REMOVED"

    .line 176
    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 182
    move-result-object v6

    .line 183
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Lcom/android/server/job/JobSchedulerService$3;

    .line 185
    const/4 v10, 0x0

    .line 186
    const/4 v11, 0x0

    .line 187
    move-object v8, p1

    .line 188
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 191
    new-instance v9, Landroid/content/IntentFilter;

    .line 193
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 195
    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v0, "android.intent.action.USER_ADDED"

    .line 200
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 206
    move-result-object v6

    .line 207
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Lcom/android/server/job/JobSchedulerService$3;

    .line 209
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 212
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 215
    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Lcom/android/server/job/JobSchedulerService$4;

    .line 218
    const/16 v2, 0xf

    .line 220
    const/4 v3, -0x1

    .line 221
    const/4 v4, 0x0

    .line 222
    invoke-interface {p1, v0, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 225
    :catch_2
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 227
    iget-object v0, p1, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    .line 229
    const-class v2, Landroid/os/PowerManager;

    .line 231
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Landroid/os/PowerManager;

    .line 237
    iput-object v0, p1, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    .line 241
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 243
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 246
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 248
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 253
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 258
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    iget-object v2, p1, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    .line 263
    iget-object v3, p1, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Lcom/android/server/job/JobConcurrencyManager$1;

    .line 265
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 271
    move-result-object v0

    .line 272
    iget-object v2, p1, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    .line 274
    const-string v3, "JobScheduler.Concurrency"

    .line 276
    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 279
    :catch_3
    iget-object v0, p1, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 281
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 284
    move-result v0

    .line 285
    invoke-virtual {p1, v0}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    .line 288
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    .line 290
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 293
    move-result-object p1

    .line 294
    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    .line 296
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 298
    monitor-enter v0

    .line 299
    :try_start_4
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 301
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {v2, p1}, Lcom/android/server/job/JobStore;->removeJobsOfUnlistedUsers([I)V

    .line 308
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 309
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 311
    monitor-enter p1

    .line 312
    :try_start_5
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 314
    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 317
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 318
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 320
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 323
    move-result p1

    .line 324
    sub-int/2addr p1, v1

    .line 325
    :goto_2
    if-ltz p1, :cond_3

    .line 327
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 329
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 332
    move-result-object v0

    .line 333
    check-cast v0, Lcom/android/server/job/restrictions/JobRestriction;

    .line 335
    invoke-virtual {v0}, Lcom/android/server/job/restrictions/JobRestriction;->onSystemServicesReady()V

    .line 338
    add-int/lit8 p1, p1, -0x1

    .line 340
    goto :goto_2

    .line 341
    :catchall_0
    move-exception p0

    .line 342
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 343
    throw p0

    .line 344
    :catchall_1
    move-exception p0

    .line 345
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 346
    throw p0

    .line 347
    :cond_2
    const/16 v0, 0x258

    .line 349
    if-ne p1, v0, :cond_3

    .line 351
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 353
    monitor-enter p1

    .line 354
    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 356
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    .line 358
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 361
    move-result-object v0

    .line 362
    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    .line 364
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 366
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 368
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->onThirdPartyAppsCanStart()V

    .line 371
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 373
    new-instance v2, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    .line 375
    const/4 v3, 0x0

    .line 376
    invoke-direct {v2, p0, v3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    .line 379
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 382
    invoke-static {}, Lcom/android/server/job/Flags;->doNotForceRushExecutionAtBoot()Z

    .line 385
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 387
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 390
    move-result-object p0

    .line 391
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 394
    monitor-exit p1

    .line 395
    goto :goto_3

    .line 396
    :catchall_2
    move-exception p0

    .line 397
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 398
    throw p0

    .line 399
    :cond_3
    :goto_3
    return-void
.end method

.method public final onControllerStateChanged(Landroid/util/ArraySet;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 13
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 18
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    .line 21
    monitor-exit v1

    .line 22
    goto :goto_2

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 29
    move-result v1

    .line 30
    if-lez v1, :cond_2

    .line 32
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 34
    monitor-enter v1

    .line 35
    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 37
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 40
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 41
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 43
    const/16 v2, 0x8

    .line 45
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 52
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 54
    monitor-enter v2

    .line 55
    :try_start_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 58
    move-result v1

    .line 59
    sub-int/2addr v1, v0

    .line 60
    :goto_0
    if-ltz v1, :cond_1

    .line 62
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->resetPendingJobReasonCache(Lcom/android/server/job/controllers/JobStatus;)V

    .line 71
    add-int/lit8 v1, v1, -0x1

    .line 73
    goto :goto_0

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    monitor-exit v2

    .line 77
    goto :goto_2

    .line 78
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    throw p0

    .line 80
    :catchall_2
    move-exception p0

    .line 81
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 82
    throw p0

    .line 83
    :cond_2
    :goto_2
    return-void
.end method

.method public final onRestrictionStateChanged(Lcom/android/server/job/restrictions/JobRestriction;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    if-eqz p2, :cond_0

    .line 13
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter p2

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->maybeStopOvertimeJobsLocked(Lcom/android/server/job/restrictions/JobRestriction;)V

    .line 21
    monitor-exit p2

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_0
    :goto_0
    return-void
.end method

.method public final onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 3
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 22
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "jobscheduler"

    .line 4
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    return-void
.end method

.method public final onUserCompletedEvent(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserStarting()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserUnlocked()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    :cond_1
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 6
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 9
    move-result p1

    .line 10
    invoke-static {v1, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->appendInt([II)[I

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 16
    monitor-exit v0

    .line 17
    return-void

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

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 6
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 9
    move-result p1

    .line 10
    invoke-static {v1, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->removeInt([II)[I

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 16
    monitor-exit v0

    .line 17
    return-void

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

.method public final queueReadyJobsForExecutionLocked()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    const/16 v2, 0x8

    .line 17
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 22
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 25
    const-string v0, "JobScheduler"

    .line 27
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 29
    if-eqz v2, :cond_0

    .line 31
    const-string/jumbo v3, "queuing all ready jobs for execution:"

    .line 34
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->clearPendingJobQueue()V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 43
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 45
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    .line 47
    invoke-virtual {v3, v4}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 50
    iget-object v3, v4, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 52
    iget-object v5, v4, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->newReadyJobs:Landroid/util/ArraySet;

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 60
    move-result v6

    .line 61
    sub-int/2addr v6, v1

    .line 62
    :goto_0
    if-ltz v6, :cond_1

    .line 64
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 70
    iget-object v7, v3, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 72
    invoke-virtual {v7, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 75
    add-int/lit8 v6, v6, -0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, v4, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 80
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 82
    iget-object v3, v4, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->newReadyJobs:Landroid/util/ArraySet;

    .line 84
    invoke-virtual {v1, v3}, Lcom/android/server/job/PendingJobQueue;->addAll(Landroid/util/ArraySet;)V

    .line 87
    iget-object v1, v4, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->newReadyJobs:Landroid/util/ArraySet;

    .line 89
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 92
    if-eqz v2, :cond_3

    .line 94
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 96
    iget p0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 98
    if-nez p0, :cond_2

    .line 100
    const-string p0, "No jobs pending."

    .line 102
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string p0, " jobs queued."

    .line 116
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_3
    :goto_1
    return-void
.end method

.method public final reportActiveLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 3
    iget v0, v0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez v0, :cond_0

    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_2

    .line 13
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 15
    iget-object v2, v2, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 17
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 20
    move-result v3

    .line 21
    sub-int/2addr v3, v1

    .line 22
    :goto_1
    if-ltz v3, :cond_2

    .line 24
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 30
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v1, v0

    .line 41
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 43
    if-eq v0, v1, :cond_3

    .line 45
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 47
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 49
    if-eqz p0, :cond_3

    .line 51
    invoke-interface {p0, v1}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    .line 54
    :cond_3
    return-void
.end method

.method public final resetPendingJobReasonCache(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 6
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 8
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/util/SparseIntArray;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 20
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
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

.method public final scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 84

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v4, p5

    .line 1
    const-string v10, "Apps may not persist more than "

    const-string v11, "Too many JWIs for uid "

    const-string v12, "Too many jobs for uid "

    const-string v13, "SCHEDULE: "

    const-string v1, "Apps may not persist more than "

    const-string v2, "Too many JWIs for uid "

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v5

    const/16 v16, 0x0

    if-eqz v5, :cond_0

    if-eqz v9, :cond_1

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v15, v10

    move-object/from16 v17, v11

    goto/16 :goto_8

    :cond_1
    :goto_0
    if-nez v9, :cond_2

    move-object v5, v3

    goto :goto_1

    :cond_2
    move-object v5, v9

    .line 3
    :goto_1
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v14, ".schedulePersisted()"

    invoke-virtual {v6, v4, v5, v14}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 4
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v14, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v6, v4, v5, v14}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5
    const-string v6, "JobScheduler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " has called schedule() too many times"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v14, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v6, v4, v5, v14}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 7
    :cond_3
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    const/4 v14, 0x4

    invoke-interface {v6, v5, v4, v14}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 8
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    if-eqz v6, :cond_9

    .line 9
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 10
    :try_start_0
    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_6

    .line 11
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    move-object v15, v10

    move-object/from16 v17, v11

    const-wide/16 v10, 0x0

    .line 12
    invoke-interface {v14, v5, v10, v11, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 13
    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v14, 0x2

    and-int/2addr v10, v14

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    move/from16 v10, v16

    .line 14
    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 15
    invoke-virtual {v11, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_3

    .line 16
    :cond_5
    :try_start_2
    monitor-exit v6

    return v16

    .line 17
    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    move-object v15, v10

    move-object/from16 v17, v11

    .line 18
    :goto_4
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 19
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_a

    .line 20
    new-instance v1, Landroid/os/LimitExceededException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "schedule()/enqueue() called more than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 21
    const-string v5, "Limit for "

    .line 22
    iget-object v6, v3, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 23
    monitor-enter v6

    .line 24
    :try_start_3
    iget-object v3, v3, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_8

    .line 25
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times in the past "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 27
    const-string v3, "Limit for "

    .line 28
    iget-object v5, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter v5

    .line 30
    :try_start_4
    iget-object v0, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 31
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 32
    const-string/jumbo v0, "ms. See the documentation for more information."

    .line 33
    invoke-static {v2, v3, v4, v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-direct {v1, v0}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 35
    :cond_7
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :goto_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 37
    :cond_8
    :try_start_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :goto_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 39
    :goto_7
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_9
    move-object v15, v10

    move-object/from16 v17, v11

    .line 40
    :cond_a
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    if-eqz v6, :cond_c

    return v16

    :cond_b
    move-object v15, v10

    move-object/from16 v17, v11

    .line 41
    :cond_c
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v10, ".schedulePersisted()"

    invoke-virtual {v6, v4, v5, v10}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 42
    :goto_8
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5, v8, v3}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 43
    const-string v0, "JobScheduler"

    const-string v1, "Not scheduling job for "

    const-string v2, ":"

    .line 44
    invoke-static {v8, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- package not allowed to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string/jumbo v0, "job_scheduler.value_cntr_w_uid_schedule_failure_app_start_mode_disabled"

    invoke-static {v0, v8}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return v16

    .line 47
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 48
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v5

    .line 50
    invoke-static {v5, v6}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v5

    int-to-float v5, v5

    .line 51
    invoke-virtual {v3, v5}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 52
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v5

    int-to-float v5, v5

    .line 54
    invoke-virtual {v3, v5}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 55
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sJobMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v5

    int-to-float v5, v5

    .line 57
    invoke-virtual {v3, v8, v5}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    if-eqz v7, :cond_e

    .line 58
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v5

    .line 60
    invoke-static {v5, v6}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v5

    int-to-float v5, v5

    .line 61
    invoke-virtual {v3, v5}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 62
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v5

    .line 64
    invoke-static {v5, v6}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v5

    int-to-float v5, v5

    .line 65
    invoke-virtual {v3, v5}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 66
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sJwiMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v5

    .line 68
    invoke-static {v5, v6}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v5

    int-to-float v5, v5

    .line 69
    invoke-virtual {v3, v8, v5}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    :cond_e
    if-eqz v7, :cond_f

    .line 70
    const-string/jumbo v3, "job_scheduler.value_cntr_w_uid_job_work_items_enqueued"

    invoke-static {v3, v8}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 71
    :cond_f
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 72
    :try_start_8
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v5

    .line 74
    iget-object v3, v3, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    move-object/from16 v6, p6

    .line 75
    invoke-virtual {v3, v8, v5, v6}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v11

    if-eqz v7, :cond_14

    if-eqz v11, :cond_14

    .line 76
    iget-object v3, v11, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    move-object/from16 v5, p1

    .line 77
    invoke-virtual {v3, v5}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 78
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    if-lt v3, v4, :cond_11

    .line 79
    iget-object v3, v11, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_9

    .line 80
    :cond_10
    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " JobWorkItems per job"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_3
    move-exception v0

    goto/16 :goto_13

    .line 82
    :cond_11
    :goto_9
    invoke-virtual {v11, v7}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    .line 83
    iget-object v1, v11, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 84
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 85
    iget v1, v11, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    and-int/lit8 v1, v1, -0x7

    iput v1, v11, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 86
    :cond_12
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, v11}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 87
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 88
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v8, v2}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 89
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    invoke-virtual {v11, v0}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;)V

    .line 90
    monitor-exit v10

    const/4 v14, 0x1

    return v14

    :cond_13
    :goto_a
    const/4 v14, 0x1

    goto :goto_b

    :cond_14
    move-object/from16 v5, p1

    goto :goto_a

    :goto_b
    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 91
    invoke-static/range {v1 .. v6}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v6

    .line 92
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 93
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 94
    const-string/jumbo v0, "job_scheduler.value_cntr_w_uid_schedule_failure_ej_out_of_quota"

    invoke-static {v0, v8}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 95
    monitor-exit v10

    return v16

    .line 96
    :cond_15
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    invoke-virtual {v6, v1}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;)V

    .line 97
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_16

    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-nez v9, :cond_18

    .line 98
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, v8}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v1

    const/16 v2, 0x96

    if-gt v1, v2, :cond_17

    goto :goto_c

    .line 99
    :cond_17
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string/jumbo v0, "job_scheduler.value_cntr_w_uid_max_scheduling_limit_hit"

    invoke-static {v0, v8}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Apps may not schedule more than 150 distinct jobs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_18
    :goto_c
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    const/4 v9, 0x0

    if-eqz v11, :cond_1b

    if-eqz v7, :cond_1a

    .line 103
    iget-object v1, v11, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 104
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    if-ge v1, v2, :cond_19

    goto :goto_d

    .line 105
    :cond_19
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v3, v15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " JobWorkItems per job"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_1a
    :goto_d
    const-string/jumbo v12, "job rescheduled by app"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v6

    move-object v11, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    goto :goto_e

    :cond_1b
    move-object v11, v6

    .line 108
    invoke-virtual {v0, v11, v9}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    :goto_e
    if-eqz v7, :cond_1c

    .line 109
    invoke-virtual {v11, v7}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    .line 110
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 111
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v8, v2}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 112
    :cond_1c
    iget v1, v11, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 113
    iget-boolean v2, v11, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    if-eqz v2, :cond_1d

    .line 114
    filled-new-array {v1, v8}, [I

    move-result-object v1

    :goto_f
    move-object/from16 v18, v1

    goto :goto_10

    :cond_1d
    filled-new-array {v1}, [I

    move-result-object v1

    goto :goto_f

    :goto_10
    if-eqz v2, :cond_1e

    .line 115
    iget-object v1, v11, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 116
    filled-new-array {v9, v1}, [Ljava/lang/String;

    move-result-object v1

    :goto_11
    move-object/from16 v19, v1

    goto :goto_12

    .line 117
    :cond_1e
    iget-object v1, v11, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 118
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 119
    :goto_12
    iget-object v1, v11, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 120
    iget v2, v11, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 121
    iget-wide v3, v11, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    .line 122
    invoke-virtual {v11, v14}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v26

    const/4 v5, 0x2

    .line 123
    invoke-virtual {v11, v5}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v27

    const/16 v5, 0x8

    .line 124
    invoke-virtual {v11, v5}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v28

    const/high16 v5, -0x80000000

    .line 125
    invoke-virtual {v11, v5}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v29

    const/high16 v5, 0x40000000    # 2.0f

    .line 126
    invoke-virtual {v11, v5}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v30

    const/4 v5, 0x4

    .line 127
    invoke-virtual {v11, v5}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v31

    .line 128
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v32

    .line 129
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v33

    .line 130
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v34

    .line 131
    iget-object v5, v11, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 132
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v37

    .line 133
    iget-object v5, v11, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 134
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v38

    .line 135
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v39

    .line 136
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v40

    .line 137
    iget-object v5, v11, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 138
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v41

    .line 139
    iget-object v5, v11, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 140
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v53

    .line 141
    iget-object v5, v11, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 142
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v55

    .line 143
    iget-object v5, v11, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 144
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v56

    .line 145
    iget-wide v5, v11, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 146
    iget-wide v7, v11, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 147
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v62

    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 148
    iget v12, v11, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 149
    invoke-virtual {v9, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-static {v9}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v63

    .line 150
    iget-object v9, v11, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    .line 151
    iget-object v12, v11, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 152
    invoke-virtual {v12}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v73

    .line 153
    iget-object v12, v11, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 154
    invoke-virtual {v12}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v75

    .line 155
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v77

    .line 156
    iget-boolean v12, v11, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    .line 157
    iget v13, v11, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 158
    iget v15, v11, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 159
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v82

    .line 160
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v83

    const-wide/16 v71, 0x0

    const/16 v78, 0x0

    const/16 v17, 0x8

    const/16 v21, 0x2

    const/16 v22, -0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v54, 0x0

    const-wide/16 v65, 0x0

    const-wide/16 v67, 0x0

    const-wide/16 v69, 0x0

    move-object/from16 v20, v1

    move/from16 v23, v2

    move-wide/from16 v24, v3

    move-wide/from16 v58, v5

    move-wide/from16 v60, v7

    move-object/from16 v64, v9

    move/from16 v79, v12

    move/from16 v80, v13

    move/from16 v81, v15

    .line 161
    invoke-static/range {v17 .. v83}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v11}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 163
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v1, v11}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 164
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1, v11}, Lcom/android/server/job/PendingJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 166
    :cond_1f
    monitor-exit v10

    return v14

    :goto_13
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public final setFlexPolicy(IZ)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "setFlexPolicy(): "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "/"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "JobScheduler"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/FlexibilityController;->setLocalPolicyForTesting(IZ)V

    .line 38
    return-void
.end method

.method public final startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6

    .line 1
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "Not yet prepared when started tracking: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "JobScheduler"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 35
    const/4 v0, 0x1

    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz p2, :cond_1

    .line 39
    move v2, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v2, v1

    .line 42
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 44
    iget-object v4, v3, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 46
    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 52
    iget v4, v3, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 54
    add-int/2addr v4, v0

    .line 55
    iput v4, v3, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 57
    iget v5, v3, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    .line 59
    if-ge v5, v4, :cond_2

    .line 61
    iput v4, v3, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    .line 63
    :cond_2
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 65
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPersisted()Z

    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 71
    iget-object v4, v3, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 73
    iget v5, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 75
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 78
    invoke-virtual {v3}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 81
    :cond_3
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 83
    if-eqz v0, :cond_4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    const-string v3, "Added job status to store: "

    .line 89
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    const-string v3, "JobStore"

    .line 101
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->resetPendingJobReasonCache(Lcom/android/server/job/controllers/JobStatus;)V

    .line 107
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 109
    if-eqz v0, :cond_6

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 113
    check-cast v0, Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 118
    move-result v0

    .line 119
    if-ge v1, v0, :cond_6

    .line 121
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 123
    check-cast v0, Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 131
    if-eqz v2, :cond_5

    .line 133
    const/4 v3, 0x0

    .line 134
    invoke-virtual {v0, p1, v3}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 137
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    .line 142
    goto :goto_1

    .line 143
    :cond_6
    return-void
.end method

.method public final stopNonReadyActiveJobsLocked()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 4
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 6
    check-cast v2, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v2

    .line 12
    if-ge v0, v2, :cond_4

    .line 14
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 16
    check-cast v2, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 24
    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 26
    if-nez v3, :cond_0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget v4, v3, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 31
    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_2

    .line 37
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 40
    move-result v1

    .line 41
    const/4 v4, 0x5

    .line 42
    if-ne v1, v4, :cond_1

    .line 44
    iget v1, v3, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 46
    const/16 v4, 0xc

    .line 48
    if-ne v1, v4, :cond_1

    .line 50
    const/4 v3, 0x6

    .line 51
    const-string/jumbo v4, "cancelled due to restricted bucket"

    .line 54
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget v1, v3, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 60
    const-string/jumbo v3, "cancelled due to unsatisfied constraints"

    .line 63
    const/4 v4, 0x1

    .line 64
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 70
    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_3

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v4, "restricted due to "

    .line 81
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget v4, v1, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    .line 86
    invoke-static {v4}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    iget v1, v1, Lcom/android/server/job/restrictions/JobRestriction;->mStopReason:I

    .line 99
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 102
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    return-void
.end method

.method public final stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_3

    .line 5
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 7
    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v2

    .line 13
    if-lez v2, :cond_0

    .line 15
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 17
    iput-object v2, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 19
    :cond_0
    iget-object v2, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 21
    if-nez v2, :cond_1

    .line 23
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 25
    iput-object v2, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 30
    if-eqz v2, :cond_2

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v2

    .line 36
    if-lez v2, :cond_2

    .line 38
    iget-object v2, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 40
    iget-object v3, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    :cond_2
    :goto_0
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 47
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 49
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 51
    iput v1, p2, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 53
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 59
    if-eqz v2, :cond_5

    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 64
    move-result v3

    .line 65
    move v4, v0

    .line 66
    :goto_1
    if-ge v4, v3, :cond_5

    .line 68
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Landroid/app/job/JobWorkItem;

    .line 74
    invoke-virtual {v5}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    .line 77
    move-result-object v6

    .line 78
    if-eqz v6, :cond_4

    .line 80
    invoke-virtual {v5}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Lcom/android/server/job/GrantedUriPermissions;

    .line 86
    invoke-virtual {v5}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    .line 89
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 94
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 96
    if-eqz v2, :cond_7

    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 101
    move-result v3

    .line 102
    move v4, v0

    .line 103
    :goto_2
    if-ge v4, v3, :cond_7

    .line 105
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Landroid/app/job/JobWorkItem;

    .line 111
    invoke-virtual {v5}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    .line 114
    move-result-object v6

    .line 115
    if-eqz v6, :cond_6

    .line 117
    invoke-virtual {v5}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Lcom/android/server/job/GrantedUriPermissions;

    .line 123
    invoke-virtual {v5}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    .line 126
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 128
    goto :goto_2

    .line 129
    :cond_7
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 131
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    .line 134
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 136
    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonCache:Landroid/util/SparseArrayMap;

    .line 139
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 141
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 143
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Landroid/util/SparseIntArray;

    .line 149
    if-eqz v2, :cond_8

    .line 151
    iget-object v3, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 153
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    .line 156
    move-result v3

    .line 157
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 160
    goto :goto_4

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    goto/16 :goto_7

    .line 164
    :cond_8
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 167
    iget-object v2, v1, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 169
    invoke-virtual {v2, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_a

    .line 175
    sget-boolean p3, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 177
    if-eqz p3, :cond_9

    .line 179
    new-instance p3, Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "Couldn\'t remove job: didn\'t exist: "

    .line 183
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object p3

    .line 193
    const-string v1, "JobStore"

    .line 195
    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_9
    move v2, v0

    .line 199
    goto :goto_5

    .line 200
    :cond_a
    iget v3, v1, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 202
    const/4 v4, 0x1

    .line 203
    sub-int/2addr v3, v4

    .line 204
    iput v3, v1, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 206
    if-eqz p3, :cond_b

    .line 208
    iget-object p3, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 210
    invoke-virtual {p3}, Landroid/app/job/JobInfo;->isPersisted()Z

    .line 213
    move-result p3

    .line 214
    if-eqz p3, :cond_b

    .line 216
    iget-object p3, v1, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 218
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 220
    invoke-virtual {p3, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 223
    invoke-virtual {v1}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 226
    :cond_b
    :goto_5
    if-nez v2, :cond_c

    .line 228
    const-string p3, "JobScheduler"

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 232
    const-string v3, "Job didn\'t exist in JobStore: "

    .line 234
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    invoke-static {p3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_c
    iget-boolean p3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 253
    if-eqz p3, :cond_d

    .line 255
    :goto_6
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 257
    check-cast p3, Ljava/util/ArrayList;

    .line 259
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 262
    move-result p3

    .line 263
    if-ge v0, p3, :cond_d

    .line 265
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 267
    check-cast p3, Ljava/util/ArrayList;

    .line 269
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    move-result-object p3

    .line 273
    check-cast p3, Lcom/android/server/job/controllers/StateController;

    .line 275
    invoke-virtual {p3, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    .line 280
    goto :goto_6

    .line 281
    :cond_d
    return v2

    .line 282
    :goto_7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    throw p0
.end method

.method public updateQuotaTracker()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 5
    iget-boolean v2, v1, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    .line 7
    if-nez v2, :cond_1

    .line 9
    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 17
    :goto_1
    iget-object v2, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    iget-boolean v3, v0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    .line 22
    if-ne v3, v1, :cond_2

    .line 24
    monitor-exit v2

    .line 25
    goto :goto_2

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_3

    .line 28
    :cond_2
    iput-boolean v1, v0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    .line 30
    if-nez v1, :cond_3

    .line 32
    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker;->clear()V

    .line 35
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 38
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 40
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 42
    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    .line 44
    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    .line 46
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 49
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 51
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

    .line 53
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 55
    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    .line 57
    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    .line 59
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 62
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 64
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

    .line 66
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 68
    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    .line 70
    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    .line 72
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 75
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 77
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

    .line 79
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 81
    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

    .line 83
    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    .line 85
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 88
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 90
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

    .line 92
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 94
    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

    .line 96
    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    .line 98
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 101
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 103
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

    .line 105
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 107
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

    .line 109
    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

    .line 111
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 114
    return-void

    .line 115
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    throw p0
.end method

.method public final updateUidState(III)V
    .locals 8

    .line 1
    const-string v0, "UID "

    .line 3
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    const-string v2, "JobScheduler"

    .line 9
    const-string v3, "UID "

    .line 11
    const-string v4, " proc state changed to "

    .line 13
    invoke-static {p1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v3

    .line 17
    invoke-static {p2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v4, " with capabilities="

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {p3}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 45
    monitor-enter v2

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 48
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 57
    move-result v3

    .line 58
    const/4 v5, 0x2

    .line 59
    const/16 v6, 0x28

    .line 61
    if-ne p2, v5, :cond_1

    .line 63
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 65
    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto/16 :goto_5

    .line 72
    :cond_1
    const/4 v5, 0x4

    .line 73
    if-gt p2, v5, :cond_2

    .line 75
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 77
    const/16 v7, 0x23

    .line 79
    invoke-virtual {v5, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const/4 v5, 0x5

    .line 84
    if-gt p2, v5, :cond_3

    .line 86
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 88
    const/16 v7, 0x1e

    .line 90
    invoke-virtual {v5, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 96
    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 99
    :goto_0
    if-eqz p3, :cond_5

    .line 101
    const/16 v5, 0x14

    .line 103
    if-ne p2, v5, :cond_4

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    .line 108
    invoke-virtual {p2, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    .line 114
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 117
    :goto_2
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 119
    invoke-virtual {p2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 122
    move-result p2

    .line 123
    if-eq v3, p2, :cond_a

    .line 125
    if-eqz v1, :cond_6

    .line 127
    const-string p3, "JobScheduler"

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v0, " bias changed from "

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v0, " to "

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_6
    :goto_3
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 162
    check-cast p3, Ljava/util/ArrayList;

    .line 164
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 167
    move-result p3

    .line 168
    if-ge v4, p3, :cond_7

    .line 170
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 172
    check-cast p3, Ljava/util/ArrayList;

    .line 174
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    move-result-object p3

    .line 178
    check-cast p3, Lcom/android/server/job/controllers/StateController;

    .line 180
    invoke-virtual {p3, p1, v3, p2}, Lcom/android/server/job/controllers/StateController;->onUidBiasChangedLocked(III)V

    .line 183
    add-int/lit8 v4, v4, 0x1

    .line 185
    goto :goto_3

    .line 186
    :cond_7
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    if-eq v3, v6, :cond_8

    .line 193
    if-eq p2, v6, :cond_8

    .line 195
    goto :goto_4

    .line 196
    :cond_8
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 198
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 200
    iget p1, p1, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 202
    if-nez p1, :cond_9

    .line 204
    goto :goto_4

    .line 205
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    .line 208
    :cond_a
    :goto_4
    monitor-exit v2

    .line 209
    return-void

    .line 210
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    throw p0
.end method

.method public waitOnAsyncLoadingForTesting()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 6
    return-void
.end method
