.class public final Lcom/android/server/job/controllers/QuotaController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field static final MSG_END_GRACE_PERIOD:I = 0x6

.field static final MSG_REACHED_EJ_TIME_QUOTA:I = 0x4

.field static final MSG_REACHED_TIME_QUOTA:I


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mAllowedTimePerPeriodMs:[J

.field public final mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

.field public final mBucketPeriodsMs:[J

.field public final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field public final mDeleteOldEventsFunctor:Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

.field public mEJGracePeriodTempAllowlistMs:J

.field public mEJGracePeriodTopAppMs:J

.field public mEJLimitWindowSizeMs:J

.field public final mEJLimitsMs:[J

.field public final mEJPkgTimers:Landroid/util/SparseArrayMap;

.field public mEJRewardInteractionMs:J

.field public mEJRewardNotificationSeenMs:J

.field public mEJRewardTopAppMs:J

.field public final mEJStats:Landroid/util/SparseArrayMap;

.field public final mEJTimingSessions:Landroid/util/SparseArrayMap;

.field public mEJTopAppTimeChunkSizeMs:J

.field public final mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

.field public mEjLimitAdditionInstallerMs:J

.field public mEjLimitAdditionSpecialMs:J

.field public final mExecutionStatsCache:Landroid/util/SparseArrayMap;

.field public final mForegroundUids:Landroid/util/SparseBooleanArray;

.field public final mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

.field public final mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

.field public final mMaxBucketJobCounts:[I

.field public final mMaxBucketSessionCounts:[I

.field public mMaxExecutionTimeIntoQuotaMs:J

.field public mMaxExecutionTimeMs:J

.field public mMaxJobCountPerRateLimitingWindow:I

.field public mMaxSessionCountPerRateLimitingWindow:I

.field public mNextCleanupTimeElapsed:J

.field public final mPkgTimers:Landroid/util/SparseArrayMap;

.field public final mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

.field public mQuotaBufferMs:J

.field public mQuotaBumpAdditionalDurationMs:J

.field public mQuotaBumpAdditionalJobCount:I

.field public mQuotaBumpAdditionalSessionCount:I

.field public mQuotaBumpLimit:I

.field public mQuotaBumpWindowSizeMs:J

.field public mRateLimitingWindowMs:J

.field public final mSessionCleanupAlarmListener:Lcom/android/server/job/controllers/QuotaController$1;

.field public final mSystemInstallers:Landroid/util/SparseSetArray;

.field public final mTempAllowlistCache:Landroid/util/SparseBooleanArray;

.field public final mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

.field public final mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

.field public final mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

.field public final mTimingEvents:Landroid/util/SparseArrayMap;

.field public mTimingSessionCoalescingDurationMs:J

.field public final mTopAppCache:Landroid/util/SparseBooleanArray;

.field public final mTopAppGraceCache:Landroid/util/SparseLongArray;

.field public final mTopAppTrackers:Landroid/util/SparseArrayMap;

.field public final mTopStartedJobs:Landroid/util/ArraySet;

.field public final mTrackedJobs:Landroid/util/SparseArrayMap;

.field public final mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;


# direct methods
.method public static -$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    const-wide/16 v1, 0x0

    .line 4
    cmp-long v1, p3, v1

    .line 6
    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v9, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v9

    .line 15
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    move-result-wide v10

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 27
    move-result-object v6

    .line 28
    move-object v1, p0

    .line 29
    move v2, p1

    .line 30
    move-object v3, p2

    .line 31
    move-wide v4, v10

    .line 32
    move-wide v7, p3

    .line 33
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 41
    move v2, p1

    .line 42
    move-object v3, p2

    .line 43
    invoke-virtual {p0, p1, p2, v10, v11}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    :goto_0
    monitor-exit v9

    .line 54
    :goto_1
    return-void

    .line 55
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw v0
.end method

.method public static -$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    .line 17
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    .line 19
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 22
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 24
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 29
    const/4 p0, 0x0

    .line 30
    move p1, p0

    .line 31
    :goto_0
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 33
    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 36
    move-result v1

    .line 37
    if-ge p1, v1, :cond_1

    .line 39
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 41
    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 44
    move-result v1

    .line 45
    move v2, p0

    .line 46
    :goto_1
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 48
    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 51
    move-result v3

    .line 52
    if-ge v2, v3, :cond_0

    .line 54
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 56
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/String;

    .line 62
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 64
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/Integer;

    .line 70
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result v4

    .line 74
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 76
    invoke-virtual {v5, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object p0, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 87
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    .line 90
    iget-object p0, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    .line 92
    return-object p0
.end method

.method public static -$$Nest$smhashLong(J)I
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 3
    ushr-long v0, p0, v0

    .line 5
    xor-long/2addr p0, v0

    .line 6
    long-to-int p0, p0

    .line 7
    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-string v0, "JobScheduler.Quota"

    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 6
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 8
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 11
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 13
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 15
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 18
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 20
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 22
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 25
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 27
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 29
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 32
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 34
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 36
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 39
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 41
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 43
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 46
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 48
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 50
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 53
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 55
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 57
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 60
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 62
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 64
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 67
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 69
    new-instance v1, Landroid/util/ArraySet;

    .line 71
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 74
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 76
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 78
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 81
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 83
    new-instance v1, Landroid/util/SparseLongArray;

    .line 85
    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    .line 88
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 90
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 92
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 95
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 97
    new-instance v1, Landroid/util/SparseLongArray;

    .line 99
    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    .line 102
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 104
    const-wide/16 v1, 0x0

    .line 106
    const/4 v3, 0x7

    .line 107
    new-array v4, v3, [J

    .line 109
    fill-array-data v4, :array_0

    .line 112
    iput-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    .line 114
    const-wide/32 v4, 0xdbba00

    .line 117
    iput-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 119
    const-wide/16 v4, 0x7530

    .line 121
    iput-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 123
    const-wide/32 v6, 0xdb44d0

    .line 126
    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 128
    const-wide/32 v6, 0xea60

    .line 131
    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 133
    const/16 v8, 0x14

    .line 135
    iput v8, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 137
    iput v8, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 139
    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 141
    new-instance v8, Lcom/android/server/job/controllers/QuotaController$1;

    .line 143
    invoke-direct {v8, v0}, Lcom/android/server/job/controllers/QuotaController$1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 146
    iput-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Lcom/android/server/job/controllers/QuotaController$1;

    .line 148
    const-wide/32 v8, 0x5265c00

    .line 151
    const-wide/32 v10, 0x1b77400

    .line 154
    new-array v12, v3, [J

    .line 156
    fill-array-data v12, :array_1

    .line 159
    iput-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 161
    new-array v13, v3, [I

    .line 163
    fill-array-data v13, :array_2

    .line 166
    iput-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 168
    const/4 v14, 0x1

    .line 169
    new-array v15, v3, [I

    .line 171
    fill-array-data v15, :array_3

    .line 174
    iput-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 176
    const-wide/16 v12, 0x1388

    .line 178
    iput-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 180
    const-wide/32 v12, 0x1b7740

    .line 183
    new-array v3, v3, [J

    .line 185
    fill-array-data v3, :array_4

    .line 188
    iput-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    .line 190
    iput-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    .line 192
    const-wide/32 v12, 0xdbba0

    .line 195
    iput-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    .line 197
    iput-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 199
    iput-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 201
    const-wide/16 v3, 0x2710

    .line 203
    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 205
    const-wide/16 v3, 0x3a98

    .line 207
    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    .line 209
    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    .line 211
    const-wide/32 v1, 0x2bf20

    .line 214
    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    .line 216
    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 218
    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 220
    const/4 v1, 0x2

    .line 221
    iput v1, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    .line 223
    iput v14, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    .line 225
    iput-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 227
    const/16 v2, 0x8

    .line 229
    iput v2, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 231
    new-instance v2, Landroid/util/SparseSetArray;

    .line 233
    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    .line 236
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 238
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 240
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 243
    const-wide v3, 0x7fffffffffffffffL

    .line 248
    iput-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 250
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 252
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    .line 254
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    .line 259
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 261
    invoke-direct {v2, v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 264
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 266
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    .line 268
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    .line 273
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    .line 275
    const/4 v3, 0x0

    .line 276
    invoke-direct {v2, v3, v0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 279
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldEventsFunctor:Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    .line 281
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 283
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 290
    move-result-object v3

    .line 291
    invoke-direct {v2, v0, v3}, Lcom/android/server/job/controllers/QuotaController$QcHandler;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V

    .line 294
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 296
    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 298
    const-class v3, Landroid/app/AlarmManager;

    .line 300
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 303
    move-result-object v2

    .line 304
    check-cast v2, Landroid/app/AlarmManager;

    .line 306
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 308
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 310
    invoke-direct {v2, v0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 313
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 315
    move-object/from16 v2, p2

    .line 317
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 319
    move-object/from16 v2, p3

    .line 321
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 323
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 325
    iget-object v3, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 327
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 330
    move-result-object v4

    .line 331
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 334
    move-result-object v4

    .line 335
    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;)V

    .line 338
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 340
    const-class v2, Lcom/android/server/usage/AppStandbyInternal;

    .line 342
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 345
    move-result-object v2

    .line 346
    check-cast v2, Lcom/android/server/usage/AppStandbyInternal;

    .line 348
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    .line 350
    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 353
    invoke-interface {v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 356
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 358
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 361
    move-result-object v2

    .line 362
    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 364
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;

    .line 366
    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 369
    invoke-virtual {v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 372
    const-class v2, Lcom/android/server/PowerAllowlistInternal;

    .line 374
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 377
    move-result-object v2

    .line 378
    check-cast v2, Lcom/android/server/PowerAllowlistInternal;

    .line 380
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;

    .line 382
    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 385
    invoke-interface {v2, v3}, Lcom/android/server/PowerAllowlistInternal;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    .line 388
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 391
    move-result-object v2

    .line 392
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    .line 394
    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 397
    const/4 v4, 0x4

    .line 398
    const/4 v5, 0x0

    .line 399
    invoke-interface {v2, v3, v14, v4, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 402
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 405
    move-result-object v2

    .line 406
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    .line 408
    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 411
    invoke-interface {v2, v3, v14, v1, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :catch_0
    return-void

    .line 415
    :array_0
    .array-data 8
        0x927c0
        0x927c0
        0x927c0
        0x927c0
        0x0
        0x927c0
        0x927c0
    .end array-data

    .line 447
    :array_1
    .array-data 8
        0x927c0
        0x6ddd00
        0x1b77400
        0x5265c00
        0x0
        0x5265c00
        0x927c0
    .end array-data

    .line 479
    :array_2
    .array-data 4
        0x4b
        0x78
        0xc8
        0x30
        0x0
        0xa
        0x4b
    .end array-data

    .line 497
    :array_3
    .array-data 4
        0x4b
        0xa
        0x8
        0x3
        0x0
        0x1
        0x4b
    .end array-data

    .line 515
    :array_4
    .array-data 8
        0x1b7740
        0x1b7740
        0x927c0
        0x927c0
        0x0
        0x493e0
        0x36ee80
    .end array-data
.end method


# virtual methods
.method public final cacheInstallerPackagesLocked(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x4c3000

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 20
    :goto_0
    if-ltz v0, :cond_1

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 28
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 32
    const-string v4, "android.permission.INSTALL_PACKAGES"

    .line 34
    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 37
    move-result v3

    .line 38
    if-ltz v3, :cond_0

    .line 40
    if-eqz v2, :cond_0

    .line 42
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 44
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 46
    const/4 v6, -0x1

    .line 47
    invoke-virtual {v3, v4, v6, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 55
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 57
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 60
    move-result v2

    .line 61
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 63
    invoke-virtual {v3, v2, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 66
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method public final calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 15
    sub-long/2addr v2, v4

    .line 16
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz p6, :cond_1

    .line 23
    add-int/lit8 v6, v4, -0x1

    .line 25
    move v9, v5

    .line 26
    move v8, v6

    .line 27
    move-wide/from16 v6, p4

    .line 29
    :goto_0
    if-ltz v8, :cond_2

    .line 31
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v10

    .line 35
    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 37
    instance-of v11, v10, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    .line 39
    if-eqz v11, :cond_0

    .line 41
    check-cast v10, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    .line 43
    iget-wide v10, v10, Lcom/android/server/job/controllers/QuotaController$QuotaBump;->eventTimeElapsed:J

    .line 45
    cmp-long v10, v10, v2

    .line 47
    if-ltz v10, :cond_2

    .line 49
    add-int/lit8 v10, v9, 0x1

    .line 51
    iget v11, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 53
    if-ge v9, v11, :cond_2

    .line 55
    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 57
    add-long/2addr v6, v11

    .line 58
    move v9, v10

    .line 59
    :cond_0
    add-int/lit8 v8, v8, -0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-wide/from16 v6, p4

    .line 64
    :cond_2
    const-wide/16 v2, 0x0

    .line 66
    move-wide/from16 v8, p2

    .line 68
    :goto_1
    if-ge v5, v4, :cond_7

    .line 70
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v10

    .line 74
    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 76
    instance-of v11, v10, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    .line 78
    if-eqz v11, :cond_3

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 83
    iget-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 85
    cmp-long v13, v11, p2

    .line 87
    if-gez v13, :cond_4

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iget-wide v13, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 92
    cmp-long v10, v13, p2

    .line 94
    if-gtz v10, :cond_5

    .line 96
    sub-long v8, v11, p2

    .line 98
    add-long/2addr v8, v2

    .line 99
    move-wide v2, v8

    .line 100
    move-wide v8, v11

    .line 101
    goto :goto_2

    .line 102
    :cond_5
    sub-long v8, v13, v8

    .line 104
    cmp-long v10, v8, v6

    .line 106
    if-lez v10, :cond_6

    .line 108
    goto :goto_3

    .line 109
    :cond_6
    sub-long v13, v11, v13

    .line 111
    add-long/2addr v13, v8

    .line 112
    add-long/2addr v13, v2

    .line 113
    sub-long/2addr v6, v8

    .line 114
    move-wide v8, v11

    .line 115
    move-wide v2, v13

    .line 116
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_7
    :goto_3
    add-long/2addr v2, v6

    .line 120
    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 122
    cmp-long v0, v2, v0

    .line 124
    if-lez v0, :cond_8

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "Calculated quota consumed time too high: "

    .line 130
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    const-string v1, "JobScheduler.Quota"

    .line 142
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_8
    return-wide v2
.end method

.method public final clearAppStatsLocked(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 14
    const-string v1, "JobScheduler.Quota"

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    const-string/jumbo v2, "clearAppStats called before Timer turned off."

    .line 27
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 32
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 35
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 40
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 46
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 54
    const-string/jumbo v2, "clearAppStats called before EJ Timer turned off."

    .line 57
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 62
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 65
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 70
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 75
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 80
    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 89
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 94
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public deleteObsoleteSessionsLocked()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->mNowElapsed:J

    .line 17
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 19
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldEventsFunctor:Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    .line 21
    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 24
    const/4 v1, 0x0

    .line 25
    move v2, v1

    .line 26
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 28
    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 31
    move-result v3

    .line 32
    if-ge v2, v3, :cond_3

    .line 34
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 36
    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 39
    move-result v3

    .line 40
    move v4, v1

    .line 41
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 43
    invoke-virtual {v5, v3}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 46
    move-result v5

    .line 47
    if-ge v4, v5, :cond_2

    .line 49
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 51
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/lang/String;

    .line 57
    invoke-virtual {p0, v3, v5}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 60
    move-result-object v6

    .line 61
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 63
    invoke-virtual {v7, v3, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ljava/util/List;

    .line 69
    if-nez v5, :cond_0

    .line 71
    goto :goto_3

    .line 72
    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 75
    move-result v7

    .line 76
    if-lez v7, :cond_1

    .line 78
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 84
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->getEndTimeElapsed()J

    .line 87
    move-result-wide v8

    .line 88
    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->mNowElapsed:J

    .line 90
    const-wide/32 v12, 0x5265c00

    .line 93
    sub-long/2addr v10, v12

    .line 94
    cmp-long v8, v8, v10

    .line 96
    if-gtz v8, :cond_1

    .line 98
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 100
    iget-wide v10, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 102
    sub-long/2addr v8, v10

    .line 103
    neg-long v7, v8

    .line 104
    invoke-virtual {v6, v7, v8}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 107
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    goto :goto_2

    .line 111
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 116
    goto :goto_0

    .line 117
    :cond_3
    return-void
.end method

.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3
    const-string v0, "QuotaController:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 5
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_exempted_ms"

    .line 6
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 7
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_active_ms"

    .line 8
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 9
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_working_ms"

    .line 10
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 11
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_frequent_ms"

    .line 12
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 13
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_rare_ms"

    .line 14
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 15
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_restricted_ms"

    .line 16
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 17
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    const-string/jumbo v2, "qc_in_quota_buffer_ms"

    .line 18
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 19
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    const-string/jumbo v2, "qc_window_size_exempted_ms"

    .line 20
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 21
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-string/jumbo v2, "qc_window_size_active_ms"

    .line 22
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 23
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-string/jumbo v2, "qc_window_size_working_ms"

    .line 24
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 25
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-string/jumbo v2, "qc_window_size_frequent_ms"

    .line 26
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 27
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    const-string/jumbo v2, "qc_window_size_rare_ms"

    .line 28
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 29
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    const-string/jumbo v2, "qc_window_size_restricted_ms"

    .line 30
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 31
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    const-string/jumbo v2, "qc_max_execution_time_ms"

    .line 32
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 33
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_EXEMPTED:I

    const-string/jumbo v1, "qc_max_job_count_exempted"

    .line 34
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 35
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    const-string/jumbo v1, "qc_max_job_count_active"

    .line 36
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 37
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    const-string/jumbo v1, "qc_max_job_count_working"

    .line 38
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    const-string/jumbo v1, "qc_max_job_count_frequent"

    .line 40
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    const-string/jumbo v1, "qc_max_job_count_rare"

    .line 42
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    const-string/jumbo v1, "qc_max_job_count_restricted"

    .line 44
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 45
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const-string/jumbo v2, "qc_rate_limiting_window_ms"

    .line 46
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-string/jumbo v1, "qc_max_job_count_per_rate_limiting_window"

    .line 48
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_EXEMPTED:I

    const-string/jumbo v1, "qc_max_session_count_exempted"

    .line 50
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    const-string/jumbo v1, "qc_max_session_count_active"

    .line 52
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    const-string/jumbo v1, "qc_max_session_count_working"

    .line 54
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 55
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    const-string/jumbo v1, "qc_max_session_count_frequent"

    .line 56
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    const-string/jumbo v1, "qc_max_session_count_rare"

    .line 58
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    const-string/jumbo v1, "qc_max_session_count_restricted"

    .line 60
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 61
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-string/jumbo v1, "qc_max_session_count_per_rate_limiting_window"

    .line 62
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 63
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    const-string/jumbo v2, "qc_timing_session_coalescing_duration_ms"

    .line 64
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 65
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    const-string/jumbo v2, "qc_min_quota_check_delay_ms"

    .line 66
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 67
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    const-string/jumbo v2, "qc_ej_limit_exempted_ms"

    .line 68
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 69
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    const-string/jumbo v2, "qc_ej_limit_active_ms"

    .line 70
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 71
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    const-string/jumbo v2, "qc_ej_limit_working_ms"

    .line 72
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 73
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    const-string/jumbo v2, "qc_ej_limit_frequent_ms"

    .line 74
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 75
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    const-string/jumbo v2, "qc_ej_limit_rare_ms"

    .line 76
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 77
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    const-string/jumbo v2, "qc_ej_limit_restricted_ms"

    .line 78
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 79
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    const-string/jumbo v2, "qc_ej_limit_addition_installer_ms"

    .line 80
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 81
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    const-string/jumbo v2, "qc_ej_limit_addition_special_ms"

    .line 82
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 83
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    const-string/jumbo v2, "qc_ej_window_size_ms"

    .line 84
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 85
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    const-string/jumbo v2, "qc_ej_top_app_time_chunk_size_ms"

    .line 86
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 87
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    const-string/jumbo v2, "qc_ej_reward_top_app_ms"

    .line 88
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 89
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    const-string/jumbo v2, "qc_ej_reward_interaction_ms"

    .line 90
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 91
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    const-string/jumbo v2, "qc_ej_reward_notification_seen_ms"

    .line 92
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 93
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    const-string/jumbo v2, "qc_ej_grace_period_temp_allowlist_ms"

    .line 94
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 95
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    const-string/jumbo v2, "qc_ej_grace_period_top_app_ms"

    .line 96
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 97
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    const-string/jumbo v2, "qc_quota_bump_additional_duration_ms"

    .line 98
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    const-string/jumbo v1, "qc_quota_bump_additional_job_count"

    .line 100
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    const-string/jumbo v1, "qc_quota_bump_additional_session_count"

    .line 102
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 103
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    const-string/jumbo v2, "qc_quota_bump_window_size_ms"

    .line 104
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 105
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "qc_quota_bump_limit"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 106
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    .line 257
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v0, 0x10b00000018L

    .line 258
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    .line 259
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000003L

    .line 260
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000004L

    .line 261
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000005L

    .line 262
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000006L

    .line 263
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000014L

    .line 264
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000007L

    .line 265
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000008L

    .line 266
    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000009L

    .line 267
    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000aL

    .line 268
    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000bL

    .line 269
    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000015L

    .line 270
    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000013L

    .line 271
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1050000000cL

    .line 272
    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000dL

    .line 273
    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000eL

    .line 274
    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000fL

    .line 275
    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000010L

    .line 276
    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000016L

    .line 277
    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000011L

    .line 278
    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10300000012L

    .line 279
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000017L

    .line 280
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000018L

    .line 281
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000019L

    .line 282
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000001aL

    .line 283
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000001bL

    .line 284
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000001cL

    .line 285
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000001dL

    .line 286
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000001eL

    .line 287
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000001fL

    .line 288
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000020L

    .line 289
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000021L

    .line 290
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 291
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 8
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current elapsed time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5
    const-string v0, "Foreground UIDs: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 8
    const-string v0, "Cached top apps: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "Cached top app grace period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 12
    const-string v0, "Cached temp allowlist: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 14
    const-string v0, "Cached temp allowlist grace period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 17
    const-string v0, "Special apps:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 19
    const-string v0, "System installers={"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 21
    const-string v2, ", "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 23
    const-string v2, "->"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 27
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 28
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 29
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    move v1, v0

    .line 30
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 31
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    move v3, v0

    .line 32
    :goto_2
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 33
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 34
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    .line 35
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 36
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 37
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 38
    const-string v5, "Saved events:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 40
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_2

    .line 41
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 42
    invoke-interface {v6, p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 43
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 44
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 45
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    move v1, v0

    .line 47
    :goto_4
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 48
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    move v3, v0

    .line 49
    :goto_5
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 50
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 51
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    .line 52
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 53
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_7

    .line 54
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 55
    const-string v5, "Saved sessions:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 57
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_6
    if-ltz v5, :cond_6

    .line 58
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 59
    invoke-interface {v6, p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 60
    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 61
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 62
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 63
    :cond_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 64
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 65
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 66
    const-string p2, "Cached execution stats:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v0

    .line 68
    :goto_7
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    const-string v2, ": "

    if-ge p2, v1, :cond_d

    .line 69
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    move v3, v0

    .line 70
    :goto_8
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 71
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 72
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 73
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v4, v0

    .line 75
    :goto_9
    array-length v6, v5

    if-ge v4, v6, :cond_b

    .line 76
    aget-object v6, v5, v4

    if-eqz v6, :cond_a

    .line 77
    invoke-static {v4}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 80
    :cond_b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 81
    :cond_d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 82
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 83
    const-string p2, "EJ debits:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v0

    .line 85
    :goto_a
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge p2, v1, :cond_f

    .line 86
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    move v3, v0

    .line 87
    :goto_b
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 88
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 89
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 90
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 94
    :cond_f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 95
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 96
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 97
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-wide v3, 0x20b00000004L

    .line 98
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10b00000009L

    .line 99
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 100
    iget-object v9, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 101
    invoke-virtual {v9}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v9

    const-wide v10, 0x10800000001L

    .line 102
    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 103
    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 104
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide v11, 0x10300000006L

    .line 106
    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v10, 0x0

    .line 107
    :goto_0
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    if-ge v10, v13, :cond_0

    .line 108
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 109
    invoke-virtual {v13, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    const-wide v14, 0x20500000003L

    .line 110
    invoke-virtual {v1, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 111
    :cond_0
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v13, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;

    invoke-direct {v13, v0, v2, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v10, v13}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    const/4 v10, 0x0

    .line 112
    :goto_1
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v13}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v13

    if-ge v10, v13, :cond_7

    .line 113
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v13

    const/4 v14, 0x0

    .line 114
    :goto_2
    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v15, v13}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 115
    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v15, v10, v14}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-wide v11, 0x20b00000005L

    .line 116
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 117
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v10, v14}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v9, v1, v3, v4, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    .line 118
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v13, v15}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    move-wide/from16 v16, v5

    if-eqz v3, :cond_1

    const-wide v4, 0x10b00000006L

    .line 119
    invoke-virtual {v3, v1, v4, v5, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    .line 120
    :cond_1
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v13, v15}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 121
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_3
    if-ltz v6, :cond_3

    .line 122
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 123
    instance-of v4, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    if-nez v4, :cond_2

    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    goto :goto_4

    .line 124
    :cond_2
    check-cast v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 125
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v4, 0x20b00000003L

    .line 126
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    move-object/from16 v18, v3

    const-wide v2, 0x10300000001L

    move-wide/from16 v19, v7

    .line 127
    iget-wide v7, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    invoke-virtual {v1, v2, v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 128
    iget-wide v2, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    const-wide v7, 0x10300000002L

    invoke-virtual {v1, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000003L

    .line 129
    iget v7, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    invoke-virtual {v1, v2, v3, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 130
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_4
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move-wide/from16 v7, v19

    goto :goto_3

    :cond_3
    move-wide/from16 v19, v7

    .line 131
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v13, v15}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    .line 132
    :goto_5
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 133
    aget-object v4, v2, v3

    if-nez v4, :cond_4

    move v15, v10

    goto/16 :goto_6

    :cond_4
    const-wide v5, 0x20b00000004L

    .line 134
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v5, 0x10e00000001L

    .line 135
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 136
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    move v15, v10

    const-wide v9, 0x10300000002L

    invoke-virtual {v1, v9, v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000003L

    .line 137
    iget-wide v9, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v1, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1050000000eL

    .line 138
    iget v9, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1050000000fL

    .line 139
    iget v9, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000004L

    .line 140
    iget-wide v9, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v1, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000005L

    .line 141
    iget v9, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 142
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    const-wide v9, 0x10300000006L

    invoke-virtual {v1, v9, v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000007L

    .line 143
    iget v9, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1050000000bL

    .line 144
    iget v9, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000008L

    .line 145
    iget-wide v9, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v1, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000009L

    .line 146
    iget-wide v9, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1050000000aL

    .line 147
    iget v9, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1030000000cL

    .line 148
    iget-wide v9, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1050000000dL

    .line 149
    iget v4, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 150
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    move v10, v15

    goto/16 :goto_5

    :cond_5
    move v15, v10

    .line 151
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move v10, v15

    move-wide/from16 v5, v16

    move-wide/from16 v7, v19

    const-wide v3, 0x20b00000004L

    const-wide v11, 0x10300000006L

    goto/16 :goto_2

    :cond_6
    move-wide/from16 v16, v5

    move-wide/from16 v19, v7

    move v15, v10

    add-int/lit8 v10, v15, 0x1

    move-object/from16 v2, p2

    const-wide v3, 0x20b00000004L

    const-wide v11, 0x10300000006L

    goto/16 :goto_1

    :cond_7
    move-wide/from16 v16, v5

    move-wide v2, v7

    .line 152
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v2, v16

    .line 153
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAllowedTimePerPeriodMs()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    .line 3
    return-object p0
.end method

.method public getBucketMaxJobCounts()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 3
    return-object p0
.end method

.method public getBucketMaxSessionCounts()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 3
    return-object p0
.end method

.method public getBucketWindowSizes()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 3
    return-object p0
.end method

.method public getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 13
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v1

    .line 22
    invoke-static {p1, p2, v1, v2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    .line 25
    move-result v1

    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v2, 0x0

    .line 31
    iput-wide v2, v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 33
    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    .line 35
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 37
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    return-object v0
.end method

.method public getEJGracePeriodTempAllowlistMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    .line 3
    return-wide v0
.end method

.method public getEJGracePeriodTopAppMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 3
    return-wide v0
.end method

.method public final getEJLimitMsLocked(IILjava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    .line 3
    aget-wide v0, v0, p2

    .line 5
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 7
    invoke-virtual {p2, p1, p3}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-wide p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    .line 15
    add-long/2addr v0, p0

    .line 16
    :cond_0
    return-wide v0
.end method

.method public getEJLimitWindowSizeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 3
    return-wide v0
.end method

.method public getEJLimitsMs()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    .line 3
    return-object p0
.end method

.method public getEJRewardInteractionMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    .line 3
    return-wide v0
.end method

.method public getEJRewardNotificationSeenMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    .line 3
    return-wide v0
.end method

.method public getEJRewardTopAppMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 3
    return-wide v0
.end method

.method public getEJTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 9
    return-object p0
.end method

.method public getEJTopAppTimeChunkSizeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 3
    return-wide v0
.end method

.method public getEjLimitAdditionInstallerMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    .line 3
    return-wide v0
.end method

.method public getEjLimitAdditionSpecialMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    .line 3
    return-wide v0
.end method

.method public final getExecutionStatsLocked(IILjava/lang/String;Z)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .locals 9

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 2
    const-string p0, "JobScheduler.Quota"

    const-string/jumbo p1, "getExecutionStatsLocked called for a NEVER app."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 5
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    if-nez v0, :cond_1

    .line 6
    array-length v0, v1

    new-array v0, v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 7
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p3, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    aget-object v2, v0, p2

    if-nez v2, :cond_2

    .line 9
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v2}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 10
    aput-object v2, v0, p2

    :cond_2
    if-eqz p4, :cond_5

    .line 11
    iget-object p4, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v3, p4, p2

    .line 12
    aget-wide v0, v1, p2

    .line 13
    iget-object p4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget p4, p4, p2

    .line 14
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget p2, v5, p2

    .line 15
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v5, :cond_3

    .line 16
    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 17
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    .line 19
    iget-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_4

    iget-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v5, v5, v0

    if-nez v5, :cond_4

    iget v5, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ne v5, p4, :cond_4

    iget v5, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-eq v5, p2, :cond_5

    .line 20
    :cond_4
    iput-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 21
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 22
    iput p4, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 23
    iput p2, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 24
    invoke-virtual {p0, p1, p3, v2}, Lcom/android/server/job/controllers/QuotaController;->updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    :cond_5
    return-object v2
.end method

.method public getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(IILjava/lang/String;Z)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundUids()Landroid/util/SparseBooleanArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 3
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 3
    return-object p0
.end method

.method public getInQuotaBufferMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 3
    return-wide v0
.end method

.method public getMaxExecutionTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 3
    return-wide v0
.end method

.method public getMaxJobCountPerRateLimitingWindow()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 3
    return p0
.end method

.method public final getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 11
    iget v5, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 13
    iget-object v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 15
    iget v7, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 17
    if-nez v0, :cond_6

    .line 19
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    iget-wide p0, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 27
    return-wide p0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 30
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 38
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 44
    invoke-virtual {p0, v5}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v0, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    move v0, v2

    .line 54
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 57
    move-result v1

    .line 58
    const/16 v5, 0x190

    .line 60
    if-ge v1, v5, :cond_4

    .line 62
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 64
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    .line 67
    move-result p1

    .line 68
    and-int/lit8 p1, p1, 0x2

    .line 70
    if-eqz p1, :cond_3

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move v2, v3

    .line 74
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 76
    if-eqz v2, :cond_5

    .line 78
    iget-wide p0, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 80
    return-wide p0

    .line 81
    :cond_5
    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    .line 84
    move-result-wide p0

    .line 85
    return-wide p0

    .line 86
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_7

    .line 92
    iget-wide p0, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 94
    return-wide p0

    .line 95
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 98
    move-result v0

    .line 99
    const/4 v1, 0x6

    .line 100
    const-wide/16 v8, 0x2

    .line 102
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    .line 104
    if-ne v0, v1, :cond_8

    .line 106
    aget-wide v0, v4, v1

    .line 108
    div-long/2addr v0, v8

    .line 109
    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    .line 112
    move-result-wide p0

    .line 113
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 116
    move-result-wide p0

    .line 117
    return-wide p0

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 120
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_b

    .line 126
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 128
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_9

    .line 134
    goto :goto_3

    .line 135
    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_a

    .line 141
    aget-wide v0, v4, v2

    .line 143
    div-long/2addr v0, v8

    .line 144
    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    .line 147
    move-result-wide p0

    .line 148
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 151
    move-result-wide p0

    .line 152
    return-wide p0

    .line 153
    :cond_a
    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    .line 156
    move-result-wide p0

    .line 157
    return-wide p0

    .line 158
    :cond_b
    :goto_3
    aget-wide v0, v4, v3

    .line 160
    div-long/2addr v0, v8

    .line 161
    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    .line 164
    move-result-wide p0

    .line 165
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 168
    move-result-wide p0

    .line 169
    return-wide p0
.end method

.method public getMaxSessionCountPerRateLimitingWindow()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 3
    return p0
.end method

.method public getMinQuotaCheckDelayMs()J
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 3
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 8
    monitor-exit v0

    .line 9
    return-wide v1

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

.method public getQcConstants()Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 3
    return-object p0
.end method

.method public getQuotaBumpAdditionDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 3
    return-wide v0
.end method

.method public getQuotaBumpAdditionJobCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    .line 3
    return p0
.end method

.method public getQuotaBumpAdditionSessionCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    .line 3
    return p0
.end method

.method public getQuotaBumpLimit()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 3
    return p0
.end method

.method public getQuotaBumpWindowSizeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 3
    return-wide v0
.end method

.method public getRateLimitingWindowMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 3
    return-wide v0
.end method

.method public getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 10
    move-result-object v3

    .line 11
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    .line 13
    const/4 v5, 0x4

    .line 14
    if-ne v4, v5, :cond_0

    .line 16
    const-wide/16 v0, 0x0

    .line 18
    return-wide v0

    .line 19
    :cond_0
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(IILjava/lang/String;)J

    .line 22
    move-result-wide v4

    .line 23
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 25
    sub-long/2addr v4, v6

    .line 26
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 28
    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v6

    .line 32
    check-cast v6, Ljava/util/List;

    .line 34
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 36
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    move-result-wide v7

    .line 43
    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 45
    sub-long v9, v7, v9

    .line 47
    const/4 v11, 0x0

    .line 48
    if-eqz v6, :cond_2

    .line 50
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 53
    move-result v12

    .line 54
    if-lez v12, :cond_2

    .line 56
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v12

    .line 60
    check-cast v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 62
    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 64
    cmp-long v15, v13, v9

    .line 66
    iget-wide v11, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 68
    if-gez v15, :cond_1

    .line 70
    sub-long/2addr v13, v11

    .line 71
    add-long/2addr v4, v13

    .line 72
    neg-long v11, v13

    .line 73
    invoke-virtual {v3, v11, v12}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 76
    const/4 v13, 0x0

    .line 77
    invoke-interface {v6, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 80
    move v11, v13

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 v13, 0x0

    .line 83
    cmp-long v3, v11, v9

    .line 85
    if-gez v3, :cond_3

    .line 87
    sub-long/2addr v9, v11

    .line 88
    add-long/2addr v4, v9

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v13, v11

    .line 91
    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 93
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    .line 99
    if-eqz v3, :cond_6

    .line 101
    iget-object v6, v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 103
    iget-object v6, v6, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 105
    monitor-enter v6

    .line 106
    :try_start_0
    iget-object v9, v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 108
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 111
    move-result v9

    .line 112
    if-lez v9, :cond_4

    .line 114
    const/4 v11, 0x1

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    move v11, v13

    .line 117
    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    if-eqz v11, :cond_6

    .line 120
    iget-object v6, v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 122
    iget-wide v9, v6, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 124
    iget-wide v11, v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    .line 126
    sub-long/2addr v7, v11

    .line 127
    iget-wide v11, v6, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 129
    div-long v13, v7, v11

    .line 131
    long-to-int v3, v13

    .line 132
    rem-long/2addr v7, v11

    .line 133
    const-wide/16 v11, 0x3e8

    .line 135
    cmp-long v6, v7, v11

    .line 137
    if-ltz v6, :cond_5

    .line 139
    add-int/lit8 v3, v3, 0x1

    .line 141
    :cond_5
    int-to-long v6, v3

    .line 142
    mul-long/2addr v9, v6

    .line 143
    add-long/2addr v4, v9

    .line 144
    goto :goto_3

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    throw v0

    .line 148
    :cond_6
    :goto_3
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 156
    if-nez v0, :cond_7

    .line 158
    return-wide v4

    .line 159
    :cond_7
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 167
    move-result-wide v1

    .line 168
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    .line 171
    move-result-wide v0

    .line 172
    sub-long/2addr v4, v0

    .line 173
    return-wide v4
.end method

.method public getRemainingExecutionTimeLocked(ILjava/lang/String;)J
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    .line 6
    iget-wide v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 4

    .line 7
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 8
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    .line 10
    iget-wide v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    .line 10
    move-result-wide v3

    .line 11
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 13
    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v5

    .line 17
    check-cast v5, Ljava/util/List;

    .line 19
    if-eqz v5, :cond_7

    .line 21
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 24
    move-result v6

    .line 25
    if-nez v6, :cond_0

    .line 27
    goto/16 :goto_5

    .line 29
    :cond_0
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 31
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    move-result-wide v6

    .line 38
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 41
    move-result-object v8

    .line 42
    iget v8, v8, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    .line 44
    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(IILjava/lang/String;)J

    .line 47
    move-result-wide v1

    .line 48
    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 50
    sub-long/2addr v6, v8

    .line 51
    const-wide/16 v8, 0x0

    .line 53
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 56
    move-result-wide v6

    .line 57
    const/4 v0, 0x0

    .line 58
    move-wide v10, v8

    .line 59
    move-wide v12, v10

    .line 60
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 63
    move-result v14

    .line 64
    if-ge v0, v14, :cond_6

    .line 66
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v14

    .line 70
    check-cast v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 72
    iget-wide v8, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 74
    cmp-long v15, v8, v6

    .line 76
    move-wide/from16 v16, v1

    .line 78
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 80
    if-gez v15, :cond_1

    .line 82
    sub-long/2addr v8, v1

    .line 83
    add-long/2addr v8, v3

    .line 84
    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 89
    move-wide v3, v8

    .line 90
    :goto_1
    const-wide/16 v1, 0x0

    .line 92
    goto :goto_3

    .line 93
    :cond_1
    cmp-long v15, v1, v6

    .line 95
    if-gez v15, :cond_2

    .line 97
    sub-long v12, v8, v6

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    if-nez v0, :cond_3

    .line 102
    move-wide v8, v6

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    add-int/lit8 v8, v0, -0x1

    .line 106
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 112
    invoke-interface {v8}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    .line 115
    move-result-wide v8

    .line 116
    :goto_2
    sub-long v8, v1, v8

    .line 118
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 121
    move-result-wide v18

    .line 122
    add-long v10, v10, v18

    .line 124
    cmp-long v8, v18, v8

    .line 126
    if-nez v8, :cond_4

    .line 128
    iget-wide v8, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 130
    sub-long/2addr v8, v1

    .line 131
    add-long/2addr v12, v8

    .line 132
    :cond_4
    sub-long v3, v3, v18

    .line 134
    const-wide/16 v1, 0x0

    .line 136
    cmp-long v8, v3, v1

    .line 138
    if-gtz v8, :cond_5

    .line 140
    goto :goto_4

    .line 141
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 143
    move-wide v8, v1

    .line 144
    move-wide/from16 v1, v16

    .line 146
    goto :goto_0

    .line 147
    :cond_6
    move-wide/from16 v16, v1

    .line 149
    :goto_4
    add-long/2addr v10, v12

    .line 150
    add-long/2addr v10, v3

    .line 151
    move-wide/from16 v0, v16

    .line 153
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 156
    move-result-wide v0

    .line 157
    return-wide v0

    .line 158
    :cond_7
    :goto_5
    return-wide v3
.end method

.method public getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    move/from16 v0, p1

    .line 4
    move-object/from16 v1, p2

    .line 6
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v2

    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x4

    .line 20
    if-ne v4, v5, :cond_0

    .line 22
    const-wide/16 v0, 0x0

    .line 24
    return-wide v0

    .line 25
    :cond_0
    iget-object v5, v7, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 27
    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    move-object v8, v5

    .line 32
    check-cast v8, Ljava/util/List;

    .line 34
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 37
    move-result-object v0

    .line 38
    iget-object v1, v7, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    .line 40
    if-eqz v8, :cond_3

    .line 42
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-wide v5, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 51
    sub-long v9, v2, v5

    .line 53
    const-wide/32 v11, 0x5265c00

    .line 56
    sub-long/2addr v2, v11

    .line 57
    aget-wide v11, v1, v4

    .line 59
    iget-wide v13, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 61
    sub-long v13, v11, v13

    .line 63
    move-wide/from16 p1, v13

    .line 65
    iget-wide v13, v7, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 67
    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 69
    sub-long/2addr v13, v0

    .line 70
    cmp-long v0, v5, v11

    .line 72
    if-nez v0, :cond_2

    .line 74
    const/4 v6, 0x0

    .line 75
    move-object v0, p0

    .line 76
    move-object v1, v8

    .line 77
    move-wide v4, v13

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J

    .line 81
    move-result-wide v0

    .line 82
    return-wide v0

    .line 83
    :cond_2
    const/4 v6, 0x0

    .line 84
    move-object v0, p0

    .line 85
    move-object v1, v8

    .line 86
    move-wide v4, v13

    .line 87
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J

    .line 90
    move-result-wide v11

    .line 91
    const/4 v6, 0x1

    .line 92
    move-wide v2, v9

    .line 93
    move-wide/from16 v4, p1

    .line 95
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J

    .line 98
    move-result-wide v0

    .line 99
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 102
    move-result-wide v0

    .line 103
    return-wide v0

    .line 104
    :cond_3
    :goto_0
    iget-wide v2, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 106
    aget-wide v0, v1, v4

    .line 108
    cmp-long v2, v2, v0

    .line 110
    if-nez v2, :cond_4

    .line 112
    iget-wide v0, v7, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 114
    :cond_4
    return-wide v0
.end method

.method public getTimingSessionCoalescingDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 3
    return-wide v0
.end method

.method public getTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 9
    return-object p0
.end method

.method public final hasTempAllowlistExemptionLocked(IIJ)Z
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p2, v0, :cond_2

    .line 5
    const/4 v0, 0x4

    .line 6
    if-ne p2, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 11
    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->get(I)J

    .line 14
    move-result-wide v2

    .line 15
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 17
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 23
    cmp-long p0, p3, v2

    .line 25
    if-gez p0, :cond_2

    .line 27
    :cond_1
    const/4 v1, 0x1

    .line 28
    :cond_2
    :goto_0
    return v1
.end method

.method public incrementJobCountLocked(ILjava/lang/String;I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 12
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 18
    if-nez v2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 22
    array-length v2, v2

    .line 23
    new-array v2, v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 25
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 27
    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    move p2, p1

    .line 32
    :goto_0
    array-length v3, v2

    .line 33
    if-ge p2, v3, :cond_3

    .line 35
    aget-object v3, v2, p2

    .line 37
    if-nez v3, :cond_1

    .line 39
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 41
    invoke-direct {v3}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 44
    aput-object v3, v2, p2

    .line 46
    :cond_1
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 48
    cmp-long v4, v4, v0

    .line 50
    if-gtz v4, :cond_2

    .line 52
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 54
    add-long/2addr v4, v0

    .line 55
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 57
    iput p1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 59
    :cond_2
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 61
    add-int/2addr v4, p3

    .line 62
    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 64
    invoke-static {}, Lcom/android/server/job/Flags;->countQuotaFix()Z

    .line 67
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 69
    add-int/2addr v4, p3

    .line 70
    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 72
    add-int/lit8 p2, p2, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    return-void
.end method

.method public invalidateAllExecutionStatsLocked()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-virtual {p0, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public invalidateAllExecutionStatsLocked(ILjava/lang/String;)V
    .locals 2

    .line 4
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-eqz p0, :cond_1

    .line 5
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 8
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 9
    iput-wide p1, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final isQuotaFreeLocked(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x5

    .line 11
    if-eq p1, p0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    :cond_0
    return v0
.end method

.method public final isUidInForeground(I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 17
    move-result p0

    .line 18
    monitor-exit v0

    .line 19
    return p0

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

.method public final isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 12
    cmp-long v0, v2, v0

    .line 14
    if-lez v0, :cond_0

    .line 16
    iget v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 18
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 20
    if-ge v0, p0, :cond_1

    .line 22
    :cond_0
    iget p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 24
    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 26
    if-ge p0, p1, :cond_1

    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
.end method

.method public final isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 12
    cmp-long v0, v2, v0

    .line 14
    if-lez v0, :cond_0

    .line 16
    iget v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 18
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 20
    if-ge v0, p0, :cond_1

    .line 22
    :cond_0
    iget p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 24
    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 26
    if-ge p0, p1, :cond_1

    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
.end method

.method public final isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 15
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_5

    .line 21
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 42
    move-result v4

    .line 43
    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->hasTempAllowlistExemptionLocked(IIJ)Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 49
    return v1

    .line 50
    :cond_2
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 52
    invoke-virtual {v4, v0}, Landroid/util/SparseLongArray;->get(I)J

    .line 55
    move-result-wide v4

    .line 56
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 58
    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_5

    .line 64
    cmp-long v0, v2, v4

    .line 66
    if-gez v0, :cond_3

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 71
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    .line 76
    move-result-wide p0

    .line 77
    const-wide/16 v2, 0x0

    .line 79
    cmp-long p0, v2, p0

    .line 81
    if-gez p0, :cond_4

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const/4 v1, 0x0

    .line 85
    :cond_5
    :goto_0
    return v1
.end method

.method public isWithinQuotaLocked(ILjava/lang/String;I)Z
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    return v1

    .line 11
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    .line 13
    iget-wide p2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v3, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr p2, v3

    iget-wide v3, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v5, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v3, v5

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const-wide/16 v3, 0x0

    cmp-long p2, p2, v3

    if-lez p2, :cond_2

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/server/job/Flags;->countQuotaFix()Z

    .line 3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 4
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    return v3

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 7
    :cond_2
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v4, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v1

    .line 8
    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v8, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    return v3

    :cond_3
    const/4 v4, 0x5

    if-eq v0, v4, :cond_4

    .line 9
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    .line 10
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    :cond_6
    :goto_0
    return v2
.end method

.method public maybeScheduleCleanupAlarmLocked()V
    .locals 14

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 12
    cmp-long v2, v2, v0

    .line 14
    const-string v3, "JobScheduler.Quota"

    .line 16
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 18
    if-lez v2, :cond_1

    .line 20
    if-eqz v4, :cond_0

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    const-string v4, "Not scheduling cleanup since there\'s already one at "

    .line 26
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 31
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    const-string v4, " (in "

    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 41
    sub-long/2addr v4, v0

    .line 42
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo p0, "ms)"

    .line 48
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 61
    const-wide v1, 0x7fffffffffffffffL

    .line 66
    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 68
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 70
    invoke-virtual {v5, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 73
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 75
    invoke-virtual {v5, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 78
    iget-wide v5, v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 80
    cmp-long v0, v5, v1

    .line 82
    if-nez v0, :cond_3

    .line 84
    if-eqz v4, :cond_2

    .line 86
    const-string p0, "Didn\'t find a time to schedule cleanup"

    .line 88
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    return-void

    .line 92
    :cond_3
    const-wide/32 v0, 0x5265c00

    .line 95
    add-long/2addr v5, v0

    .line 96
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 98
    sub-long v7, v5, v0

    .line 100
    const-wide/32 v9, 0x927c0

    .line 103
    cmp-long v2, v7, v9

    .line 105
    if-gtz v2, :cond_4

    .line 107
    add-long v5, v0, v9

    .line 109
    :cond_4
    move-wide v9, v5

    .line 110
    iput-wide v9, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 112
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 114
    const/4 v8, 0x3

    .line 115
    const-string v11, "*job.cleanup*"

    .line 117
    iget-object v12, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Lcom/android/server/job/controllers/QuotaController$1;

    .line 119
    iget-object v13, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 121
    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 124
    if-eqz v4, :cond_5

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "Scheduled next cleanup for "

    .line 130
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 135
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 138
    :cond_5
    return-void
.end method

.method public maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move/from16 v3, p3

    .line 9
    const/4 v4, 0x4

    .line 10
    if-ne v3, v4, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 15
    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Landroid/util/ArraySet;

    .line 21
    const-string/jumbo v6, "maybeScheduleStartAlarmLocked called for "

    .line 24
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 26
    const-string v8, "JobScheduler.Quota"

    .line 28
    if-eqz v5, :cond_12

    .line 30
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_1

    .line 36
    goto/16 :goto_7

    .line 38
    :cond_1
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v0, v5}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    .line 45
    move-result v9

    .line 46
    invoke-virtual {v0, v5}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    .line 49
    move-result v10

    .line 50
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    .line 53
    move-result-wide v11

    .line 54
    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 56
    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    .line 58
    aget-wide v15, v15, v3

    .line 60
    cmp-long v13, v13, v15

    .line 62
    if-gez v13, :cond_2

    .line 64
    iget-wide v14, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 66
    move-object/from16 v18, v5

    .line 68
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 70
    cmp-long v4, v14, v4

    .line 72
    if-gez v4, :cond_3

    .line 74
    if-eqz v9, :cond_3

    .line 76
    if-eqz v10, :cond_3

    .line 78
    const/4 v4, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move-object/from16 v18, v5

    .line 82
    :cond_3
    const/4 v4, 0x0

    .line 83
    :goto_0
    const-wide/16 v14, 0x0

    .line 85
    if-eqz v4, :cond_6

    .line 87
    cmp-long v5, v11, v14

    .line 89
    if-lez v5, :cond_6

    .line 91
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 93
    if-eqz v4, :cond_5

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v5, " even though it already has "

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const/4 v5, 0x4

    .line 113
    if-ne v3, v5, :cond_4

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 119
    move-result-object v3

    .line 120
    iget-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 122
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 124
    sub-long/2addr v5, v9

    .line 125
    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 127
    iget-wide v11, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 129
    sub-long/2addr v9, v11

    .line 130
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 133
    move-result-wide v14

    .line 134
    :goto_1
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v3, "ms in its quota."

    .line 140
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v3

    .line 147
    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_5
    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v7, v3}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 157
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 159
    const/4 v3, 0x2

    .line 160
    const/4 v4, 0x0

    .line 161
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    return-void

    .line 169
    :cond_6
    move-object/from16 v13, v18

    .line 171
    if-nez v4, :cond_9

    .line 173
    iget-wide v5, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 175
    if-nez v9, :cond_7

    .line 177
    iget v9, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 179
    iget v14, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 181
    if-ge v9, v14, :cond_7

    .line 183
    iget-wide v14, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 185
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 188
    move-result-wide v5

    .line 189
    :cond_7
    if-nez v10, :cond_8

    .line 191
    iget v9, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 193
    iget v10, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 195
    if-ge v9, v10, :cond_8

    .line 197
    iget-wide v9, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 199
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 202
    move-result-wide v5

    .line 203
    :cond_8
    const-wide/16 v9, 0x0

    .line 205
    goto :goto_2

    .line 206
    :cond_9
    move-wide v9, v14

    .line 207
    const-wide v5, 0x7fffffffffffffffL

    .line 212
    :goto_2
    cmp-long v11, v11, v9

    .line 214
    if-gtz v11, :cond_10

    .line 216
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(IILjava/lang/String;)J

    .line 219
    move-result-wide v11

    .line 220
    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 222
    sub-long/2addr v11, v14

    .line 223
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 225
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 228
    move-result-object v3

    .line 229
    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 231
    if-eqz v3, :cond_b

    .line 233
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 236
    move-result v14

    .line 237
    if-eqz v14, :cond_b

    .line 239
    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 241
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 247
    move-result-wide v9

    .line 248
    invoke-virtual {v3, v9, v10}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    .line 251
    move-result-wide v14

    .line 252
    cmp-long v19, v14, v11

    .line 254
    if-ltz v19, :cond_a

    .line 256
    sub-long/2addr v9, v11

    .line 257
    move-wide/from16 v19, v14

    .line 259
    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 261
    add-long/2addr v9, v14

    .line 262
    move-wide/from16 v17, v9

    .line 264
    move-wide/from16 v14, v19

    .line 266
    goto :goto_4

    .line 267
    :cond_a
    move-wide/from16 v19, v14

    .line 269
    :goto_3
    const-wide v17, 0x7fffffffffffffffL

    .line 274
    goto :goto_4

    .line 275
    :cond_b
    move-wide v14, v9

    .line 276
    goto :goto_3

    .line 277
    :goto_4
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 279
    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 282
    move-result-object v9

    .line 283
    check-cast v9, Ljava/util/List;

    .line 285
    if-eqz v9, :cond_d

    .line 287
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 290
    move-result v3

    .line 291
    const/4 v4, 0x1

    .line 292
    sub-int/2addr v3, v4

    .line 293
    :goto_5
    if-ltz v3, :cond_f

    .line 295
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 298
    move-result-object v4

    .line 299
    check-cast v4, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 301
    iget-wide v1, v4, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 303
    move-object/from16 p3, v9

    .line 305
    iget-wide v9, v4, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 307
    sub-long/2addr v1, v9

    .line 308
    add-long/2addr v14, v1

    .line 309
    cmp-long v1, v14, v11

    .line 311
    if-ltz v1, :cond_c

    .line 313
    sub-long/2addr v14, v11

    .line 314
    add-long/2addr v14, v9

    .line 315
    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 317
    add-long/2addr v14, v0

    .line 318
    goto :goto_6

    .line 319
    :cond_c
    add-int/lit8 v3, v3, -0x1

    .line 321
    move/from16 v1, p1

    .line 323
    move-object/from16 v2, p2

    .line 325
    move-object/from16 v9, p3

    .line 327
    goto :goto_5

    .line 328
    :cond_d
    if-eqz v3, :cond_e

    .line 330
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 333
    move-result v0

    .line 334
    if-nez v0, :cond_f

    .line 336
    :cond_e
    if-eqz v4, :cond_f

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    .line 340
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, " has 0 EJ quota without running anything"

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    move-result-object v0

    .line 359
    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void

    .line 363
    :cond_f
    move-wide/from16 v14, v17

    .line 365
    goto :goto_6

    .line 366
    :cond_10
    const-wide v14, 0x7fffffffffffffffL

    .line 371
    :goto_6
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 374
    move-result-wide v0

    .line 375
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 377
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 383
    move-result-wide v3

    .line 384
    cmp-long v3, v0, v3

    .line 386
    if-gtz v3, :cond_11

    .line 388
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 394
    move-result-wide v2

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    .line 397
    const-string v5, "In quota time is "

    .line 399
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    sub-long v5, v2, v0

    .line 404
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 407
    const-string/jumbo v5, "ms old. Now="

    .line 410
    const-string v6, ", inQuotaTime="

    .line 412
    invoke-static {v4, v5, v2, v3, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 415
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 418
    const-string v0, ": "

    .line 420
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    move-result-object v0

    .line 430
    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-wide/32 v0, 0x493e0

    .line 436
    add-long/2addr v0, v2

    .line 437
    :cond_11
    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    .line 444
    return-void

    .line 445
    :cond_12
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 447
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v1, " that has no jobs"

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    move-result-object v0

    .line 466
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v7, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 476
    return-void
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 11

    .line 1
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v2

    .line 10
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 12
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 14
    iget-object v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, p2, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/util/ArraySet;

    .line 22
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Landroid/util/ArraySet;

    .line 26
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 31
    invoke-virtual {v1, p2, v6, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 37
    const/16 v0, 0x40

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 45
    move-result v7

    .line 46
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 49
    move-result v0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x1

    .line 52
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 60
    move v10, v9

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v10, v8

    .line 63
    :goto_0
    move-object v0, p0

    .line 64
    move-object v1, p1

    .line 65
    move v4, v7

    .line 66
    move v5, v10

    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    .line 70
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0, p1, v10}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 79
    xor-int/lit8 v8, v10, 0x1

    .line 81
    :cond_2
    if-eqz v7, :cond_3

    .line 83
    if-eqz v8, :cond_4

    .line 85
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 88
    move-result p1

    .line 89
    invoke-virtual {p0, p2, v6, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 92
    :cond_4
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 1
    const/16 p2, 0x40

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 12
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 14
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 16
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/util/ArraySet;

    .line 24
    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 38
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 40
    invoke-static {v0, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final maybeUpdateAllConstraintsLocked()V
    .locals 8

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v1

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 19
    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 22
    move-result v5

    .line 23
    if-ge v4, v5, :cond_1

    .line 25
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 27
    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 30
    move-result v5

    .line 31
    move v6, v3

    .line 32
    :goto_1
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 34
    invoke-virtual {v7, v5}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 37
    move-result v7

    .line 38
    if-ge v6, v7, :cond_0

    .line 40
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 42
    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Ljava/lang/String;

    .line 48
    invoke-virtual {p0, v5, v7, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 64
    move-result v1

    .line 65
    if-lez v1, :cond_2

    .line 67
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 72
    :cond_2
    return-void
.end method

.method public final maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 3
    move/from16 v7, p1

    .line 5
    move-object/from16 v8, p2

    .line 7
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 9
    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    move-object v9, v0

    .line 14
    check-cast v9, Landroid/util/ArraySet;

    .line 16
    new-instance v10, Landroid/util/ArraySet;

    .line 18
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 21
    if-eqz v9, :cond_b

    .line 23
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    goto/16 :goto_4

    .line 31
    :cond_0
    const/4 v11, 0x0

    .line 32
    invoke-virtual {v9, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 38
    iget v12, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 40
    invoke-virtual {v6, v7, v8, v12}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    .line 43
    move-result v13

    .line 44
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 47
    move-result v0

    .line 48
    const/4 v14, 0x1

    .line 49
    sub-int/2addr v0, v14

    .line 50
    move v15, v0

    .line 51
    move/from16 v16, v11

    .line 53
    :goto_0
    if-ltz v15, :cond_8

    .line 55
    invoke-virtual {v9, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    move-object v5, v0

    .line 60
    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 62
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v6, v5}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 74
    move v4, v14

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move v4, v11

    .line 77
    :goto_1
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 79
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 85
    const/high16 v0, 0x1000000

    .line 87
    move-wide/from16 v2, p3

    .line 89
    invoke-virtual {v5, v0, v2, v3, v14}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 95
    iput-boolean v14, v5, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 97
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    move/from16 v17, v4

    .line 102
    move-object v11, v5

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    move-wide/from16 v2, p3

    .line 106
    const/4 v0, 0x6

    .line 107
    if-eq v12, v0, :cond_4

    .line 109
    if-eqz v12, :cond_4

    .line 111
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 114
    move-result v0

    .line 115
    if-ne v12, v0, :cond_4

    .line 117
    invoke-static {}, Lcom/android/server/job/Flags;->countQuotaFix()Z

    .line 120
    iget-object v0, v6, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 122
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_4

    .line 128
    move-object/from16 v0, p0

    .line 130
    move-object v1, v5

    .line 131
    move-wide/from16 v2, p3

    .line 133
    move/from16 v17, v4

    .line 135
    move v4, v13

    .line 136
    move-object v11, v5

    .line 137
    move/from16 v5, v17

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 145
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 148
    goto :goto_2

    .line 149
    :cond_4
    move/from16 v17, v4

    .line 151
    move-object v11, v5

    .line 152
    invoke-virtual {v6, v11}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 155
    move-result v4

    .line 156
    move-object/from16 v0, p0

    .line 158
    move-object v1, v11

    .line 159
    move-wide/from16 v2, p3

    .line 161
    move/from16 v5, v17

    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_5

    .line 169
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_5
    :goto_2
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_7

    .line 178
    move/from16 v0, v17

    .line 180
    invoke-virtual {v6, v11, v0}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_6

    .line 186
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_6
    xor-int/lit8 v0, v0, 0x1

    .line 191
    or-int v16, v16, v0

    .line 193
    :cond_7
    add-int/lit8 v15, v15, -0x1

    .line 195
    const/4 v11, 0x0

    .line 196
    goto/16 :goto_0

    .line 198
    :cond_8
    if-eqz v13, :cond_a

    .line 200
    if-eqz v16, :cond_9

    .line 202
    goto :goto_3

    .line 203
    :cond_9
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 205
    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 212
    goto :goto_4

    .line 213
    :cond_a
    :goto_3
    invoke-virtual {v6, v7, v8, v12}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 216
    :cond_b
    :goto_4
    return-object v10
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 3
    const-string p0, "JobScheduler.Quota"

    .line 5
    const-string p1, "Told app removed but given null package name."

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0, p2}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 20
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    .line 23
    move-result-object p2

    .line 24
    if-nez p2, :cond_1

    .line 26
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 28
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 31
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 33
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 36
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 38
    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 41
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 43
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 46
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 48
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 51
    :cond_1
    return-void
.end method

.method public final onBatteryStateChangedLocked()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 12
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 15
    move-result v3

    .line 16
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    .line 18
    iput-wide v0, v4, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    .line 20
    iput-boolean v3, v4, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mIsCharging:Z

    .line 22
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 24
    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v1, "handleNewChargingStateLocked: "

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "JobScheduler.Quota"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 52
    invoke-virtual {v0, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 55
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 57
    invoke-virtual {v0, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 60
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method public final onConstantsUpdatedLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    :cond_0
    return-void
.end method

.method public final onSystemServicesReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    .line 8
    monitor-exit v0

    .line 9
    return-void

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

.method public final onUserAddedLocked(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    .line 4
    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 11
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 16
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 18
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 21
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 23
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 26
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 28
    invoke-virtual {v0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    .line 31
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 33
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 36
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 38
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 41
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 43
    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 46
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 48
    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 51
    return-void
.end method

.method public final prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 13

    .line 1
    const-string v0, "JobScheduler.Quota"

    .line 3
    sget-boolean v1, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    const-string v3, "Prepping for "

    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget v5, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 30
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 32
    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 38
    if-eqz v1, :cond_1

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, " is top started job"

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 66
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 69
    return-void

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 76
    return-void

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 83
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 88
    :goto_0
    iget v9, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 90
    iget-object v10, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 92
    invoke-virtual {v2, v9, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 98
    const/4 v11, 0x1

    .line 99
    if-nez v3, :cond_5

    .line 101
    new-instance v12, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 103
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 106
    move-result v3

    .line 107
    xor-int/lit8 v8, v3, 0x1

    .line 109
    move-object v3, v12

    .line 110
    move-object v4, p0

    .line 111
    move v6, v9

    .line 112
    move-object v7, v10

    .line 113
    invoke-direct/range {v3 .. v8}, Lcom/android/server/job/controllers/QuotaController$Timer;-><init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;Z)V

    .line 116
    invoke-virtual {v2, v9, v10, v12}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 122
    move-result p0

    .line 123
    const-string v2, "Timer ignoring "

    .line 125
    if-eqz p0, :cond_6

    .line 127
    if-eqz v1, :cond_c

    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string p1, " because it\'s user-initiated"

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 150
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    goto/16 :goto_1

    .line 155
    :cond_6
    iget-object p0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 157
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 159
    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_7

    .line 165
    if-eqz v1, :cond_c

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string p1, " because isTop"

    .line 181
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p0

    .line 188
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    goto/16 :goto_1

    .line 193
    :cond_7
    if-eqz v1, :cond_8

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    const-string v2, "Starting to track "

    .line 199
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_8
    iget-object v0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 218
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_b

    .line 224
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->shouldTrackLocked()Z

    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_b

    .line 230
    iget v0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 232
    add-int/2addr v0, v11

    .line 233
    iput v0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 235
    iget-boolean v0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    .line 237
    if-eqz v0, :cond_9

    .line 239
    iget-object v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 241
    iget v2, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 243
    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 245
    invoke-virtual {p0, v2, v1, v11}, Lcom/android/server/job/controllers/QuotaController;->incrementJobCountLocked(ILjava/lang/String;I)V

    .line 248
    invoke-static {}, Lcom/android/server/job/Flags;->countQuotaFix()Z

    .line 251
    iget-object v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 253
    iget v2, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 255
    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 260
    move-result p1

    .line 261
    const/4 v4, 0x0

    .line 262
    invoke-virtual {p0, v2, p1, v1, v4}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(IILjava/lang/String;Z)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_9

    .line 272
    iget-object p1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 274
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 276
    const/4 v2, 0x7

    .line 277
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 284
    :cond_9
    iget-object p1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 286
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 289
    move-result p1

    .line 290
    if-ne p1, v11, :cond_c

    .line 292
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 300
    move-result-wide v1

    .line 301
    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    .line 303
    const-wide/16 v1, 0x0

    .line 305
    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 307
    if-eqz v0, :cond_a

    .line 309
    iget-object p1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 311
    iget v0, p1, Landroid/content/pm/UserPackage;->userId:I

    .line 313
    iget-object p1, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 315
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 318
    :cond_a
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 321
    goto :goto_1

    .line 322
    :cond_b
    const-wide/32 p0, 0x80000

    .line 325
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_c

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    .line 333
    const-string v1, "QC/- "

    .line 335
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    move-result-object v0

    .line 347
    const-string v1, "JobScheduler"

    .line 349
    invoke-static {p0, p1, v1, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_c
    :goto_1
    return-void
.end method

.method public final prepareForUpdatedConstantsLocked()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    .line 14
    return-void
.end method

.method public final processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 37

    .line 1
    move-object/from16 v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    const-string/jumbo v3, "qc_window_size_rare_ms"

    .line 8
    const-string/jumbo v4, "qc_quota_bump_limit"

    .line 11
    const-string/jumbo v5, "qc_max_session_count_per_rate_limiting_window"

    .line 14
    const-string/jumbo v6, "qc_rate_limiting_window_ms"

    .line 17
    const-string/jumbo v7, "qc_allowed_time_per_period_frequent_ms"

    .line 20
    const-string/jumbo v8, "qc_window_size_restricted_ms"

    .line 23
    const-string/jumbo v9, "qc_ej_limit_addition_special_ms"

    .line 26
    const-string/jumbo v10, "qc_ej_limit_frequent_ms"

    .line 29
    const-string/jumbo v11, "qc_allowed_time_per_period_restricted_ms"

    .line 32
    const-string/jumbo v12, "qc_quota_bump_window_size_ms"

    .line 35
    const-string/jumbo v13, "qc_window_size_frequent_ms"

    .line 38
    const-string/jumbo v14, "qc_allowed_time_per_period_active_ms"

    .line 41
    const-string/jumbo v15, "qc_ej_limit_active_ms"

    .line 44
    const/16 v16, 0x5

    .line 46
    const/16 v17, 0x6

    .line 48
    move-object/from16 v2, p0

    .line 50
    iget-object v2, v2, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    move-object/from16 v18, v14

    .line 57
    move-object/from16 v19, v15

    .line 59
    const-string v14, "JobScheduler.Quota"

    .line 61
    const-string v15, " vs "

    .line 63
    move-object/from16 p0, v14

    .line 65
    const-string v14, "EJ top app time chunk less than reward: "

    .line 67
    move-object/from16 v21, v14

    .line 69
    move-object/from16 v20, v15

    .line 71
    const-string/jumbo v14, "jobscheduler"

    .line 74
    move-object/from16 v22, v14

    .line 76
    iget-object v14, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 78
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 81
    move-result v23

    .line 82
    sparse-switch v23, :sswitch_data_0

    .line 85
    :goto_0
    move-object/from16 v15, v18

    .line 87
    const/16 v23, -0x1

    .line 89
    :goto_1
    move-object/from16 v18, v9

    .line 91
    move-object/from16 v9, v19

    .line 93
    goto/16 :goto_5

    .line 95
    :sswitch_0
    const-string/jumbo v15, "qc_max_session_count_frequent"

    .line 98
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v15

    .line 102
    if-nez v15, :cond_0

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    const/16 v15, 0x30

    .line 107
    goto/16 :goto_2

    .line 109
    :sswitch_1
    const-string/jumbo v15, "qc_max_session_count_rare"

    .line 112
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v15

    .line 116
    if-nez v15, :cond_1

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    const/16 v15, 0x2f

    .line 121
    goto/16 :goto_2

    .line 123
    :sswitch_2
    const-string/jumbo v15, "qc_max_session_count_restricted"

    .line 126
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v15

    .line 130
    if-nez v15, :cond_2

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    const/16 v15, 0x2e

    .line 135
    goto/16 :goto_2

    .line 137
    :sswitch_3
    const-string/jumbo v15, "qc_ej_window_size_ms"

    .line 140
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result v15

    .line 144
    if-nez v15, :cond_3

    .line 146
    goto :goto_0

    .line 147
    :cond_3
    const/16 v15, 0x2d

    .line 149
    goto/16 :goto_2

    .line 151
    :sswitch_4
    const-string/jumbo v15, "qc_timing_session_coalescing_duration_ms"

    .line 154
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v15

    .line 158
    if-nez v15, :cond_4

    .line 160
    goto :goto_0

    .line 161
    :cond_4
    const/16 v15, 0x2c

    .line 163
    goto/16 :goto_2

    .line 165
    :sswitch_5
    const-string/jumbo v15, "qc_window_size_active_ms"

    .line 168
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v15

    .line 172
    if-nez v15, :cond_5

    .line 174
    goto :goto_0

    .line 175
    :cond_5
    const/16 v15, 0x2b

    .line 177
    goto/16 :goto_2

    .line 179
    :sswitch_6
    const-string/jumbo v15, "qc_max_job_count_working"

    .line 182
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v15

    .line 186
    if-nez v15, :cond_6

    .line 188
    goto :goto_0

    .line 189
    :cond_6
    const/16 v15, 0x2a

    .line 191
    goto/16 :goto_2

    .line 193
    :sswitch_7
    const-string/jumbo v15, "qc_ej_reward_top_app_ms"

    .line 196
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    move-result v15

    .line 200
    if-nez v15, :cond_7

    .line 202
    goto :goto_0

    .line 203
    :cond_7
    const/16 v15, 0x29

    .line 205
    goto/16 :goto_2

    .line 207
    :sswitch_8
    const-string/jumbo v15, "qc_ej_limit_working_ms"

    .line 210
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    move-result v15

    .line 214
    if-nez v15, :cond_8

    .line 216
    goto/16 :goto_0

    .line 218
    :cond_8
    const/16 v15, 0x28

    .line 220
    goto/16 :goto_2

    .line 222
    :sswitch_9
    const-string/jumbo v15, "qc_allowed_time_per_period_exempted_ms"

    .line 225
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    move-result v15

    .line 229
    if-nez v15, :cond_9

    .line 231
    goto/16 :goto_0

    .line 233
    :cond_9
    const/16 v15, 0x27

    .line 235
    goto/16 :goto_2

    .line 237
    :sswitch_a
    const-string/jumbo v15, "qc_max_session_count_working"

    .line 240
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v15

    .line 244
    if-nez v15, :cond_a

    .line 246
    goto/16 :goto_0

    .line 248
    :cond_a
    const/16 v15, 0x26

    .line 250
    goto/16 :goto_2

    .line 252
    :sswitch_b
    const-string/jumbo v15, "qc_max_session_count_exempted"

    .line 255
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    move-result v15

    .line 259
    if-nez v15, :cond_b

    .line 261
    goto/16 :goto_0

    .line 263
    :cond_b
    const/16 v15, 0x25

    .line 265
    goto/16 :goto_2

    .line 267
    :sswitch_c
    const-string/jumbo v15, "qc_in_quota_buffer_ms"

    .line 270
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    move-result v15

    .line 274
    if-nez v15, :cond_c

    .line 276
    goto/16 :goto_0

    .line 278
    :cond_c
    const/16 v15, 0x24

    .line 280
    goto/16 :goto_2

    .line 282
    :sswitch_d
    const-string/jumbo v15, "qc_min_quota_check_delay_ms"

    .line 285
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    move-result v15

    .line 289
    if-nez v15, :cond_d

    .line 291
    goto/16 :goto_0

    .line 293
    :cond_d
    const/16 v15, 0x23

    .line 295
    goto/16 :goto_2

    .line 297
    :sswitch_e
    const-string/jumbo v15, "qc_ej_grace_period_temp_allowlist_ms"

    .line 300
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result v15

    .line 304
    if-nez v15, :cond_e

    .line 306
    goto/16 :goto_0

    .line 308
    :cond_e
    const/16 v15, 0x22

    .line 310
    goto/16 :goto_2

    .line 312
    :sswitch_f
    const-string/jumbo v15, "qc_allowed_time_per_period_rare_ms"

    .line 315
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    move-result v15

    .line 319
    if-nez v15, :cond_f

    .line 321
    goto/16 :goto_0

    .line 323
    :cond_f
    const/16 v15, 0x21

    .line 325
    goto/16 :goto_2

    .line 327
    :sswitch_10
    const-string/jumbo v15, "qc_quota_bump_additional_session_count"

    .line 330
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    move-result v15

    .line 334
    if-nez v15, :cond_10

    .line 336
    goto/16 :goto_0

    .line 338
    :cond_10
    const/16 v15, 0x20

    .line 340
    goto/16 :goto_2

    .line 342
    :sswitch_11
    const-string/jumbo v15, "qc_max_session_count_active"

    .line 345
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    move-result v15

    .line 349
    if-nez v15, :cond_11

    .line 351
    goto/16 :goto_0

    .line 353
    :cond_11
    const/16 v15, 0x1f

    .line 355
    goto/16 :goto_2

    .line 357
    :sswitch_12
    const-string/jumbo v15, "qc_quota_bump_additional_job_count"

    .line 360
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    move-result v15

    .line 364
    if-nez v15, :cond_12

    .line 366
    goto/16 :goto_0

    .line 368
    :cond_12
    const/16 v15, 0x1e

    .line 370
    goto/16 :goto_2

    .line 372
    :sswitch_13
    const-string/jumbo v15, "qc_window_size_working_ms"

    .line 375
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    move-result v15

    .line 379
    if-nez v15, :cond_13

    .line 381
    goto/16 :goto_0

    .line 383
    :cond_13
    const/16 v15, 0x1d

    .line 385
    goto/16 :goto_2

    .line 387
    :sswitch_14
    const-string/jumbo v15, "qc_ej_grace_period_top_app_ms"

    .line 390
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    move-result v15

    .line 394
    if-nez v15, :cond_14

    .line 396
    goto/16 :goto_0

    .line 398
    :cond_14
    const/16 v15, 0x1c

    .line 400
    goto/16 :goto_2

    .line 402
    :sswitch_15
    const-string/jumbo v15, "qc_max_execution_time_ms"

    .line 405
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    move-result v15

    .line 409
    if-nez v15, :cond_15

    .line 411
    goto/16 :goto_0

    .line 413
    :cond_15
    const/16 v15, 0x1b

    .line 415
    goto/16 :goto_2

    .line 417
    :sswitch_16
    const-string/jumbo v15, "qc_ej_limit_addition_installer_ms"

    .line 420
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    move-result v15

    .line 424
    if-nez v15, :cond_16

    .line 426
    goto/16 :goto_0

    .line 428
    :cond_16
    const/16 v15, 0x1a

    .line 430
    goto/16 :goto_2

    .line 432
    :sswitch_17
    const-string/jumbo v15, "qc_ej_limit_rare_ms"

    .line 435
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    move-result v15

    .line 439
    if-nez v15, :cond_17

    .line 441
    goto/16 :goto_0

    .line 443
    :cond_17
    const/16 v15, 0x19

    .line 445
    goto/16 :goto_2

    .line 447
    :sswitch_18
    const-string/jumbo v15, "qc_ej_limit_restricted_ms"

    .line 450
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    move-result v15

    .line 454
    if-nez v15, :cond_18

    .line 456
    goto/16 :goto_0

    .line 458
    :cond_18
    const/16 v15, 0x18

    .line 460
    goto/16 :goto_2

    .line 462
    :sswitch_19
    const-string/jumbo v15, "qc_max_job_count_per_rate_limiting_window"

    .line 465
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    move-result v15

    .line 469
    if-nez v15, :cond_19

    .line 471
    goto/16 :goto_0

    .line 473
    :cond_19
    const/16 v15, 0x17

    .line 475
    goto/16 :goto_2

    .line 477
    :sswitch_1a
    const-string/jumbo v15, "qc_quota_bump_additional_duration_ms"

    .line 480
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 483
    move-result v15

    .line 484
    if-nez v15, :cond_1a

    .line 486
    goto/16 :goto_0

    .line 488
    :cond_1a
    const/16 v15, 0x16

    .line 490
    goto/16 :goto_2

    .line 492
    :sswitch_1b
    const-string/jumbo v15, "qc_allowed_time_per_period_working_ms"

    .line 495
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    move-result v15

    .line 499
    if-nez v15, :cond_1b

    .line 501
    goto/16 :goto_0

    .line 503
    :cond_1b
    const/16 v15, 0x15

    .line 505
    goto/16 :goto_2

    .line 507
    :sswitch_1c
    const-string/jumbo v15, "qc_max_job_count_frequent"

    .line 510
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 513
    move-result v15

    .line 514
    if-nez v15, :cond_1c

    .line 516
    goto/16 :goto_0

    .line 518
    :cond_1c
    move-object/from16 v15, v18

    .line 520
    const/16 v23, 0x14

    .line 522
    goto/16 :goto_1

    .line 524
    :sswitch_1d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    move-result v15

    .line 528
    if-nez v15, :cond_1d

    .line 530
    goto/16 :goto_0

    .line 532
    :cond_1d
    const/16 v15, 0x13

    .line 534
    goto/16 :goto_2

    .line 536
    :sswitch_1e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    move-result v15

    .line 540
    if-nez v15, :cond_1e

    .line 542
    goto/16 :goto_0

    .line 544
    :cond_1e
    const/16 v15, 0x12

    .line 546
    goto/16 :goto_2

    .line 548
    :sswitch_1f
    const-string/jumbo v15, "qc_max_job_count_restricted"

    .line 551
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    move-result v15

    .line 555
    if-nez v15, :cond_1f

    .line 557
    goto/16 :goto_0

    .line 559
    :cond_1f
    const/16 v15, 0x11

    .line 561
    goto/16 :goto_2

    .line 563
    :sswitch_20
    const-string/jumbo v15, "qc_max_job_count_exempted"

    .line 566
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    move-result v15

    .line 570
    if-nez v15, :cond_20

    .line 572
    goto/16 :goto_0

    .line 574
    :cond_20
    const/16 v15, 0x10

    .line 576
    goto/16 :goto_2

    .line 578
    :sswitch_21
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 581
    move-result v15

    .line 582
    if-nez v15, :cond_21

    .line 584
    goto/16 :goto_0

    .line 586
    :cond_21
    const/16 v15, 0xf

    .line 588
    goto/16 :goto_2

    .line 590
    :sswitch_22
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    move-result v15

    .line 594
    if-nez v15, :cond_22

    .line 596
    goto/16 :goto_0

    .line 598
    :cond_22
    const/16 v15, 0xe

    .line 600
    goto/16 :goto_2

    .line 602
    :sswitch_23
    const-string/jumbo v15, "qc_ej_reward_interaction_ms"

    .line 605
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 608
    move-result v15

    .line 609
    if-nez v15, :cond_23

    .line 611
    goto/16 :goto_0

    .line 613
    :cond_23
    const/16 v15, 0xd

    .line 615
    goto/16 :goto_2

    .line 617
    :sswitch_24
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 620
    move-result v15

    .line 621
    if-nez v15, :cond_24

    .line 623
    goto/16 :goto_0

    .line 625
    :cond_24
    const/16 v15, 0xc

    .line 627
    goto/16 :goto_2

    .line 629
    :sswitch_25
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    move-result v15

    .line 633
    if-nez v15, :cond_25

    .line 635
    goto/16 :goto_0

    .line 637
    :cond_25
    const/16 v15, 0xb

    .line 639
    goto :goto_2

    .line 640
    :sswitch_26
    const-string/jumbo v15, "qc_max_job_count_rare"

    .line 643
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    move-result v15

    .line 647
    if-nez v15, :cond_26

    .line 649
    goto/16 :goto_0

    .line 651
    :cond_26
    move-object/from16 v15, v18

    .line 653
    const/16 v23, 0xa

    .line 655
    goto/16 :goto_1

    .line 657
    :sswitch_27
    const-string/jumbo v15, "qc_ej_top_app_time_chunk_size_ms"

    .line 660
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    move-result v15

    .line 664
    if-nez v15, :cond_27

    .line 666
    goto/16 :goto_0

    .line 668
    :cond_27
    const/16 v15, 0x9

    .line 670
    goto :goto_2

    .line 671
    :sswitch_28
    const-string/jumbo v15, "qc_max_job_count_active"

    .line 674
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    move-result v15

    .line 678
    if-nez v15, :cond_28

    .line 680
    goto/16 :goto_0

    .line 682
    :cond_28
    move-object/from16 v15, v18

    .line 684
    const/16 v23, 0x8

    .line 686
    goto/16 :goto_1

    .line 688
    :sswitch_29
    const-string/jumbo v15, "qc_ej_reward_notification_seen_ms"

    .line 691
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 694
    move-result v15

    .line 695
    if-nez v15, :cond_29

    .line 697
    goto/16 :goto_0

    .line 699
    :cond_29
    const/4 v15, 0x7

    .line 700
    goto :goto_2

    .line 701
    :sswitch_2a
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 704
    move-result v15

    .line 705
    if-nez v15, :cond_2a

    .line 707
    goto/16 :goto_0

    .line 709
    :cond_2a
    move/from16 v23, v17

    .line 711
    goto :goto_3

    .line 712
    :sswitch_2b
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 715
    move-result v15

    .line 716
    if-nez v15, :cond_2b

    .line 718
    goto/16 :goto_0

    .line 720
    :cond_2b
    move/from16 v23, v16

    .line 722
    goto :goto_3

    .line 723
    :sswitch_2c
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 726
    move-result v15

    .line 727
    if-nez v15, :cond_2c

    .line 729
    goto/16 :goto_0

    .line 731
    :cond_2c
    const/4 v15, 0x4

    .line 732
    :goto_2
    move/from16 v23, v15

    .line 734
    :goto_3
    move-object/from16 v15, v18

    .line 736
    goto/16 :goto_1

    .line 738
    :sswitch_2d
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 741
    move-result v15

    .line 742
    if-nez v15, :cond_2d

    .line 744
    goto/16 :goto_0

    .line 746
    :cond_2d
    move-object/from16 v15, v18

    .line 748
    const/16 v23, 0x3

    .line 750
    goto/16 :goto_1

    .line 752
    :sswitch_2e
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    move-result v15

    .line 756
    if-nez v15, :cond_2e

    .line 758
    goto/16 :goto_0

    .line 760
    :cond_2e
    move-object/from16 v15, v18

    .line 762
    const/16 v23, 0x2

    .line 764
    goto/16 :goto_1

    .line 766
    :sswitch_2f
    move-object/from16 v15, v18

    .line 768
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 771
    move-result v18

    .line 772
    if-nez v18, :cond_2f

    .line 774
    move-object/from16 v18, v9

    .line 776
    move-object/from16 v9, v19

    .line 778
    goto :goto_4

    .line 779
    :cond_2f
    move-object/from16 v18, v9

    .line 781
    move-object/from16 v9, v19

    .line 783
    const/16 v23, 0x1

    .line 785
    goto :goto_5

    .line 786
    :sswitch_30
    move-object/from16 v15, v18

    .line 788
    move-object/from16 v18, v9

    .line 790
    move-object/from16 v9, v19

    .line 792
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 795
    move-result v19

    .line 796
    if-nez v19, :cond_30

    .line 798
    :goto_4
    const/16 v23, -0x1

    .line 800
    goto :goto_5

    .line 801
    :cond_30
    const/16 v23, 0x0

    .line 803
    :goto_5
    packed-switch v23, :pswitch_data_0

    .line 806
    goto/16 :goto_b

    .line 808
    :pswitch_0
    const/16 v3, 0x8

    .line 810
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 813
    move-result v0

    .line 814
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 816
    const/4 v3, 0x1

    .line 817
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 820
    move-result v0

    .line 821
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 823
    const/4 v4, 0x2

    .line 824
    aget v5, v1, v4

    .line 826
    if-eq v5, v0, :cond_50

    .line 828
    aput v0, v1, v4

    .line 830
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 832
    goto/16 :goto_b

    .line 834
    :pswitch_1
    const/4 v3, 0x1

    .line 835
    const/4 v4, 0x3

    .line 836
    invoke-virtual {v0, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 839
    move-result v0

    .line 840
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 842
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 845
    move-result v0

    .line 846
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 848
    aget v5, v1, v4

    .line 850
    if-eq v5, v0, :cond_50

    .line 852
    aput v0, v1, v4

    .line 854
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 856
    goto/16 :goto_b

    .line 858
    :pswitch_2
    const/4 v3, 0x1

    .line 859
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 862
    move-result v0

    .line 863
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    .line 865
    const/4 v1, 0x0

    .line 866
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 869
    move-result v0

    .line 870
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 872
    aget v4, v1, v16

    .line 874
    if-eq v4, v0, :cond_50

    .line 876
    aput v0, v1, v16

    .line 878
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 880
    goto/16 :goto_b

    .line 882
    :pswitch_3
    const-wide/16 v3, 0x1388

    .line 884
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 887
    move-result-wide v0

    .line 888
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 890
    const-wide/16 v3, 0x0

    .line 892
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 895
    move-result-wide v0

    .line 896
    const-wide/32 v3, 0xdbba0

    .line 899
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 902
    move-result-wide v0

    .line 903
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 905
    cmp-long v3, v3, v0

    .line 907
    if-eqz v3, :cond_50

    .line 909
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 911
    const/4 v3, 0x1

    .line 912
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 914
    goto/16 :goto_b

    .line 916
    :pswitch_4
    const/4 v3, 0x1

    .line 917
    const/16 v4, 0x78

    .line 919
    invoke-virtual {v0, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 922
    move-result v0

    .line 923
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 925
    const/16 v1, 0xa

    .line 927
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 930
    move-result v0

    .line 931
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 933
    aget v4, v1, v3

    .line 935
    if-eq v4, v0, :cond_50

    .line 937
    aput v0, v1, v3

    .line 939
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 941
    goto/16 :goto_b

    .line 943
    :pswitch_5
    const-wide/16 v3, 0x2710

    .line 945
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 948
    move-result-wide v0

    .line 949
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    .line 951
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 954
    move-result-wide v0

    .line 955
    const-wide/32 v2, 0xdbba0

    .line 958
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 961
    move-result-wide v0

    .line 962
    iget-wide v2, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 964
    cmp-long v2, v2, v0

    .line 966
    if-eqz v2, :cond_50

    .line 968
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 970
    iget-wide v2, v14, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 972
    cmp-long v0, v2, v0

    .line 974
    if-gez v0, :cond_50

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    .line 978
    move-object/from16 v3, v21

    .line 980
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 983
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 985
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 988
    move-object/from16 v4, v20

    .line 990
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 995
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1001
    move-result-object v0

    .line 1002
    move-object/from16 v5, p0

    .line 1004
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    goto/16 :goto_b

    .line 1009
    :pswitch_6
    const/16 v3, 0xa

    .line 1011
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1014
    move-result v0

    .line 1015
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 1017
    const/4 v3, 0x1

    .line 1018
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 1021
    move-result v0

    .line 1022
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 1024
    aget v4, v1, v3

    .line 1026
    if-eq v4, v0, :cond_50

    .line 1028
    aput v0, v1, v3

    .line 1030
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1032
    goto/16 :goto_b

    .line 1034
    :pswitch_7
    const/4 v3, 0x1

    .line 1035
    const/16 v4, 0x4b

    .line 1037
    invoke-virtual {v0, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1040
    move-result v0

    .line 1041
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_EXEMPTED:I

    .line 1043
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 1046
    move-result v0

    .line 1047
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 1049
    aget v4, v1, v17

    .line 1051
    if-eq v4, v0, :cond_50

    .line 1053
    aput v0, v1, v17

    .line 1055
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1057
    goto/16 :goto_b

    .line 1059
    :pswitch_8
    const-wide/32 v3, 0xea60

    .line 1062
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1065
    move-result-wide v0

    .line 1066
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 1068
    iget-object v2, v14, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 1070
    const-wide/16 v3, 0x0

    .line 1072
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1075
    move-result-wide v0

    .line 1076
    const-wide/32 v3, 0xdbba0

    .line 1079
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1082
    move-result-wide v0

    .line 1083
    invoke-virtual {v2, v0, v1}, Lcom/android/server/utils/AlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    .line 1086
    goto/16 :goto_b

    .line 1088
    :pswitch_9
    const-wide/16 v3, 0x0

    .line 1090
    const-wide/32 v5, 0x2bf20

    .line 1093
    invoke-virtual {v0, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1096
    move-result-wide v0

    .line 1097
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    .line 1099
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1102
    move-result-wide v0

    .line 1103
    const-wide/32 v2, 0x36ee80

    .line 1106
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1109
    move-result-wide v0

    .line 1110
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    .line 1112
    goto/16 :goto_b

    .line 1114
    :pswitch_a
    const/16 v3, 0x4b

    .line 1116
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1119
    move-result v0

    .line 1120
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 1122
    const/4 v1, 0x1

    .line 1123
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1126
    move-result v0

    .line 1127
    iget-object v3, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 1129
    const/4 v4, 0x0

    .line 1130
    aget v5, v3, v4

    .line 1132
    if-eq v5, v0, :cond_50

    .line 1134
    aput v0, v3, v4

    .line 1136
    iput-boolean v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1138
    goto/16 :goto_b

    .line 1140
    :pswitch_b
    const-wide/32 v3, 0xea60

    .line 1143
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1146
    move-result-wide v0

    .line 1147
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    .line 1149
    const-wide/16 v2, 0x0

    .line 1151
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1154
    move-result-wide v0

    .line 1155
    const-wide/32 v2, 0x36ee80

    .line 1158
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1161
    move-result-wide v0

    .line 1162
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 1164
    goto/16 :goto_b

    .line 1166
    :pswitch_c
    const/16 v3, 0xc8

    .line 1168
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1171
    move-result v0

    .line 1172
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 1174
    const/16 v3, 0xa

    .line 1176
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 1179
    move-result v0

    .line 1180
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 1182
    const/4 v3, 0x2

    .line 1183
    aget v4, v1, v3

    .line 1185
    if-eq v4, v0, :cond_50

    .line 1187
    aput v0, v1, v3

    .line 1189
    const/4 v0, 0x1

    .line 1190
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1192
    goto/16 :goto_b

    .line 1194
    :pswitch_d
    const/16 v3, 0xa

    .line 1196
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1199
    move-result v0

    .line 1200
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    .line 1202
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 1205
    move-result v0

    .line 1206
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 1208
    aget v3, v1, v16

    .line 1210
    if-eq v3, v0, :cond_50

    .line 1212
    aput v0, v1, v16

    .line 1214
    const/4 v0, 0x1

    .line 1215
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1217
    goto/16 :goto_b

    .line 1219
    :pswitch_e
    const/16 v3, 0x4b

    .line 1221
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1224
    move-result v0

    .line 1225
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_EXEMPTED:I

    .line 1227
    const/16 v1, 0xa

    .line 1229
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1232
    move-result v0

    .line 1233
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 1235
    aget v3, v1, v17

    .line 1237
    if-eq v3, v0, :cond_50

    .line 1239
    aput v0, v1, v17

    .line 1241
    const/4 v0, 0x1

    .line 1242
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1244
    goto/16 :goto_b

    .line 1246
    :pswitch_f
    const/4 v0, 0x1

    .line 1247
    iget-boolean v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    .line 1249
    if-eqz v1, :cond_31

    .line 1251
    goto/16 :goto_b

    .line 1253
    :cond_31
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    .line 1255
    const-string/jumbo v0, "qc_max_job_count_per_rate_limiting_window"

    .line 1258
    filled-new-array {v6, v0, v5}, [Ljava/lang/String;

    .line 1261
    move-result-object v1

    .line 1262
    move-object/from16 v9, v22

    .line 1264
    invoke-static {v9, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 1267
    move-result-object v1

    .line 1268
    const-wide/32 v3, 0xea60

    .line 1271
    invoke-virtual {v1, v6, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1274
    move-result-wide v3

    .line 1275
    iput-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 1277
    const/16 v3, 0x14

    .line 1279
    invoke-virtual {v1, v0, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1282
    move-result v0

    .line 1283
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 1285
    invoke-virtual {v1, v5, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1288
    move-result v0

    .line 1289
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 1291
    iget-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 1293
    const-wide/16 v3, 0x7530

    .line 1295
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1298
    move-result-wide v0

    .line 1299
    const-wide/32 v3, 0x5265c00

    .line 1302
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1305
    move-result-wide v0

    .line 1306
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 1308
    cmp-long v3, v3, v0

    .line 1310
    if-eqz v3, :cond_32

    .line 1312
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 1314
    const/4 v0, 0x1

    .line 1315
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1317
    goto :goto_6

    .line 1318
    :cond_32
    const/4 v0, 0x1

    .line 1319
    :goto_6
    iget v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 1321
    const/16 v3, 0xa

    .line 1323
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1326
    move-result v1

    .line 1327
    iget v4, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 1329
    if-eq v4, v1, :cond_33

    .line 1331
    iput v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 1333
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1335
    :cond_33
    iget v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 1337
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1340
    move-result v1

    .line 1341
    iget v3, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 1343
    if-eq v3, v1, :cond_50

    .line 1345
    iput v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 1347
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1349
    goto/16 :goto_b

    .line 1351
    :pswitch_10
    const-wide/16 v3, 0x3a98

    .line 1353
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1356
    move-result-wide v0

    .line 1357
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    .line 1359
    const-wide/16 v2, 0x1388

    .line 1361
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1364
    move-result-wide v0

    .line 1365
    const-wide/32 v2, 0xdbba0

    .line 1368
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1371
    move-result-wide v0

    .line 1372
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    .line 1374
    goto/16 :goto_b

    .line 1376
    :pswitch_11
    const/16 v3, 0x30

    .line 1378
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1381
    move-result v0

    .line 1382
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 1384
    const/16 v1, 0xa

    .line 1386
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1389
    move-result v0

    .line 1390
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 1392
    const/4 v3, 0x3

    .line 1393
    aget v4, v1, v3

    .line 1395
    if-eq v4, v0, :cond_50

    .line 1397
    aput v0, v1, v3

    .line 1399
    const/4 v0, 0x1

    .line 1400
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1402
    goto/16 :goto_b

    .line 1404
    :pswitch_12
    move-object/from16 v5, p0

    .line 1406
    move-object/from16 v4, v20

    .line 1408
    move-object/from16 v3, v21

    .line 1410
    const-wide/16 v6, 0x7530

    .line 1412
    invoke-virtual {v0, v1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1415
    move-result-wide v0

    .line 1416
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    .line 1418
    const-wide/16 v6, 0x1

    .line 1420
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1423
    move-result-wide v0

    .line 1424
    const-wide/32 v6, 0xdbba0

    .line 1427
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1430
    move-result-wide v0

    .line 1431
    iget-wide v6, v14, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 1433
    cmp-long v2, v6, v0

    .line 1435
    if-eqz v2, :cond_50

    .line 1437
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 1439
    iget-wide v6, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 1441
    cmp-long v0, v0, v6

    .line 1443
    if-gez v0, :cond_50

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1447
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1450
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 1452
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1455
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 1460
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1466
    move-result-object v0

    .line 1467
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    goto/16 :goto_b

    .line 1472
    :pswitch_13
    const/16 v3, 0x4b

    .line 1474
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1477
    move-result v0

    .line 1478
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 1480
    const/16 v1, 0xa

    .line 1482
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1485
    move-result v0

    .line 1486
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 1488
    const/4 v3, 0x0

    .line 1489
    aget v4, v1, v3

    .line 1491
    if-eq v4, v0, :cond_50

    .line 1493
    aput v0, v1, v3

    .line 1495
    const/4 v0, 0x1

    .line 1496
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1498
    goto/16 :goto_b

    .line 1500
    :pswitch_14
    const-wide/16 v3, 0x0

    .line 1502
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1505
    move-result-wide v0

    .line 1506
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    .line 1508
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1511
    move-result-wide v0

    .line 1512
    const-wide/32 v2, 0x493e0

    .line 1515
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1518
    move-result-wide v0

    .line 1519
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    .line 1521
    goto/16 :goto_b

    .line 1523
    :pswitch_15
    move-object/from16 v9, v22

    .line 1525
    iget-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    .line 1527
    if-eqz v0, :cond_34

    .line 1529
    goto/16 :goto_b

    .line 1531
    :cond_34
    const/4 v0, 0x1

    .line 1532
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    .line 1534
    const-string/jumbo v1, "qc_quota_bump_additional_duration_ms"

    .line 1537
    const-string/jumbo v3, "qc_quota_bump_additional_job_count"

    .line 1540
    const-string/jumbo v5, "qc_quota_bump_additional_session_count"

    .line 1543
    filled-new-array {v1, v3, v5, v12, v4}, [Ljava/lang/String;

    .line 1546
    move-result-object v6

    .line 1547
    invoke-static {v9, v6}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 1550
    move-result-object v6

    .line 1551
    const-wide/32 v7, 0xea60

    .line 1554
    invoke-virtual {v6, v1, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1557
    move-result-wide v7

    .line 1558
    iput-wide v7, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    .line 1560
    const/4 v1, 0x2

    .line 1561
    invoke-virtual {v6, v3, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1564
    move-result v1

    .line 1565
    iput v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    .line 1567
    invoke-virtual {v6, v5, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1570
    move-result v1

    .line 1571
    iput v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    .line 1573
    const-wide/32 v0, 0x1b77400

    .line 1576
    invoke-virtual {v6, v12, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1579
    move-result-wide v0

    .line 1580
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    .line 1582
    const/16 v0, 0x8

    .line 1584
    invoke-virtual {v6, v4, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1587
    move-result v0

    .line 1588
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    .line 1590
    iget-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    .line 1592
    const-wide/32 v3, 0x5265c00

    .line 1595
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1598
    move-result-wide v0

    .line 1599
    const-wide/32 v3, 0x36ee80

    .line 1602
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1605
    move-result-wide v0

    .line 1606
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 1608
    cmp-long v3, v3, v0

    .line 1610
    if-eqz v3, :cond_35

    .line 1612
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 1614
    const/4 v0, 0x1

    .line 1615
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1617
    goto :goto_7

    .line 1618
    :cond_35
    const/4 v0, 0x1

    .line 1619
    :goto_7
    iget v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    .line 1621
    const/4 v3, 0x0

    .line 1622
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1625
    move-result v1

    .line 1626
    iget v4, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 1628
    if-eq v4, v1, :cond_36

    .line 1630
    iput v1, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 1632
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1634
    :cond_36
    iget v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    .line 1636
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1639
    move-result v1

    .line 1640
    iget v4, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    .line 1642
    if-eq v4, v1, :cond_37

    .line 1644
    iput v1, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    .line 1646
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1648
    :cond_37
    iget v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    .line 1650
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1653
    move-result v1

    .line 1654
    iget v3, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    .line 1656
    if-eq v3, v1, :cond_38

    .line 1658
    iput v1, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    .line 1660
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1662
    :cond_38
    iget-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    .line 1664
    const-wide/32 v3, 0x927c0

    .line 1667
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1670
    move-result-wide v0

    .line 1671
    const-wide/16 v3, 0x0

    .line 1673
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1676
    move-result-wide v0

    .line 1677
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 1679
    cmp-long v3, v3, v0

    .line 1681
    if-eqz v3, :cond_50

    .line 1683
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 1685
    const/4 v0, 0x1

    .line 1686
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1688
    goto/16 :goto_b

    .line 1690
    :pswitch_16
    move-object/from16 v9, v22

    .line 1692
    const/4 v0, 0x1

    .line 1693
    iget-boolean v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    .line 1695
    if-eqz v1, :cond_39

    .line 1697
    goto/16 :goto_b

    .line 1699
    :cond_39
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    .line 1701
    const-string/jumbo v33, "qc_window_size_working_ms"

    .line 1704
    const-string/jumbo v34, "qc_window_size_frequent_ms"

    .line 1707
    const-string/jumbo v23, "qc_allowed_time_per_period_exempted_ms"

    .line 1710
    const-string/jumbo v24, "qc_allowed_time_per_period_active_ms"

    .line 1713
    const-string/jumbo v25, "qc_allowed_time_per_period_working_ms"

    .line 1716
    const-string/jumbo v26, "qc_allowed_time_per_period_frequent_ms"

    .line 1719
    const-string/jumbo v27, "qc_allowed_time_per_period_rare_ms"

    .line 1722
    const-string/jumbo v28, "qc_allowed_time_per_period_restricted_ms"

    .line 1725
    const-string/jumbo v29, "qc_in_quota_buffer_ms"

    .line 1728
    const-string/jumbo v30, "qc_max_execution_time_ms"

    .line 1731
    const-string/jumbo v31, "qc_window_size_exempted_ms"

    .line 1734
    const-string/jumbo v32, "qc_window_size_active_ms"

    .line 1737
    const-string/jumbo v35, "qc_window_size_rare_ms"

    .line 1740
    const-string/jumbo v36, "qc_window_size_restricted_ms"

    .line 1743
    filled-new-array/range {v23 .. v36}, [Ljava/lang/String;

    .line 1746
    move-result-object v0

    .line 1747
    invoke-static {v9, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 1750
    move-result-object v0

    .line 1751
    const-string/jumbo v1, "qc_allowed_time_per_period_exempted_ms"

    .line 1754
    const-wide/32 v4, 0x927c0

    .line 1757
    invoke-virtual {v0, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1760
    move-result-wide v9

    .line 1761
    iput-wide v9, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    .line 1763
    invoke-virtual {v0, v15, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1766
    move-result-wide v9

    .line 1767
    iput-wide v9, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    .line 1769
    const-string/jumbo v1, "qc_allowed_time_per_period_working_ms"

    .line 1772
    invoke-virtual {v0, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1775
    move-result-wide v9

    .line 1776
    iput-wide v9, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    .line 1778
    invoke-virtual {v0, v7, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1781
    move-result-wide v6

    .line 1782
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    .line 1784
    const-string/jumbo v1, "qc_allowed_time_per_period_rare_ms"

    .line 1787
    invoke-virtual {v0, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1790
    move-result-wide v6

    .line 1791
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    .line 1793
    invoke-virtual {v0, v11, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1796
    move-result-wide v6

    .line 1797
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    .line 1799
    const-string/jumbo v1, "qc_in_quota_buffer_ms"

    .line 1802
    const-wide/16 v6, 0x7530

    .line 1804
    invoke-virtual {v0, v1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1807
    move-result-wide v6

    .line 1808
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 1810
    const-string/jumbo v1, "qc_max_execution_time_ms"

    .line 1813
    const-wide/32 v6, 0xdbba00

    .line 1816
    invoke-virtual {v0, v1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1819
    move-result-wide v6

    .line 1820
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 1822
    const-string/jumbo v1, "qc_window_size_exempted_ms"

    .line 1825
    invoke-virtual {v0, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1828
    move-result-wide v6

    .line 1829
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    .line 1831
    const-string/jumbo v1, "qc_window_size_active_ms"

    .line 1834
    invoke-virtual {v0, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1837
    move-result-wide v4

    .line 1838
    iput-wide v4, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 1840
    const-string/jumbo v1, "qc_window_size_working_ms"

    .line 1843
    const-wide/32 v4, 0x6ddd00

    .line 1846
    invoke-virtual {v0, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1849
    move-result-wide v4

    .line 1850
    iput-wide v4, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 1852
    const-wide/32 v4, 0x1b77400

    .line 1855
    invoke-virtual {v0, v13, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1858
    move-result-wide v4

    .line 1859
    iput-wide v4, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 1861
    const-wide/32 v4, 0x5265c00

    .line 1864
    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1867
    move-result-wide v6

    .line 1868
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 1870
    invoke-virtual {v0, v8, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1873
    move-result-wide v0

    .line 1874
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 1876
    iget-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 1878
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1881
    move-result-wide v0

    .line 1882
    const-wide/32 v3, 0x36ee80

    .line 1885
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1888
    move-result-wide v0

    .line 1889
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 1891
    cmp-long v3, v3, v0

    .line 1893
    if-eqz v3, :cond_3a

    .line 1895
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 1897
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 1899
    sub-long/2addr v0, v3

    .line 1900
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 1902
    const/4 v0, 0x1

    .line 1903
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1905
    :cond_3a
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 1907
    iget-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    .line 1909
    const-wide/32 v5, 0xea60

    .line 1912
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 1915
    move-result-wide v3

    .line 1916
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 1919
    move-result-wide v0

    .line 1920
    const-wide v3, 0x7fffffffffffffffL

    .line 1925
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1928
    move-result-wide v3

    .line 1929
    iget-object v5, v14, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    .line 1931
    aget-wide v6, v5, v17

    .line 1933
    cmp-long v6, v6, v0

    .line 1935
    if-eqz v6, :cond_3b

    .line 1937
    aput-wide v0, v5, v17

    .line 1939
    const/4 v0, 0x1

    .line 1940
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1942
    :cond_3b
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 1944
    iget-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    .line 1946
    const-wide/32 v8, 0xea60

    .line 1949
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 1952
    move-result-wide v6

    .line 1953
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 1956
    move-result-wide v0

    .line 1957
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1960
    move-result-wide v3

    .line 1961
    const/4 v6, 0x0

    .line 1962
    aget-wide v7, v5, v6

    .line 1964
    cmp-long v7, v7, v0

    .line 1966
    if-eqz v7, :cond_3c

    .line 1968
    aput-wide v0, v5, v6

    .line 1970
    const/4 v0, 0x1

    .line 1971
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1973
    goto :goto_8

    .line 1974
    :cond_3c
    const/4 v0, 0x1

    .line 1975
    :goto_8
    iget-wide v6, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 1977
    iget-wide v8, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    .line 1979
    const-wide/32 v10, 0xea60

    .line 1982
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 1985
    move-result-wide v8

    .line 1986
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 1989
    move-result-wide v6

    .line 1990
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 1993
    move-result-wide v3

    .line 1994
    aget-wide v8, v5, v0

    .line 1996
    cmp-long v1, v8, v6

    .line 1998
    if-eqz v1, :cond_3d

    .line 2000
    aput-wide v6, v5, v0

    .line 2002
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2004
    :cond_3d
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 2006
    iget-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    .line 2008
    const-wide/32 v8, 0xea60

    .line 2011
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 2014
    move-result-wide v6

    .line 2015
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 2018
    move-result-wide v0

    .line 2019
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 2022
    move-result-wide v3

    .line 2023
    const/4 v6, 0x2

    .line 2024
    aget-wide v7, v5, v6

    .line 2026
    cmp-long v7, v7, v0

    .line 2028
    if-eqz v7, :cond_3e

    .line 2030
    aput-wide v0, v5, v6

    .line 2032
    const/4 v0, 0x1

    .line 2033
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2035
    :cond_3e
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 2037
    iget-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    .line 2039
    const-wide/32 v8, 0xea60

    .line 2042
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 2045
    move-result-wide v6

    .line 2046
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 2049
    move-result-wide v0

    .line 2050
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 2053
    move-result-wide v3

    .line 2054
    const/4 v6, 0x3

    .line 2055
    aget-wide v7, v5, v6

    .line 2057
    cmp-long v7, v7, v0

    .line 2059
    if-eqz v7, :cond_3f

    .line 2061
    aput-wide v0, v5, v6

    .line 2063
    const/4 v0, 0x1

    .line 2064
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2066
    :cond_3f
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 2068
    iget-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    .line 2070
    const-wide/32 v8, 0xea60

    .line 2073
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 2076
    move-result-wide v6

    .line 2077
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 2080
    move-result-wide v0

    .line 2081
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 2084
    move-result-wide v3

    .line 2085
    aget-wide v6, v5, v16

    .line 2087
    cmp-long v6, v6, v0

    .line 2089
    if-eqz v6, :cond_40

    .line 2091
    aput-wide v0, v5, v16

    .line 2093
    const/4 v0, 0x1

    .line 2094
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2096
    :cond_40
    iget-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2098
    const-wide/32 v6, 0x493e0

    .line 2101
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 2104
    move-result-wide v0

    .line 2105
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 2108
    move-result-wide v0

    .line 2109
    const-wide/16 v3, 0x0

    .line 2111
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 2114
    move-result-wide v0

    .line 2115
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 2117
    cmp-long v3, v3, v0

    .line 2119
    if-eqz v3, :cond_41

    .line 2121
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 2123
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 2125
    sub-long/2addr v3, v0

    .line 2126
    iput-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 2128
    const/4 v0, 0x1

    .line 2129
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2131
    :cond_41
    aget-wide v0, v5, v17

    .line 2133
    iget-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    .line 2135
    const-wide/32 v6, 0x5265c00

    .line 2138
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 2141
    move-result-wide v3

    .line 2142
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 2145
    move-result-wide v0

    .line 2146
    iget-object v3, v14, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 2148
    aget-wide v6, v3, v17

    .line 2150
    cmp-long v4, v6, v0

    .line 2152
    if-eqz v4, :cond_42

    .line 2154
    aput-wide v0, v3, v17

    .line 2156
    const/4 v0, 0x1

    .line 2157
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2159
    :cond_42
    const/4 v0, 0x0

    .line 2160
    aget-wide v6, v5, v0

    .line 2162
    iget-wide v8, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2164
    const-wide/32 v10, 0x5265c00

    .line 2167
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 2170
    move-result-wide v8

    .line 2171
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 2174
    move-result-wide v6

    .line 2175
    aget-wide v8, v3, v0

    .line 2177
    cmp-long v1, v8, v6

    .line 2179
    if-eqz v1, :cond_43

    .line 2181
    aput-wide v6, v3, v0

    .line 2183
    const/4 v0, 0x1

    .line 2184
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2186
    goto :goto_9

    .line 2187
    :cond_43
    const/4 v0, 0x1

    .line 2188
    :goto_9
    aget-wide v6, v5, v0

    .line 2190
    iget-wide v8, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2192
    const-wide/32 v10, 0x5265c00

    .line 2195
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 2198
    move-result-wide v8

    .line 2199
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 2202
    move-result-wide v6

    .line 2203
    aget-wide v8, v3, v0

    .line 2205
    cmp-long v1, v8, v6

    .line 2207
    if-eqz v1, :cond_44

    .line 2209
    aput-wide v6, v3, v0

    .line 2211
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2213
    :cond_44
    const/4 v0, 0x2

    .line 2214
    aget-wide v6, v5, v0

    .line 2216
    iget-wide v8, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2218
    const-wide/32 v10, 0x5265c00

    .line 2221
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 2224
    move-result-wide v8

    .line 2225
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 2228
    move-result-wide v6

    .line 2229
    aget-wide v8, v3, v0

    .line 2231
    cmp-long v1, v8, v6

    .line 2233
    if-eqz v1, :cond_45

    .line 2235
    aput-wide v6, v3, v0

    .line 2237
    const/4 v0, 0x1

    .line 2238
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2240
    :cond_45
    const/4 v0, 0x3

    .line 2241
    aget-wide v6, v5, v0

    .line 2243
    iget-wide v8, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2245
    const-wide/32 v10, 0x5265c00

    .line 2248
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 2251
    move-result-wide v8

    .line 2252
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 2255
    move-result-wide v6

    .line 2256
    aget-wide v8, v3, v0

    .line 2258
    cmp-long v1, v8, v6

    .line 2260
    if-eqz v1, :cond_46

    .line 2262
    aput-wide v6, v3, v0

    .line 2264
    const/4 v0, 0x1

    .line 2265
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2267
    :cond_46
    aget-wide v0, v5, v16

    .line 2269
    const-wide/32 v4, 0x240c8400

    .line 2272
    iget-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 2274
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 2277
    move-result-wide v4

    .line 2278
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 2281
    move-result-wide v0

    .line 2282
    aget-wide v4, v3, v16

    .line 2284
    cmp-long v4, v4, v0

    .line 2286
    if-eqz v4, :cond_50

    .line 2288
    aput-wide v0, v3, v16

    .line 2290
    const/4 v0, 0x1

    .line 2291
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2293
    goto/16 :goto_b

    .line 2295
    :pswitch_17
    move-object/from16 v1, v22

    .line 2297
    const/4 v0, 0x1

    .line 2298
    iget-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    .line 2300
    if-eqz v3, :cond_47

    .line 2302
    goto/16 :goto_b

    .line 2304
    :cond_47
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    .line 2306
    const-string/jumbo v28, "qc_ej_limit_restricted_ms"

    .line 2309
    const-string/jumbo v29, "qc_ej_limit_addition_special_ms"

    .line 2312
    const-string/jumbo v23, "qc_ej_limit_exempted_ms"

    .line 2315
    const-string/jumbo v24, "qc_ej_limit_active_ms"

    .line 2318
    const-string/jumbo v25, "qc_ej_limit_working_ms"

    .line 2321
    const-string/jumbo v26, "qc_ej_limit_frequent_ms"

    .line 2324
    const-string/jumbo v27, "qc_ej_limit_rare_ms"

    .line 2327
    const-string/jumbo v30, "qc_ej_limit_addition_installer_ms"

    .line 2330
    const-string/jumbo v31, "qc_ej_window_size_ms"

    .line 2333
    filled-new-array/range {v23 .. v31}, [Ljava/lang/String;

    .line 2336
    move-result-object v0

    .line 2337
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 2340
    move-result-object v0

    .line 2341
    const-string/jumbo v1, "qc_ej_limit_exempted_ms"

    .line 2344
    const-wide/32 v3, 0x36ee80

    .line 2347
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2350
    move-result-wide v5

    .line 2351
    iput-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    .line 2353
    const-wide/32 v3, 0x1b7740

    .line 2356
    invoke-virtual {v0, v9, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2359
    move-result-wide v5

    .line 2360
    iput-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    .line 2362
    const-string/jumbo v1, "qc_ej_limit_working_ms"

    .line 2365
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2368
    move-result-wide v5

    .line 2369
    iput-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    .line 2371
    const-wide/32 v5, 0x927c0

    .line 2374
    invoke-virtual {v0, v10, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2377
    move-result-wide v7

    .line 2378
    iput-wide v7, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    .line 2380
    const-string/jumbo v1, "qc_ej_limit_rare_ms"

    .line 2383
    invoke-virtual {v0, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2386
    move-result-wide v7

    .line 2387
    iput-wide v7, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    .line 2389
    const-string/jumbo v1, "qc_ej_limit_restricted_ms"

    .line 2392
    const-wide/32 v5, 0x493e0

    .line 2395
    invoke-virtual {v0, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2398
    move-result-wide v7

    .line 2399
    iput-wide v7, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    .line 2401
    const-string/jumbo v1, "qc_ej_limit_addition_installer_ms"

    .line 2404
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2407
    move-result-wide v3

    .line 2408
    iput-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    .line 2410
    move-object/from16 v1, v18

    .line 2412
    const-wide/32 v3, 0xdbba0

    .line 2415
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2418
    move-result-wide v5

    .line 2419
    iput-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    .line 2421
    const-string/jumbo v1, "qc_ej_window_size_ms"

    .line 2424
    const-wide/32 v3, 0x5265c00

    .line 2427
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2430
    move-result-wide v0

    .line 2431
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    .line 2433
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 2436
    move-result-wide v0

    .line 2437
    const-wide/32 v3, 0x36ee80

    .line 2440
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 2443
    move-result-wide v0

    .line 2444
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 2446
    cmp-long v3, v3, v0

    .line 2448
    if-eqz v3, :cond_48

    .line 2450
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 2452
    const/4 v3, 0x1

    .line 2453
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2455
    :cond_48
    iget-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    .line 2457
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 2460
    move-result-wide v3

    .line 2461
    const-wide/32 v5, 0xdbba0

    .line 2464
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 2467
    move-result-wide v3

    .line 2468
    iget-object v5, v14, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    .line 2470
    aget-wide v6, v5, v17

    .line 2472
    cmp-long v6, v6, v3

    .line 2474
    if-eqz v6, :cond_49

    .line 2476
    aput-wide v3, v5, v17

    .line 2478
    const/4 v6, 0x1

    .line 2479
    iput-boolean v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2481
    goto :goto_a

    .line 2482
    :cond_49
    const/4 v6, 0x1

    .line 2483
    :goto_a
    iget-wide v7, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    .line 2485
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 2488
    move-result-wide v3

    .line 2489
    const-wide/32 v7, 0xdbba0

    .line 2492
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 2495
    move-result-wide v3

    .line 2496
    const/4 v9, 0x0

    .line 2497
    aget-wide v10, v5, v9

    .line 2499
    cmp-long v10, v10, v3

    .line 2501
    if-eqz v10, :cond_4a

    .line 2503
    aput-wide v3, v5, v9

    .line 2505
    iput-boolean v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2507
    :cond_4a
    iget-wide v9, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    .line 2509
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 2512
    move-result-wide v9

    .line 2513
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 2516
    move-result-wide v7

    .line 2517
    aget-wide v9, v5, v6

    .line 2519
    cmp-long v9, v9, v7

    .line 2521
    if-eqz v9, :cond_4b

    .line 2523
    aput-wide v7, v5, v6

    .line 2525
    iput-boolean v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2527
    :cond_4b
    iget-wide v9, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    .line 2529
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 2532
    move-result-wide v7

    .line 2533
    const-wide/32 v9, 0x927c0

    .line 2536
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 2539
    move-result-wide v7

    .line 2540
    const/4 v11, 0x2

    .line 2541
    aget-wide v12, v5, v11

    .line 2543
    cmp-long v12, v12, v7

    .line 2545
    if-eqz v12, :cond_4c

    .line 2547
    aput-wide v7, v5, v11

    .line 2549
    iput-boolean v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2551
    :cond_4c
    iget-wide v11, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    .line 2553
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 2556
    move-result-wide v7

    .line 2557
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 2560
    move-result-wide v7

    .line 2561
    const/4 v9, 0x3

    .line 2562
    aget-wide v10, v5, v9

    .line 2564
    cmp-long v10, v10, v7

    .line 2566
    if-eqz v10, :cond_4d

    .line 2568
    aput-wide v7, v5, v9

    .line 2570
    iput-boolean v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2572
    :cond_4d
    iget-wide v9, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    .line 2574
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 2577
    move-result-wide v7

    .line 2578
    const-wide/32 v9, 0x493e0

    .line 2581
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 2584
    move-result-wide v7

    .line 2585
    aget-wide v9, v5, v16

    .line 2587
    cmp-long v9, v9, v7

    .line 2589
    if-eqz v9, :cond_4e

    .line 2591
    aput-wide v7, v5, v16

    .line 2593
    iput-boolean v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2595
    :cond_4e
    sub-long/2addr v0, v3

    .line 2596
    iget-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    .line 2598
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 2601
    move-result-wide v3

    .line 2602
    const-wide/16 v5, 0x0

    .line 2604
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 2607
    move-result-wide v3

    .line 2608
    iget-wide v5, v14, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    .line 2610
    cmp-long v5, v5, v3

    .line 2612
    if-eqz v5, :cond_4f

    .line 2614
    iput-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    .line 2616
    const/4 v3, 0x1

    .line 2617
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2619
    :cond_4f
    iget-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    .line 2621
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 2624
    move-result-wide v0

    .line 2625
    const-wide/16 v3, 0x0

    .line 2627
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 2630
    move-result-wide v0

    .line 2631
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    .line 2633
    cmp-long v3, v3, v0

    .line 2635
    if-eqz v3, :cond_50

    .line 2637
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    .line 2639
    const/4 v0, 0x1

    .line 2640
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2642
    :cond_50
    :goto_b
    return-void

    .line 2643
    :sswitch_data_0
    .sparse-switch
        -0x74649652 -> :sswitch_30
        -0x66826d2f -> :sswitch_2f
        -0x64595545 -> :sswitch_2e
        -0x5ae728b6 -> :sswitch_2d
        -0x5a58eba4 -> :sswitch_2c
        -0x59dc2eda -> :sswitch_2b
        -0x5925a282 -> :sswitch_2a
        -0x559f9f27 -> :sswitch_29
        -0x54322d00 -> :sswitch_28
        -0x53fcd7ab -> :sswitch_27
        -0x4d93a8e4 -> :sswitch_26
        -0x4ab902f2 -> :sswitch_25
        -0x3bdfc277 -> :sswitch_24
        -0x3877c08a -> :sswitch_23
        -0x38722911 -> :sswitch_22
        -0x36564f14 -> :sswitch_21
        -0x335625c8 -> :sswitch_20
        -0x2c5330ab -> :sswitch_1f
        -0x24b769da -> :sswitch_1e
        -0x1c3a6d99 -> :sswitch_1d
        -0x89fefb8 -> :sswitch_1c
        0xc171262 -> :sswitch_1b
        0xd62190e -> :sswitch_1a
        0x131036e5 -> :sswitch_19
        0x151434b9 -> :sswitch_18
        0x1514a652 -> :sswitch_17
        0x1ec063cf -> :sswitch_16
        0x20593da9 -> :sswitch_15
        0x2751f3d8 -> :sswitch_14
        0x3c5536f0 -> :sswitch_13
        0x3d572e2a -> :sswitch_12
        0x3fca90c7 -> :sswitch_11
        0x3ff277c3 -> :sswitch_10
        0x46a4bc35 -> :sswitch_f
        0x48395f9f -> :sswitch_e
        0x4978a53a -> :sswitch_d
        0x5461fd31 -> :sswitch_c
        0x546e423f -> :sswitch_b
        0x59af5190 -> :sswitch_a
        0x5a02ed99 -> :sswitch_9
        0x5db41725 -> :sswitch_8
        0x6788a0b1 -> :sswitch_7
        0x6e145677 -> :sswitch_6
        0x71c1a483 -> :sswitch_5
        0x728b0d07 -> :sswitch_4
        0x7685d342 -> :sswitch_3
        0x7bf7519c -> :sswitch_2
        0x7c3bdaa3 -> :sswitch_1
        0x7f24784f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_16
        :pswitch_16
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_15
        :pswitch_16
        :pswitch_c
        :pswitch_16
        :pswitch_15
        :pswitch_f
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_b
        :pswitch_16
        :pswitch_15
        :pswitch_a
        :pswitch_15
        :pswitch_16
        :pswitch_9
        :pswitch_8
        :pswitch_16
        :pswitch_7
        :pswitch_6
        :pswitch_16
        :pswitch_17
        :pswitch_5
        :pswitch_4
        :pswitch_16
        :pswitch_3
        :pswitch_17
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;Z)V
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    return-void
.end method

.method public final saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p4, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 4
    :goto_0
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_2

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object p0

    .line 9
    iget-wide p1, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide p3, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr p1, p3

    add-long/2addr p1, p5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 12
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z
    .locals 7

    .line 1
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    move p4, p5

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    if-nez p5, :cond_3

    .line 20
    if-eqz p4, :cond_2

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    move p4, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_3
    :goto_0
    move p4, v1

    .line 26
    :goto_1
    if-nez p4, :cond_4

    .line 28
    iget-wide v3, p1, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    .line 30
    const-wide/16 v5, 0x0

    .line 32
    cmp-long p0, v3, v5

    .line 34
    if-nez p0, :cond_4

    .line 36
    iput-wide p2, p1, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    .line 38
    :cond_4
    const/high16 p0, 0x1000000

    .line 40
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_5

    .line 46
    iput-boolean p4, p1, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 48
    goto :goto_2

    .line 49
    :cond_5
    move v1, v2

    .line 50
    :goto_2
    return v1
.end method

.method public final setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p2, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-nez p2, :cond_1

    .line 10
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 12
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 18
    move v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v2, v1

    .line 21
    :goto_0
    iput-boolean p2, p1, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    .line 23
    const/high16 v3, 0x2000000

    .line 25
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_3

    .line 31
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v3, v1

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    :goto_1
    move v3, v0

    .line 41
    :goto_2
    iput-boolean v3, p1, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 43
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 45
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 48
    move-result v3

    .line 49
    if-eqz v2, :cond_4

    .line 51
    if-nez v3, :cond_4

    .line 53
    const/16 v1, 0xa

    .line 55
    iput v1, p1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 57
    goto :goto_3

    .line 58
    :cond_4
    if-nez v2, :cond_5

    .line 60
    if-eqz v3, :cond_5

    .line 62
    iput v1, p1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 64
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 66
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 69
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 71
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 74
    if-eqz p2, :cond_6

    .line 76
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 78
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_6

    .line 84
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 89
    :cond_6
    return v0
.end method

.method public final transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .locals 4

    .line 1
    iget-wide v0, p5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 3
    neg-long p6, p6

    .line 4
    invoke-virtual {p5, p6, p7}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 7
    move-result-wide p6

    .line 8
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 10
    if-eqz v2, :cond_0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v3, "debits overflowed by "

    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    const-string v3, "JobScheduler.Quota"

    .line 29
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    iget-wide v2, p5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 34
    cmp-long p5, v0, v2

    .line 36
    const/4 v0, 0x1

    .line 37
    if-eqz p5, :cond_1

    .line 39
    move p5, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p5, 0x0

    .line 42
    :goto_0
    const-wide/16 v1, 0x0

    .line 44
    cmp-long v1, p6, v1

    .line 46
    if-eqz v1, :cond_2

    .line 48
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 56
    if-eqz p0, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 64
    iget-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 66
    add-long/2addr p1, p6

    .line 67
    iget-wide p5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    .line 69
    sub-long/2addr p5, p3

    .line 70
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->max(JJ)J

    .line 73
    move-result-wide p1

    .line 74
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move v0, p5

    .line 78
    :goto_1
    return v0
.end method

.method public final unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 3
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 5
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 26
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 34
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 41
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    const-wide/16 v4, 0x0

    .line 11
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 13
    const/4 v6, 0x0

    .line 14
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 16
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 18
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 20
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 22
    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 24
    const-wide v8, 0x7fffffffffffffffL

    .line 29
    if-eqz v7, :cond_1

    .line 31
    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 33
    if-nez v7, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 41
    :goto_1
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 43
    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 45
    sub-long/2addr v10, v12

    .line 46
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 48
    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 54
    sget-object v12, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 56
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    move-result-wide v12

    .line 63
    const-wide/32 v14, 0x5265c00

    .line 66
    add-long v4, v12, v14

    .line 68
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 70
    if-eqz v7, :cond_4

    .line 72
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_4

    .line 78
    invoke-virtual {v7, v12, v13}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    .line 81
    move-result-wide v4

    .line 82
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 84
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 86
    iget-object v4, v7, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 88
    iget-object v4, v4, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 90
    monitor-enter v4

    .line 91
    :try_start_0
    iget v5, v7, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 93
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iput v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 96
    iput v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 98
    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 100
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 102
    cmp-long v4, v4, v10

    .line 104
    if-ltz v4, :cond_2

    .line 106
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 108
    sub-long v16, v12, v10

    .line 110
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 112
    add-long v6, v16, v6

    .line 114
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 117
    move-result-wide v4

    .line 118
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 120
    :cond_2
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 122
    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 124
    cmp-long v4, v4, v6

    .line 126
    if-ltz v4, :cond_3

    .line 128
    sub-long v4, v12, v6

    .line 130
    add-long/2addr v4, v14

    .line 131
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 133
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 136
    move-result-wide v4

    .line 137
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 139
    :cond_3
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 141
    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 143
    if-lt v4, v5, :cond_4

    .line 145
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 147
    add-long/2addr v4, v12

    .line 148
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 150
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 153
    move-result-wide v4

    .line 154
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 156
    goto :goto_2

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    throw v0

    .line 160
    :cond_4
    :goto_2
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 162
    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Ljava/util/List;

    .line 168
    if-eqz v1, :cond_14

    .line 170
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 173
    move-result v2

    .line 174
    if-nez v2, :cond_5

    .line 176
    goto/16 :goto_e

    .line 178
    :cond_5
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 180
    sub-long v4, v12, v4

    .line 182
    sub-long v6, v12, v14

    .line 184
    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 186
    sub-long v8, v12, v8

    .line 188
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 191
    move-result v2

    .line 192
    add-int/lit8 v2, v2, -0x1

    .line 194
    move/from16 p1, v2

    .line 196
    move-wide/from16 v16, v12

    .line 198
    const/4 v12, 0x0

    .line 199
    const-wide v14, 0x7fffffffffffffffL

    .line 204
    :goto_3
    if-ltz v2, :cond_8

    .line 206
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object v13

    .line 210
    check-cast v13, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 212
    invoke-interface {v13}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    .line 215
    move-result-wide v19

    .line 216
    cmp-long v19, v19, v8

    .line 218
    if-ltz v19, :cond_8

    .line 220
    move-wide/from16 v19, v6

    .line 222
    iget v6, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 224
    if-lt v12, v6, :cond_6

    .line 226
    :goto_4
    move-wide/from16 v21, v10

    .line 228
    goto :goto_6

    .line 229
    :cond_6
    instance-of v6, v13, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    .line 231
    if-eqz v6, :cond_7

    .line 233
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 235
    move-wide/from16 v21, v10

    .line 237
    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 239
    add-long/2addr v6, v10

    .line 240
    iput-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 242
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 244
    iget v7, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    .line 246
    add-int/2addr v6, v7

    .line 247
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 249
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 251
    iget v7, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    .line 253
    add-int/2addr v6, v7

    .line 254
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 256
    invoke-interface {v13}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    .line 259
    move-result-wide v6

    .line 260
    sub-long/2addr v6, v8

    .line 261
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 264
    move-result-wide v6

    .line 265
    add-int/lit8 v12, v12, 0x1

    .line 267
    move-wide v14, v6

    .line 268
    goto :goto_5

    .line 269
    :cond_7
    move-wide/from16 v21, v10

    .line 271
    :goto_5
    add-int/lit8 v2, v2, -0x1

    .line 273
    move-wide/from16 v6, v19

    .line 275
    move-wide/from16 v10, v21

    .line 277
    goto :goto_3

    .line 278
    :cond_8
    move-wide/from16 v19, v6

    .line 280
    goto :goto_4

    .line 281
    :goto_6
    const/4 v2, 0x0

    .line 282
    move-object v6, v2

    .line 283
    const/16 v18, 0x0

    .line 285
    move/from16 v2, p1

    .line 287
    :goto_7
    if-ltz v2, :cond_13

    .line 289
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 292
    move-result-object v7

    .line 293
    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 295
    instance-of v8, v7, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    .line 297
    if-eqz v8, :cond_9

    .line 299
    move-wide/from16 p1, v4

    .line 301
    const-wide/32 v8, 0x5265c00

    .line 304
    goto/16 :goto_d

    .line 306
    :cond_9
    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 308
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 310
    cmp-long v8, v4, v8

    .line 312
    if-gez v8, :cond_f

    .line 314
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 316
    cmp-long v10, v4, v8

    .line 318
    if-gez v10, :cond_a

    .line 320
    sub-long v10, v8, v4

    .line 322
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 325
    move-result-wide v10

    .line 326
    move-wide v14, v10

    .line 327
    goto :goto_8

    .line 328
    :cond_a
    move-wide v8, v4

    .line 329
    const-wide/16 v14, 0x0

    .line 331
    :goto_8
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 333
    iget-wide v12, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 335
    sub-long/2addr v12, v8

    .line 336
    add-long/2addr v12, v10

    .line 337
    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 339
    iget v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 341
    iget v11, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 343
    add-int/2addr v10, v11

    .line 344
    iput v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 346
    cmp-long v10, v12, v21

    .line 348
    if-ltz v10, :cond_b

    .line 350
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 352
    add-long/2addr v8, v12

    .line 353
    sub-long v8, v8, v21

    .line 355
    iget-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 357
    add-long/2addr v8, v12

    .line 358
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 361
    move-result-wide v8

    .line 362
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 364
    :cond_b
    iget v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 366
    iget v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 368
    if-lt v8, v9, :cond_c

    .line 370
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 372
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 374
    add-long/2addr v8, v10

    .line 375
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 377
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 380
    move-result-wide v8

    .line 381
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 383
    :cond_c
    if-eqz v6, :cond_d

    .line 385
    iget-wide v8, v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 387
    iget-wide v10, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 389
    sub-long/2addr v8, v10

    .line 390
    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 392
    cmp-long v6, v8, v10

    .line 394
    if-gtz v6, :cond_d

    .line 396
    goto :goto_9

    .line 397
    :cond_d
    add-int/lit8 v6, v18, 0x1

    .line 399
    iget v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 401
    if-lt v6, v8, :cond_e

    .line 403
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 405
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 407
    add-long/2addr v8, v10

    .line 408
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 410
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 413
    move-result-wide v8

    .line 414
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 416
    :cond_e
    move/from16 v18, v6

    .line 418
    :cond_f
    :goto_9
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 420
    cmp-long v6, v19, v8

    .line 422
    if-gez v6, :cond_11

    .line 424
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 426
    iget-wide v12, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 428
    sub-long/2addr v12, v8

    .line 429
    add-long/2addr v12, v10

    .line 430
    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 432
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 434
    iget v10, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 436
    add-int/2addr v6, v10

    .line 437
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 439
    sub-long v8, v8, v19

    .line 441
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 444
    move-result-wide v8

    .line 445
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 447
    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 449
    cmp-long v6, v10, v12

    .line 451
    if-ltz v6, :cond_10

    .line 453
    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 455
    move-wide/from16 p1, v4

    .line 457
    iget-wide v4, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 459
    add-long/2addr v4, v10

    .line 460
    sub-long/2addr v4, v12

    .line 461
    const-wide/32 v10, 0x5265c00

    .line 464
    add-long/2addr v4, v10

    .line 465
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 468
    move-result-wide v4

    .line 469
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 471
    goto :goto_a

    .line 472
    :cond_10
    move-wide/from16 p1, v4

    .line 474
    :goto_a
    move-wide v4, v8

    .line 475
    const-wide/32 v8, 0x5265c00

    .line 478
    goto :goto_c

    .line 479
    :cond_11
    move-wide/from16 p1, v4

    .line 481
    iget-wide v4, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 483
    cmp-long v6, v19, v4

    .line 485
    if-gez v6, :cond_13

    .line 487
    iget-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 489
    sub-long v4, v4, v19

    .line 491
    add-long/2addr v4, v8

    .line 492
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 494
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 496
    iget v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 498
    add-int/2addr v6, v8

    .line 499
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 501
    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 503
    cmp-long v6, v4, v8

    .line 505
    if-ltz v6, :cond_12

    .line 507
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 509
    add-long v4, v19, v4

    .line 511
    sub-long/2addr v4, v8

    .line 512
    const-wide/32 v8, 0x5265c00

    .line 515
    add-long/2addr v4, v8

    .line 516
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 519
    move-result-wide v4

    .line 520
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 522
    goto :goto_b

    .line 523
    :cond_12
    const-wide/32 v8, 0x5265c00

    .line 526
    :goto_b
    const-wide/16 v4, 0x0

    .line 528
    :goto_c
    move-wide v14, v4

    .line 529
    move-object v6, v7

    .line 530
    :goto_d
    add-int/lit8 v2, v2, -0x1

    .line 532
    move-wide/from16 v4, p1

    .line 534
    goto/16 :goto_7

    .line 536
    :cond_13
    move/from16 v0, v18

    .line 538
    add-long v12, v16, v14

    .line 540
    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 542
    iput v0, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 544
    :cond_14
    :goto_e
    return-void
.end method

.method public updateStandbyBucket(ILjava/lang/String;I)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "JobScheduler.Quota"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "Moving pkg "

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {p1, p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, " to bucketIndex "

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 43
    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 46
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 52
    if-eqz v2, :cond_1

    .line 54
    iput p3, v2, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 58
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/util/ArraySet;

    .line 64
    if-eqz v2, :cond_10

    .line 66
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_2

    .line 72
    goto/16 :goto_9

    .line 74
    :cond_2
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 77
    move-result v3

    .line 78
    const/4 v4, 0x1

    .line 79
    sub-int/2addr v3, v4

    .line 80
    :goto_0
    const/4 v5, 0x0

    .line 81
    const/4 v6, 0x5

    .line 82
    if-ltz v3, :cond_8

    .line 84
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    .line 90
    if-eq p3, v6, :cond_3

    .line 92
    iget v8, v7, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 94
    if-ne v8, v6, :cond_4

    .line 96
    :cond_3
    iget v8, v7, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 98
    if-eq p3, v8, :cond_4

    .line 100
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto/16 :goto_a

    .line 107
    :cond_4
    :goto_1
    if-ne p3, v6, :cond_5

    .line 109
    const v6, 0x10000007

    .line 112
    invoke-virtual {v7, v6}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    iget v8, v7, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 118
    if-ne v8, v6, :cond_7

    .line 120
    iget v6, v7, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 122
    const v8, -0x10000008

    .line 125
    and-int/2addr v6, v8

    .line 126
    iput v6, v7, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 128
    if-eqz v6, :cond_6

    .line 130
    iget v8, v7, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 132
    and-int/2addr v8, v6

    .line 133
    if-ne v6, v8, :cond_6

    .line 135
    move v6, v4

    .line 136
    goto :goto_2

    .line 137
    :cond_6
    move v6, v5

    .line 138
    :goto_2
    iput-boolean v6, v7, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 140
    :cond_7
    :goto_3
    iput p3, v7, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 142
    iput-boolean v5, v7, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    .line 144
    add-int/lit8 v3, v3, -0x1

    .line 146
    goto :goto_0

    .line 147
    :cond_8
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 149
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 152
    move-result-object p3

    .line 153
    check-cast p3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 155
    if-eqz p3, :cond_9

    .line 157
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_9

    .line 163
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 166
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 169
    :cond_9
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 171
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 174
    move-result-object p3

    .line 175
    check-cast p3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 177
    if-eqz p3, :cond_a

    .line 179
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_a

    .line 185
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 188
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 191
    :cond_a
    iget-object p3, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 193
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 195
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 201
    move-result-wide v2

    .line 202
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p3, p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 213
    move-result p1

    .line 214
    if-lez p1, :cond_f

    .line 216
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_b

    .line 227
    const-string p0, "JobScheduler"

    .line 229
    const-string/jumbo p1, "onRestrictedBucketChanged called with no jobs"

    .line 232
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    goto :goto_8

    .line 236
    :cond_b
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 238
    monitor-enter p2

    .line 239
    :goto_4
    if-ge v5, p1, :cond_e

    .line 241
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    move-result-object p3

    .line 245
    check-cast p3, Lcom/android/server/job/controllers/JobStatus;

    .line 247
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    .line 249
    check-cast v1, Ljava/util/ArrayList;

    .line 251
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 254
    move-result v1

    .line 255
    sub-int/2addr v1, v4

    .line 256
    :goto_5
    if-ltz v1, :cond_d

    .line 258
    iget v2, p3, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 260
    if-ne v2, v6, :cond_c

    .line 262
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    .line 264
    check-cast v2, Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Lcom/android/server/job/controllers/RestrictingController;

    .line 272
    invoke-virtual {v2, p3}, Lcom/android/server/job/controllers/RestrictingController;->startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 275
    goto :goto_6

    .line 276
    :catchall_1
    move-exception p0

    .line 277
    goto :goto_7

    .line 278
    :cond_c
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    .line 280
    check-cast v2, Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 285
    move-result-object v2

    .line 286
    check-cast v2, Lcom/android/server/job/controllers/RestrictingController;

    .line 288
    invoke-virtual {v2, p3}, Lcom/android/server/job/controllers/RestrictingController;->stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 291
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 293
    goto :goto_5

    .line 294
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 296
    goto :goto_4

    .line 297
    :cond_e
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 298
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 300
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 303
    move-result-object p0

    .line 304
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 307
    goto :goto_8

    .line 308
    :goto_7
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    throw p0

    .line 310
    :cond_f
    :goto_8
    return-void

    .line 311
    :cond_10
    :goto_9
    :try_start_3
    monitor-exit v1

    .line 312
    return-void

    .line 313
    :goto_a
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    throw p0
.end method
