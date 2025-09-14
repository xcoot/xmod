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

    .line 3
    .line 4
    cmp-long v1, p3, v1

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v9, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v9

    .line 15
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v10

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 25
    .line 26
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

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 40
    .line 41
    move v2, p1

    .line 42
    move-object v3, p2

    .line 43
    invoke-virtual {p0, p1, p2, v10, v11}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 48
    .line 49
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

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    move p1, p0

    .line 31
    :goto_0
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ge p1, v1, :cond_1

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    move v2, p0

    .line 46
    :goto_1
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-ge v2, v3, :cond_0

    .line 53
    .line 54
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 55
    .line 56
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/String;

    .line 61
    .line 62
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 63
    .line 64
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 75
    .line 76
    invoke-virtual {v5, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object p0, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    .line 88
    .line 89
    .line 90
    iget-object p0, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    .line 91
    .line 92
    return-object p0
.end method

.method public static -$$Nest$smhashLong(J)I
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    ushr-long v0, p0, v0

    .line 4
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

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "JobScheduler.Quota"

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
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

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 12
    .line 13
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 19
    .line 20
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 26
    .line 27
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 33
    .line 34
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 40
    .line 41
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 47
    .line 48
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 49
    .line 50
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 54
    .line 55
    new-instance v1, Landroid/util/SparseArrayMap;

    .line 56
    .line 57
    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 61
    .line 62
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 63
    .line 64
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 68
    .line 69
    new-instance v1, Landroid/util/ArraySet;

    .line 70
    .line 71
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 75
    .line 76
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 77
    .line 78
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 82
    .line 83
    new-instance v1, Landroid/util/SparseLongArray;

    .line 84
    .line 85
    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 89
    .line 90
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 91
    .line 92
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 96
    .line 97
    new-instance v1, Landroid/util/SparseLongArray;

    .line 98
    .line 99
    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 103
    .line 104
    const-wide/16 v1, 0x0

    .line 105
    .line 106
    const/4 v3, 0x7

    .line 107
    new-array v4, v3, [J

    .line 108
    .line 109
    fill-array-data v4, :array_0

    .line 110
    .line 111
    .line 112
    iput-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    .line 113
    .line 114
    const-wide/32 v4, 0xdbba00

    .line 115
    .line 116
    .line 117
    iput-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 118
    .line 119
    const-wide/16 v4, 0x7530

    .line 120
    .line 121
    iput-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 122
    .line 123
    const-wide/32 v6, 0xdb44d0

    .line 124
    .line 125
    .line 126
    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 127
    .line 128
    const-wide/32 v6, 0xea60

    .line 129
    .line 130
    .line 131
    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 132
    .line 133
    const/16 v8, 0x14

    .line 134
    .line 135
    iput v8, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 136
    .line 137
    iput v8, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 138
    .line 139
    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 140
    .line 141
    new-instance v8, Lcom/android/server/job/controllers/QuotaController$1;

    .line 142
    .line 143
    invoke-direct {v8, v0}, Lcom/android/server/job/controllers/QuotaController$1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 144
    .line 145
    .line 146
    iput-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Lcom/android/server/job/controllers/QuotaController$1;

    .line 147
    .line 148
    const-wide/32 v8, 0x5265c00

    .line 149
    .line 150
    .line 151
    const-wide/32 v10, 0x1b77400

    .line 152
    .line 153
    .line 154
    new-array v12, v3, [J

    .line 155
    .line 156
    fill-array-data v12, :array_1

    .line 157
    .line 158
    .line 159
    iput-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 160
    .line 161
    new-array v13, v3, [I

    .line 162
    .line 163
    fill-array-data v13, :array_2

    .line 164
    .line 165
    .line 166
    iput-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 167
    .line 168
    const/4 v14, 0x1

    .line 169
    new-array v15, v3, [I

    .line 170
    .line 171
    fill-array-data v15, :array_3

    .line 172
    .line 173
    .line 174
    iput-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 175
    .line 176
    const-wide/16 v12, 0x1388

    .line 177
    .line 178
    iput-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 179
    .line 180
    const-wide/32 v12, 0x1b7740

    .line 181
    .line 182
    .line 183
    new-array v3, v3, [J

    .line 184
    .line 185
    fill-array-data v3, :array_4

    .line 186
    .line 187
    .line 188
    iput-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    .line 189
    .line 190
    iput-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    .line 191
    .line 192
    const-wide/32 v12, 0xdbba0

    .line 193
    .line 194
    .line 195
    iput-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    .line 196
    .line 197
    iput-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 198
    .line 199
    iput-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 200
    .line 201
    const-wide/16 v3, 0x2710

    .line 202
    .line 203
    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 204
    .line 205
    const-wide/16 v3, 0x3a98

    .line 206
    .line 207
    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    .line 208
    .line 209
    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    .line 210
    .line 211
    const-wide/32 v1, 0x2bf20

    .line 212
    .line 213
    .line 214
    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    .line 215
    .line 216
    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 217
    .line 218
    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 219
    .line 220
    const/4 v1, 0x2

    .line 221
    iput v1, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    .line 222
    .line 223
    iput v14, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    .line 224
    .line 225
    iput-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 226
    .line 227
    const/16 v2, 0x8

    .line 228
    .line 229
    iput v2, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 230
    .line 231
    new-instance v2, Landroid/util/SparseSetArray;

    .line 232
    .line 233
    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    .line 234
    .line 235
    .line 236
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 237
    .line 238
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 239
    .line 240
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 241
    .line 242
    .line 243
    const-wide v3, 0x7fffffffffffffffL

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    iput-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 249
    .line 250
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 251
    .line 252
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    .line 253
    .line 254
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 255
    .line 256
    .line 257
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    .line 258
    .line 259
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 260
    .line 261
    invoke-direct {v2, v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 262
    .line 263
    .line 264
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 265
    .line 266
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    .line 267
    .line 268
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 269
    .line 270
    .line 271
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    .line 272
    .line 273
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    .line 274
    .line 275
    const/4 v3, 0x0

    .line 276
    invoke-direct {v2, v3, v0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldEventsFunctor:Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    .line 280
    .line 281
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 282
    .line 283
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-direct {v2, v0, v3}, Lcom/android/server/job/controllers/QuotaController$QcHandler;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V

    .line 292
    .line 293
    .line 294
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 295
    .line 296
    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 297
    .line 298
    const-class v3, Landroid/app/AlarmManager;

    .line 299
    .line 300
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    check-cast v2, Landroid/app/AlarmManager;

    .line 305
    .line 306
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 307
    .line 308
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 309
    .line 310
    invoke-direct {v2, v0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 311
    .line 312
    .line 313
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 314
    .line 315
    move-object/from16 v2, p2

    .line 316
    .line 317
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 318
    .line 319
    move-object/from16 v2, p3

    .line 320
    .line 321
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 322
    .line 323
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 324
    .line 325
    iget-object v3, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 326
    .line 327
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;)V

    .line 336
    .line 337
    .line 338
    iput-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 339
    .line 340
    const-class v2, Lcom/android/server/usage/AppStandbyInternal;

    .line 341
    .line 342
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    check-cast v2, Lcom/android/server/usage/AppStandbyInternal;

    .line 347
    .line 348
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    .line 349
    .line 350
    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 351
    .line 352
    .line 353
    invoke-interface {v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 354
    .line 355
    .line 356
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 357
    .line 358
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 363
    .line 364
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;

    .line 365
    .line 366
    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 370
    .line 371
    .line 372
    const-class v2, Lcom/android/server/PowerAllowlistInternal;

    .line 373
    .line 374
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    check-cast v2, Lcom/android/server/PowerAllowlistInternal;

    .line 379
    .line 380
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;

    .line 381
    .line 382
    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 383
    .line 384
    .line 385
    invoke-interface {v2, v3}, Lcom/android/server/PowerAllowlistInternal;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    .line 386
    .line 387
    .line 388
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    .line 393
    .line 394
    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 395
    .line 396
    .line 397
    const/4 v4, 0x4

    .line 398
    const/4 v5, 0x0

    .line 399
    invoke-interface {v2, v3, v14, v4, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    .line 407
    .line 408
    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    .line 409
    .line 410
    .line 411
    invoke-interface {v2, v3, v14, v1, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .line 413
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

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
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

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
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

    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
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

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
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

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x4c3000

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    :goto_0
    if-ltz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 31
    .line 32
    const-string v4, "android.permission.INSTALL_PACKAGES"

    .line 33
    .line 34
    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ltz v3, :cond_0

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 45
    .line 46
    const/4 v6, -0x1

    .line 47
    invoke-virtual {v3, v4, v6, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_0

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 54
    .line 55
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 56
    .line 57
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v3, v2, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 67
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

    .line 3
    .line 4
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 14
    .line 15
    sub-long/2addr v2, v4

    .line 16
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz p6, :cond_1

    .line 22
    .line 23
    add-int/lit8 v6, v4, -0x1

    .line 24
    .line 25
    move v9, v5

    .line 26
    move v8, v6

    .line 27
    move-wide/from16 v6, p4

    .line 28
    .line 29
    :goto_0
    if-ltz v8, :cond_2

    .line 30
    .line 31
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 36
    .line 37
    instance-of v11, v10, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    .line 38
    .line 39
    if-eqz v11, :cond_0

    .line 40
    .line 41
    check-cast v10, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    .line 42
    .line 43
    iget-wide v10, v10, Lcom/android/server/job/controllers/QuotaController$QuotaBump;->eventTimeElapsed:J

    .line 44
    .line 45
    cmp-long v10, v10, v2

    .line 46
    .line 47
    if-ltz v10, :cond_2

    .line 48
    .line 49
    add-int/lit8 v10, v9, 0x1

    .line 50
    .line 51
    iget v11, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 52
    .line 53
    if-ge v9, v11, :cond_2

    .line 54
    .line 55
    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 56
    .line 57
    add-long/2addr v6, v11

    .line 58
    move v9, v10

    .line 59
    :cond_0
    add-int/lit8 v8, v8, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-wide/from16 v6, p4

    .line 63
    .line 64
    :cond_2
    const-wide/16 v2, 0x0

    .line 65
    .line 66
    move-wide/from16 v8, p2

    .line 67
    .line 68
    :goto_1
    if-ge v5, v4, :cond_7

    .line 69
    .line 70
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 75
    .line 76
    instance-of v11, v10, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    .line 77
    .line 78
    if-eqz v11, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 82
    .line 83
    iget-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 84
    .line 85
    cmp-long v13, v11, p2

    .line 86
    .line 87
    if-gez v13, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iget-wide v13, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 91
    .line 92
    cmp-long v10, v13, p2

    .line 93
    .line 94
    if-gtz v10, :cond_5

    .line 95
    .line 96
    sub-long v8, v11, p2

    .line 97
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

    .line 103
    .line 104
    cmp-long v10, v8, v6

    .line 105
    .line 106
    if-lez v10, :cond_6

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    sub-long v13, v11, v13

    .line 110
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

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    :goto_3
    add-long/2addr v2, v6

    .line 120
    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 121
    .line 122
    cmp-long v0, v2, v0

    .line 123
    .line 124
    if-lez v0, :cond_8

    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v1, "Calculated quota consumed time too high: "

    .line 129
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const-string v1, "JobScheduler.Quota"

    .line 141
    .line 142
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    :cond_8
    return-wide v2
.end method

.method public final clearAppStatsLocked(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 13
    .line 14
    const-string v1, "JobScheduler.Quota"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const-string/jumbo v2, "clearAppStats called before Timer turned off."

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    const-string/jumbo v2, "clearAppStats called before EJ Timer turned off."

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 69
    .line 70
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 74
    .line 75
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 79
    .line 80
    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 88
    .line 89
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 93
    .line 94
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 98
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public deleteObsoleteSessionsLocked()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->mNowElapsed:J

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldEventsFunctor:Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    move v2, v1

    .line 26
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v2, v3, :cond_3

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    move v4, v1

    .line 41
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 42
    .line 43
    invoke-virtual {v5, v3}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-ge v4, v5, :cond_2

    .line 48
    .line 49
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 50
    .line 51
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, v3, v5}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 62
    .line 63
    invoke-virtual {v7, v3, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ljava/util/List;

    .line 68
    .line 69
    if-nez v5, :cond_0

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-lez v7, :cond_1

    .line 77
    .line 78
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 83
    .line 84
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->getEndTimeElapsed()J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->mNowElapsed:J

    .line 89
    .line 90
    const-wide/32 v12, 0x5265c00

    .line 91
    .line 92
    .line 93
    sub-long/2addr v10, v12

    .line 94
    cmp-long v8, v8, v10

    .line 95
    .line 96
    if-gtz v8, :cond_1

    .line 97
    .line 98
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 99
    .line 100
    iget-wide v10, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 101
    .line 102
    sub-long/2addr v8, v10

    .line 103
    neg-long v7, v8

    .line 104
    invoke-virtual {v6, v7, v8}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 105
    .line 106
    .line 107
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 115
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

    .line 2
    .line 3
    return-object p0
.end method

.method public getBucketMaxJobCounts()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public getBucketMaxSessionCounts()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public getBucketWindowSizes()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 2
    .line 3
    return-object p0
.end method

.method public getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 12
    .line 13
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-static {p1, p2, v1, v2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    iput-wide v2, v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 32
    .line 33
    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object v0
.end method

.method public getEJGracePeriodTempAllowlistMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEJGracePeriodTopAppMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEJLimitMsLocked(IILjava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    .line 2
    .line 3
    aget-wide v0, v0, p2

    .line 4
    .line 5
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 6
    .line 7
    invoke-virtual {p2, p1, p3}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-wide p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    .line 14
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

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEJLimitsMs()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    .line 2
    .line 3
    return-object p0
.end method

.method public getEJRewardInteractionMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEJRewardNotificationSeenMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEJRewardTopAppMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEJTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    return-object p0
.end method

.method public getEJTopAppTimeChunkSizeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEjLimitAdditionInstallerMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEjLimitAdditionSpecialMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    .line 2
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

    .line 2
    .line 3
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInQuotaBufferMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxExecutionTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxJobCountPerRateLimitingWindow()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 10
    .line 11
    iget v5, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 12
    .line 13
    iget-object v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 14
    .line 15
    iget v7, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 16
    .line 17
    if-nez v0, :cond_6

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-wide p0, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 26
    .line 27
    return-wide p0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, v5}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
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

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/16 v5, 0x190

    .line 59
    .line 60
    if-ge v1, v5, :cond_4

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    and-int/lit8 p1, p1, 0x2

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move v2, v3

    .line 74
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 75
    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    iget-wide p0, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 79
    .line 80
    return-wide p0

    .line 81
    :cond_5
    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide p0

    .line 85
    return-wide p0

    .line 86
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    iget-wide p0, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 93
    .line 94
    return-wide p0

    .line 95
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const/4 v1, 0x6

    .line 100
    const-wide/16 v8, 0x2

    .line 101
    .line 102
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    .line 103
    .line 104
    if-ne v0, v1, :cond_8

    .line 105
    .line 106
    aget-wide v0, v4, v1

    .line 107
    .line 108
    div-long/2addr v0, v8

    .line 109
    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    .line 110
    .line 111
    .line 112
    move-result-wide p0

    .line 113
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 114
    .line 115
    .line 116
    move-result-wide p0

    .line 117
    return-wide p0

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 119
    .line 120
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_b

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_9

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_a

    .line 140
    .line 141
    aget-wide v0, v4, v2

    .line 142
    .line 143
    div-long/2addr v0, v8

    .line 144
    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    .line 145
    .line 146
    .line 147
    move-result-wide p0

    .line 148
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 149
    .line 150
    .line 151
    move-result-wide p0

    .line 152
    return-wide p0

    .line 153
    :cond_a
    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    .line 154
    .line 155
    .line 156
    move-result-wide p0

    .line 157
    return-wide p0

    .line 158
    :cond_b
    :goto_3
    aget-wide v0, v4, v3

    .line 159
    .line 160
    div-long/2addr v0, v8

    .line 161
    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    .line 162
    .line 163
    .line 164
    move-result-wide p0

    .line 165
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 166
    .line 167
    .line 168
    move-result-wide p0

    .line 169
    return-wide p0
.end method

.method public getMaxSessionCountPerRateLimitingWindow()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 2
    .line 3
    return p0
.end method

.method public getMinQuotaCheckDelayMs()J
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 7
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

    .line 2
    .line 3
    return-object p0
.end method

.method public getQuotaBumpAdditionDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getQuotaBumpAdditionJobCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getQuotaBumpAdditionSessionCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getQuotaBumpLimit()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 2
    .line 3
    return p0
.end method

.method public getQuotaBumpWindowSizeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRateLimitingWindowMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    .line 12
    .line 13
    const/4 v5, 0x4

    .line 14
    if-ne v4, v5, :cond_0

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    return-wide v0

    .line 19
    :cond_0
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(IILjava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 24
    .line 25
    sub-long/2addr v4, v6

    .line 26
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 27
    .line 28
    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    check-cast v6, Ljava/util/List;

    .line 33
    .line 34
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 35
    .line 36
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 44
    .line 45
    sub-long v9, v7, v9

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    if-lez v12, :cond_2

    .line 55
    .line 56
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    check-cast v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 61
    .line 62
    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 63
    .line 64
    cmp-long v15, v13, v9

    .line 65
    .line 66
    iget-wide v11, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 67
    .line 68
    if-gez v15, :cond_1

    .line 69
    .line 70
    sub-long/2addr v13, v11

    .line 71
    add-long/2addr v4, v13

    .line 72
    neg-long v11, v13

    .line 73
    invoke-virtual {v3, v11, v12}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 74
    .line 75
    .line 76
    const/4 v13, 0x0

    .line 77
    invoke-interface {v6, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move v11, v13

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 v13, 0x0

    .line 83
    cmp-long v3, v11, v9

    .line 84
    .line 85
    if-gez v3, :cond_3

    .line 86
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

    .line 92
    .line 93
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    .line 98
    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    iget-object v6, v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 102
    .line 103
    iget-object v6, v6, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 104
    .line 105
    monitor-enter v6

    .line 106
    :try_start_0
    iget-object v9, v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 107
    .line 108
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-lez v9, :cond_4

    .line 113
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

    .line 119
    .line 120
    iget-object v6, v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 121
    .line 122
    iget-wide v9, v6, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 123
    .line 124
    iget-wide v11, v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    .line 125
    .line 126
    sub-long/2addr v7, v11

    .line 127
    iget-wide v11, v6, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 128
    .line 129
    div-long v13, v7, v11

    .line 130
    .line 131
    long-to-int v3, v13

    .line 132
    rem-long/2addr v7, v11

    .line 133
    const-wide/16 v11, 0x3e8

    .line 134
    .line 135
    cmp-long v6, v7, v11

    .line 136
    .line 137
    if-ltz v6, :cond_5

    .line 138
    .line 139
    add-int/lit8 v3, v3, 0x1

    .line 140
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

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 155
    .line 156
    if-nez v0, :cond_7

    .line 157
    .line 158
    return-wide v4

    .line 159
    :cond_7
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 165
    .line 166
    .line 167
    move-result-wide v1

    .line 168
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    .line 169
    .line 170
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

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 12
    .line 13
    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    check-cast v5, Ljava/util/List;

    .line 18
    .line 19
    if-eqz v5, :cond_7

    .line 20
    .line 21
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-nez v6, :cond_0

    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_0
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    iget v8, v8, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    .line 43
    .line 44
    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(IILjava/lang/String;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 49
    .line 50
    sub-long/2addr v6, v8

    .line 51
    const-wide/16 v8, 0x0

    .line 52
    .line 53
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 54
    .line 55
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

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    if-ge v0, v14, :cond_6

    .line 65
    .line 66
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v14

    .line 70
    check-cast v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 71
    .line 72
    iget-wide v8, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 73
    .line 74
    cmp-long v15, v8, v6

    .line 75
    .line 76
    move-wide/from16 v16, v1

    .line 77
    .line 78
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 79
    .line 80
    if-gez v15, :cond_1

    .line 81
    .line 82
    sub-long/2addr v8, v1

    .line 83
    add-long/2addr v8, v3

    .line 84
    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 88
    .line 89
    move-wide v3, v8

    .line 90
    :goto_1
    const-wide/16 v1, 0x0

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_1
    cmp-long v15, v1, v6

    .line 94
    .line 95
    if-gez v15, :cond_2

    .line 96
    .line 97
    sub-long v12, v8, v6

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    if-nez v0, :cond_3

    .line 101
    .line 102
    move-wide v8, v6

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    add-int/lit8 v8, v0, -0x1

    .line 105
    .line 106
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 111
    .line 112
    invoke-interface {v8}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    .line 113
    .line 114
    .line 115
    move-result-wide v8

    .line 116
    :goto_2
    sub-long v8, v1, v8

    .line 117
    .line 118
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v18

    .line 122
    add-long v10, v10, v18

    .line 123
    .line 124
    cmp-long v8, v18, v8

    .line 125
    .line 126
    if-nez v8, :cond_4

    .line 127
    .line 128
    iget-wide v8, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 129
    .line 130
    sub-long/2addr v8, v1

    .line 131
    add-long/2addr v12, v8

    .line 132
    :cond_4
    sub-long v3, v3, v18

    .line 133
    .line 134
    const-wide/16 v1, 0x0

    .line 135
    .line 136
    cmp-long v8, v3, v1

    .line 137
    .line 138
    if-gtz v8, :cond_5

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 142
    .line 143
    move-wide v8, v1

    .line 144
    move-wide/from16 v1, v16

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_6
    move-wide/from16 v16, v1

    .line 148
    .line 149
    :goto_4
    add-long/2addr v10, v12

    .line 150
    add-long/2addr v10, v3

    .line 151
    move-wide/from16 v0, v16

    .line 152
    .line 153
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 154
    .line 155
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

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

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
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x4

    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    return-wide v0

    .line 25
    :cond_0
    iget-object v5, v7, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 26
    .line 27
    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    move-object v8, v5

    .line 32
    check-cast v8, Ljava/util/List;

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, v7, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    .line 39
    .line 40
    if-eqz v8, :cond_3

    .line 41
    .line 42
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-wide v5, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 50
    .line 51
    sub-long v9, v2, v5

    .line 52
    .line 53
    const-wide/32 v11, 0x5265c00

    .line 54
    .line 55
    .line 56
    sub-long/2addr v2, v11

    .line 57
    aget-wide v11, v1, v4

    .line 58
    .line 59
    iget-wide v13, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 60
    .line 61
    sub-long v13, v11, v13

    .line 62
    .line 63
    move-wide/from16 p1, v13

    .line 64
    .line 65
    iget-wide v13, v7, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 66
    .line 67
    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 68
    .line 69
    sub-long/2addr v13, v0

    .line 70
    cmp-long v0, v5, v11

    .line 71
    .line 72
    if-nez v0, :cond_2

    .line 73
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

    .line 79
    .line 80
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

    .line 88
    .line 89
    .line 90
    move-result-wide v11

    .line 91
    const/4 v6, 0x1

    .line 92
    move-wide v2, v9

    .line 93
    move-wide/from16 v4, p1

    .line 94
    .line 95
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    return-wide v0

    .line 104
    :cond_3
    :goto_0
    iget-wide v2, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 105
    .line 106
    aget-wide v0, v1, v4

    .line 107
    .line 108
    cmp-long v2, v2, v0

    .line 109
    .line 110
    if-nez v2, :cond_4

    .line 111
    .line 112
    iget-wide v0, v7, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 113
    .line 114
    :cond_4
    return-wide v0
.end method

.method public getTimingSessionCoalescingDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
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

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->get(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    cmp-long p0, p3, v2

    .line 24
    .line 25
    if-gez p0, :cond_2

    .line 26
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
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 11
    .line 12
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 21
    .line 22
    array-length v2, v2

    .line 23
    new-array v2, v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 26
    .line 27
    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
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

    .line 34
    .line 35
    aget-object v3, v2, p2

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 42
    .line 43
    .line 44
    aput-object v3, v2, p2

    .line 45
    .line 46
    :cond_1
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 47
    .line 48
    cmp-long v4, v4, v0

    .line 49
    .line 50
    if-gtz v4, :cond_2

    .line 51
    .line 52
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 53
    .line 54
    add-long/2addr v4, v0

    .line 55
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 56
    .line 57
    iput p1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 58
    .line 59
    :cond_2
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 60
    .line 61
    add-int/2addr v4, p3

    .line 62
    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 63
    .line 64
    invoke-static {}, Lcom/android/server/job/Flags;->countQuotaFix()Z

    .line 65
    .line 66
    .line 67
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 68
    .line 69
    add-int/2addr v4, p3

    .line 70
    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 71
    .line 72
    add-int/lit8 p2, p2, 0x1

    .line 73
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

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x5

    .line 11
    if-eq p1, p0, :cond_0

    .line 12
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 15
    .line 16
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
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 11
    .line 12
    cmp-long v0, v2, v0

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    iget v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 19
    .line 20
    if-ge v0, p0, :cond_1

    .line 21
    .line 22
    :cond_0
    iget p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 23
    .line 24
    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 25
    .line 26
    if-ge p0, p1, :cond_1

    .line 27
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
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 11
    .line 12
    cmp-long v0, v2, v0

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    iget v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 19
    .line 20
    if-ge v0, p0, :cond_1

    .line 21
    .line 22
    :cond_0
    iget p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 23
    .line 24
    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 25
    .line 26
    if-ge p0, p1, :cond_1

    .line 27
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_5

    .line 20
    .line 21
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->hasTempAllowlistExemptionLocked(IIJ)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    return v1

    .line 50
    :cond_2
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 51
    .line 52
    invoke-virtual {v4, v0}, Landroid/util/SparseLongArray;->get(I)J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 57
    .line 58
    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    cmp-long v0, v2, v4

    .line 65
    .line 66
    if-gez v0, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 70
    .line 71
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    .line 74
    .line 75
    .line 76
    move-result-wide p0

    .line 77
    const-wide/16 v2, 0x0

    .line 78
    .line 79
    cmp-long p0, v2, p0

    .line 80
    .line 81
    if-gez p0, :cond_4

    .line 82
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
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 11
    .line 12
    cmp-long v2, v2, v0

    .line 13
    .line 14
    const-string v3, "JobScheduler.Quota"

    .line 15
    .line 16
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 17
    .line 18
    if-lez v2, :cond_1

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "Not scheduling cleanup since there\'s already one at "

    .line 25
    .line 26
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 30
    .line 31
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, " (in "

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 40
    .line 41
    sub-long/2addr v4, v0

    .line 42
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string/jumbo p0, "ms)"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 60
    .line 61
    const-wide v1, 0x7fffffffffffffffL

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 67
    .line 68
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 69
    .line 70
    invoke-virtual {v5, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 71
    .line 72
    .line 73
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 74
    .line 75
    invoke-virtual {v5, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 76
    .line 77
    .line 78
    iget-wide v5, v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 79
    .line 80
    cmp-long v0, v5, v1

    .line 81
    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    const-string p0, "Didn\'t find a time to schedule cleanup"

    .line 87
    .line 88
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void

    .line 92
    :cond_3
    const-wide/32 v0, 0x5265c00

    .line 93
    .line 94
    .line 95
    add-long/2addr v5, v0

    .line 96
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 97
    .line 98
    sub-long v7, v5, v0

    .line 99
    .line 100
    const-wide/32 v9, 0x927c0

    .line 101
    .line 102
    .line 103
    cmp-long v2, v7, v9

    .line 104
    .line 105
    if-gtz v2, :cond_4

    .line 106
    .line 107
    add-long v5, v0, v9

    .line 108
    .line 109
    :cond_4
    move-wide v9, v5

    .line 110
    iput-wide v9, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 111
    .line 112
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 113
    .line 114
    const/4 v8, 0x3

    .line 115
    const-string v11, "*job.cleanup*"

    .line 116
    .line 117
    iget-object v12, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Lcom/android/server/job/controllers/QuotaController$1;

    .line 118
    .line 119
    iget-object v13, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 120
    .line 121
    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 122
    .line 123
    .line 124
    if-eqz v4, :cond_5

    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v1, "Scheduled next cleanup for "

    .line 129
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 134
    .line 135
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_5
    return-void
.end method

.method public maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    if-ne v3, v4, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 14
    .line 15
    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Landroid/util/ArraySet;

    .line 20
    .line 21
    const-string/jumbo v6, "maybeScheduleStartAlarmLocked called for "

    .line 22
    .line 23
    .line 24
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 25
    .line 26
    const-string v8, "JobScheduler.Quota"

    .line 27
    .line 28
    if-eqz v5, :cond_12

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    goto/16 :goto_7

    .line 37
    .line 38
    :cond_1
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v0, v5}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    invoke-virtual {v0, v5}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v11

    .line 54
    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 55
    .line 56
    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    .line 57
    .line 58
    aget-wide v15, v15, v3

    .line 59
    .line 60
    cmp-long v13, v13, v15

    .line 61
    .line 62
    if-gez v13, :cond_2

    .line 63
    .line 64
    iget-wide v14, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 65
    .line 66
    move-object/from16 v18, v5

    .line 67
    .line 68
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 69
    .line 70
    cmp-long v4, v14, v4

    .line 71
    .line 72
    if-gez v4, :cond_3

    .line 73
    .line 74
    if-eqz v9, :cond_3

    .line 75
    .line 76
    if-eqz v10, :cond_3

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move-object/from16 v18, v5

    .line 81
    .line 82
    :cond_3
    const/4 v4, 0x0

    .line 83
    :goto_0
    const-wide/16 v14, 0x0

    .line 84
    .line 85
    if-eqz v4, :cond_6

    .line 86
    .line 87
    cmp-long v5, v11, v14

    .line 88
    .line 89
    if-lez v5, :cond_6

    .line 90
    .line 91
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 92
    .line 93
    if-eqz v4, :cond_5

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v5, " even though it already has "

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const/4 v5, 0x4

    .line 113
    if-ne v3, v5, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iget-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 121
    .line 122
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 123
    .line 124
    sub-long/2addr v5, v9

    .line 125
    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 126
    .line 127
    iget-wide v11, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 128
    .line 129
    sub-long/2addr v9, v11

    .line 130
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 131
    .line 132
    .line 133
    move-result-wide v14

    .line 134
    :goto_1
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string/jumbo v3, "ms in its quota."

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    :cond_5
    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v7, v3}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 158
    .line 159
    const/4 v3, 0x2

    .line 160
    const/4 v4, 0x0

    .line 161
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_6
    move-object/from16 v13, v18

    .line 170
    .line 171
    if-nez v4, :cond_9

    .line 172
    .line 173
    iget-wide v5, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 174
    .line 175
    if-nez v9, :cond_7

    .line 176
    .line 177
    iget v9, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 178
    .line 179
    iget v14, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 180
    .line 181
    if-ge v9, v14, :cond_7

    .line 182
    .line 183
    iget-wide v14, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 184
    .line 185
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 186
    .line 187
    .line 188
    move-result-wide v5

    .line 189
    :cond_7
    if-nez v10, :cond_8

    .line 190
    .line 191
    iget v9, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 192
    .line 193
    iget v10, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 194
    .line 195
    if-ge v9, v10, :cond_8

    .line 196
    .line 197
    iget-wide v9, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 198
    .line 199
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 200
    .line 201
    .line 202
    move-result-wide v5

    .line 203
    :cond_8
    const-wide/16 v9, 0x0

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_9
    move-wide v9, v14

    .line 207
    const-wide v5, 0x7fffffffffffffffL

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    :goto_2
    cmp-long v11, v11, v9

    .line 213
    .line 214
    if-gtz v11, :cond_10

    .line 215
    .line 216
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(IILjava/lang/String;)J

    .line 217
    .line 218
    .line 219
    move-result-wide v11

    .line 220
    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 221
    .line 222
    sub-long/2addr v11, v14

    .line 223
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 224
    .line 225
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 230
    .line 231
    if-eqz v3, :cond_b

    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 234
    .line 235
    .line 236
    move-result v14

    .line 237
    if-eqz v14, :cond_b

    .line 238
    .line 239
    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 240
    .line 241
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 245
    .line 246
    .line 247
    move-result-wide v9

    .line 248
    invoke-virtual {v3, v9, v10}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    .line 249
    .line 250
    .line 251
    move-result-wide v14

    .line 252
    cmp-long v19, v14, v11

    .line 253
    .line 254
    if-ltz v19, :cond_a

    .line 255
    .line 256
    sub-long/2addr v9, v11

    .line 257
    move-wide/from16 v19, v14

    .line 258
    .line 259
    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 260
    .line 261
    add-long/2addr v9, v14

    .line 262
    move-wide/from16 v17, v9

    .line 263
    .line 264
    move-wide/from16 v14, v19

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_a
    move-wide/from16 v19, v14

    .line 268
    .line 269
    :goto_3
    const-wide v17, 0x7fffffffffffffffL

    .line 270
    .line 271
    .line 272
    .line 273
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

    .line 278
    .line 279
    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    check-cast v9, Ljava/util/List;

    .line 284
    .line 285
    if-eqz v9, :cond_d

    .line 286
    .line 287
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    const/4 v4, 0x1

    .line 292
    sub-int/2addr v3, v4

    .line 293
    :goto_5
    if-ltz v3, :cond_f

    .line 294
    .line 295
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    check-cast v4, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 300
    .line 301
    iget-wide v1, v4, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 302
    .line 303
    move-object/from16 p3, v9

    .line 304
    .line 305
    iget-wide v9, v4, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 306
    .line 307
    sub-long/2addr v1, v9

    .line 308
    add-long/2addr v14, v1

    .line 309
    cmp-long v1, v14, v11

    .line 310
    .line 311
    if-ltz v1, :cond_c

    .line 312
    .line 313
    sub-long/2addr v14, v11

    .line 314
    add-long/2addr v14, v9

    .line 315
    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 316
    .line 317
    add-long/2addr v14, v0

    .line 318
    goto :goto_6

    .line 319
    :cond_c
    add-int/lit8 v3, v3, -0x1

    .line 320
    .line 321
    move/from16 v1, p1

    .line 322
    .line 323
    move-object/from16 v2, p2

    .line 324
    .line 325
    move-object/from16 v9, p3

    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_d
    if-eqz v3, :cond_e

    .line 329
    .line 330
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-nez v0, :cond_f

    .line 335
    .line 336
    :cond_e
    if-eqz v4, :cond_f

    .line 337
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v1, " has 0 EJ quota without running anything"

    .line 351
    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :cond_f
    move-wide/from16 v14, v17

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_10
    const-wide v14, 0x7fffffffffffffffL

    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :goto_6
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 372
    .line 373
    .line 374
    move-result-wide v0

    .line 375
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 376
    .line 377
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 381
    .line 382
    .line 383
    move-result-wide v3

    .line 384
    cmp-long v3, v0, v3

    .line 385
    .line 386
    if-gtz v3, :cond_11

    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 392
    .line 393
    .line 394
    move-result-wide v2

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string v5, "In quota time is "

    .line 398
    .line 399
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    sub-long v5, v2, v0

    .line 403
    .line 404
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string/jumbo v5, "ms old. Now="

    .line 408
    .line 409
    .line 410
    const-string v6, ", inQuotaTime="

    .line 411
    .line 412
    invoke-static {v4, v5, v2, v3, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string v0, ": "

    .line 419
    .line 420
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    const-wide/32 v0, 0x493e0

    .line 434
    .line 435
    .line 436
    add-long/2addr v0, v2

    .line 437
    :cond_11
    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    return-void

    .line 445
    :cond_12
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v1, " that has no jobs"

    .line 458
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .line 468
    .line 469
    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v7, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    return-void
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 11

    .line 1
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 13
    .line 14
    iget-object v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p2, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/util/ArraySet;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 30
    .line 31
    invoke-virtual {v1, p2, v6, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    const/16 v0, 0x40

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x1

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
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

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, p1, v10}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 77
    .line 78
    .line 79
    xor-int/lit8 v8, v10, 0x1

    .line 80
    .line 81
    :cond_2
    if-eqz v7, :cond_3

    .line 82
    .line 83
    if-eqz v8, :cond_4

    .line 84
    .line 85
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-virtual {p0, p2, v6, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    :cond_4
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 1
    const/16 p2, 0x40

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 13
    .line 14
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 15
    .line 16
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/util/ArraySet;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final maybeUpdateAllConstraintsLocked()V
    .locals 8

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 18
    .line 19
    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-ge v4, v5, :cond_1

    .line 24
    .line 25
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 26
    .line 27
    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    move v6, v3

    .line 32
    :goto_1
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 33
    .line 34
    invoke-virtual {v7, v5}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-ge v6, v7, :cond_0

    .line 39
    .line 40
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 41
    .line 42
    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v5, v7, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-lez v1, :cond_2

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method public final maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 8
    .line 9
    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move-object v9, v0

    .line 14
    check-cast v9, Landroid/util/ArraySet;

    .line 15
    .line 16
    new-instance v10, Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 19
    .line 20
    .line 21
    if-eqz v9, :cond_b

    .line 22
    .line 23
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_0
    const/4 v11, 0x0

    .line 32
    invoke-virtual {v9, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 37
    .line 38
    iget v12, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 39
    .line 40
    invoke-virtual {v6, v7, v8, v12}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 45
    .line 46
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

    .line 52
    .line 53
    :goto_0
    if-ltz v15, :cond_8

    .line 54
    .line 55
    invoke-virtual {v9, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    move-object v5, v0

    .line 60
    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 61
    .line 62
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {v6, v5}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
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

    .line 78
    .line 79
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    const/high16 v0, 0x1000000

    .line 86
    .line 87
    move-wide/from16 v2, p3

    .line 88
    .line 89
    invoke-virtual {v5, v0, v2, v3, v14}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iput-boolean v14, v5, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 96
    .line 97
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_2
    move/from16 v17, v4

    .line 101
    .line 102
    move-object v11, v5

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    move-wide/from16 v2, p3

    .line 105
    .line 106
    const/4 v0, 0x6

    .line 107
    if-eq v12, v0, :cond_4

    .line 108
    .line 109
    if-eqz v12, :cond_4

    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-ne v12, v0, :cond_4

    .line 116
    .line 117
    invoke-static {}, Lcom/android/server/job/Flags;->countQuotaFix()Z

    .line 118
    .line 119
    .line 120
    iget-object v0, v6, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 121
    .line 122
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_4

    .line 127
    .line 128
    move-object/from16 v0, p0

    .line 129
    .line 130
    move-object v1, v5

    .line 131
    move-wide/from16 v2, p3

    .line 132
    .line 133
    move/from16 v17, v4

    .line 134
    .line 135
    move v4, v13

    .line 136
    move-object v11, v5

    .line 137
    move/from16 v5, v17

    .line 138
    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    move/from16 v17, v4

    .line 150
    .line 151
    move-object v11, v5

    .line 152
    invoke-virtual {v6, v11}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    move-object/from16 v0, p0

    .line 157
    .line 158
    move-object v1, v11

    .line 159
    move-wide/from16 v2, p3

    .line 160
    .line 161
    move/from16 v5, v17

    .line 162
    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_5

    .line 168
    .line 169
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_5
    :goto_2
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_7

    .line 177
    .line 178
    move/from16 v0, v17

    .line 179
    .line 180
    invoke-virtual {v6, v11, v0}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_6

    .line 185
    .line 186
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_6
    xor-int/lit8 v0, v0, 0x1

    .line 190
    .line 191
    or-int v16, v16, v0

    .line 192
    .line 193
    :cond_7
    add-int/lit8 v15, v15, -0x1

    .line 194
    .line 195
    const/4 v11, 0x0

    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_8
    if-eqz v13, :cond_a

    .line 199
    .line 200
    if-eqz v16, :cond_9

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_9
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 204
    .line 205
    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_a
    :goto_3
    invoke-virtual {v6, v7, v8, v12}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    :cond_b
    :goto_4
    return-object v10
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p0, "JobScheduler.Quota"

    .line 4
    .line 5
    const-string p1, "Told app removed but given null package name."

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0, p2}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final onBatteryStateChangedLocked()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

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
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    .line 17
    .line 18
    iput-wide v0, v4, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    .line 19
    .line 20
    iput-boolean v3, v4, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mIsCharging:Z

    .line 21
    .line 22
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v1, "handleNewChargingStateLocked: "

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "JobScheduler.Quota"

    .line 46
    .line 47
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final onConstantsUpdatedLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/controllers/QuotaController;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onSystemServicesReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    .line 6
    .line 7
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

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 13

    .line 1
    const-string v0, "JobScheduler.Quota"

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "Prepping for "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    iget v5, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 31
    .line 32
    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, " is top started job"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 87
    .line 88
    :goto_0
    iget v9, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 89
    .line 90
    iget-object v10, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v2, v9, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 97
    .line 98
    const/4 v11, 0x1

    .line 99
    if-nez v3, :cond_5

    .line 100
    .line 101
    new-instance v12, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    xor-int/lit8 v8, v3, 0x1

    .line 108
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

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v9, v10, v12}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    const-string v2, "Timer ignoring "

    .line 124
    .line 125
    if-eqz p0, :cond_6

    .line 126
    .line 127
    if-eqz v1, :cond_c

    .line 128
    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p1, " because it\'s user-initiated"

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto/16 :goto_1

    .line 154
    .line 155
    :cond_6
    iget-object p0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 156
    .line 157
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 158
    .line 159
    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_7

    .line 164
    .line 165
    if-eqz v1, :cond_c

    .line 166
    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p1, " because isTop"

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :cond_7
    if-eqz v1, :cond_8

    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v2, "Starting to track "

    .line 198
    .line 199
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_8
    iget-object v0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 217
    .line 218
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_b

    .line 223
    .line 224
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->shouldTrackLocked()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_b

    .line 229
    .line 230
    iget v0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 231
    .line 232
    add-int/2addr v0, v11

    .line 233
    iput v0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 234
    .line 235
    iget-boolean v0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    .line 236
    .line 237
    if-eqz v0, :cond_9

    .line 238
    .line 239
    iget-object v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 240
    .line 241
    iget v2, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 242
    .line 243
    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {p0, v2, v1, v11}, Lcom/android/server/job/controllers/QuotaController;->incrementJobCountLocked(ILjava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    invoke-static {}, Lcom/android/server/job/Flags;->countQuotaFix()Z

    .line 249
    .line 250
    .line 251
    iget-object v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 252
    .line 253
    iget v2, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 254
    .line 255
    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    const/4 v4, 0x0

    .line 262
    invoke-virtual {p0, v2, p1, v1, v4}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(IILjava/lang/String;Z)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_9

    .line 271
    .line 272
    iget-object p1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 273
    .line 274
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 275
    .line 276
    const/4 v2, 0x7

    .line 277
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 282
    .line 283
    .line 284
    :cond_9
    iget-object p1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-ne p1, v11, :cond_c

    .line 291
    .line 292
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 293
    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 298
    .line 299
    .line 300
    move-result-wide v1

    .line 301
    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    .line 302
    .line 303
    const-wide/16 v1, 0x0

    .line 304
    .line 305
    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 306
    .line 307
    if-eqz v0, :cond_a

    .line 308
    .line 309
    iget-object p1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 310
    .line 311
    iget v0, p1, Landroid/content/pm/UserPackage;->userId:I

    .line 312
    .line 313
    iget-object p1, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    :cond_a
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 319
    .line 320
    .line 321
    goto :goto_1

    .line 322
    :cond_b
    const-wide/32 p0, 0x80000

    .line 323
    .line 324
    .line 325
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_c

    .line 330
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    const-string v1, "QC/- "

    .line 334
    .line 335
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const-string v1, "JobScheduler"

    .line 348
    .line 349
    invoke-static {p0, p1, v1, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :cond_c
    :goto_1
    return-void
.end method

.method public final prepareForUpdatedConstantsLocked()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    .line 13
    .line 14
    return-void
.end method

.method public final processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 37

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string/jumbo v3, "qc_window_size_rare_ms"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v4, "qc_quota_bump_limit"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v5, "qc_max_session_count_per_rate_limiting_window"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v6, "qc_rate_limiting_window_ms"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v7, "qc_allowed_time_per_period_frequent_ms"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v8, "qc_window_size_restricted_ms"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v9, "qc_ej_limit_addition_special_ms"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v10, "qc_ej_limit_frequent_ms"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v11, "qc_allowed_time_per_period_restricted_ms"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v12, "qc_quota_bump_window_size_ms"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v13, "qc_window_size_frequent_ms"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v14, "qc_allowed_time_per_period_active_ms"

    .line 39
    .line 40
    .line 41
    const-string/jumbo v15, "qc_ej_limit_active_ms"

    .line 42
    .line 43
    .line 44
    const/16 v16, 0x5

    .line 45
    .line 46
    const/16 v17, 0x6

    .line 47
    .line 48
    move-object/from16 v2, p0

    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-object/from16 v18, v14

    .line 56
    .line 57
    move-object/from16 v19, v15

    .line 58
    .line 59
    const-string v14, "JobScheduler.Quota"

    .line 60
    .line 61
    const-string v15, " vs "

    .line 62
    .line 63
    move-object/from16 p0, v14

    .line 64
    .line 65
    const-string v14, "EJ top app time chunk less than reward: "

    .line 66
    .line 67
    move-object/from16 v21, v14

    .line 68
    .line 69
    move-object/from16 v20, v15

    .line 70
    .line 71
    const-string/jumbo v14, "jobscheduler"

    .line 72
    .line 73
    .line 74
    move-object/from16 v22, v14

    .line 75
    .line 76
    iget-object v14, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 77
    .line 78
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v23

    .line 82
    sparse-switch v23, :sswitch_data_0

    .line 83
    .line 84
    .line 85
    :goto_0
    move-object/from16 v15, v18

    .line 86
    .line 87
    const/16 v23, -0x1

    .line 88
    .line 89
    :goto_1
    move-object/from16 v18, v9

    .line 90
    .line 91
    move-object/from16 v9, v19

    .line 92
    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :sswitch_0
    const-string/jumbo v15, "qc_max_session_count_frequent"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    if-nez v15, :cond_0

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    const/16 v15, 0x30

    .line 106
    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :sswitch_1
    const-string/jumbo v15, "qc_max_session_count_rare"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    if-nez v15, :cond_1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    const/16 v15, 0x2f

    .line 120
    .line 121
    goto/16 :goto_2

    .line 122
    .line 123
    :sswitch_2
    const-string/jumbo v15, "qc_max_session_count_restricted"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    if-nez v15, :cond_2

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    const/16 v15, 0x2e

    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :sswitch_3
    const-string/jumbo v15, "qc_ej_window_size_ms"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    if-nez v15, :cond_3

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    const/16 v15, 0x2d

    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :sswitch_4
    const-string/jumbo v15, "qc_timing_session_coalescing_duration_ms"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    if-nez v15, :cond_4

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_4
    const/16 v15, 0x2c

    .line 162
    .line 163
    goto/16 :goto_2

    .line 164
    .line 165
    :sswitch_5
    const-string/jumbo v15, "qc_window_size_active_ms"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    if-nez v15, :cond_5

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_5
    const/16 v15, 0x2b

    .line 176
    .line 177
    goto/16 :goto_2

    .line 178
    .line 179
    :sswitch_6
    const-string/jumbo v15, "qc_max_job_count_working"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    if-nez v15, :cond_6

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_6
    const/16 v15, 0x2a

    .line 190
    .line 191
    goto/16 :goto_2

    .line 192
    .line 193
    :sswitch_7
    const-string/jumbo v15, "qc_ej_reward_top_app_ms"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v15

    .line 200
    if-nez v15, :cond_7

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_7
    const/16 v15, 0x29

    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :sswitch_8
    const-string/jumbo v15, "qc_ej_limit_working_ms"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v15

    .line 214
    if-nez v15, :cond_8

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_8
    const/16 v15, 0x28

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :sswitch_9
    const-string/jumbo v15, "qc_allowed_time_per_period_exempted_ms"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v15

    .line 229
    if-nez v15, :cond_9

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_9
    const/16 v15, 0x27

    .line 234
    .line 235
    goto/16 :goto_2

    .line 236
    .line 237
    :sswitch_a
    const-string/jumbo v15, "qc_max_session_count_working"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v15

    .line 244
    if-nez v15, :cond_a

    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_a
    const/16 v15, 0x26

    .line 249
    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :sswitch_b
    const-string/jumbo v15, "qc_max_session_count_exempted"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    if-nez v15, :cond_b

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_b
    const/16 v15, 0x25

    .line 264
    .line 265
    goto/16 :goto_2

    .line 266
    .line 267
    :sswitch_c
    const-string/jumbo v15, "qc_in_quota_buffer_ms"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v15

    .line 274
    if-nez v15, :cond_c

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_c
    const/16 v15, 0x24

    .line 279
    .line 280
    goto/16 :goto_2

    .line 281
    .line 282
    :sswitch_d
    const-string/jumbo v15, "qc_min_quota_check_delay_ms"

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v15

    .line 289
    if-nez v15, :cond_d

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_d
    const/16 v15, 0x23

    .line 294
    .line 295
    goto/16 :goto_2

    .line 296
    .line 297
    :sswitch_e
    const-string/jumbo v15, "qc_ej_grace_period_temp_allowlist_ms"

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v15

    .line 304
    if-nez v15, :cond_e

    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_e
    const/16 v15, 0x22

    .line 309
    .line 310
    goto/16 :goto_2

    .line 311
    .line 312
    :sswitch_f
    const-string/jumbo v15, "qc_allowed_time_per_period_rare_ms"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v15

    .line 319
    if-nez v15, :cond_f

    .line 320
    .line 321
    goto/16 :goto_0

    .line 322
    .line 323
    :cond_f
    const/16 v15, 0x21

    .line 324
    .line 325
    goto/16 :goto_2

    .line 326
    .line 327
    :sswitch_10
    const-string/jumbo v15, "qc_quota_bump_additional_session_count"

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v15

    .line 334
    if-nez v15, :cond_10

    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_10
    const/16 v15, 0x20

    .line 339
    .line 340
    goto/16 :goto_2

    .line 341
    .line 342
    :sswitch_11
    const-string/jumbo v15, "qc_max_session_count_active"

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v15

    .line 349
    if-nez v15, :cond_11

    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :cond_11
    const/16 v15, 0x1f

    .line 354
    .line 355
    goto/16 :goto_2

    .line 356
    .line 357
    :sswitch_12
    const-string/jumbo v15, "qc_quota_bump_additional_job_count"

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v15

    .line 364
    if-nez v15, :cond_12

    .line 365
    .line 366
    goto/16 :goto_0

    .line 367
    .line 368
    :cond_12
    const/16 v15, 0x1e

    .line 369
    .line 370
    goto/16 :goto_2

    .line 371
    .line 372
    :sswitch_13
    const-string/jumbo v15, "qc_window_size_working_ms"

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v15

    .line 379
    if-nez v15, :cond_13

    .line 380
    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_13
    const/16 v15, 0x1d

    .line 384
    .line 385
    goto/16 :goto_2

    .line 386
    .line 387
    :sswitch_14
    const-string/jumbo v15, "qc_ej_grace_period_top_app_ms"

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v15

    .line 394
    if-nez v15, :cond_14

    .line 395
    .line 396
    goto/16 :goto_0

    .line 397
    .line 398
    :cond_14
    const/16 v15, 0x1c

    .line 399
    .line 400
    goto/16 :goto_2

    .line 401
    .line 402
    :sswitch_15
    const-string/jumbo v15, "qc_max_execution_time_ms"

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v15

    .line 409
    if-nez v15, :cond_15

    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :cond_15
    const/16 v15, 0x1b

    .line 414
    .line 415
    goto/16 :goto_2

    .line 416
    .line 417
    :sswitch_16
    const-string/jumbo v15, "qc_ej_limit_addition_installer_ms"

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v15

    .line 424
    if-nez v15, :cond_16

    .line 425
    .line 426
    goto/16 :goto_0

    .line 427
    .line 428
    :cond_16
    const/16 v15, 0x1a

    .line 429
    .line 430
    goto/16 :goto_2

    .line 431
    .line 432
    :sswitch_17
    const-string/jumbo v15, "qc_ej_limit_rare_ms"

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v15

    .line 439
    if-nez v15, :cond_17

    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_17
    const/16 v15, 0x19

    .line 444
    .line 445
    goto/16 :goto_2

    .line 446
    .line 447
    :sswitch_18
    const-string/jumbo v15, "qc_ej_limit_restricted_ms"

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v15

    .line 454
    if-nez v15, :cond_18

    .line 455
    .line 456
    goto/16 :goto_0

    .line 457
    .line 458
    :cond_18
    const/16 v15, 0x18

    .line 459
    .line 460
    goto/16 :goto_2

    .line 461
    .line 462
    :sswitch_19
    const-string/jumbo v15, "qc_max_job_count_per_rate_limiting_window"

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v15

    .line 469
    if-nez v15, :cond_19

    .line 470
    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :cond_19
    const/16 v15, 0x17

    .line 474
    .line 475
    goto/16 :goto_2

    .line 476
    .line 477
    :sswitch_1a
    const-string/jumbo v15, "qc_quota_bump_additional_duration_ms"

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v15

    .line 484
    if-nez v15, :cond_1a

    .line 485
    .line 486
    goto/16 :goto_0

    .line 487
    .line 488
    :cond_1a
    const/16 v15, 0x16

    .line 489
    .line 490
    goto/16 :goto_2

    .line 491
    .line 492
    :sswitch_1b
    const-string/jumbo v15, "qc_allowed_time_per_period_working_ms"

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v15

    .line 499
    if-nez v15, :cond_1b

    .line 500
    .line 501
    goto/16 :goto_0

    .line 502
    .line 503
    :cond_1b
    const/16 v15, 0x15

    .line 504
    .line 505
    goto/16 :goto_2

    .line 506
    .line 507
    :sswitch_1c
    const-string/jumbo v15, "qc_max_job_count_frequent"

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v15

    .line 514
    if-nez v15, :cond_1c

    .line 515
    .line 516
    goto/16 :goto_0

    .line 517
    .line 518
    :cond_1c
    move-object/from16 v15, v18

    .line 519
    .line 520
    const/16 v23, 0x14

    .line 521
    .line 522
    goto/16 :goto_1

    .line 523
    .line 524
    :sswitch_1d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v15

    .line 528
    if-nez v15, :cond_1d

    .line 529
    .line 530
    goto/16 :goto_0

    .line 531
    .line 532
    :cond_1d
    const/16 v15, 0x13

    .line 533
    .line 534
    goto/16 :goto_2

    .line 535
    .line 536
    :sswitch_1e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v15

    .line 540
    if-nez v15, :cond_1e

    .line 541
    .line 542
    goto/16 :goto_0

    .line 543
    .line 544
    :cond_1e
    const/16 v15, 0x12

    .line 545
    .line 546
    goto/16 :goto_2

    .line 547
    .line 548
    :sswitch_1f
    const-string/jumbo v15, "qc_max_job_count_restricted"

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v15

    .line 555
    if-nez v15, :cond_1f

    .line 556
    .line 557
    goto/16 :goto_0

    .line 558
    .line 559
    :cond_1f
    const/16 v15, 0x11

    .line 560
    .line 561
    goto/16 :goto_2

    .line 562
    .line 563
    :sswitch_20
    const-string/jumbo v15, "qc_max_job_count_exempted"

    .line 564
    .line 565
    .line 566
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v15

    .line 570
    if-nez v15, :cond_20

    .line 571
    .line 572
    goto/16 :goto_0

    .line 573
    .line 574
    :cond_20
    const/16 v15, 0x10

    .line 575
    .line 576
    goto/16 :goto_2

    .line 577
    .line 578
    :sswitch_21
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v15

    .line 582
    if-nez v15, :cond_21

    .line 583
    .line 584
    goto/16 :goto_0

    .line 585
    .line 586
    :cond_21
    const/16 v15, 0xf

    .line 587
    .line 588
    goto/16 :goto_2

    .line 589
    .line 590
    :sswitch_22
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v15

    .line 594
    if-nez v15, :cond_22

    .line 595
    .line 596
    goto/16 :goto_0

    .line 597
    .line 598
    :cond_22
    const/16 v15, 0xe

    .line 599
    .line 600
    goto/16 :goto_2

    .line 601
    .line 602
    :sswitch_23
    const-string/jumbo v15, "qc_ej_reward_interaction_ms"

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v15

    .line 609
    if-nez v15, :cond_23

    .line 610
    .line 611
    goto/16 :goto_0

    .line 612
    .line 613
    :cond_23
    const/16 v15, 0xd

    .line 614
    .line 615
    goto/16 :goto_2

    .line 616
    .line 617
    :sswitch_24
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    move-result v15

    .line 621
    if-nez v15, :cond_24

    .line 622
    .line 623
    goto/16 :goto_0

    .line 624
    .line 625
    :cond_24
    const/16 v15, 0xc

    .line 626
    .line 627
    goto/16 :goto_2

    .line 628
    .line 629
    :sswitch_25
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v15

    .line 633
    if-nez v15, :cond_25

    .line 634
    .line 635
    goto/16 :goto_0

    .line 636
    .line 637
    :cond_25
    const/16 v15, 0xb

    .line 638
    .line 639
    goto :goto_2

    .line 640
    :sswitch_26
    const-string/jumbo v15, "qc_max_job_count_rare"

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v15

    .line 647
    if-nez v15, :cond_26

    .line 648
    .line 649
    goto/16 :goto_0

    .line 650
    .line 651
    :cond_26
    move-object/from16 v15, v18

    .line 652
    .line 653
    const/16 v23, 0xa

    .line 654
    .line 655
    goto/16 :goto_1

    .line 656
    .line 657
    :sswitch_27
    const-string/jumbo v15, "qc_ej_top_app_time_chunk_size_ms"

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v15

    .line 664
    if-nez v15, :cond_27

    .line 665
    .line 666
    goto/16 :goto_0

    .line 667
    .line 668
    :cond_27
    const/16 v15, 0x9

    .line 669
    .line 670
    goto :goto_2

    .line 671
    :sswitch_28
    const-string/jumbo v15, "qc_max_job_count_active"

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result v15

    .line 678
    if-nez v15, :cond_28

    .line 679
    .line 680
    goto/16 :goto_0

    .line 681
    .line 682
    :cond_28
    move-object/from16 v15, v18

    .line 683
    .line 684
    const/16 v23, 0x8

    .line 685
    .line 686
    goto/16 :goto_1

    .line 687
    .line 688
    :sswitch_29
    const-string/jumbo v15, "qc_ej_reward_notification_seen_ms"

    .line 689
    .line 690
    .line 691
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result v15

    .line 695
    if-nez v15, :cond_29

    .line 696
    .line 697
    goto/16 :goto_0

    .line 698
    .line 699
    :cond_29
    const/4 v15, 0x7

    .line 700
    goto :goto_2

    .line 701
    :sswitch_2a
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result v15

    .line 705
    if-nez v15, :cond_2a

    .line 706
    .line 707
    goto/16 :goto_0

    .line 708
    .line 709
    :cond_2a
    move/from16 v23, v17

    .line 710
    .line 711
    goto :goto_3

    .line 712
    :sswitch_2b
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v15

    .line 716
    if-nez v15, :cond_2b

    .line 717
    .line 718
    goto/16 :goto_0

    .line 719
    .line 720
    :cond_2b
    move/from16 v23, v16

    .line 721
    .line 722
    goto :goto_3

    .line 723
    :sswitch_2c
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result v15

    .line 727
    if-nez v15, :cond_2c

    .line 728
    .line 729
    goto/16 :goto_0

    .line 730
    .line 731
    :cond_2c
    const/4 v15, 0x4

    .line 732
    :goto_2
    move/from16 v23, v15

    .line 733
    .line 734
    :goto_3
    move-object/from16 v15, v18

    .line 735
    .line 736
    goto/16 :goto_1

    .line 737
    .line 738
    :sswitch_2d
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result v15

    .line 742
    if-nez v15, :cond_2d

    .line 743
    .line 744
    goto/16 :goto_0

    .line 745
    .line 746
    :cond_2d
    move-object/from16 v15, v18

    .line 747
    .line 748
    const/16 v23, 0x3

    .line 749
    .line 750
    goto/16 :goto_1

    .line 751
    .line 752
    :sswitch_2e
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 753
    .line 754
    .line 755
    move-result v15

    .line 756
    if-nez v15, :cond_2e

    .line 757
    .line 758
    goto/16 :goto_0

    .line 759
    .line 760
    :cond_2e
    move-object/from16 v15, v18

    .line 761
    .line 762
    const/16 v23, 0x2

    .line 763
    .line 764
    goto/16 :goto_1

    .line 765
    .line 766
    :sswitch_2f
    move-object/from16 v15, v18

    .line 767
    .line 768
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v18

    .line 772
    if-nez v18, :cond_2f

    .line 773
    .line 774
    move-object/from16 v18, v9

    .line 775
    .line 776
    move-object/from16 v9, v19

    .line 777
    .line 778
    goto :goto_4

    .line 779
    :cond_2f
    move-object/from16 v18, v9

    .line 780
    .line 781
    move-object/from16 v9, v19

    .line 782
    .line 783
    const/16 v23, 0x1

    .line 784
    .line 785
    goto :goto_5

    .line 786
    :sswitch_30
    move-object/from16 v15, v18

    .line 787
    .line 788
    move-object/from16 v18, v9

    .line 789
    .line 790
    move-object/from16 v9, v19

    .line 791
    .line 792
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result v19

    .line 796
    if-nez v19, :cond_30

    .line 797
    .line 798
    :goto_4
    const/16 v23, -0x1

    .line 799
    .line 800
    goto :goto_5

    .line 801
    :cond_30
    const/16 v23, 0x0

    .line 802
    .line 803
    :goto_5
    packed-switch v23, :pswitch_data_0

    .line 804
    .line 805
    .line 806
    goto/16 :goto_b

    .line 807
    .line 808
    :pswitch_0
    const/16 v3, 0x8

    .line 809
    .line 810
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 811
    .line 812
    .line 813
    move-result v0

    .line 814
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 815
    .line 816
    const/4 v3, 0x1

    .line 817
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 822
    .line 823
    const/4 v4, 0x2

    .line 824
    aget v5, v1, v4

    .line 825
    .line 826
    if-eq v5, v0, :cond_50

    .line 827
    .line 828
    aput v0, v1, v4

    .line 829
    .line 830
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 831
    .line 832
    goto/16 :goto_b

    .line 833
    .line 834
    :pswitch_1
    const/4 v3, 0x1

    .line 835
    const/4 v4, 0x3

    .line 836
    invoke-virtual {v0, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 837
    .line 838
    .line 839
    move-result v0

    .line 840
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 841
    .line 842
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 843
    .line 844
    .line 845
    move-result v0

    .line 846
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 847
    .line 848
    aget v5, v1, v4

    .line 849
    .line 850
    if-eq v5, v0, :cond_50

    .line 851
    .line 852
    aput v0, v1, v4

    .line 853
    .line 854
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 855
    .line 856
    goto/16 :goto_b

    .line 857
    .line 858
    :pswitch_2
    const/4 v3, 0x1

    .line 859
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 860
    .line 861
    .line 862
    move-result v0

    .line 863
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    .line 864
    .line 865
    const/4 v1, 0x0

    .line 866
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 867
    .line 868
    .line 869
    move-result v0

    .line 870
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 871
    .line 872
    aget v4, v1, v16

    .line 873
    .line 874
    if-eq v4, v0, :cond_50

    .line 875
    .line 876
    aput v0, v1, v16

    .line 877
    .line 878
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 879
    .line 880
    goto/16 :goto_b

    .line 881
    .line 882
    :pswitch_3
    const-wide/16 v3, 0x1388

    .line 883
    .line 884
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 885
    .line 886
    .line 887
    move-result-wide v0

    .line 888
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 889
    .line 890
    const-wide/16 v3, 0x0

    .line 891
    .line 892
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 893
    .line 894
    .line 895
    move-result-wide v0

    .line 896
    const-wide/32 v3, 0xdbba0

    .line 897
    .line 898
    .line 899
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 900
    .line 901
    .line 902
    move-result-wide v0

    .line 903
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 904
    .line 905
    cmp-long v3, v3, v0

    .line 906
    .line 907
    if-eqz v3, :cond_50

    .line 908
    .line 909
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 910
    .line 911
    const/4 v3, 0x1

    .line 912
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 913
    .line 914
    goto/16 :goto_b

    .line 915
    .line 916
    :pswitch_4
    const/4 v3, 0x1

    .line 917
    const/16 v4, 0x78

    .line 918
    .line 919
    invoke-virtual {v0, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 920
    .line 921
    .line 922
    move-result v0

    .line 923
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 924
    .line 925
    const/16 v1, 0xa

    .line 926
    .line 927
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 928
    .line 929
    .line 930
    move-result v0

    .line 931
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 932
    .line 933
    aget v4, v1, v3

    .line 934
    .line 935
    if-eq v4, v0, :cond_50

    .line 936
    .line 937
    aput v0, v1, v3

    .line 938
    .line 939
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 940
    .line 941
    goto/16 :goto_b

    .line 942
    .line 943
    :pswitch_5
    const-wide/16 v3, 0x2710

    .line 944
    .line 945
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 946
    .line 947
    .line 948
    move-result-wide v0

    .line 949
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    .line 950
    .line 951
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 952
    .line 953
    .line 954
    move-result-wide v0

    .line 955
    const-wide/32 v2, 0xdbba0

    .line 956
    .line 957
    .line 958
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 959
    .line 960
    .line 961
    move-result-wide v0

    .line 962
    iget-wide v2, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 963
    .line 964
    cmp-long v2, v2, v0

    .line 965
    .line 966
    if-eqz v2, :cond_50

    .line 967
    .line 968
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 969
    .line 970
    iget-wide v2, v14, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 971
    .line 972
    cmp-long v0, v2, v0

    .line 973
    .line 974
    if-gez v0, :cond_50

    .line 975
    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    .line 977
    .line 978
    move-object/from16 v3, v21

    .line 979
    .line 980
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 984
    .line 985
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    move-object/from16 v4, v20

    .line 989
    .line 990
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    .line 992
    .line 993
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 994
    .line 995
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    move-object/from16 v5, p0

    .line 1003
    .line 1004
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    .line 1006
    .line 1007
    goto/16 :goto_b

    .line 1008
    .line 1009
    :pswitch_6
    const/16 v3, 0xa

    .line 1010
    .line 1011
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1012
    .line 1013
    .line 1014
    move-result v0

    .line 1015
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 1016
    .line 1017
    const/4 v3, 0x1

    .line 1018
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 1019
    .line 1020
    .line 1021
    move-result v0

    .line 1022
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 1023
    .line 1024
    aget v4, v1, v3

    .line 1025
    .line 1026
    if-eq v4, v0, :cond_50

    .line 1027
    .line 1028
    aput v0, v1, v3

    .line 1029
    .line 1030
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1031
    .line 1032
    goto/16 :goto_b

    .line 1033
    .line 1034
    :pswitch_7
    const/4 v3, 0x1

    .line 1035
    const/16 v4, 0x4b

    .line 1036
    .line 1037
    invoke-virtual {v0, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1038
    .line 1039
    .line 1040
    move-result v0

    .line 1041
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_EXEMPTED:I

    .line 1042
    .line 1043
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 1044
    .line 1045
    .line 1046
    move-result v0

    .line 1047
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 1048
    .line 1049
    aget v4, v1, v17

    .line 1050
    .line 1051
    if-eq v4, v0, :cond_50

    .line 1052
    .line 1053
    aput v0, v1, v17

    .line 1054
    .line 1055
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1056
    .line 1057
    goto/16 :goto_b

    .line 1058
    .line 1059
    :pswitch_8
    const-wide/32 v3, 0xea60

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1063
    .line 1064
    .line 1065
    move-result-wide v0

    .line 1066
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 1067
    .line 1068
    iget-object v2, v14, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 1069
    .line 1070
    const-wide/16 v3, 0x0

    .line 1071
    .line 1072
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1073
    .line 1074
    .line 1075
    move-result-wide v0

    .line 1076
    const-wide/32 v3, 0xdbba0

    .line 1077
    .line 1078
    .line 1079
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1080
    .line 1081
    .line 1082
    move-result-wide v0

    .line 1083
    invoke-virtual {v2, v0, v1}, Lcom/android/server/utils/AlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    .line 1084
    .line 1085
    .line 1086
    goto/16 :goto_b

    .line 1087
    .line 1088
    :pswitch_9
    const-wide/16 v3, 0x0

    .line 1089
    .line 1090
    const-wide/32 v5, 0x2bf20

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v0, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1094
    .line 1095
    .line 1096
    move-result-wide v0

    .line 1097
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    .line 1098
    .line 1099
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1100
    .line 1101
    .line 1102
    move-result-wide v0

    .line 1103
    const-wide/32 v2, 0x36ee80

    .line 1104
    .line 1105
    .line 1106
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1107
    .line 1108
    .line 1109
    move-result-wide v0

    .line 1110
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    .line 1111
    .line 1112
    goto/16 :goto_b

    .line 1113
    .line 1114
    :pswitch_a
    const/16 v3, 0x4b

    .line 1115
    .line 1116
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1117
    .line 1118
    .line 1119
    move-result v0

    .line 1120
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 1121
    .line 1122
    const/4 v1, 0x1

    .line 1123
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1124
    .line 1125
    .line 1126
    move-result v0

    .line 1127
    iget-object v3, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 1128
    .line 1129
    const/4 v4, 0x0

    .line 1130
    aget v5, v3, v4

    .line 1131
    .line 1132
    if-eq v5, v0, :cond_50

    .line 1133
    .line 1134
    aput v0, v3, v4

    .line 1135
    .line 1136
    iput-boolean v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1137
    .line 1138
    goto/16 :goto_b

    .line 1139
    .line 1140
    :pswitch_b
    const-wide/32 v3, 0xea60

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1144
    .line 1145
    .line 1146
    move-result-wide v0

    .line 1147
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    .line 1148
    .line 1149
    const-wide/16 v2, 0x0

    .line 1150
    .line 1151
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1152
    .line 1153
    .line 1154
    move-result-wide v0

    .line 1155
    const-wide/32 v2, 0x36ee80

    .line 1156
    .line 1157
    .line 1158
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1159
    .line 1160
    .line 1161
    move-result-wide v0

    .line 1162
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 1163
    .line 1164
    goto/16 :goto_b

    .line 1165
    .line 1166
    :pswitch_c
    const/16 v3, 0xc8

    .line 1167
    .line 1168
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1169
    .line 1170
    .line 1171
    move-result v0

    .line 1172
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 1173
    .line 1174
    const/16 v3, 0xa

    .line 1175
    .line 1176
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 1177
    .line 1178
    .line 1179
    move-result v0

    .line 1180
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 1181
    .line 1182
    const/4 v3, 0x2

    .line 1183
    aget v4, v1, v3

    .line 1184
    .line 1185
    if-eq v4, v0, :cond_50

    .line 1186
    .line 1187
    aput v0, v1, v3

    .line 1188
    .line 1189
    const/4 v0, 0x1

    .line 1190
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1191
    .line 1192
    goto/16 :goto_b

    .line 1193
    .line 1194
    :pswitch_d
    const/16 v3, 0xa

    .line 1195
    .line 1196
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1197
    .line 1198
    .line 1199
    move-result v0

    .line 1200
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    .line 1201
    .line 1202
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 1203
    .line 1204
    .line 1205
    move-result v0

    .line 1206
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 1207
    .line 1208
    aget v3, v1, v16

    .line 1209
    .line 1210
    if-eq v3, v0, :cond_50

    .line 1211
    .line 1212
    aput v0, v1, v16

    .line 1213
    .line 1214
    const/4 v0, 0x1

    .line 1215
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1216
    .line 1217
    goto/16 :goto_b

    .line 1218
    .line 1219
    :pswitch_e
    const/16 v3, 0x4b

    .line 1220
    .line 1221
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1222
    .line 1223
    .line 1224
    move-result v0

    .line 1225
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_EXEMPTED:I

    .line 1226
    .line 1227
    const/16 v1, 0xa

    .line 1228
    .line 1229
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1230
    .line 1231
    .line 1232
    move-result v0

    .line 1233
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 1234
    .line 1235
    aget v3, v1, v17

    .line 1236
    .line 1237
    if-eq v3, v0, :cond_50

    .line 1238
    .line 1239
    aput v0, v1, v17

    .line 1240
    .line 1241
    const/4 v0, 0x1

    .line 1242
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1243
    .line 1244
    goto/16 :goto_b

    .line 1245
    .line 1246
    :pswitch_f
    const/4 v0, 0x1

    .line 1247
    iget-boolean v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    .line 1248
    .line 1249
    if-eqz v1, :cond_31

    .line 1250
    .line 1251
    goto/16 :goto_b

    .line 1252
    .line 1253
    :cond_31
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    .line 1254
    .line 1255
    const-string/jumbo v0, "qc_max_job_count_per_rate_limiting_window"

    .line 1256
    .line 1257
    .line 1258
    filled-new-array {v6, v0, v5}, [Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v1

    .line 1262
    move-object/from16 v9, v22

    .line 1263
    .line 1264
    invoke-static {v9, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v1

    .line 1268
    const-wide/32 v3, 0xea60

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v1, v6, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1272
    .line 1273
    .line 1274
    move-result-wide v3

    .line 1275
    iput-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 1276
    .line 1277
    const/16 v3, 0x14

    .line 1278
    .line 1279
    invoke-virtual {v1, v0, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1280
    .line 1281
    .line 1282
    move-result v0

    .line 1283
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 1284
    .line 1285
    invoke-virtual {v1, v5, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1286
    .line 1287
    .line 1288
    move-result v0

    .line 1289
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 1290
    .line 1291
    iget-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 1292
    .line 1293
    const-wide/16 v3, 0x7530

    .line 1294
    .line 1295
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1296
    .line 1297
    .line 1298
    move-result-wide v0

    .line 1299
    const-wide/32 v3, 0x5265c00

    .line 1300
    .line 1301
    .line 1302
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1303
    .line 1304
    .line 1305
    move-result-wide v0

    .line 1306
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 1307
    .line 1308
    cmp-long v3, v3, v0

    .line 1309
    .line 1310
    if-eqz v3, :cond_32

    .line 1311
    .line 1312
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 1313
    .line 1314
    const/4 v0, 0x1

    .line 1315
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1316
    .line 1317
    goto :goto_6

    .line 1318
    :cond_32
    const/4 v0, 0x1

    .line 1319
    :goto_6
    iget v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 1320
    .line 1321
    const/16 v3, 0xa

    .line 1322
    .line 1323
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1324
    .line 1325
    .line 1326
    move-result v1

    .line 1327
    iget v4, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 1328
    .line 1329
    if-eq v4, v1, :cond_33

    .line 1330
    .line 1331
    iput v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 1332
    .line 1333
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1334
    .line 1335
    :cond_33
    iget v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 1336
    .line 1337
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1338
    .line 1339
    .line 1340
    move-result v1

    .line 1341
    iget v3, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 1342
    .line 1343
    if-eq v3, v1, :cond_50

    .line 1344
    .line 1345
    iput v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 1346
    .line 1347
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1348
    .line 1349
    goto/16 :goto_b

    .line 1350
    .line 1351
    :pswitch_10
    const-wide/16 v3, 0x3a98

    .line 1352
    .line 1353
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1354
    .line 1355
    .line 1356
    move-result-wide v0

    .line 1357
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    .line 1358
    .line 1359
    const-wide/16 v2, 0x1388

    .line 1360
    .line 1361
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1362
    .line 1363
    .line 1364
    move-result-wide v0

    .line 1365
    const-wide/32 v2, 0xdbba0

    .line 1366
    .line 1367
    .line 1368
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1369
    .line 1370
    .line 1371
    move-result-wide v0

    .line 1372
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    .line 1373
    .line 1374
    goto/16 :goto_b

    .line 1375
    .line 1376
    :pswitch_11
    const/16 v3, 0x30

    .line 1377
    .line 1378
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1379
    .line 1380
    .line 1381
    move-result v0

    .line 1382
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 1383
    .line 1384
    const/16 v1, 0xa

    .line 1385
    .line 1386
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1387
    .line 1388
    .line 1389
    move-result v0

    .line 1390
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 1391
    .line 1392
    const/4 v3, 0x3

    .line 1393
    aget v4, v1, v3

    .line 1394
    .line 1395
    if-eq v4, v0, :cond_50

    .line 1396
    .line 1397
    aput v0, v1, v3

    .line 1398
    .line 1399
    const/4 v0, 0x1

    .line 1400
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1401
    .line 1402
    goto/16 :goto_b

    .line 1403
    .line 1404
    :pswitch_12
    move-object/from16 v5, p0

    .line 1405
    .line 1406
    move-object/from16 v4, v20

    .line 1407
    .line 1408
    move-object/from16 v3, v21

    .line 1409
    .line 1410
    const-wide/16 v6, 0x7530

    .line 1411
    .line 1412
    invoke-virtual {v0, v1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1413
    .line 1414
    .line 1415
    move-result-wide v0

    .line 1416
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    .line 1417
    .line 1418
    const-wide/16 v6, 0x1

    .line 1419
    .line 1420
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1421
    .line 1422
    .line 1423
    move-result-wide v0

    .line 1424
    const-wide/32 v6, 0xdbba0

    .line 1425
    .line 1426
    .line 1427
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1428
    .line 1429
    .line 1430
    move-result-wide v0

    .line 1431
    iget-wide v6, v14, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 1432
    .line 1433
    cmp-long v2, v6, v0

    .line 1434
    .line 1435
    if-eqz v2, :cond_50

    .line 1436
    .line 1437
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 1438
    .line 1439
    iget-wide v6, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 1440
    .line 1441
    cmp-long v0, v0, v6

    .line 1442
    .line 1443
    if-gez v0, :cond_50

    .line 1444
    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1446
    .line 1447
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1448
    .line 1449
    .line 1450
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 1451
    .line 1452
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    .line 1457
    .line 1458
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 1459
    .line 1460
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1461
    .line 1462
    .line 1463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v0

    .line 1467
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    .line 1469
    .line 1470
    goto/16 :goto_b

    .line 1471
    .line 1472
    :pswitch_13
    const/16 v3, 0x4b

    .line 1473
    .line 1474
    invoke-virtual {v0, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1475
    .line 1476
    .line 1477
    move-result v0

    .line 1478
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 1479
    .line 1480
    const/16 v1, 0xa

    .line 1481
    .line 1482
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1483
    .line 1484
    .line 1485
    move-result v0

    .line 1486
    iget-object v1, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 1487
    .line 1488
    const/4 v3, 0x0

    .line 1489
    aget v4, v1, v3

    .line 1490
    .line 1491
    if-eq v4, v0, :cond_50

    .line 1492
    .line 1493
    aput v0, v1, v3

    .line 1494
    .line 1495
    const/4 v0, 0x1

    .line 1496
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1497
    .line 1498
    goto/16 :goto_b

    .line 1499
    .line 1500
    :pswitch_14
    const-wide/16 v3, 0x0

    .line 1501
    .line 1502
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1503
    .line 1504
    .line 1505
    move-result-wide v0

    .line 1506
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    .line 1507
    .line 1508
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1509
    .line 1510
    .line 1511
    move-result-wide v0

    .line 1512
    const-wide/32 v2, 0x493e0

    .line 1513
    .line 1514
    .line 1515
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1516
    .line 1517
    .line 1518
    move-result-wide v0

    .line 1519
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    .line 1520
    .line 1521
    goto/16 :goto_b

    .line 1522
    .line 1523
    :pswitch_15
    move-object/from16 v9, v22

    .line 1524
    .line 1525
    iget-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    .line 1526
    .line 1527
    if-eqz v0, :cond_34

    .line 1528
    .line 1529
    goto/16 :goto_b

    .line 1530
    .line 1531
    :cond_34
    const/4 v0, 0x1

    .line 1532
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mQuotaBumpConstantsUpdated:Z

    .line 1533
    .line 1534
    const-string/jumbo v1, "qc_quota_bump_additional_duration_ms"

    .line 1535
    .line 1536
    .line 1537
    const-string/jumbo v3, "qc_quota_bump_additional_job_count"

    .line 1538
    .line 1539
    .line 1540
    const-string/jumbo v5, "qc_quota_bump_additional_session_count"

    .line 1541
    .line 1542
    .line 1543
    filled-new-array {v1, v3, v5, v12, v4}, [Ljava/lang/String;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v6

    .line 1547
    invoke-static {v9, v6}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v6

    .line 1551
    const-wide/32 v7, 0xea60

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {v6, v1, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1555
    .line 1556
    .line 1557
    move-result-wide v7

    .line 1558
    iput-wide v7, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    .line 1559
    .line 1560
    const/4 v1, 0x2

    .line 1561
    invoke-virtual {v6, v3, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1562
    .line 1563
    .line 1564
    move-result v1

    .line 1565
    iput v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    .line 1566
    .line 1567
    invoke-virtual {v6, v5, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1568
    .line 1569
    .line 1570
    move-result v1

    .line 1571
    iput v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    .line 1572
    .line 1573
    const-wide/32 v0, 0x1b77400

    .line 1574
    .line 1575
    .line 1576
    invoke-virtual {v6, v12, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1577
    .line 1578
    .line 1579
    move-result-wide v0

    .line 1580
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    .line 1581
    .line 1582
    const/16 v0, 0x8

    .line 1583
    .line 1584
    invoke-virtual {v6, v4, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 1585
    .line 1586
    .line 1587
    move-result v0

    .line 1588
    iput v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    .line 1589
    .line 1590
    iget-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_WINDOW_SIZE_MS:J

    .line 1591
    .line 1592
    const-wide/32 v3, 0x5265c00

    .line 1593
    .line 1594
    .line 1595
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1596
    .line 1597
    .line 1598
    move-result-wide v0

    .line 1599
    const-wide/32 v3, 0x36ee80

    .line 1600
    .line 1601
    .line 1602
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1603
    .line 1604
    .line 1605
    move-result-wide v0

    .line 1606
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 1607
    .line 1608
    cmp-long v3, v3, v0

    .line 1609
    .line 1610
    if-eqz v3, :cond_35

    .line 1611
    .line 1612
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 1613
    .line 1614
    const/4 v0, 0x1

    .line 1615
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1616
    .line 1617
    goto :goto_7

    .line 1618
    :cond_35
    const/4 v0, 0x1

    .line 1619
    :goto_7
    iget v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_LIMIT:I

    .line 1620
    .line 1621
    const/4 v3, 0x0

    .line 1622
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1623
    .line 1624
    .line 1625
    move-result v1

    .line 1626
    iget v4, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 1627
    .line 1628
    if-eq v4, v1, :cond_36

    .line 1629
    .line 1630
    iput v1, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 1631
    .line 1632
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1633
    .line 1634
    :cond_36
    iget v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_JOB_COUNT:I

    .line 1635
    .line 1636
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1637
    .line 1638
    .line 1639
    move-result v1

    .line 1640
    iget v4, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    .line 1641
    .line 1642
    if-eq v4, v1, :cond_37

    .line 1643
    .line 1644
    iput v1, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    .line 1645
    .line 1646
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1647
    .line 1648
    :cond_37
    iget v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_SESSION_COUNT:I

    .line 1649
    .line 1650
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1651
    .line 1652
    .line 1653
    move-result v1

    .line 1654
    iget v3, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    .line 1655
    .line 1656
    if-eq v3, v1, :cond_38

    .line 1657
    .line 1658
    iput v1, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    .line 1659
    .line 1660
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1661
    .line 1662
    :cond_38
    iget-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->QUOTA_BUMP_ADDITIONAL_DURATION_MS:J

    .line 1663
    .line 1664
    const-wide/32 v3, 0x927c0

    .line 1665
    .line 1666
    .line 1667
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1668
    .line 1669
    .line 1670
    move-result-wide v0

    .line 1671
    const-wide/16 v3, 0x0

    .line 1672
    .line 1673
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1674
    .line 1675
    .line 1676
    move-result-wide v0

    .line 1677
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 1678
    .line 1679
    cmp-long v3, v3, v0

    .line 1680
    .line 1681
    if-eqz v3, :cond_50

    .line 1682
    .line 1683
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 1684
    .line 1685
    const/4 v0, 0x1

    .line 1686
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1687
    .line 1688
    goto/16 :goto_b

    .line 1689
    .line 1690
    :pswitch_16
    move-object/from16 v9, v22

    .line 1691
    .line 1692
    const/4 v0, 0x1

    .line 1693
    iget-boolean v1, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    .line 1694
    .line 1695
    if-eqz v1, :cond_39

    .line 1696
    .line 1697
    goto/16 :goto_b

    .line 1698
    .line 1699
    :cond_39
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    .line 1700
    .line 1701
    const-string/jumbo v33, "qc_window_size_working_ms"

    .line 1702
    .line 1703
    .line 1704
    const-string/jumbo v34, "qc_window_size_frequent_ms"

    .line 1705
    .line 1706
    .line 1707
    const-string/jumbo v23, "qc_allowed_time_per_period_exempted_ms"

    .line 1708
    .line 1709
    .line 1710
    const-string/jumbo v24, "qc_allowed_time_per_period_active_ms"

    .line 1711
    .line 1712
    .line 1713
    const-string/jumbo v25, "qc_allowed_time_per_period_working_ms"

    .line 1714
    .line 1715
    .line 1716
    const-string/jumbo v26, "qc_allowed_time_per_period_frequent_ms"

    .line 1717
    .line 1718
    .line 1719
    const-string/jumbo v27, "qc_allowed_time_per_period_rare_ms"

    .line 1720
    .line 1721
    .line 1722
    const-string/jumbo v28, "qc_allowed_time_per_period_restricted_ms"

    .line 1723
    .line 1724
    .line 1725
    const-string/jumbo v29, "qc_in_quota_buffer_ms"

    .line 1726
    .line 1727
    .line 1728
    const-string/jumbo v30, "qc_max_execution_time_ms"

    .line 1729
    .line 1730
    .line 1731
    const-string/jumbo v31, "qc_window_size_exempted_ms"

    .line 1732
    .line 1733
    .line 1734
    const-string/jumbo v32, "qc_window_size_active_ms"

    .line 1735
    .line 1736
    .line 1737
    const-string/jumbo v35, "qc_window_size_rare_ms"

    .line 1738
    .line 1739
    .line 1740
    const-string/jumbo v36, "qc_window_size_restricted_ms"

    .line 1741
    .line 1742
    .line 1743
    filled-new-array/range {v23 .. v36}, [Ljava/lang/String;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v0

    .line 1747
    invoke-static {v9, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v0

    .line 1751
    const-string/jumbo v1, "qc_allowed_time_per_period_exempted_ms"

    .line 1752
    .line 1753
    .line 1754
    const-wide/32 v4, 0x927c0

    .line 1755
    .line 1756
    .line 1757
    invoke-virtual {v0, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1758
    .line 1759
    .line 1760
    move-result-wide v9

    .line 1761
    iput-wide v9, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    .line 1762
    .line 1763
    invoke-virtual {v0, v15, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1764
    .line 1765
    .line 1766
    move-result-wide v9

    .line 1767
    iput-wide v9, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    .line 1768
    .line 1769
    const-string/jumbo v1, "qc_allowed_time_per_period_working_ms"

    .line 1770
    .line 1771
    .line 1772
    invoke-virtual {v0, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1773
    .line 1774
    .line 1775
    move-result-wide v9

    .line 1776
    iput-wide v9, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    .line 1777
    .line 1778
    invoke-virtual {v0, v7, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1779
    .line 1780
    .line 1781
    move-result-wide v6

    .line 1782
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    .line 1783
    .line 1784
    const-string/jumbo v1, "qc_allowed_time_per_period_rare_ms"

    .line 1785
    .line 1786
    .line 1787
    invoke-virtual {v0, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1788
    .line 1789
    .line 1790
    move-result-wide v6

    .line 1791
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    .line 1792
    .line 1793
    invoke-virtual {v0, v11, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1794
    .line 1795
    .line 1796
    move-result-wide v6

    .line 1797
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    .line 1798
    .line 1799
    const-string/jumbo v1, "qc_in_quota_buffer_ms"

    .line 1800
    .line 1801
    .line 1802
    const-wide/16 v6, 0x7530

    .line 1803
    .line 1804
    invoke-virtual {v0, v1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1805
    .line 1806
    .line 1807
    move-result-wide v6

    .line 1808
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 1809
    .line 1810
    const-string/jumbo v1, "qc_max_execution_time_ms"

    .line 1811
    .line 1812
    .line 1813
    const-wide/32 v6, 0xdbba00

    .line 1814
    .line 1815
    .line 1816
    invoke-virtual {v0, v1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1817
    .line 1818
    .line 1819
    move-result-wide v6

    .line 1820
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 1821
    .line 1822
    const-string/jumbo v1, "qc_window_size_exempted_ms"

    .line 1823
    .line 1824
    .line 1825
    invoke-virtual {v0, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1826
    .line 1827
    .line 1828
    move-result-wide v6

    .line 1829
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    .line 1830
    .line 1831
    const-string/jumbo v1, "qc_window_size_active_ms"

    .line 1832
    .line 1833
    .line 1834
    invoke-virtual {v0, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1835
    .line 1836
    .line 1837
    move-result-wide v4

    .line 1838
    iput-wide v4, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 1839
    .line 1840
    const-string/jumbo v1, "qc_window_size_working_ms"

    .line 1841
    .line 1842
    .line 1843
    const-wide/32 v4, 0x6ddd00

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {v0, v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1847
    .line 1848
    .line 1849
    move-result-wide v4

    .line 1850
    iput-wide v4, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 1851
    .line 1852
    const-wide/32 v4, 0x1b77400

    .line 1853
    .line 1854
    .line 1855
    invoke-virtual {v0, v13, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1856
    .line 1857
    .line 1858
    move-result-wide v4

    .line 1859
    iput-wide v4, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 1860
    .line 1861
    const-wide/32 v4, 0x5265c00

    .line 1862
    .line 1863
    .line 1864
    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1865
    .line 1866
    .line 1867
    move-result-wide v6

    .line 1868
    iput-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 1869
    .line 1870
    invoke-virtual {v0, v8, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 1871
    .line 1872
    .line 1873
    move-result-wide v0

    .line 1874
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 1875
    .line 1876
    iget-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 1877
    .line 1878
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1879
    .line 1880
    .line 1881
    move-result-wide v0

    .line 1882
    const-wide/32 v3, 0x36ee80

    .line 1883
    .line 1884
    .line 1885
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 1886
    .line 1887
    .line 1888
    move-result-wide v0

    .line 1889
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 1890
    .line 1891
    cmp-long v3, v3, v0

    .line 1892
    .line 1893
    if-eqz v3, :cond_3a

    .line 1894
    .line 1895
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 1896
    .line 1897
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 1898
    .line 1899
    sub-long/2addr v0, v3

    .line 1900
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 1901
    .line 1902
    const/4 v0, 0x1

    .line 1903
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1904
    .line 1905
    :cond_3a
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 1906
    .line 1907
    iget-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    .line 1908
    .line 1909
    const-wide/32 v5, 0xea60

    .line 1910
    .line 1911
    .line 1912
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 1913
    .line 1914
    .line 1915
    move-result-wide v3

    .line 1916
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 1917
    .line 1918
    .line 1919
    move-result-wide v0

    .line 1920
    const-wide v3, 0x7fffffffffffffffL

    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1926
    .line 1927
    .line 1928
    move-result-wide v3

    .line 1929
    iget-object v5, v14, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    .line 1930
    .line 1931
    aget-wide v6, v5, v17

    .line 1932
    .line 1933
    cmp-long v6, v6, v0

    .line 1934
    .line 1935
    if-eqz v6, :cond_3b

    .line 1936
    .line 1937
    aput-wide v0, v5, v17

    .line 1938
    .line 1939
    const/4 v0, 0x1

    .line 1940
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1941
    .line 1942
    :cond_3b
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 1943
    .line 1944
    iget-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    .line 1945
    .line 1946
    const-wide/32 v8, 0xea60

    .line 1947
    .line 1948
    .line 1949
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 1950
    .line 1951
    .line 1952
    move-result-wide v6

    .line 1953
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 1954
    .line 1955
    .line 1956
    move-result-wide v0

    .line 1957
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 1958
    .line 1959
    .line 1960
    move-result-wide v3

    .line 1961
    const/4 v6, 0x0

    .line 1962
    aget-wide v7, v5, v6

    .line 1963
    .line 1964
    cmp-long v7, v7, v0

    .line 1965
    .line 1966
    if-eqz v7, :cond_3c

    .line 1967
    .line 1968
    aput-wide v0, v5, v6

    .line 1969
    .line 1970
    const/4 v0, 0x1

    .line 1971
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 1972
    .line 1973
    goto :goto_8

    .line 1974
    :cond_3c
    const/4 v0, 0x1

    .line 1975
    :goto_8
    iget-wide v6, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 1976
    .line 1977
    iget-wide v8, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    .line 1978
    .line 1979
    const-wide/32 v10, 0xea60

    .line 1980
    .line 1981
    .line 1982
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 1983
    .line 1984
    .line 1985
    move-result-wide v8

    .line 1986
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 1987
    .line 1988
    .line 1989
    move-result-wide v6

    .line 1990
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 1991
    .line 1992
    .line 1993
    move-result-wide v3

    .line 1994
    aget-wide v8, v5, v0

    .line 1995
    .line 1996
    cmp-long v1, v8, v6

    .line 1997
    .line 1998
    if-eqz v1, :cond_3d

    .line 1999
    .line 2000
    aput-wide v6, v5, v0

    .line 2001
    .line 2002
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2003
    .line 2004
    :cond_3d
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 2005
    .line 2006
    iget-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    .line 2007
    .line 2008
    const-wide/32 v8, 0xea60

    .line 2009
    .line 2010
    .line 2011
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 2012
    .line 2013
    .line 2014
    move-result-wide v6

    .line 2015
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 2016
    .line 2017
    .line 2018
    move-result-wide v0

    .line 2019
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 2020
    .line 2021
    .line 2022
    move-result-wide v3

    .line 2023
    const/4 v6, 0x2

    .line 2024
    aget-wide v7, v5, v6

    .line 2025
    .line 2026
    cmp-long v7, v7, v0

    .line 2027
    .line 2028
    if-eqz v7, :cond_3e

    .line 2029
    .line 2030
    aput-wide v0, v5, v6

    .line 2031
    .line 2032
    const/4 v0, 0x1

    .line 2033
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2034
    .line 2035
    :cond_3e
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 2036
    .line 2037
    iget-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    .line 2038
    .line 2039
    const-wide/32 v8, 0xea60

    .line 2040
    .line 2041
    .line 2042
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 2043
    .line 2044
    .line 2045
    move-result-wide v6

    .line 2046
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 2047
    .line 2048
    .line 2049
    move-result-wide v0

    .line 2050
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 2051
    .line 2052
    .line 2053
    move-result-wide v3

    .line 2054
    const/4 v6, 0x3

    .line 2055
    aget-wide v7, v5, v6

    .line 2056
    .line 2057
    cmp-long v7, v7, v0

    .line 2058
    .line 2059
    if-eqz v7, :cond_3f

    .line 2060
    .line 2061
    aput-wide v0, v5, v6

    .line 2062
    .line 2063
    const/4 v0, 0x1

    .line 2064
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2065
    .line 2066
    :cond_3f
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 2067
    .line 2068
    iget-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    .line 2069
    .line 2070
    const-wide/32 v8, 0xea60

    .line 2071
    .line 2072
    .line 2073
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 2074
    .line 2075
    .line 2076
    move-result-wide v6

    .line 2077
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 2078
    .line 2079
    .line 2080
    move-result-wide v0

    .line 2081
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 2082
    .line 2083
    .line 2084
    move-result-wide v3

    .line 2085
    aget-wide v6, v5, v16

    .line 2086
    .line 2087
    cmp-long v6, v6, v0

    .line 2088
    .line 2089
    if-eqz v6, :cond_40

    .line 2090
    .line 2091
    aput-wide v0, v5, v16

    .line 2092
    .line 2093
    const/4 v0, 0x1

    .line 2094
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2095
    .line 2096
    :cond_40
    iget-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2097
    .line 2098
    const-wide/32 v6, 0x493e0

    .line 2099
    .line 2100
    .line 2101
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 2102
    .line 2103
    .line 2104
    move-result-wide v0

    .line 2105
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 2106
    .line 2107
    .line 2108
    move-result-wide v0

    .line 2109
    const-wide/16 v3, 0x0

    .line 2110
    .line 2111
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 2112
    .line 2113
    .line 2114
    move-result-wide v0

    .line 2115
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 2116
    .line 2117
    cmp-long v3, v3, v0

    .line 2118
    .line 2119
    if-eqz v3, :cond_41

    .line 2120
    .line 2121
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 2122
    .line 2123
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 2124
    .line 2125
    sub-long/2addr v3, v0

    .line 2126
    iput-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 2127
    .line 2128
    const/4 v0, 0x1

    .line 2129
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2130
    .line 2131
    :cond_41
    aget-wide v0, v5, v17

    .line 2132
    .line 2133
    iget-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    .line 2134
    .line 2135
    const-wide/32 v6, 0x5265c00

    .line 2136
    .line 2137
    .line 2138
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 2139
    .line 2140
    .line 2141
    move-result-wide v3

    .line 2142
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 2143
    .line 2144
    .line 2145
    move-result-wide v0

    .line 2146
    iget-object v3, v14, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 2147
    .line 2148
    aget-wide v6, v3, v17

    .line 2149
    .line 2150
    cmp-long v4, v6, v0

    .line 2151
    .line 2152
    if-eqz v4, :cond_42

    .line 2153
    .line 2154
    aput-wide v0, v3, v17

    .line 2155
    .line 2156
    const/4 v0, 0x1

    .line 2157
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2158
    .line 2159
    :cond_42
    const/4 v0, 0x0

    .line 2160
    aget-wide v6, v5, v0

    .line 2161
    .line 2162
    iget-wide v8, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2163
    .line 2164
    const-wide/32 v10, 0x5265c00

    .line 2165
    .line 2166
    .line 2167
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 2168
    .line 2169
    .line 2170
    move-result-wide v8

    .line 2171
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 2172
    .line 2173
    .line 2174
    move-result-wide v6

    .line 2175
    aget-wide v8, v3, v0

    .line 2176
    .line 2177
    cmp-long v1, v8, v6

    .line 2178
    .line 2179
    if-eqz v1, :cond_43

    .line 2180
    .line 2181
    aput-wide v6, v3, v0

    .line 2182
    .line 2183
    const/4 v0, 0x1

    .line 2184
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2185
    .line 2186
    goto :goto_9

    .line 2187
    :cond_43
    const/4 v0, 0x1

    .line 2188
    :goto_9
    aget-wide v6, v5, v0

    .line 2189
    .line 2190
    iget-wide v8, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2191
    .line 2192
    const-wide/32 v10, 0x5265c00

    .line 2193
    .line 2194
    .line 2195
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 2196
    .line 2197
    .line 2198
    move-result-wide v8

    .line 2199
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 2200
    .line 2201
    .line 2202
    move-result-wide v6

    .line 2203
    aget-wide v8, v3, v0

    .line 2204
    .line 2205
    cmp-long v1, v8, v6

    .line 2206
    .line 2207
    if-eqz v1, :cond_44

    .line 2208
    .line 2209
    aput-wide v6, v3, v0

    .line 2210
    .line 2211
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2212
    .line 2213
    :cond_44
    const/4 v0, 0x2

    .line 2214
    aget-wide v6, v5, v0

    .line 2215
    .line 2216
    iget-wide v8, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2217
    .line 2218
    const-wide/32 v10, 0x5265c00

    .line 2219
    .line 2220
    .line 2221
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 2222
    .line 2223
    .line 2224
    move-result-wide v8

    .line 2225
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 2226
    .line 2227
    .line 2228
    move-result-wide v6

    .line 2229
    aget-wide v8, v3, v0

    .line 2230
    .line 2231
    cmp-long v1, v8, v6

    .line 2232
    .line 2233
    if-eqz v1, :cond_45

    .line 2234
    .line 2235
    aput-wide v6, v3, v0

    .line 2236
    .line 2237
    const/4 v0, 0x1

    .line 2238
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2239
    .line 2240
    :cond_45
    const/4 v0, 0x3

    .line 2241
    aget-wide v6, v5, v0

    .line 2242
    .line 2243
    iget-wide v8, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2244
    .line 2245
    const-wide/32 v10, 0x5265c00

    .line 2246
    .line 2247
    .line 2248
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 2249
    .line 2250
    .line 2251
    move-result-wide v8

    .line 2252
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 2253
    .line 2254
    .line 2255
    move-result-wide v6

    .line 2256
    aget-wide v8, v3, v0

    .line 2257
    .line 2258
    cmp-long v1, v8, v6

    .line 2259
    .line 2260
    if-eqz v1, :cond_46

    .line 2261
    .line 2262
    aput-wide v6, v3, v0

    .line 2263
    .line 2264
    const/4 v0, 0x1

    .line 2265
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2266
    .line 2267
    :cond_46
    aget-wide v0, v5, v16

    .line 2268
    .line 2269
    const-wide/32 v4, 0x240c8400

    .line 2270
    .line 2271
    .line 2272
    iget-wide v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 2273
    .line 2274
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 2275
    .line 2276
    .line 2277
    move-result-wide v4

    .line 2278
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 2279
    .line 2280
    .line 2281
    move-result-wide v0

    .line 2282
    aget-wide v4, v3, v16

    .line 2283
    .line 2284
    cmp-long v4, v4, v0

    .line 2285
    .line 2286
    if-eqz v4, :cond_50

    .line 2287
    .line 2288
    aput-wide v0, v3, v16

    .line 2289
    .line 2290
    const/4 v0, 0x1

    .line 2291
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2292
    .line 2293
    goto/16 :goto_b

    .line 2294
    .line 2295
    :pswitch_17
    move-object/from16 v1, v22

    .line 2296
    .line 2297
    const/4 v0, 0x1

    .line 2298
    iget-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    .line 2299
    .line 2300
    if-eqz v3, :cond_47

    .line 2301
    .line 2302
    goto/16 :goto_b

    .line 2303
    .line 2304
    :cond_47
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    .line 2305
    .line 2306
    const-string/jumbo v28, "qc_ej_limit_restricted_ms"

    .line 2307
    .line 2308
    .line 2309
    const-string/jumbo v29, "qc_ej_limit_addition_special_ms"

    .line 2310
    .line 2311
    .line 2312
    const-string/jumbo v23, "qc_ej_limit_exempted_ms"

    .line 2313
    .line 2314
    .line 2315
    const-string/jumbo v24, "qc_ej_limit_active_ms"

    .line 2316
    .line 2317
    .line 2318
    const-string/jumbo v25, "qc_ej_limit_working_ms"

    .line 2319
    .line 2320
    .line 2321
    const-string/jumbo v26, "qc_ej_limit_frequent_ms"

    .line 2322
    .line 2323
    .line 2324
    const-string/jumbo v27, "qc_ej_limit_rare_ms"

    .line 2325
    .line 2326
    .line 2327
    const-string/jumbo v30, "qc_ej_limit_addition_installer_ms"

    .line 2328
    .line 2329
    .line 2330
    const-string/jumbo v31, "qc_ej_window_size_ms"

    .line 2331
    .line 2332
    .line 2333
    filled-new-array/range {v23 .. v31}, [Ljava/lang/String;

    .line 2334
    .line 2335
    .line 2336
    move-result-object v0

    .line 2337
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 2338
    .line 2339
    .line 2340
    move-result-object v0

    .line 2341
    const-string/jumbo v1, "qc_ej_limit_exempted_ms"

    .line 2342
    .line 2343
    .line 2344
    const-wide/32 v3, 0x36ee80

    .line 2345
    .line 2346
    .line 2347
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2348
    .line 2349
    .line 2350
    move-result-wide v5

    .line 2351
    iput-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    .line 2352
    .line 2353
    const-wide/32 v3, 0x1b7740

    .line 2354
    .line 2355
    .line 2356
    invoke-virtual {v0, v9, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2357
    .line 2358
    .line 2359
    move-result-wide v5

    .line 2360
    iput-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    .line 2361
    .line 2362
    const-string/jumbo v1, "qc_ej_limit_working_ms"

    .line 2363
    .line 2364
    .line 2365
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2366
    .line 2367
    .line 2368
    move-result-wide v5

    .line 2369
    iput-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    .line 2370
    .line 2371
    const-wide/32 v5, 0x927c0

    .line 2372
    .line 2373
    .line 2374
    invoke-virtual {v0, v10, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2375
    .line 2376
    .line 2377
    move-result-wide v7

    .line 2378
    iput-wide v7, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    .line 2379
    .line 2380
    const-string/jumbo v1, "qc_ej_limit_rare_ms"

    .line 2381
    .line 2382
    .line 2383
    invoke-virtual {v0, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2384
    .line 2385
    .line 2386
    move-result-wide v7

    .line 2387
    iput-wide v7, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    .line 2388
    .line 2389
    const-string/jumbo v1, "qc_ej_limit_restricted_ms"

    .line 2390
    .line 2391
    .line 2392
    const-wide/32 v5, 0x493e0

    .line 2393
    .line 2394
    .line 2395
    invoke-virtual {v0, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2396
    .line 2397
    .line 2398
    move-result-wide v7

    .line 2399
    iput-wide v7, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    .line 2400
    .line 2401
    const-string/jumbo v1, "qc_ej_limit_addition_installer_ms"

    .line 2402
    .line 2403
    .line 2404
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2405
    .line 2406
    .line 2407
    move-result-wide v3

    .line 2408
    iput-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    .line 2409
    .line 2410
    move-object/from16 v1, v18

    .line 2411
    .line 2412
    const-wide/32 v3, 0xdbba0

    .line 2413
    .line 2414
    .line 2415
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2416
    .line 2417
    .line 2418
    move-result-wide v5

    .line 2419
    iput-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    .line 2420
    .line 2421
    const-string/jumbo v1, "qc_ej_window_size_ms"

    .line 2422
    .line 2423
    .line 2424
    const-wide/32 v3, 0x5265c00

    .line 2425
    .line 2426
    .line 2427
    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 2428
    .line 2429
    .line 2430
    move-result-wide v0

    .line 2431
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    .line 2432
    .line 2433
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 2434
    .line 2435
    .line 2436
    move-result-wide v0

    .line 2437
    const-wide/32 v3, 0x36ee80

    .line 2438
    .line 2439
    .line 2440
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 2441
    .line 2442
    .line 2443
    move-result-wide v0

    .line 2444
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 2445
    .line 2446
    cmp-long v3, v3, v0

    .line 2447
    .line 2448
    if-eqz v3, :cond_48

    .line 2449
    .line 2450
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 2451
    .line 2452
    const/4 v3, 0x1

    .line 2453
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2454
    .line 2455
    :cond_48
    iget-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    .line 2456
    .line 2457
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 2458
    .line 2459
    .line 2460
    move-result-wide v3

    .line 2461
    const-wide/32 v5, 0xdbba0

    .line 2462
    .line 2463
    .line 2464
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 2465
    .line 2466
    .line 2467
    move-result-wide v3

    .line 2468
    iget-object v5, v14, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    .line 2469
    .line 2470
    aget-wide v6, v5, v17

    .line 2471
    .line 2472
    cmp-long v6, v6, v3

    .line 2473
    .line 2474
    if-eqz v6, :cond_49

    .line 2475
    .line 2476
    aput-wide v3, v5, v17

    .line 2477
    .line 2478
    const/4 v6, 0x1

    .line 2479
    iput-boolean v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2480
    .line 2481
    goto :goto_a

    .line 2482
    :cond_49
    const/4 v6, 0x1

    .line 2483
    :goto_a
    iget-wide v7, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    .line 2484
    .line 2485
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 2486
    .line 2487
    .line 2488
    move-result-wide v3

    .line 2489
    const-wide/32 v7, 0xdbba0

    .line 2490
    .line 2491
    .line 2492
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 2493
    .line 2494
    .line 2495
    move-result-wide v3

    .line 2496
    const/4 v9, 0x0

    .line 2497
    aget-wide v10, v5, v9

    .line 2498
    .line 2499
    cmp-long v10, v10, v3

    .line 2500
    .line 2501
    if-eqz v10, :cond_4a

    .line 2502
    .line 2503
    aput-wide v3, v5, v9

    .line 2504
    .line 2505
    iput-boolean v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2506
    .line 2507
    :cond_4a
    iget-wide v9, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    .line 2508
    .line 2509
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 2510
    .line 2511
    .line 2512
    move-result-wide v9

    .line 2513
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 2514
    .line 2515
    .line 2516
    move-result-wide v7

    .line 2517
    aget-wide v9, v5, v6

    .line 2518
    .line 2519
    cmp-long v9, v9, v7

    .line 2520
    .line 2521
    if-eqz v9, :cond_4b

    .line 2522
    .line 2523
    aput-wide v7, v5, v6

    .line 2524
    .line 2525
    iput-boolean v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2526
    .line 2527
    :cond_4b
    iget-wide v9, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    .line 2528
    .line 2529
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 2530
    .line 2531
    .line 2532
    move-result-wide v7

    .line 2533
    const-wide/32 v9, 0x927c0

    .line 2534
    .line 2535
    .line 2536
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 2537
    .line 2538
    .line 2539
    move-result-wide v7

    .line 2540
    const/4 v11, 0x2

    .line 2541
    aget-wide v12, v5, v11

    .line 2542
    .line 2543
    cmp-long v12, v12, v7

    .line 2544
    .line 2545
    if-eqz v12, :cond_4c

    .line 2546
    .line 2547
    aput-wide v7, v5, v11

    .line 2548
    .line 2549
    iput-boolean v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2550
    .line 2551
    :cond_4c
    iget-wide v11, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    .line 2552
    .line 2553
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 2554
    .line 2555
    .line 2556
    move-result-wide v7

    .line 2557
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 2558
    .line 2559
    .line 2560
    move-result-wide v7

    .line 2561
    const/4 v9, 0x3

    .line 2562
    aget-wide v10, v5, v9

    .line 2563
    .line 2564
    cmp-long v10, v10, v7

    .line 2565
    .line 2566
    if-eqz v10, :cond_4d

    .line 2567
    .line 2568
    aput-wide v7, v5, v9

    .line 2569
    .line 2570
    iput-boolean v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2571
    .line 2572
    :cond_4d
    iget-wide v9, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    .line 2573
    .line 2574
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 2575
    .line 2576
    .line 2577
    move-result-wide v7

    .line 2578
    const-wide/32 v9, 0x493e0

    .line 2579
    .line 2580
    .line 2581
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 2582
    .line 2583
    .line 2584
    move-result-wide v7

    .line 2585
    aget-wide v9, v5, v16

    .line 2586
    .line 2587
    cmp-long v9, v9, v7

    .line 2588
    .line 2589
    if-eqz v9, :cond_4e

    .line 2590
    .line 2591
    aput-wide v7, v5, v16

    .line 2592
    .line 2593
    iput-boolean v6, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2594
    .line 2595
    :cond_4e
    sub-long/2addr v0, v3

    .line 2596
    iget-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    .line 2597
    .line 2598
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 2599
    .line 2600
    .line 2601
    move-result-wide v3

    .line 2602
    const-wide/16 v5, 0x0

    .line 2603
    .line 2604
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 2605
    .line 2606
    .line 2607
    move-result-wide v3

    .line 2608
    iget-wide v5, v14, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    .line 2609
    .line 2610
    cmp-long v5, v5, v3

    .line 2611
    .line 2612
    if-eqz v5, :cond_4f

    .line 2613
    .line 2614
    iput-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    .line 2615
    .line 2616
    const/4 v3, 0x1

    .line 2617
    iput-boolean v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2618
    .line 2619
    :cond_4f
    iget-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    .line 2620
    .line 2621
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 2622
    .line 2623
    .line 2624
    move-result-wide v0

    .line 2625
    const-wide/16 v3, 0x0

    .line 2626
    .line 2627
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 2628
    .line 2629
    .line 2630
    move-result-wide v0

    .line 2631
    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    .line 2632
    .line 2633
    cmp-long v3, v3, v0

    .line 2634
    .line 2635
    if-eqz v3, :cond_50

    .line 2636
    .line 2637
    iput-wide v0, v14, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    .line 2638
    .line 2639
    const/4 v0, 0x1

    .line 2640
    iput-boolean v0, v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    .line 2641
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

    .line 2644
    .line 2645
    .line 2646
    .line 2647
    .line 2648
    .line 2649
    .line 2650
    .line 2651
    .line 2652
    .line 2653
    .line 2654
    .line 2655
    .line 2656
    .line 2657
    .line 2658
    .line 2659
    .line 2660
    .line 2661
    .line 2662
    .line 2663
    .line 2664
    .line 2665
    .line 2666
    .line 2667
    .line 2668
    .line 2669
    .line 2670
    .line 2671
    .line 2672
    .line 2673
    .line 2674
    .line 2675
    .line 2676
    .line 2677
    .line 2678
    .line 2679
    .line 2680
    .line 2681
    .line 2682
    .line 2683
    .line 2684
    .line 2685
    .line 2686
    .line 2687
    .line 2688
    .line 2689
    .line 2690
    .line 2691
    .line 2692
    .line 2693
    .line 2694
    .line 2695
    .line 2696
    .line 2697
    .line 2698
    .line 2699
    .line 2700
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

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move p4, p5

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    if-nez p5, :cond_3

    .line 19
    .line 20
    if-eqz p4, :cond_2

    .line 21
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

    .line 27
    .line 28
    iget-wide v3, p1, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    .line 29
    .line 30
    const-wide/16 v5, 0x0

    .line 31
    .line 32
    cmp-long p0, v3, v5

    .line 33
    .line 34
    if-nez p0, :cond_4

    .line 35
    .line 36
    iput-wide p2, p1, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    .line 37
    .line 38
    :cond_4
    const/high16 p0, 0x1000000

    .line 39
    .line 40
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_5

    .line 45
    .line 46
    iput-boolean p4, p1, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 47
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

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
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

    .line 22
    .line 23
    const/high16 v3, 0x2000000

    .line 24
    .line 25
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
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

    .line 42
    .line 43
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    if-nez v3, :cond_4

    .line 52
    .line 53
    const/16 v1, 0xa

    .line 54
    .line 55
    iput v1, p1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    if-nez v2, :cond_5

    .line 59
    .line 60
    if-eqz v3, :cond_5

    .line 61
    .line 62
    iput v1, p1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 63
    .line 64
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 72
    .line 73
    .line 74
    if-eqz p2, :cond_6

    .line 75
    .line 76
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_6

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    return v0
.end method

.method public final transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .locals 4

    .line 1
    iget-wide v0, p5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 2
    .line 3
    neg-long p6, p6

    .line 4
    invoke-virtual {p5, p6, p7}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide p6

    .line 8
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v3, "debits overflowed by "

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "JobScheduler.Quota"

    .line 28
    .line 29
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-wide v2, p5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 33
    .line 34
    cmp-long p5, v0, v2

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    if-eqz p5, :cond_1

    .line 38
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

    .line 43
    .line 44
    cmp-long v1, p6, v1

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 65
    .line 66
    add-long/2addr p1, p6

    .line 67
    iget-wide p5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    .line 68
    .line 69
    sub-long/2addr p5, p3

    .line 70
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->max(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 75
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

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 4
    .line 5
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 25
    .line 26
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 15
    .line 16
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 17
    .line 18
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 19
    .line 20
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 21
    .line 22
    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 23
    .line 24
    const-wide v8, 0x7fffffffffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    if-eqz v7, :cond_1

    .line 30
    .line 31
    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 32
    .line 33
    if-nez v7, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 40
    .line 41
    :goto_1
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 42
    .line 43
    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 44
    .line 45
    sub-long/2addr v10, v12

    .line 46
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 47
    .line 48
    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 53
    .line 54
    sget-object v12, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 55
    .line 56
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v12

    .line 63
    const-wide/32 v14, 0x5265c00

    .line 64
    .line 65
    .line 66
    add-long v4, v12, v14

    .line 67
    .line 68
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 69
    .line 70
    if-eqz v7, :cond_4

    .line 71
    .line 72
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    invoke-virtual {v7, v12, v13}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 83
    .line 84
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 85
    .line 86
    iget-object v4, v7, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 87
    .line 88
    iget-object v4, v4, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v4

    .line 91
    :try_start_0
    iget v5, v7, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 92
    .line 93
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iput v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 95
    .line 96
    iput v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 97
    .line 98
    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 99
    .line 100
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 101
    .line 102
    cmp-long v4, v4, v10

    .line 103
    .line 104
    if-ltz v4, :cond_2

    .line 105
    .line 106
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 107
    .line 108
    sub-long v16, v12, v10

    .line 109
    .line 110
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 111
    .line 112
    add-long v6, v16, v6

    .line 113
    .line 114
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 119
    .line 120
    :cond_2
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 121
    .line 122
    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 123
    .line 124
    cmp-long v4, v4, v6

    .line 125
    .line 126
    if-ltz v4, :cond_3

    .line 127
    .line 128
    sub-long v4, v12, v6

    .line 129
    .line 130
    add-long/2addr v4, v14

    .line 131
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 132
    .line 133
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 138
    .line 139
    :cond_3
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 140
    .line 141
    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 142
    .line 143
    if-lt v4, v5, :cond_4

    .line 144
    .line 145
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 146
    .line 147
    add-long/2addr v4, v12

    .line 148
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 149
    .line 150
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 151
    .line 152
    .line 153
    move-result-wide v4

    .line 154
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 155
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

    .line 161
    .line 162
    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Ljava/util/List;

    .line 167
    .line 168
    if-eqz v1, :cond_14

    .line 169
    .line 170
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-nez v2, :cond_5

    .line 175
    .line 176
    goto/16 :goto_e

    .line 177
    .line 178
    :cond_5
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 179
    .line 180
    sub-long v4, v12, v4

    .line 181
    .line 182
    sub-long v6, v12, v14

    .line 183
    .line 184
    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 185
    .line 186
    sub-long v8, v12, v8

    .line 187
    .line 188
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    add-int/lit8 v2, v2, -0x1

    .line 193
    .line 194
    move/from16 p1, v2

    .line 195
    .line 196
    move-wide/from16 v16, v12

    .line 197
    .line 198
    const/4 v12, 0x0

    .line 199
    const-wide v14, 0x7fffffffffffffffL

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    :goto_3
    if-ltz v2, :cond_8

    .line 205
    .line 206
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    check-cast v13, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 211
    .line 212
    invoke-interface {v13}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    .line 213
    .line 214
    .line 215
    move-result-wide v19

    .line 216
    cmp-long v19, v19, v8

    .line 217
    .line 218
    if-ltz v19, :cond_8

    .line 219
    .line 220
    move-wide/from16 v19, v6

    .line 221
    .line 222
    iget v6, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 223
    .line 224
    if-lt v12, v6, :cond_6

    .line 225
    .line 226
    :goto_4
    move-wide/from16 v21, v10

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_6
    instance-of v6, v13, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    .line 230
    .line 231
    if-eqz v6, :cond_7

    .line 232
    .line 233
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 234
    .line 235
    move-wide/from16 v21, v10

    .line 236
    .line 237
    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 238
    .line 239
    add-long/2addr v6, v10

    .line 240
    iput-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 241
    .line 242
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 243
    .line 244
    iget v7, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    .line 245
    .line 246
    add-int/2addr v6, v7

    .line 247
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 248
    .line 249
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 250
    .line 251
    iget v7, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    .line 252
    .line 253
    add-int/2addr v6, v7

    .line 254
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 255
    .line 256
    invoke-interface {v13}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    .line 257
    .line 258
    .line 259
    move-result-wide v6

    .line 260
    sub-long/2addr v6, v8

    .line 261
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 262
    .line 263
    .line 264
    move-result-wide v6

    .line 265
    add-int/lit8 v12, v12, 0x1

    .line 266
    .line 267
    move-wide v14, v6

    .line 268
    goto :goto_5

    .line 269
    :cond_7
    move-wide/from16 v21, v10

    .line 270
    .line 271
    :goto_5
    add-int/lit8 v2, v2, -0x1

    .line 272
    .line 273
    move-wide/from16 v6, v19

    .line 274
    .line 275
    move-wide/from16 v10, v21

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_8
    move-wide/from16 v19, v6

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :goto_6
    const/4 v2, 0x0

    .line 282
    move-object v6, v2

    .line 283
    const/16 v18, 0x0

    .line 284
    .line 285
    move/from16 v2, p1

    .line 286
    .line 287
    :goto_7
    if-ltz v2, :cond_13

    .line 288
    .line 289
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 294
    .line 295
    instance-of v8, v7, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    .line 296
    .line 297
    if-eqz v8, :cond_9

    .line 298
    .line 299
    move-wide/from16 p1, v4

    .line 300
    .line 301
    const-wide/32 v8, 0x5265c00

    .line 302
    .line 303
    .line 304
    goto/16 :goto_d

    .line 305
    .line 306
    :cond_9
    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 307
    .line 308
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 309
    .line 310
    cmp-long v8, v4, v8

    .line 311
    .line 312
    if-gez v8, :cond_f

    .line 313
    .line 314
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 315
    .line 316
    cmp-long v10, v4, v8

    .line 317
    .line 318
    if-gez v10, :cond_a

    .line 319
    .line 320
    sub-long v10, v8, v4

    .line 321
    .line 322
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 323
    .line 324
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

    .line 330
    .line 331
    :goto_8
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 332
    .line 333
    iget-wide v12, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 334
    .line 335
    sub-long/2addr v12, v8

    .line 336
    add-long/2addr v12, v10

    .line 337
    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 338
    .line 339
    iget v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 340
    .line 341
    iget v11, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 342
    .line 343
    add-int/2addr v10, v11

    .line 344
    iput v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 345
    .line 346
    cmp-long v10, v12, v21

    .line 347
    .line 348
    if-ltz v10, :cond_b

    .line 349
    .line 350
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 351
    .line 352
    add-long/2addr v8, v12

    .line 353
    sub-long v8, v8, v21

    .line 354
    .line 355
    iget-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 356
    .line 357
    add-long/2addr v8, v12

    .line 358
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 359
    .line 360
    .line 361
    move-result-wide v8

    .line 362
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 363
    .line 364
    :cond_b
    iget v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 365
    .line 366
    iget v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 367
    .line 368
    if-lt v8, v9, :cond_c

    .line 369
    .line 370
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 371
    .line 372
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 373
    .line 374
    add-long/2addr v8, v10

    .line 375
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 376
    .line 377
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 378
    .line 379
    .line 380
    move-result-wide v8

    .line 381
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 382
    .line 383
    :cond_c
    if-eqz v6, :cond_d

    .line 384
    .line 385
    iget-wide v8, v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 386
    .line 387
    iget-wide v10, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 388
    .line 389
    sub-long/2addr v8, v10

    .line 390
    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 391
    .line 392
    cmp-long v6, v8, v10

    .line 393
    .line 394
    if-gtz v6, :cond_d

    .line 395
    .line 396
    goto :goto_9

    .line 397
    :cond_d
    add-int/lit8 v6, v18, 0x1

    .line 398
    .line 399
    iget v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 400
    .line 401
    if-lt v6, v8, :cond_e

    .line 402
    .line 403
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 404
    .line 405
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 406
    .line 407
    add-long/2addr v8, v10

    .line 408
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 409
    .line 410
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 411
    .line 412
    .line 413
    move-result-wide v8

    .line 414
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 415
    .line 416
    :cond_e
    move/from16 v18, v6

    .line 417
    .line 418
    :cond_f
    :goto_9
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 419
    .line 420
    cmp-long v6, v19, v8

    .line 421
    .line 422
    if-gez v6, :cond_11

    .line 423
    .line 424
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 425
    .line 426
    iget-wide v12, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 427
    .line 428
    sub-long/2addr v12, v8

    .line 429
    add-long/2addr v12, v10

    .line 430
    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 431
    .line 432
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 433
    .line 434
    iget v10, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 435
    .line 436
    add-int/2addr v6, v10

    .line 437
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 438
    .line 439
    sub-long v8, v8, v19

    .line 440
    .line 441
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 442
    .line 443
    .line 444
    move-result-wide v8

    .line 445
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 446
    .line 447
    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 448
    .line 449
    cmp-long v6, v10, v12

    .line 450
    .line 451
    if-ltz v6, :cond_10

    .line 452
    .line 453
    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 454
    .line 455
    move-wide/from16 p1, v4

    .line 456
    .line 457
    iget-wide v4, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 458
    .line 459
    add-long/2addr v4, v10

    .line 460
    sub-long/2addr v4, v12

    .line 461
    const-wide/32 v10, 0x5265c00

    .line 462
    .line 463
    .line 464
    add-long/2addr v4, v10

    .line 465
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 466
    .line 467
    .line 468
    move-result-wide v4

    .line 469
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 470
    .line 471
    goto :goto_a

    .line 472
    :cond_10
    move-wide/from16 p1, v4

    .line 473
    .line 474
    :goto_a
    move-wide v4, v8

    .line 475
    const-wide/32 v8, 0x5265c00

    .line 476
    .line 477
    .line 478
    goto :goto_c

    .line 479
    :cond_11
    move-wide/from16 p1, v4

    .line 480
    .line 481
    iget-wide v4, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 482
    .line 483
    cmp-long v6, v19, v4

    .line 484
    .line 485
    if-gez v6, :cond_13

    .line 486
    .line 487
    iget-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 488
    .line 489
    sub-long v4, v4, v19

    .line 490
    .line 491
    add-long/2addr v4, v8

    .line 492
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 493
    .line 494
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 495
    .line 496
    iget v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 497
    .line 498
    add-int/2addr v6, v8

    .line 499
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 500
    .line 501
    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 502
    .line 503
    cmp-long v6, v4, v8

    .line 504
    .line 505
    if-ltz v6, :cond_12

    .line 506
    .line 507
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 508
    .line 509
    add-long v4, v19, v4

    .line 510
    .line 511
    sub-long/2addr v4, v8

    .line 512
    const-wide/32 v8, 0x5265c00

    .line 513
    .line 514
    .line 515
    add-long/2addr v4, v8

    .line 516
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 517
    .line 518
    .line 519
    move-result-wide v4

    .line 520
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 521
    .line 522
    goto :goto_b

    .line 523
    :cond_12
    const-wide/32 v8, 0x5265c00

    .line 524
    .line 525
    .line 526
    :goto_b
    const-wide/16 v4, 0x0

    .line 527
    .line 528
    :goto_c
    move-wide v14, v4

    .line 529
    move-object v6, v7

    .line 530
    :goto_d
    add-int/lit8 v2, v2, -0x1

    .line 531
    .line 532
    move-wide/from16 v4, p1

    .line 533
    .line 534
    goto/16 :goto_7

    .line 535
    .line 536
    :cond_13
    move/from16 v0, v18

    .line 537
    .line 538
    add-long v12, v16, v14

    .line 539
    .line 540
    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 541
    .line 542
    iput v0, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 543
    .line 544
    :cond_14
    :goto_e
    return-void
.end method

.method public updateStandbyBucket(ILjava/lang/String;I)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "JobScheduler.Quota"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Moving pkg "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " to bucketIndex "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 45
    .line 46
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iput p3, v2, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    .line 55
    .line 56
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 57
    .line 58
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/util/ArraySet;

    .line 63
    .line 64
    if-eqz v2, :cond_10

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    goto/16 :goto_9

    .line 73
    .line 74
    :cond_2
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 75
    .line 76
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

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    .line 89
    .line 90
    if-eq p3, v6, :cond_3

    .line 91
    .line 92
    iget v8, v7, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 93
    .line 94
    if-ne v8, v6, :cond_4

    .line 95
    .line 96
    :cond_3
    iget v8, v7, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 97
    .line 98
    if-eq p3, v8, :cond_4

    .line 99
    .line 100
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto/16 :goto_a

    .line 106
    .line 107
    :cond_4
    :goto_1
    if-ne p3, v6, :cond_5

    .line 108
    .line 109
    const v6, 0x10000007

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v6}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    iget v8, v7, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 117
    .line 118
    if-ne v8, v6, :cond_7

    .line 119
    .line 120
    iget v6, v7, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 121
    .line 122
    const v8, -0x10000008

    .line 123
    .line 124
    .line 125
    and-int/2addr v6, v8

    .line 126
    iput v6, v7, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 127
    .line 128
    if-eqz v6, :cond_6

    .line 129
    .line 130
    iget v8, v7, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 131
    .line 132
    and-int/2addr v8, v6

    .line 133
    if-ne v6, v8, :cond_6

    .line 134
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

    .line 139
    .line 140
    :cond_7
    :goto_3
    iput p3, v7, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 141
    .line 142
    iput-boolean v5, v7, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    .line 143
    .line 144
    add-int/lit8 v3, v3, -0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_8
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 148
    .line 149
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    check-cast p3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 154
    .line 155
    if-eqz p3, :cond_9

    .line 156
    .line 157
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_9

    .line 162
    .line 163
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 167
    .line 168
    .line 169
    :cond_9
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 170
    .line 171
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    check-cast p3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 176
    .line 177
    if-eqz p3, :cond_a

    .line 178
    .line 179
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_a

    .line 184
    .line 185
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 189
    .line 190
    .line 191
    :cond_a
    iget-object p3, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 192
    .line 193
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 199
    .line 200
    .line 201
    move-result-wide v2

    .line 202
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p3, p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 207
    .line 208
    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-lez p1, :cond_f

    .line 215
    .line 216
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 217
    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_b

    .line 226
    .line 227
    const-string p0, "JobScheduler"

    .line 228
    .line 229
    const-string/jumbo p1, "onRestrictedBucketChanged called with no jobs"

    .line 230
    .line 231
    .line 232
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_b
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 237
    .line 238
    monitor-enter p2

    .line 239
    :goto_4
    if-ge v5, p1, :cond_e

    .line 240
    .line 241
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p3

    .line 245
    check-cast p3, Lcom/android/server/job/controllers/JobStatus;

    .line 246
    .line 247
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    .line 248
    .line 249
    check-cast v1, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    sub-int/2addr v1, v4

    .line 256
    :goto_5
    if-ltz v1, :cond_d

    .line 257
    .line 258
    iget v2, p3, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 259
    .line 260
    if-ne v2, v6, :cond_c

    .line 261
    .line 262
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    .line 263
    .line 264
    check-cast v2, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Lcom/android/server/job/controllers/RestrictingController;

    .line 271
    .line 272
    invoke-virtual {v2, p3}, Lcom/android/server/job/controllers/RestrictingController;->startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 273
    .line 274
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

    .line 279
    .line 280
    check-cast v2, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    check-cast v2, Lcom/android/server/job/controllers/RestrictingController;

    .line 287
    .line 288
    invoke-virtual {v2, p3}, Lcom/android/server/job/controllers/RestrictingController;->stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 289
    .line 290
    .line 291
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_e
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 298
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 299
    .line 300
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 305
    .line 306
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
