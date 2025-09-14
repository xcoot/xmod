.class public final Lcom/android/server/job/JobServiceContext;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field public static final NOTIFICATION_TIMEOUT_MILLIS:J

.field public static final OP_BIND_TIMEOUT_MILLIS:J

.field public static final OP_TIMEOUT_MILLIS:J

.field public static final VERB_STRINGS:[Ljava/lang/String;

.field public static final sEnqueuedJwiAtJobStart:Lcom/android/modules/expresslog/Histogram;

.field public static final sTransferredNetworkDownloadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sTransferredNetworkUploadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sUpdatedEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sUpdatedEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAvailable:Z

.field public mAwaitingNotification:Z

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mCallbackHandler:Lcom/android/server/job/JobServiceContext$JobServiceHandler;

.field public mCancelled:Z

.field public final mCompletedListener:Lcom/android/server/job/JobSchedulerService;

.field public final mContext:Landroid/content/Context;

.field public mDeathMarkDebugReason:Ljava/lang/String;

.field public mDeathMarkInternalStopReason:I

.field public mDeathMarkStopReason:I

.field public mEstimatedDownloadBytes:J

.field public mEstimatedUploadBytes:J

.field public mExecutionStartTimeElapsed:J

.field public mInitialDownloadedBytesFromCalling:J

.field public mInitialDownloadedBytesFromSource:J

.field public mInitialUploadedBytesFromCalling:J

.field public mInitialUploadedBytesFromSource:J

.field public final mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field public final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field public mLastExecutionDurationStampTimeElapsed:J

.field public mLastUnsuccessfulFinishElapsed:J

.field public final mLock:Ljava/lang/Object;

.field public mMaxExecutionTimeMillis:J

.field public mMinExecutionGuaranteeMillis:J

.field public final mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

.field public mParams:Landroid/app/job/JobParameters;

.field public mPendingDebugStopReason:Ljava/lang/String;

.field public mPendingInternalStopReason:I

.field public mPendingNetworkChange:Landroid/net/Network;

.field public mPendingStopReason:I

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPreferredUid:I

.field public mPreviousJobHadSuccessfulFinish:Z

.field public mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

.field public mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field public mRunningJobWorkType:I

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field public mStoppedReason:Ljava/lang/String;

.field public mStoppedTime:J

.field public mTimeoutElapsed:J

.field public mTransferredDownloadBytes:J

.field public mTransferredUploadBytes:J

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field mVerb:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public service:Landroid/app/job/IJobService;


# direct methods
.method public static -$$Nest$mhandleOpTimeoutLocked(Lcom/android/server/job/JobServiceContext;)V
    .locals 10

    .line 1
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 3
    if-eqz v1, :cond_a

    .line 5
    const/4 v2, 0x1

    .line 6
    const-wide/32 v3, 0xf6461b8

    .line 9
    if-eq v1, v2, :cond_9

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x3

    .line 14
    const-string v7, "JobServiceContext"

    .line 16
    if-eq v1, v2, :cond_1

    .line 18
    if-eq v1, v6, :cond_0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "Handling timeout for an invalid job state: "

    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, ", dropping."

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string/jumbo v1, "invalid timeout"

    .line 49
    invoke-virtual {p0, v1, v5}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    .line 52
    goto/16 :goto_1

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 56
    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 58
    invoke-static {v3, v4, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 61
    move-result v5

    .line 62
    const/4 v4, 0x0

    .line 63
    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_slow_app_response_on_stop_job"

    .line 66
    const/4 v2, 0x1

    .line 67
    const-string/jumbo v3, "timed out while stopping"

    .line 70
    const-string v6, "No response to onStopJob"

    .line 72
    move-object v0, p0

    .line 73
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)V

    .line 76
    goto/16 :goto_1

    .line 78
    :cond_1
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 80
    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 84
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 86
    invoke-virtual {v1, v2, v5}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_2

    .line 92
    iput v5, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 94
    iput v5, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 96
    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    const-string v2, "JS was waiting to stop this job. Sending onStop: "

    .line 104
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 123
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 125
    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 127
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    .line 129
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 137
    goto/16 :goto_1

    .line 139
    :cond_3
    :goto_0
    iget-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 141
    iget-wide v3, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    .line 143
    add-long/2addr v3, v1

    .line 144
    iget-wide v8, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 146
    add-long/2addr v1, v8

    .line 147
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 149
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 155
    move-result-wide v8

    .line 156
    cmp-long v3, v8, v3

    .line 158
    if-ltz v3, :cond_4

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 162
    const-string v2, "Client timed out while executing (no jobFinished received). Sending onStop: "

    .line 164
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 183
    const-string/jumbo v2, "client timed out"

    .line 186
    invoke-virtual {v1, v6, v6, v2}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 189
    const-string/jumbo v1, "timeout while executing"

    .line 192
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 195
    goto/16 :goto_1

    .line 197
    :cond_4
    cmp-long v1, v8, v1

    .line 199
    if-ltz v1, :cond_6

    .line 201
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 203
    invoke-virtual {v1, p0}, Lcom/android/server/job/JobConcurrencyManager;->shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    if-eqz v1, :cond_5

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    .line 211
    const-string v3, "Stopping client after min execution time: "

    .line 213
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v3, " because "

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object v2

    .line 235
    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 240
    const/4 v3, 0x4

    .line 241
    invoke-virtual {v2, v3, v6, v1}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 244
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 247
    goto/16 :goto_1

    .line 249
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 251
    const-string v2, "Letting "

    .line 253
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v2, " continue to run past min execution time"

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v1

    .line 272
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 278
    goto :goto_1

    .line 279
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    .line 281
    if-eqz v1, :cond_7

    .line 283
    const-string/jumbo v6, "required notification not provided"

    .line 286
    const/4 v5, 0x1

    .line 287
    const/4 v2, 0x1

    .line 288
    const/4 v4, 0x1

    .line 289
    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_slow_app_response_set_notification"

    .line 292
    const-string/jumbo v3, "timed out while stopping"

    .line 295
    move-object v0, p0

    .line 296
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)V

    .line 299
    goto :goto_1

    .line 300
    :cond_7
    iget-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    .line 302
    sub-long v1, v8, v1

    .line 304
    const-wide/32 v3, 0x493e0

    .line 307
    cmp-long v3, v1, v3

    .line 309
    if-gez v3, :cond_8

    .line 311
    const-string v3, "Unexpected op timeout while EXECUTING"

    .line 313
    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_8
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 318
    iget-wide v4, v3, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    .line 320
    add-long/2addr v4, v1

    .line 321
    iput-wide v4, v3, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    .line 323
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 325
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 327
    invoke-virtual {v1, v3}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 330
    iput-wide v8, p0, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    .line 332
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 335
    goto :goto_1

    .line 336
    :cond_9
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 338
    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 340
    invoke-static {v3, v4, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 343
    move-result v5

    .line 344
    const/4 v4, 0x1

    .line 345
    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_slow_app_response_on_start_job"

    .line 348
    const/4 v2, 0x0

    .line 349
    const-string/jumbo v3, "timed out while starting"

    .line 352
    const-string v6, "No response to onStartJob"

    .line 354
    move-object v0, p0

    .line 355
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)V

    .line 358
    goto :goto_1

    .line 359
    :cond_a
    const-string v6, "Timed out while trying to bind"

    .line 361
    const/4 v5, 0x0

    .line 362
    const/4 v2, 0x1

    .line 363
    const/4 v4, 0x1

    .line 364
    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_slow_app_response_binding"

    .line 367
    const-string/jumbo v3, "timed out while binding"

    .line 370
    move-object v0, p0

    .line 371
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)V

    .line 374
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 5
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    .line 7
    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    .line 9
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 11
    mul-int/lit16 v1, v0, 0x4650

    .line 13
    int-to-long v1, v1

    .line 14
    sput-wide v1, Lcom/android/server/job/JobServiceContext;->OP_BIND_TIMEOUT_MILLIS:J

    .line 16
    mul-int/lit16 v1, v0, 0x1f40

    .line 18
    int-to-long v1, v1

    .line 19
    sput-wide v1, Lcom/android/server/job/JobServiceContext;->OP_TIMEOUT_MILLIS:J

    .line 21
    const-wide/16 v1, 0x2710

    .line 23
    int-to-long v3, v0

    .line 24
    mul-long/2addr v3, v1

    .line 25
    sput-wide v3, Lcom/android/server/job/JobServiceContext;->NOTIFICATION_TIMEOUT_MILLIS:J

    .line 27
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 29
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 31
    const/high16 v2, 0x40400000    # 3.0f

    .line 33
    const v3, 0x3fb33333    # 1.4f

    .line 36
    const/16 v4, 0x14

    .line 38
    const/4 v5, 0x1

    .line 39
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 42
    const-string/jumbo v2, "job_scheduler.value_hist_w_uid_enqueued_work_items_at_job_start"

    .line 45
    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 48
    sput-object v0, Lcom/android/server/job/JobServiceContext;->sEnqueuedJwiAtJobStart:Lcom/android/modules/expresslog/Histogram;

    .line 50
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 52
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 54
    const/16 v2, 0x32

    .line 56
    const/4 v3, 0x0

    .line 57
    const/high16 v4, 0x42000000    # 32.0f

    .line 59
    const v5, 0x3fa7ae14    # 1.31f

    .line 62
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 65
    const-string/jumbo v6, "job_scheduler.value_hist_transferred_network_download_kilobytes_high_water_mark"

    .line 68
    invoke-direct {v0, v6, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 71
    sput-object v0, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkDownloadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 73
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 75
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 77
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 80
    const-string/jumbo v6, "job_scheduler.value_hist_transferred_network_upload_kilobytes_high_water_mark"

    .line 83
    invoke-direct {v0, v6, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 86
    sput-object v0, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkUploadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 88
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 90
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 92
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 95
    const-string/jumbo v6, "job_scheduler.value_hist_updated_estimated_network_download_kilobytes"

    .line 98
    invoke-direct {v0, v6, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 101
    sput-object v0, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 103
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 105
    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    .line 107
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    .line 110
    const-string/jumbo v2, "job_scheduler.value_hist_updated_estimated_network_upload_kilobytes"

    .line 113
    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 116
    sput-object v0, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 118
    const-string v0, "VERB_STOPPING"

    .line 120
    const-string v1, "VERB_FINISHED"

    .line 122
    const-string v2, "VERB_BINDING"

    .line 124
    const-string v3, "VERB_STARTING"

    .line 126
    const-string v4, "VERB_EXECUTING"

    .line 128
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 7
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 9
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 15
    iget-object v1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 17
    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 21
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 23
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 29
    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 31
    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 33
    iput-object p5, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 35
    new-instance p4, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    .line 37
    invoke-direct {p4, p0, p6}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    .line 40
    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    .line 42
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 44
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    .line 46
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobSchedulerService;

    .line 48
    const-class p1, Landroid/os/PowerManager;

    .line 50
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/os/PowerManager;

    .line 56
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPowerManager:Landroid/os/PowerManager;

    .line 58
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 60
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 66
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 68
    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 71
    const/4 p1, 0x4

    .line 72
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 74
    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 77
    return-void
.end method


# virtual methods
.method public final applyStoppedReasonLocked(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 5
    if-nez v0, :cond_0

    .line 7
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 9
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 20
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 22
    if-eqz p1, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 26
    iput-object p0, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    .line 28
    iput-wide v0, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    .line 30
    :cond_0
    return-void
.end method

.method public final assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v0

    .line 16
    iget-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mPreviousJobHadSuccessfulFinish:Z

    .line 18
    if-nez v2, :cond_0

    .line 20
    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mLastUnsuccessfulFinishElapsed:J

    .line 22
    sub-long v2, v0, v2

    .line 24
    const-wide/16 v4, 0x3a98

    .line 26
    cmp-long p0, v2, v4

    .line 28
    if-gez p0, :cond_0

    .line 30
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_0
    const/16 p0, 0x80

    .line 34
    const-string v2, "Caller no longer running"

    .line 36
    invoke-static {p0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object p0

    .line 40
    iget-object v2, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    .line 42
    if-eqz v2, :cond_1

    .line 44
    const-string v2, ", last stopped "

    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-wide v2, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    .line 51
    sub-long/2addr v0, v2

    .line 52
    invoke-static {v0, v1, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 55
    const-string v0, " because: "

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object p1, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1

    .line 75
    :cond_2
    const/4 p0, 0x1

    .line 76
    return p0
.end method

.method public final canGetNetworkInformation(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    const-wide/32 v2, 0x10341a19

    .line 14
    iget v7, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 16
    invoke-static {v2, v3, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 22
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 24
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object v8

    .line 32
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 34
    const-string/jumbo v10, "network info via JS"

    .line 37
    const/4 v6, -0x1

    .line 38
    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    .line 40
    const/4 v9, 0x0

    .line 41
    invoke-static/range {v4 .. v10}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return v1

    .line 49
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 50
    return p0
.end method

.method public final cancelExecutingJobLocked(IILjava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_4

    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 12
    iget-boolean v0, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 14
    if-eqz v0, :cond_1

    .line 16
    const/16 v0, 0xa

    .line 18
    if-ne p1, v0, :cond_1

    .line 20
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 22
    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 24
    add-long/2addr v0, v2

    .line 25
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    move-result-wide v2

    .line 34
    cmp-long v0, v2, v0

    .line 36
    if-gez v0, :cond_1

    .line 38
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 40
    iput p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 42
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 47
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 50
    const/4 p2, 0x2

    .line 51
    if-ne p1, p2, :cond_3

    .line 53
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 55
    if-eqz p1, :cond_2

    .line 57
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 p1, -0x1

    .line 61
    :goto_0
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 63
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    :goto_1
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 69
    if-eqz p1, :cond_5

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    const-string p2, "Too late to process cancel for context (verb="

    .line 75
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 80
    const-string p2, "), ignoring."

    .line 82
    const-string p3, "JobServiceContext"

    .line 84
    invoke-static {p1, p0, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_5
    :goto_2
    return-void
.end method

.method public final closeAndCleanupJobLocked(Ljava/lang/String;Z)V
    .locals 82

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p2

    .line 5
    iget v0, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 7
    const/4 v3, 0x4

    .line 8
    if-ne v0, v3, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 13
    const-string v4, "JobServiceContext"

    .line 15
    if-eqz v0, :cond_1

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    const-string v6, "Cleaning up "

    .line 21
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v6, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 26
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v6, " reschedule="

    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v6, " reason="

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-object/from16 v6, p1

    .line 48
    invoke-static {v5, v6, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object/from16 v6, p1

    .line 54
    :goto_0
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 56
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    move-result-wide v7

    .line 63
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 66
    iget-object v5, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 68
    iget-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    .line 70
    sub-long v9, v7, v9

    .line 72
    iget-wide v11, v5, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    .line 74
    add-long/2addr v11, v9

    .line 75
    iput-wide v11, v5, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    .line 77
    iget-object v9, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 79
    invoke-virtual {v9}, Landroid/app/job/JobParameters;->getStopReason()I

    .line 82
    move-result v29

    .line 83
    iget-object v9, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 85
    invoke-virtual {v9}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    .line 88
    move-result v15

    .line 89
    iget v9, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 91
    if-eqz v9, :cond_3

    .line 93
    if-eqz v0, :cond_2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    const-string v9, "Job marked for death because of "

    .line 99
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget v9, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    .line 104
    invoke-static {v9}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    .line 107
    move-result-object v9

    .line 108
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v9, ": "

    .line 113
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v9, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    .line 118
    invoke-static {v0, v9, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_2
    iget v0, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 123
    iget v9, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    .line 125
    move v14, v0

    .line 126
    move v13, v9

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    move v13, v15

    .line 129
    move/from16 v14, v29

    .line 131
    :goto_1
    const/16 v0, 0xa

    .line 133
    const/4 v12, 0x1

    .line 134
    if-ne v15, v0, :cond_4

    .line 136
    move v0, v12

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    const/4 v0, 0x0

    .line 139
    :goto_2
    iput-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mPreviousJobHadSuccessfulFinish:Z

    .line 141
    if-nez v0, :cond_5

    .line 143
    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mLastUnsuccessfulFinishElapsed:J

    .line 145
    :cond_5
    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 147
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 152
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 155
    move-result-wide v8

    .line 156
    iget v0, v5, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 158
    const/16 v10, 0x28

    .line 160
    move/from16 v16, v14

    .line 162
    iget-object v14, v5, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 164
    iget v3, v5, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 166
    if-lt v0, v10, :cond_7

    .line 168
    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 170
    invoke-virtual {v0, v3, v14}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 173
    move-result-object v0

    .line 174
    iget v10, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 176
    if-ne v10, v12, :cond_6

    .line 178
    iget-wide v11, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 180
    iget-wide v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    .line 182
    sub-long v1, v8, v1

    .line 184
    add-long/2addr v1, v11

    .line 185
    iput-wide v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 187
    const/4 v1, 0x1

    .line 188
    goto :goto_3

    .line 189
    :cond_6
    move v1, v12

    .line 190
    :goto_3
    sub-int/2addr v10, v1

    .line 191
    iput v10, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 193
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 195
    const/4 v10, 0x0

    .line 196
    invoke-virtual {v2, v15, v10}, Landroid/util/SparseIntArray;->get(II)I

    .line 199
    move-result v2

    .line 200
    iget-object v0, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 202
    add-int/2addr v2, v1

    .line 203
    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 206
    const/4 v11, 0x0

    .line 207
    goto :goto_5

    .line 208
    :cond_7
    move v1, v12

    .line 209
    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 211
    invoke-virtual {v0, v3, v14}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 214
    move-result-object v0

    .line 215
    iget v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 217
    if-ne v2, v1, :cond_8

    .line 219
    iget-wide v10, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 221
    move v12, v2

    .line 222
    iget-wide v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 224
    sub-long v1, v8, v1

    .line 226
    add-long/2addr v1, v10

    .line 227
    iput-wide v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 229
    const/4 v1, 0x1

    .line 230
    goto :goto_4

    .line 231
    :cond_8
    move v12, v2

    .line 232
    :goto_4
    add-int/lit8 v2, v12, -0x1

    .line 234
    iput v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 236
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 238
    const/4 v11, 0x0

    .line 239
    invoke-virtual {v2, v15, v11}, Landroid/util/SparseIntArray;->get(II)I

    .line 242
    move-result v2

    .line 243
    iget-object v0, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 245
    add-int/2addr v2, v1

    .line 246
    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    :goto_5
    invoke-virtual {v7, v8, v9}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 252
    iget-object v0, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 254
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 257
    move-result v0

    .line 258
    const/4 v2, 0x2

    .line 259
    if-eqz v0, :cond_9

    .line 261
    const/4 v8, 0x4

    .line 262
    goto :goto_6

    .line 263
    :cond_9
    move v8, v2

    .line 264
    :goto_6
    iget-object v0, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 266
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 269
    move-result v10

    .line 270
    iget v9, v5, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 272
    iget-object v0, v5, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 274
    move v12, v11

    .line 275
    move-object v11, v0

    .line 276
    move-object/from16 v17, v14

    .line 278
    move v14, v12

    .line 279
    move-object/from16 v12, p1

    .line 281
    move v6, v13

    .line 282
    move v13, v15

    .line 283
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/job/JobPackageTracker;->addEvent(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 286
    iget v7, v5, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 288
    iget-boolean v0, v5, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    .line 290
    if-eqz v0, :cond_a

    .line 292
    filled-new-array {v3, v7}, [I

    .line 295
    move-result-object v8

    .line 296
    :goto_7
    move-object v11, v8

    .line 297
    goto :goto_8

    .line 298
    :cond_a
    new-array v8, v1, [I

    .line 300
    aput v3, v8, v14

    .line 302
    goto :goto_7

    .line 303
    :goto_8
    const/4 v8, 0x0

    .line 304
    iget-object v9, v5, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 306
    if-eqz v0, :cond_b

    .line 308
    filled-new-array {v8, v9}, [Ljava/lang/String;

    .line 311
    move-result-object v0

    .line 312
    :goto_9
    move-object v12, v0

    .line 313
    goto :goto_a

    .line 314
    :cond_b
    filled-new-array {v9}, [Ljava/lang/String;

    .line 317
    move-result-object v0

    .line 318
    goto :goto_9

    .line 319
    :goto_a
    iget v0, v5, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 321
    invoke-virtual {v5, v1}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 324
    move-result v19

    .line 325
    invoke-virtual {v5, v2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 328
    move-result v20

    .line 329
    const/16 v9, 0x8

    .line 331
    invoke-virtual {v5, v9}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 334
    move-result v21

    .line 335
    const/high16 v10, -0x80000000

    .line 337
    invoke-virtual {v5, v10}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 340
    move-result v22

    .line 341
    const/high16 v13, 0x40000000    # 2.0f

    .line 343
    invoke-virtual {v5, v13}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 346
    move-result v23

    .line 347
    const/4 v13, 0x4

    .line 348
    invoke-virtual {v5, v13}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 351
    move-result v24

    .line 352
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 355
    move-result v25

    .line 356
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    .line 359
    move-result v26

    .line 360
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 363
    move-result v27

    .line 364
    iget-boolean v13, v5, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 366
    iget-object v14, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 368
    invoke-virtual {v14}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 371
    move-result v30

    .line 372
    iget-object v14, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 374
    invoke-virtual {v14}, Landroid/app/job/JobInfo;->getPriority()I

    .line 377
    move-result v31

    .line 378
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 381
    move-result v32

    .line 382
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    .line 385
    move-result v33

    .line 386
    iget-object v14, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 388
    invoke-virtual {v14}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    .line 391
    move-result-wide v34

    .line 392
    move-object/from16 v14, p0

    .line 394
    iget-object v8, v14, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 396
    invoke-virtual {v8}, Landroid/app/job/JobParameters;->isOverrideDeadlineExpired()Z

    .line 399
    move-result v36

    .line 400
    invoke-virtual {v5, v1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 403
    move-result v37

    .line 404
    invoke-virtual {v5, v2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 407
    move-result v38

    .line 408
    invoke-virtual {v5, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 411
    move-result v39

    .line 412
    invoke-virtual {v5, v10}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 415
    move-result v40

    .line 416
    const/4 v8, 0x4

    .line 417
    invoke-virtual {v5, v8}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 420
    move-result v41

    .line 421
    const/high16 v8, 0x10000000

    .line 423
    invoke-virtual {v5, v8}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 426
    move-result v42

    .line 427
    const/high16 v8, 0x4000000

    .line 429
    invoke-virtual {v5, v8}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 432
    move-result v43

    .line 433
    iget-wide v9, v14, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 435
    iget-wide v1, v5, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 437
    sub-long v44, v9, v1

    .line 439
    iget-object v1, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 441
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    .line 444
    move-result v46

    .line 445
    iget-boolean v1, v5, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 447
    iget-object v2, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 449
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 452
    move-result v48

    .line 453
    iget-object v2, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 455
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    .line 458
    move-result-wide v49

    .line 459
    iget-wide v9, v5, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 461
    move-wide/from16 v51, v9

    .line 463
    iget-wide v8, v5, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 465
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    .line 468
    move-result v55

    .line 469
    iget-object v10, v14, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 471
    invoke-virtual {v10, v7}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    .line 474
    move-result v10

    .line 475
    invoke-static {v10}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    .line 478
    move-result v56

    .line 479
    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 482
    move-result-wide v53

    .line 483
    move v10, v3

    .line 484
    iget-wide v2, v14, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromSource:J

    .line 486
    sub-long v58, v53, v2

    .line 488
    invoke-static {v10}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 491
    move-result-wide v2

    .line 492
    move-wide/from16 v53, v8

    .line 494
    iget-wide v8, v14, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromSource:J

    .line 496
    sub-long v60, v2, v8

    .line 498
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 501
    move-result-wide v2

    .line 502
    iget-wide v8, v14, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromCalling:J

    .line 504
    sub-long v62, v2, v8

    .line 506
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 509
    move-result-wide v2

    .line 510
    iget-wide v8, v14, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromCalling:J

    .line 512
    sub-long v64, v2, v8

    .line 514
    iget-object v2, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 516
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    .line 519
    move-result-wide v66

    .line 520
    iget-object v2, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 522
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlexMillis()J

    .line 525
    move-result-wide v68

    .line 526
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    .line 529
    move-result v70

    .line 530
    const/high16 v2, 0x200000

    .line 532
    invoke-virtual {v5, v2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 535
    move-result v71

    .line 536
    iget v2, v5, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 538
    iget v3, v5, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 540
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    .line 543
    move-result-object v75

    .line 544
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    .line 547
    move-result-object v76

    .line 548
    iget-object v8, v5, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    .line 550
    move-object/from16 v57, v8

    .line 552
    iget-boolean v8, v5, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    .line 554
    move/from16 v72, v8

    .line 556
    const/16 v10, 0x8

    .line 558
    move-wide/from16 v8, v51

    .line 560
    iget-object v10, v5, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 562
    move/from16 v28, v13

    .line 564
    move-object v13, v10

    .line 565
    const/4 v10, 0x0

    .line 566
    move/from16 v78, v6

    .line 568
    move/from16 v77, v7

    .line 570
    move-object v7, v14

    .line 571
    move/from16 v6, v16

    .line 573
    move-object/from16 v79, v17

    .line 575
    move v14, v10

    .line 576
    move v10, v15

    .line 577
    iget-wide v14, v5, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    .line 579
    move-wide/from16 v17, v14

    .line 581
    move v15, v10

    .line 582
    move/from16 v16, v0

    .line 584
    move/from16 v47, v1

    .line 586
    move/from16 v73, v2

    .line 588
    move/from16 v74, v3

    .line 590
    move v0, v10

    .line 591
    const/16 v10, 0x8

    .line 593
    const/4 v14, 0x0

    .line 594
    invoke-static/range {v10 .. v76}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;)V

    .line 597
    const-wide/32 v1, 0x80000

    .line 600
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 603
    move-result v3

    .line 604
    const-string v9, "JobScheduler"

    .line 606
    if-eqz v3, :cond_c

    .line 608
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    .line 611
    move-result v3

    .line 612
    invoke-static {v1, v2, v9, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 615
    :cond_c
    iget-object v1, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 617
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    .line 620
    move-result-object v1

    .line 621
    if-eqz v1, :cond_d

    .line 623
    iget-object v1, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 625
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    .line 628
    move-result v1

    .line 629
    const-wide/16 v2, 0x1000

    .line 631
    invoke-static {v2, v3, v9, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 634
    :cond_d
    :try_start_0
    iget-object v1, v7, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 636
    iget-object v2, v7, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 638
    iget-object v3, v2, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 640
    iget v2, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 642
    invoke-interface {v1, v3, v2, v0}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :catch_0
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    .line 647
    invoke-virtual {v0, v6, v7, v5}, Lcom/android/server/job/JobNotificationCoordinator;->removeNotificationAssociation(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    .line 650
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 652
    if-eqz v0, :cond_e

    .line 654
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 657
    :cond_e
    iget v1, v7, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 659
    :try_start_1
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 661
    invoke-virtual {v0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 664
    :goto_b
    const/4 v2, 0x0

    .line 665
    goto :goto_c

    .line 666
    :catch_1
    move-exception v0

    .line 667
    const-string/jumbo v2, "unbindService failed : "

    .line 670
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    goto :goto_b

    .line 674
    :goto_c
    iput-object v2, v7, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 676
    iput-object v2, v7, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 678
    const/4 v3, 0x0

    .line 679
    iput v3, v7, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 681
    iput-object v2, v7, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 683
    iput-object v2, v7, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 685
    const/4 v4, 0x4

    .line 686
    iput v4, v7, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 688
    iput-boolean v3, v7, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 690
    iput-object v2, v7, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 692
    const/4 v4, 0x1

    .line 693
    iput-boolean v4, v7, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 695
    iput v3, v7, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 697
    iput v3, v7, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    .line 699
    iput-object v2, v7, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    .line 701
    const-wide/16 v10, 0x0

    .line 703
    iput-wide v10, v7, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    .line 705
    iput v3, v7, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 707
    iput v3, v7, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 709
    iput-object v2, v7, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    .line 711
    iput-object v2, v7, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 716
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    .line 719
    move-result v0

    .line 720
    if-eqz v0, :cond_f

    .line 722
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 724
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 727
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 730
    move-result-object v4

    .line 731
    iput-object v7, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 733
    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 735
    iput v3, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 737
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 739
    const/16 v8, 0xb

    .line 741
    invoke-virtual {v0, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 744
    move-result-object v0

    .line 745
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 748
    :cond_f
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobSchedulerService;

    .line 750
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 752
    if-eqz v4, :cond_10

    .line 754
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 757
    new-instance v8, Ljava/lang/StringBuilder;

    .line 759
    const-string v12, "Completed "

    .line 761
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 767
    const-string v12, ", reason="

    .line 769
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    move/from16 v15, v78

    .line 774
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 777
    const-string v12, ", reschedule="

    .line 779
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    move/from16 v12, p2

    .line 784
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 790
    move-result-object v8

    .line 791
    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    goto :goto_d

    .line 795
    :cond_10
    move/from16 v12, p2

    .line 797
    move/from16 v15, v78

    .line 799
    :goto_d
    iget v8, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    .line 801
    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    .line 803
    aput-object v5, v13, v8

    .line 805
    sget-object v13, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 807
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 810
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 813
    move-result-wide v13

    .line 814
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    .line 816
    aput-wide v13, v2, v8

    .line 818
    iget v2, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    .line 820
    const/4 v8, 0x1

    .line 821
    add-int/2addr v2, v8

    .line 822
    rem-int/lit8 v2, v2, 0x14

    .line 824
    iput v2, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    .line 826
    invoke-virtual {v0, v5, v15}, Lcom/android/server/job/JobSchedulerService;->maybeProcessBuggyJob(Lcom/android/server/job/controllers/JobStatus;I)V

    .line 829
    const/4 v2, 0x7

    .line 830
    if-eq v15, v2, :cond_19

    .line 832
    const/16 v2, 0x8

    .line 834
    if-ne v15, v2, :cond_11

    .line 836
    goto/16 :goto_12

    .line 838
    :cond_11
    if-eqz v12, :cond_12

    .line 840
    invoke-virtual {v0, v5, v6, v15}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;II)Lcom/android/server/job/controllers/JobStatus;

    .line 843
    move-result-object v2

    .line 844
    goto :goto_e

    .line 845
    :cond_12
    const/4 v2, 0x0

    .line 846
    :goto_e
    if-eqz v2, :cond_14

    .line 848
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 851
    move-result v6

    .line 852
    if-nez v6, :cond_14

    .line 854
    const/4 v6, 0x3

    .line 855
    if-eq v15, v6, :cond_13

    .line 857
    const/4 v6, 0x2

    .line 858
    if-ne v15, v6, :cond_14

    .line 860
    :cond_13
    const/high16 v6, 0x2400000

    .line 862
    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    .line 865
    :cond_14
    iget-object v6, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 867
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 870
    move-result v6

    .line 871
    const/4 v12, 0x1

    .line 872
    xor-int/2addr v6, v12

    .line 873
    invoke-virtual {v0, v5, v2, v6}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 876
    move-result v6

    .line 877
    if-nez v6, :cond_16

    .line 879
    if-eqz v4, :cond_15

    .line 881
    const-string v2, "Could not find job to remove. Was job removed while executing?"

    .line 883
    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_15
    iget-object v2, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 888
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    .line 891
    move-result v2

    .line 892
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 894
    iget-object v4, v4, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 896
    iget-object v6, v5, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 898
    move/from16 v9, v77

    .line 900
    invoke-virtual {v4, v9, v2, v6}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    .line 903
    move-result-object v2

    .line 904
    if-eqz v2, :cond_1a

    .line 906
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 908
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 911
    move-result-object v0

    .line 912
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 915
    goto :goto_13

    .line 916
    :cond_16
    const-string v4, "Unable to regrant job permissions for "

    .line 918
    if-eqz v2, :cond_17

    .line 920
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 923
    goto :goto_f

    .line 924
    :catch_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 926
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 935
    move-result-object v4

    .line 936
    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :goto_f
    invoke-virtual {v0, v2, v5}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 942
    goto :goto_11

    .line 943
    :cond_17
    iget-object v2, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 945
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 948
    move-result v2

    .line 949
    if-eqz v2, :cond_18

    .line 951
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    .line 954
    move-result-object v2

    .line 955
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 958
    goto :goto_10

    .line 959
    :catch_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 961
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 970
    move-result-object v4

    .line 971
    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :goto_10
    invoke-virtual {v0, v2, v5}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 977
    :cond_18
    :goto_11
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 980
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 983
    goto :goto_13

    .line 984
    :cond_19
    :goto_12
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 987
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 990
    :cond_1a
    :goto_13
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 992
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 994
    iget-object v4, v2, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 996
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 999
    move-result v4

    .line 1000
    const/4 v6, 0x1

    .line 1001
    sub-int/2addr v4, v6

    .line 1002
    const-string v6, "JobScheduler.Concurrency"

    .line 1004
    if-gez v4, :cond_1b

    .line 1006
    const-string v4, "# running jobs for "

    .line 1008
    const-string v9, " went negative."

    .line 1010
    invoke-static {v1, v4, v9, v6}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    goto :goto_14

    .line 1014
    :cond_1b
    iget-object v9, v2, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 1016
    invoke-virtual {v9, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1019
    invoke-virtual {v2, v1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->maybeAdjustReservations(I)V

    .line 1022
    :goto_14
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 1024
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1027
    sget-object v4, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    .line 1029
    iget-object v9, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1031
    if-eqz v9, :cond_1c

    .line 1033
    iget-object v4, v4, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->mRunningJobSet:Ljava/util/Set;

    .line 1035
    check-cast v4, Ljava/util/HashSet;

    .line 1037
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1040
    goto :goto_15

    .line 1041
    :cond_1c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1044
    :goto_15
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 1046
    check-cast v4, Ljava/util/ArrayList;

    .line 1048
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1051
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 1053
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 1056
    move-result v4

    .line 1057
    const/16 v9, 0x60

    .line 1059
    if-ge v4, v9, :cond_1d

    .line 1061
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 1063
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1066
    goto :goto_16

    .line 1067
    :cond_1d
    iget v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    .line 1069
    const/4 v9, 0x1

    .line 1070
    add-int/2addr v4, v9

    .line 1071
    iput v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    .line 1073
    :goto_16
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 1075
    iget v9, v5, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 1077
    move-object/from16 v12, v79

    .line 1079
    invoke-virtual {v4, v9, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1082
    move-result-object v4

    .line 1083
    check-cast v4, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 1085
    if-nez v4, :cond_1e

    .line 1087
    const-string v4, "Running job didn\'t have an active PackageStats object"

    .line 1089
    invoke-static {v6, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    goto :goto_17

    .line 1093
    :cond_1e
    iget-boolean v9, v5, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 1095
    invoke-static {v4, v3, v9}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 1098
    iget v9, v4, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    .line 1100
    if-gtz v9, :cond_1f

    .line 1102
    iget v9, v4, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    .line 1104
    if-gtz v9, :cond_1f

    .line 1106
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 1108
    iget v12, v4, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    .line 1110
    iget-object v13, v4, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    .line 1112
    invoke-virtual {v9, v12, v13}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    .line 1117
    check-cast v9, Landroid/util/Pools$SimplePool;

    .line 1119
    invoke-virtual {v9, v4}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 1122
    :cond_1f
    :goto_17
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1124
    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 1126
    iget v9, v4, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 1128
    const/4 v12, -0x1

    .line 1129
    if-nez v9, :cond_20

    .line 1131
    iput v12, v7, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 1133
    invoke-virtual {v0, v3}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency(Z)V

    .line 1136
    goto/16 :goto_2b

    .line 1138
    :cond_20
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 1140
    check-cast v9, Ljava/util/ArrayList;

    .line 1142
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1145
    move-result v9

    .line 1146
    iget v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 1148
    if-lt v9, v13, :cond_26

    .line 1150
    iget-boolean v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    .line 1152
    if-nez v9, :cond_21

    .line 1154
    move-object v15, v4

    .line 1155
    move-object/from16 v19, v5

    .line 1157
    move-object/from16 p2, v6

    .line 1159
    const/4 v3, 0x1

    .line 1160
    goto/16 :goto_1c

    .line 1162
    :cond_21
    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 1164
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1170
    move-result-wide v13

    .line 1171
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 1173
    check-cast v9, Ljava/util/ArrayList;

    .line 1175
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1178
    move-result v9

    .line 1179
    const/4 v15, 0x1

    .line 1180
    sub-int/2addr v9, v15

    .line 1181
    const-wide v15, 0x7fffffffffffffffL

    .line 1186
    move-wide/from16 v80, v15

    .line 1188
    move-object v15, v4

    .line 1189
    move-wide/from16 v3, v80

    .line 1191
    :goto_18
    if-ltz v9, :cond_22

    .line 1193
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 1195
    check-cast v8, Ljava/util/ArrayList;

    .line 1197
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1200
    move-result-object v8

    .line 1201
    check-cast v8, Lcom/android/server/job/JobServiceContext;

    .line 1203
    iget-wide v10, v8, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 1205
    move-object/from16 v19, v5

    .line 1207
    move-object/from16 p2, v6

    .line 1209
    iget-wide v5, v8, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 1211
    add-long/2addr v10, v5

    .line 1212
    sub-long/2addr v10, v13

    .line 1213
    const-wide/16 v5, 0x0

    .line 1215
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 1218
    move-result-wide v10

    .line 1219
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 1222
    move-result-wide v3

    .line 1223
    add-int/lit8 v9, v9, -0x1

    .line 1225
    move-wide v10, v5

    .line 1226
    move-object/from16 v5, v19

    .line 1228
    move-object/from16 v6, p2

    .line 1230
    goto :goto_18

    .line 1231
    :cond_22
    move-object/from16 v19, v5

    .line 1233
    move-object/from16 p2, v6

    .line 1235
    const/4 v8, 0x4

    .line 1236
    invoke-virtual {v2, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    .line 1239
    move-result v5

    .line 1240
    if-lez v5, :cond_24

    .line 1242
    iget-wide v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    .line 1244
    cmp-long v3, v3, v5

    .line 1246
    if-ltz v3, :cond_23

    .line 1248
    :goto_19
    const/4 v3, 0x1

    .line 1249
    goto :goto_1a

    .line 1250
    :cond_23
    const/4 v3, 0x0

    .line 1251
    :goto_1a
    const/4 v4, 0x1

    .line 1252
    goto :goto_1b

    .line 1253
    :cond_24
    const/16 v5, 0x8

    .line 1255
    invoke-virtual {v2, v5}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    .line 1258
    move-result v5

    .line 1259
    if-lez v5, :cond_25

    .line 1261
    iget-wide v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    .line 1263
    cmp-long v3, v3, v5

    .line 1265
    if-ltz v3, :cond_23

    .line 1267
    goto :goto_19

    .line 1268
    :cond_25
    iget-wide v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    .line 1270
    cmp-long v3, v3, v5

    .line 1272
    if-ltz v3, :cond_23

    .line 1274
    goto :goto_19

    .line 1275
    :goto_1b
    xor-int/2addr v3, v4

    .line 1276
    :goto_1c
    if-eqz v3, :cond_27

    .line 1278
    iput v12, v7, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 1280
    const/4 v1, 0x0

    .line 1281
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency(Z)V

    .line 1284
    goto/16 :goto_2b

    .line 1286
    :cond_26
    move-object v15, v4

    .line 1287
    move-object/from16 v19, v5

    .line 1289
    move-object/from16 p2, v6

    .line 1291
    :cond_27
    iget v3, v7, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 1293
    sget-boolean v4, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    .line 1295
    const-string v5, "Already running similar job to: "

    .line 1297
    const-string v6, "Pending+not ready job: "

    .line 1299
    const-string v8, "Pending+running job: "

    .line 1301
    const-string v9, "Pending queue contained a running job"

    .line 1303
    if-eq v3, v12, :cond_3a

    .line 1305
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 1308
    move-object v10, v15

    .line 1309
    const/4 v3, 0x0

    .line 1310
    invoke-virtual {v0, v10, v3}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    .line 1313
    const/4 v3, 0x1

    .line 1314
    iput-boolean v3, v10, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 1316
    move v12, v1

    .line 1317
    move v15, v12

    .line 1318
    move/from16 v17, v15

    .line 1320
    const/4 v3, 0x0

    .line 1321
    const/4 v11, 0x0

    .line 1322
    const/4 v13, 0x0

    .line 1323
    const/4 v14, 0x0

    .line 1324
    :goto_1d
    invoke-virtual {v10}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    .line 1327
    move-result-object v1

    .line 1328
    if-eqz v1, :cond_34

    .line 1330
    move/from16 v20, v13

    .line 1332
    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 1334
    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1337
    move-result v13

    .line 1338
    if-eqz v13, :cond_2a

    .line 1340
    move-object/from16 v13, p2

    .line 1342
    invoke-static {v13, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    move-object/from16 p2, v9

    .line 1347
    if-eqz v4, :cond_28

    .line 1349
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1351
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1354
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1360
    move-result-object v9

    .line 1361
    invoke-static {v13, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_28
    invoke-virtual {v10, v1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 1367
    :goto_1e
    move-object/from16 v21, v5

    .line 1369
    :cond_29
    move-object/from16 v9, v19

    .line 1371
    move-object/from16 v19, v6

    .line 1373
    goto/16 :goto_1f

    .line 1375
    :cond_2a
    move-object/from16 v13, p2

    .line 1377
    move-object/from16 p2, v9

    .line 1379
    invoke-static {}, Lcom/android/server/job/Flags;->countQuotaFix()Z

    .line 1382
    iget v9, v1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 1384
    invoke-virtual {v1, v9}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 1387
    move-result v9

    .line 1388
    if-nez v9, :cond_2c

    .line 1390
    if-eqz v4, :cond_2b

    .line 1392
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1394
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1400
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1403
    move-result-object v9

    .line 1404
    invoke-static {v13, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_2b
    invoke-virtual {v10, v1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 1410
    goto :goto_1e

    .line 1411
    :cond_2c
    if-eqz v4, :cond_2d

    .line 1413
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 1416
    move-result v9

    .line 1417
    if-eqz v9, :cond_2d

    .line 1419
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1421
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1427
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1430
    move-result-object v9

    .line 1431
    invoke-static {v13, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_2d
    iget v9, v7, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 1436
    move-object/from16 v21, v5

    .line 1438
    iget v5, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 1440
    if-eq v9, v5, :cond_2f

    .line 1442
    if-nez v11, :cond_29

    .line 1444
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 1447
    move-result v5

    .line 1448
    if-nez v5, :cond_29

    .line 1450
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    .line 1453
    move-result v5

    .line 1454
    invoke-virtual {v2, v5}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    .line 1457
    move-result v9

    .line 1458
    if-eqz v9, :cond_2e

    .line 1460
    move-object v11, v1

    .line 1461
    move v14, v5

    .line 1462
    move/from16 v20, v9

    .line 1464
    :cond_2e
    move-object/from16 v9, p2

    .line 1466
    move-object/from16 p2, v13

    .line 1468
    move/from16 v13, v20

    .line 1470
    move-object/from16 v5, v21

    .line 1472
    goto/16 :goto_1d

    .line 1474
    :cond_2f
    iget v5, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 1476
    move-object/from16 v9, v19

    .line 1478
    move-object/from16 v19, v6

    .line 1480
    iget v6, v9, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 1482
    if-gt v5, v6, :cond_30

    .line 1484
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 1487
    move-result v5

    .line 1488
    if-eqz v5, :cond_30

    .line 1490
    goto :goto_1f

    .line 1491
    :cond_30
    if-eqz v3, :cond_32

    .line 1493
    iget v5, v3, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 1495
    iget v6, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 1497
    if-ge v5, v6, :cond_31

    .line 1499
    goto :goto_20

    .line 1500
    :cond_31
    :goto_1f
    move-object/from16 v6, v19

    .line 1502
    move-object/from16 v5, v21

    .line 1504
    move-object/from16 v19, v9

    .line 1506
    move-object/from16 v9, p2

    .line 1508
    move-object/from16 p2, v13

    .line 1510
    move/from16 v13, v20

    .line 1512
    goto/16 :goto_1d

    .line 1514
    :cond_32
    :goto_20
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    .line 1517
    move-result v12

    .line 1518
    invoke-virtual {v2, v12}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    .line 1521
    move-result v3

    .line 1522
    if-nez v3, :cond_33

    .line 1524
    move/from16 v15, v17

    .line 1526
    goto :goto_21

    .line 1527
    :cond_33
    move v15, v3

    .line 1528
    :goto_21
    move-object v3, v1

    .line 1529
    goto :goto_1f

    .line 1530
    :cond_34
    move/from16 v20, v13

    .line 1532
    move-object/from16 v13, p2

    .line 1534
    const-string v1, "Running job "

    .line 1536
    if-eqz v3, :cond_36

    .line 1538
    if-eqz v4, :cond_35

    .line 1540
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1542
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1548
    const-string v1, " as preemption"

    .line 1550
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1556
    move-result-object v1

    .line 1557
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_35
    invoke-virtual {v2, v15, v12}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1563
    invoke-virtual {v0, v15, v7, v3}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1566
    goto :goto_22

    .line 1567
    :cond_36
    if-eqz v4, :cond_37

    .line 1569
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1571
    const-string v5, "Couldn\'t find preemption job for uid "

    .line 1573
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1576
    iget v5, v7, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 1578
    invoke-static {v3, v5, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1581
    :cond_37
    const/4 v3, -0x1

    .line 1582
    iput v3, v7, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 1584
    if-eqz v11, :cond_39

    .line 1586
    if-eqz v4, :cond_38

    .line 1588
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1590
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1596
    const-string v1, " instead"

    .line 1598
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1604
    move-result-object v1

    .line 1605
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :cond_38
    move/from16 v1, v20

    .line 1610
    invoke-virtual {v2, v1, v14}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1613
    invoke-virtual {v0, v1, v7, v11}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1616
    :cond_39
    :goto_22
    const/4 v1, 0x0

    .line 1617
    goto/16 :goto_2a

    .line 1619
    :cond_3a
    move-object/from16 v13, p2

    .line 1621
    move/from16 v17, v1

    .line 1623
    move-object/from16 v21, v5

    .line 1625
    move-object/from16 v19, v6

    .line 1627
    move-object/from16 p2, v9

    .line 1629
    move-object v10, v15

    .line 1630
    iget v1, v10, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 1632
    if-lez v1, :cond_39

    .line 1634
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 1637
    const/4 v1, 0x0

    .line 1638
    invoke-virtual {v0, v10, v1}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    .line 1641
    const/4 v1, 0x1

    .line 1642
    iput-boolean v1, v10, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 1644
    move/from16 v1, v17

    .line 1646
    move v3, v1

    .line 1647
    const/4 v5, 0x0

    .line 1648
    :goto_23
    invoke-virtual {v10}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    .line 1651
    move-result-object v6

    .line 1652
    if-eqz v6, :cond_44

    .line 1654
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 1656
    invoke-virtual {v9, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1659
    move-result v9

    .line 1660
    if-eqz v9, :cond_3c

    .line 1662
    move-object/from16 v9, p2

    .line 1664
    invoke-static {v13, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    if-eqz v4, :cond_3b

    .line 1669
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1671
    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1677
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1680
    move-result-object v11

    .line 1681
    invoke-static {v13, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_3b
    invoke-virtual {v10, v6}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 1687
    move-object/from16 v12, v19

    .line 1689
    :goto_24
    move-object/from16 v14, v21

    .line 1691
    goto :goto_27

    .line 1692
    :cond_3c
    move-object/from16 v9, p2

    .line 1694
    invoke-static {}, Lcom/android/server/job/Flags;->countQuotaFix()Z

    .line 1697
    iget v11, v6, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 1699
    invoke-virtual {v6, v11}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 1702
    move-result v11

    .line 1703
    if-nez v11, :cond_3e

    .line 1705
    if-eqz v4, :cond_3d

    .line 1707
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1709
    move-object/from16 v12, v19

    .line 1711
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1717
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1720
    move-result-object v11

    .line 1721
    invoke-static {v13, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    goto :goto_25

    .line 1725
    :cond_3d
    move-object/from16 v12, v19

    .line 1727
    :goto_25
    invoke-virtual {v10, v6}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 1730
    goto :goto_24

    .line 1731
    :cond_3e
    move-object/from16 v12, v19

    .line 1733
    if-eqz v4, :cond_3f

    .line 1735
    invoke-virtual {v0, v6}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 1738
    move-result v11

    .line 1739
    if-eqz v11, :cond_3f

    .line 1741
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1743
    move-object/from16 v14, v21

    .line 1745
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1751
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1754
    move-result-object v11

    .line 1755
    invoke-static {v13, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    goto :goto_26

    .line 1759
    :cond_3f
    move-object/from16 v14, v21

    .line 1761
    :goto_26
    invoke-virtual {v0, v6}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 1764
    move-result v11

    .line 1765
    if-eqz v11, :cond_40

    .line 1767
    goto :goto_27

    .line 1768
    :cond_40
    invoke-virtual {v0, v6}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    .line 1771
    move-result v11

    .line 1772
    invoke-virtual {v2, v11}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    .line 1775
    move-result v15

    .line 1776
    if-nez v15, :cond_41

    .line 1778
    :goto_27
    move-object/from16 p2, v9

    .line 1780
    :goto_28
    move-object/from16 v19, v12

    .line 1782
    move-object/from16 v21, v14

    .line 1784
    goto/16 :goto_23

    .line 1786
    :cond_41
    move-object/from16 p1, v8

    .line 1788
    if-eqz v5, :cond_42

    .line 1790
    iget v8, v5, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 1792
    move-object/from16 p2, v9

    .line 1794
    iget v9, v6, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 1796
    if-ge v8, v9, :cond_43

    .line 1798
    goto :goto_29

    .line 1799
    :cond_42
    move-object/from16 p2, v9

    .line 1801
    :goto_29
    move-object v5, v6

    .line 1802
    move v3, v11

    .line 1803
    move v1, v15

    .line 1804
    :cond_43
    move-object/from16 v8, p1

    .line 1806
    goto :goto_28

    .line 1807
    :cond_44
    if-eqz v5, :cond_39

    .line 1809
    if-eqz v4, :cond_45

    .line 1811
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1813
    const-string v6, "About to run job: "

    .line 1815
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1821
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1824
    move-result-object v4

    .line 1825
    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_45
    invoke-virtual {v2, v1, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1831
    invoke-virtual {v0, v1, v7, v5}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1834
    goto/16 :goto_22

    .line 1836
    :goto_2a
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency(Z)V

    .line 1839
    :goto_2b
    return-void
.end method

.method public final doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 14
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_2
    invoke-virtual {p0, p3, p2}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(Ljava/lang/String;Z)V

    .line 24
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    return-void

    .line 29
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    throw p0
.end method

.method public final doCallbackLocked(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 3
    const-string v1, "JobServiceContext"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v3, "doCallback of : "

    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, " v:"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget-object v3, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    .line 27
    iget v4, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 29
    aget-object v3, v3, v4

    .line 31
    invoke-static {v2, v3, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 37
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 39
    const/4 v3, 0x2

    .line 40
    const/4 v4, 0x1

    .line 41
    if-ne v2, v4, :cond_6

    .line 43
    if-eq v2, v4, :cond_1

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    const-string p2, "Handling started job but job wasn\'t starting! Was "

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    sget-object p2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    .line 54
    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 56
    aget-object p0, p2, p0

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string p0, "."

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto/16 :goto_1

    .line 75
    :cond_1
    iput v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 77
    if-nez p2, :cond_2

    .line 79
    const/4 p1, 0x0

    .line 80
    const-string/jumbo p2, "onStartJob returned false"

    .line 83
    invoke-virtual {p0, p2, p1}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(Ljava/lang/String;Z)V

    .line 86
    goto/16 :goto_1

    .line 88
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 90
    if-eqz p1, :cond_4

    .line 92
    if-eqz v0, :cond_3

    .line 94
    const-string p1, "Job cancelled while waiting for onStartJob to complete."

    .line 96
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_3
    const/4 p1, 0x0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 107
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 109
    if-eqz p1, :cond_5

    .line 111
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 113
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getNetwork()Landroid/net/Network;

    .line 116
    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 119
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_5

    .line 125
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->informOfNetworkChangeLocked(Landroid/net/Network;)V

    .line 130
    :cond_5
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 132
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_9

    .line 138
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 140
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 148
    move-result-object v0

    .line 149
    iput-object p0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 151
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 153
    iput v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 155
    iget-object p0, p1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 157
    const/16 p1, 0xb

    .line 159
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 166
    goto :goto_1

    .line 167
    :cond_6
    if-eq v2, v3, :cond_8

    .line 169
    const/4 v3, 0x3

    .line 170
    if-ne v2, v3, :cond_7

    .line 172
    goto :goto_0

    .line 173
    :cond_7
    if-eqz v0, :cond_9

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    .line 177
    const-string p2, "Unrecognised callback: "

    .line 179
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 184
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object p0

    .line 191
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    goto :goto_1

    .line 195
    :cond_8
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(Ljava/lang/String;Z)V

    .line 198
    :cond_9
    :goto_1
    return-void
.end method

.method public final doServiceBoundLocked()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 4
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 6
    const-string v1, "JobServiceContext"

    .line 8
    if-eqz v0, :cond_0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v3, "handleServiceBound for "

    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 34
    if-eqz v2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    const-string v2, "Sending onStartJob for a job that isn\'t pending. "

    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    .line 45
    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 47
    aget-object v2, v2, v3

    .line 49
    invoke-static {v0, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    .line 53
    const-string/jumbo v1, "started job not pending"

    .line 56
    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 62
    const/4 v3, 0x1

    .line 63
    if-eqz v2, :cond_3

    .line 65
    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    const-string v2, "Job cancelled while waiting for bind to complete. "

    .line 71
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    const-string/jumbo v0, "cancelled while waiting for bind"

    .line 89
    invoke-virtual {p0, v0, v3}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    :try_start_0
    iput v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 95
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 98
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 100
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 102
    invoke-interface {v0, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    const-string v3, "Error sending onStart message to \'"

    .line 111
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 116
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 118
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string p0, "\' "

    .line 131
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :goto_0
    return-void
.end method

.method public final dumpLocked(Landroid/util/IndentingPrintWriter;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-string/jumbo v0, "inactive since "

    .line 12
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 15
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 17
    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 20
    const-string p2, ", stopped because: "

    .line 22
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string/jumbo p0, "inactive"

    .line 34
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 48
    const-string v0, "Running for: "

    .line 50
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 53
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 55
    sub-long v0, p2, v0

    .line 57
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 60
    const-string v0, ", timeout at: "

    .line 62
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 65
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    .line 67
    sub-long/2addr v0, p2

    .line 68
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 71
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 74
    const-string v0, "Remaining execution limits: ["

    .line 76
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 79
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 81
    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 83
    add-long/2addr v0, v2

    .line 84
    sub-long/2addr v0, p2

    .line 85
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 88
    const-string v0, ", "

    .line 90
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 95
    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    .line 97
    add-long/2addr v0, v2

    .line 98
    sub-long/2addr v0, p2

    .line 99
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 102
    const-string p2, "]"

    .line 104
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 107
    iget p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 109
    if-eqz p2, :cond_2

    .line 111
    const-string p2, " Pending stop because "

    .line 113
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 116
    iget p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 118
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 121
    const-string p2, "/"

    .line 123
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 126
    iget p3, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 128
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 131
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    .line 136
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 139
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 142
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 145
    :goto_0
    return-void
.end method

.method public final executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 76

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    const-string v3, "Job service "

    .line 7
    iget-object v4, v1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v4

    .line 10
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 12
    const/4 v5, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 15
    const-string v0, "JobServiceContext"

    .line 17
    const-string v1, "Starting new runnable but context is unavailable > Error."

    .line 19
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    monitor-exit v4

    .line 23
    return v5

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto/16 :goto_e

    .line 27
    :cond_0
    const/4 v0, -0x1

    .line 28
    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 30
    iput-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 32
    move/from16 v0, p2

    .line 34
    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 36
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 38
    invoke-direct {v0, v1}, Lcom/android/server/job/JobServiceContext$JobCallback;-><init>(Lcom/android/server/job/JobServiceContext;)V

    .line 41
    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 43
    const/4 v6, 0x0

    .line 44
    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 46
    const/high16 v7, 0x40000000    # 2.0f

    .line 48
    invoke-virtual {v2, v7}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 51
    move-result v0

    .line 52
    const/4 v8, 0x1

    .line 53
    if-eqz v0, :cond_1

    .line 55
    iget-wide v9, v2, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 57
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 65
    move-result-wide v11

    .line 66
    cmp-long v0, v9, v11

    .line 68
    if-gez v0, :cond_1

    .line 70
    move/from16 v35, v8

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move/from16 v35, v5

    .line 75
    :goto_0
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 77
    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 82
    move-result v0

    .line 83
    new-array v0, v0, [Landroid/net/Uri;

    .line 85
    iget-object v9, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 87
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    move-object/from16 v20, v0

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move-object/from16 v20, v6

    .line 95
    :goto_1
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 97
    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 102
    move-result v0

    .line 103
    new-array v0, v0, [Ljava/lang/String;

    .line 105
    iget-object v9, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 107
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 110
    move-object/from16 v21, v0

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    move-object/from16 v21, v6

    .line 115
    :goto_2
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 117
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/job/JobServiceContext;->canGetNetworkInformation(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 120
    move-result v9

    .line 121
    if-eqz v9, :cond_4

    .line 123
    iget-object v9, v2, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 125
    move-object/from16 v22, v9

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    move-object/from16 v22, v6

    .line 130
    :goto_3
    new-instance v15, Landroid/app/job/JobParameters;

    .line 132
    iget-object v10, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 134
    iget-object v11, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 136
    iget-object v9, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 138
    invoke-virtual {v9}, Landroid/app/job/JobInfo;->getId()I

    .line 141
    move-result v12

    .line 142
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 145
    move-result-object v13

    .line 146
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    .line 149
    move-result-object v14

    .line 150
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    .line 153
    move-result-object v16

    .line 154
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    .line 157
    move-result v0

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 161
    move-result v18

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 165
    move-result v19

    .line 166
    move-object v9, v15

    .line 167
    move-object v7, v15

    .line 168
    move-object/from16 v15, v16

    .line 170
    move/from16 v16, v0

    .line 172
    move/from16 v17, v35

    .line 174
    invoke-direct/range {v9 .. v22}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZZZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V

    .line 177
    iput-object v7, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 179
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 187
    move-result-wide v9

    .line 188
    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 190
    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    .line 192
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 194
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J

    .line 197
    move-result-wide v9

    .line 198
    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 200
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 202
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    .line 205
    move-result-wide v9

    .line 206
    iget-wide v11, v1, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 208
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 211
    move-result-wide v9

    .line 212
    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    .line 214
    iget-wide v9, v2, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 216
    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    .line 218
    iget-wide v9, v2, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 220
    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    .line 222
    const-wide/16 v11, 0x0

    .line 224
    iput-wide v11, v1, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    .line 226
    iput-wide v11, v1, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    .line 231
    move-result v0

    .line 232
    iput-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    .line 234
    iget-wide v9, v2, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    .line 236
    cmp-long v0, v9, v11

    .line 238
    if-lez v0, :cond_5

    .line 240
    iget-wide v13, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 242
    sub-long/2addr v13, v9

    .line 243
    const/16 v0, 0x1f40

    .line 245
    invoke-static {v0, v13, v14}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 248
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    .line 250
    if-eqz v0, :cond_5

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    .line 254
    const/16 v7, 0x80

    .line 256
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 259
    const-string v7, "Starting job deferred for standby by "

    .line 261
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-static {v13, v14, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 267
    const-string v7, " ms : "

    .line 269
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 275
    move-result-object v7

    .line 276
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v7, "JobServiceContext"

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v0

    .line 285
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_5
    iput-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 290
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mPowerManager:Landroid/os/PowerManager;

    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    .line 295
    move-result-object v7

    .line 296
    invoke-virtual {v0, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 299
    move-result-object v0

    .line 300
    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 302
    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 304
    iget v9, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 306
    iget-object v10, v2, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 308
    invoke-virtual {v7, v9, v10}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    .line 311
    move-result-object v7

    .line 312
    invoke-virtual {v0, v7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 315
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 317
    invoke-virtual {v0, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 320
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 322
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 325
    iput v5, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 330
    new-instance v0, Landroid/content/Intent;

    .line 332
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 335
    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 337
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 340
    move-result-object v7

    .line 341
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 344
    move-result-object v0

    .line 345
    const/4 v7, 0x4

    .line 346
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 349
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 353
    move-result v9

    .line 354
    if-eqz v9, :cond_7

    .line 356
    iget-boolean v9, v2, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    .line 358
    if-nez v9, :cond_7

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 363
    move-result v9

    .line 364
    if-eqz v9, :cond_6

    .line 366
    const-wide v9, 0x100038001L

    .line 371
    goto :goto_4

    .line 372
    :cond_6
    const-wide/32 v9, 0x18001

    .line 375
    :goto_4
    move v13, v8

    .line 376
    goto :goto_7

    .line 377
    :catch_0
    move-exception v0

    .line 378
    move v13, v5

    .line 379
    goto :goto_9

    .line 380
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 383
    move-result v9

    .line 384
    if-nez v9, :cond_9

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 389
    move-result v9

    .line 390
    if-eqz v9, :cond_8

    .line 392
    goto :goto_6

    .line 393
    :cond_8
    const-wide/32 v9, 0x8105

    .line 396
    :goto_5
    move v13, v5

    .line 397
    goto :goto_7

    .line 398
    :cond_9
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 401
    move-result v9
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    if-eqz v9, :cond_a

    .line 404
    const-wide/32 v9, 0x38005

    .line 407
    goto :goto_5

    .line 408
    :cond_a
    const-wide/32 v9, 0x18005

    .line 411
    goto :goto_5

    .line 412
    :goto_7
    :try_start_2
    iget-object v14, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 414
    invoke-static {v9, v10}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    .line 417
    move-result-object v9

    .line 418
    iget v10, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 420
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 423
    move-result v10

    .line 424
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 427
    move-result-object v10

    .line 428
    invoke-virtual {v14, v0, v1, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z

    .line 431
    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    :goto_8
    move v3, v13

    .line 433
    goto :goto_a

    .line 434
    :catch_1
    move-exception v0

    .line 435
    :goto_9
    :try_start_3
    const-string v9, "JobServiceContext"

    .line 437
    new-instance v10, Ljava/lang/StringBuilder;

    .line 439
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    iget-object v3, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 444
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 447
    move-result-object v3

    .line 448
    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v3, " cannot be executed: "

    .line 457
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    move-result-object v0

    .line 471
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move v0, v5

    .line 475
    goto :goto_8

    .line 476
    :goto_a
    if-nez v0, :cond_c

    .line 478
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 480
    if-eqz v0, :cond_b

    .line 482
    const-string v0, "JobServiceContext"

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    .line 486
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 491
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 494
    move-result-object v2

    .line 495
    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v2, " unavailable."

    .line 504
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    move-result-object v2

    .line 511
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_b
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 516
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 519
    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 521
    iput v5, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 523
    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 525
    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 527
    iput-wide v11, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 529
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 531
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 534
    iput v7, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 539
    monitor-exit v4

    .line 540
    return v5

    .line 541
    :cond_c
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 543
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobPackageTracker;->noteActive(Lcom/android/server/job/controllers/JobStatus;)V

    .line 546
    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 548
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 551
    move-result-wide v9

    .line 552
    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromSource:J

    .line 554
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 557
    move-result-wide v9

    .line 558
    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromSource:J

    .line 560
    iget v9, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 562
    invoke-static {v9}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 565
    move-result-wide v9

    .line 566
    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromCalling:J

    .line 568
    iget v9, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 570
    invoke-static {v9}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 573
    move-result-wide v9

    .line 574
    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromCalling:J

    .line 576
    iget-boolean v9, v2, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    .line 578
    if-eqz v9, :cond_d

    .line 580
    iget v10, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 582
    filled-new-array {v0, v10}, [I

    .line 585
    move-result-object v0

    .line 586
    :goto_b
    move-object v10, v0

    .line 587
    goto :goto_c

    .line 588
    :cond_d
    filled-new-array {v0}, [I

    .line 591
    move-result-object v0

    .line 592
    goto :goto_b

    .line 593
    :goto_c
    if-eqz v9, :cond_e

    .line 595
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 597
    filled-new-array {v6, v0}, [Ljava/lang/String;

    .line 600
    move-result-object v0

    .line 601
    goto :goto_d

    .line 602
    :cond_e
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 604
    filled-new-array {v0}, [Ljava/lang/String;

    .line 607
    move-result-object v0

    .line 608
    :goto_d
    iget-object v15, v2, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 610
    iget v14, v2, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 612
    iget-wide v5, v2, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    .line 614
    invoke-virtual {v2, v8}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 617
    move-result v18

    .line 618
    const/4 v9, 0x2

    .line 619
    invoke-virtual {v2, v9}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 622
    move-result v19

    .line 623
    const/16 v13, 0x8

    .line 625
    invoke-virtual {v2, v13}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 628
    move-result v20

    .line 629
    const/high16 v11, -0x80000000

    .line 631
    invoke-virtual {v2, v11}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 634
    move-result v21

    .line 635
    const/high16 v12, 0x40000000    # 2.0f

    .line 637
    invoke-virtual {v2, v12}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 640
    move-result v22

    .line 641
    invoke-virtual {v2, v7}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 644
    move-result v23

    .line 645
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 648
    move-result v24

    .line 649
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    .line 652
    move-result v25

    .line 653
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 656
    move-result v26

    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 660
    move-result v27

    .line 661
    iget-object v12, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 663
    invoke-virtual {v12}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 666
    move-result v29

    .line 667
    iget-object v12, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 669
    invoke-virtual {v12}, Landroid/app/job/JobInfo;->getPriority()I

    .line 672
    move-result v30

    .line 673
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 676
    move-result v31

    .line 677
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    .line 680
    move-result v32

    .line 681
    iget-object v12, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 683
    invoke-virtual {v12}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    .line 686
    move-result-wide v33

    .line 687
    invoke-virtual {v2, v8}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 690
    move-result v36

    .line 691
    invoke-virtual {v2, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 694
    move-result v37

    .line 695
    invoke-virtual {v2, v13}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 698
    move-result v38

    .line 699
    invoke-virtual {v2, v11}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 702
    move-result v39

    .line 703
    invoke-virtual {v2, v7}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 706
    move-result v40

    .line 707
    const/high16 v7, 0x10000000

    .line 709
    invoke-virtual {v2, v7}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 712
    move-result v41

    .line 713
    const/high16 v7, 0x4000000

    .line 715
    invoke-virtual {v2, v7}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 718
    move-result v42

    .line 719
    iget-wide v11, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 721
    iget-wide v8, v2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 723
    sub-long v43, v11, v8

    .line 725
    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 727
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    .line 730
    move-result v45

    .line 731
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 734
    move-result v46

    .line 735
    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 737
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 740
    move-result v47

    .line 741
    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 743
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    .line 746
    move-result-wide v48

    .line 747
    iget-wide v7, v2, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 749
    iget-wide v11, v2, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 751
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    .line 754
    move-result v54

    .line 755
    iget-object v9, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 757
    iget v13, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 759
    invoke-virtual {v9, v13}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    .line 762
    move-result v9

    .line 763
    invoke-static {v9}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    .line 766
    move-result v55

    .line 767
    iget-object v13, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    .line 769
    iget-object v9, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 771
    invoke-virtual {v9}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    .line 774
    move-result-wide v65

    .line 775
    iget-object v9, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 777
    invoke-virtual {v9}, Landroid/app/job/JobInfo;->getFlexMillis()J

    .line 780
    move-result-wide v67

    .line 781
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    .line 784
    move-result v69

    .line 785
    const/high16 v9, 0x200000

    .line 787
    invoke-virtual {v2, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 790
    move-result v70

    .line 791
    iget-boolean v9, v2, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    .line 793
    move/from16 v28, v14

    .line 795
    iget v14, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 797
    move/from16 v50, v14

    .line 799
    iget v14, v2, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 801
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    .line 804
    move-result-object v74

    .line 805
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    .line 808
    move-result-object v75

    .line 809
    const-wide/16 v61, 0x0

    .line 811
    const-wide/16 v63, 0x0

    .line 813
    const/16 v51, 0x8

    .line 815
    move/from16 v71, v9

    .line 817
    move/from16 v9, v51

    .line 819
    const/16 v51, 0x1

    .line 821
    move-object/from16 v56, v13

    .line 823
    move/from16 v13, v51

    .line 825
    const/16 v51, -0x1

    .line 827
    move/from16 v73, v14

    .line 829
    move/from16 v72, v50

    .line 831
    move/from16 v50, v28

    .line 833
    move/from16 v14, v51

    .line 835
    const/16 v28, 0x0

    .line 837
    const-wide/16 v57, 0x0

    .line 839
    const-wide/16 v59, 0x0

    .line 841
    move-wide/from16 v52, v11

    .line 843
    move-object v11, v0

    .line 844
    move-object v12, v15

    .line 845
    move/from16 v15, v50

    .line 847
    move-wide/from16 v16, v5

    .line 849
    move-wide/from16 v50, v7

    .line 851
    invoke-static/range {v9 .. v75}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;)V

    .line 854
    sget-object v0, Lcom/android/server/job/JobServiceContext;->sEnqueuedJwiAtJobStart:Lcom/android/modules/expresslog/Histogram;

    .line 856
    iget v5, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 858
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    .line 861
    move-result v6

    .line 862
    int-to-float v6, v6

    .line 863
    invoke-virtual {v0, v5, v6}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 866
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 868
    const-wide/32 v5, 0x80000

    .line 871
    invoke-static {v5, v6}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 874
    move-result v7

    .line 875
    if-eqz v7, :cond_f

    .line 877
    const-string v7, "JobScheduler"

    .line 879
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->computeSystemTraceTag()Ljava/lang/String;

    .line 882
    move-result-object v8

    .line 883
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    .line 886
    move-result v9

    .line 887
    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 890
    :cond_f
    iget-object v5, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 892
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    .line 895
    move-result-object v5

    .line 896
    if-eqz v5, :cond_10

    .line 898
    const-string v5, "JobScheduler"

    .line 900
    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 902
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    .line 905
    move-result-object v6

    .line 906
    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 908
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getId()I

    .line 911
    move-result v7

    .line 912
    const-wide/16 v8, 0x1000

    .line 914
    invoke-static {v8, v9, v5, v6, v7}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 917
    :cond_10
    :try_start_4
    iget-object v5, v1, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 919
    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 921
    iget v7, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 923
    invoke-interface {v5, v6, v7}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 926
    :catch_2
    :try_start_5
    iget v5, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 928
    iget-object v6, v1, Lcom/android/server/job/JobServiceContext;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 930
    iget-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 932
    check-cast v6, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 934
    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 936
    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 938
    invoke-interface {v6, v0, v5, v7, v8}, Lcom/android/server/usage/AppStandbyInternal;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 941
    const/4 v5, 0x0

    .line 942
    iput-boolean v5, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 944
    const/4 v5, 0x0

    .line 945
    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 947
    const-wide/16 v5, 0x0

    .line 949
    iput-wide v5, v1, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 951
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 954
    move-result v0

    .line 955
    iput-boolean v0, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 957
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 960
    move-result v0

    .line 961
    iput-boolean v0, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 963
    iput-boolean v3, v2, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    .line 965
    monitor-exit v4

    .line 966
    const/4 v1, 0x1

    .line 967
    return v1

    .line 968
    :goto_e
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 969
    throw v0
.end method

.method public final getRunningJobNameLocked()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "<null>"

    .line 12
    :goto_0
    return-object p0
.end method

.method public final handleCancelLocked(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    const-string v1, "JobServiceContext"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "Handling cancel for: "

    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 16
    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 18
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, " "

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    .line 32
    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 34
    aget-object v2, v2, v3

    .line 36
    invoke-static {v0, v2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 41
    const/4 v2, 0x1

    .line 42
    if-eqz v0, :cond_2

    .line 44
    if-eq v0, v2, :cond_2

    .line 46
    const/4 v2, 0x2

    .line 47
    if-eq v0, v2, :cond_1

    .line 49
    const/4 p1, 0x3

    .line 50
    if-eq v0, p1, :cond_3

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    const-string v0, "Cancelling a job without a valid verb: "

    .line 56
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 61
    invoke-static {p1, p0, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 74
    :cond_3
    :goto_0
    return-void
.end method

.method public final handleFinishedLocked(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    const-string p2, "Got an execution complete message for a job that wasn\'t beingexecuted. Was "

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    sget-object p2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    .line 18
    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 20
    aget-object p0, p2, p0

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p0, "."

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    const-string p1, "JobServiceContext"

    .line 36
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    .line 43
    :goto_0
    return-void
.end method

.method public final informOfNetworkChangeLocked(Landroid/net/Network;)V
    .locals 4

    .line 1
    const-string v0, "JobServiceContext"

    .line 3
    if-eqz p1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 7
    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->canGetNetworkInformation(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 15
    sget-boolean p0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 17
    if-eqz p0, :cond_0

    .line 19
    const-string p0, "Skipping network change call because of missing permissions"

    .line 21
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 27
    const/4 v2, 0x2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eq v1, v2, :cond_4

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "Sending onNetworkChanged for a job that isn\'t started. "

    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 52
    if-eqz v0, :cond_2

    .line 54
    if-ne v0, v3, :cond_3

    .line 56
    :cond_2
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 58
    :cond_3
    return-void

    .line 59
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 61
    invoke-virtual {v1, p1}, Landroid/app/job/JobParameters;->setNetwork(Landroid/net/Network;)V

    .line 64
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 67
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 69
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 71
    invoke-interface {p1, v1}, Landroid/app/job/IJobService;->onNetworkChanged(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    const-string v1, "Error sending onNetworkChanged to client."

    .line 78
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    const-string/jumbo p1, "host crashed when trying to inform of network change"

    .line 84
    invoke-virtual {p0, p1, v3}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    .line 87
    :goto_0
    return-void
.end method

.method public final isWithinExecutionGuaranteeTime()Z
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
    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 12
    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 14
    add-long/2addr v2, v4

    .line 15
    cmp-long p0, v0, v2

    .line 17
    if-gez p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    const-string v0, "Binding died for "

    .line 3
    const-string v1, "Binding died for "

    .line 5
    const-string v2, "Binding died for "

    .line 7
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 12
    if-nez v4, :cond_0

    .line 14
    const-string v0, "JobServiceContext"

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, " but no running job on this context"

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object v2, v4, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 45
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 55
    const-string v0, "JobServiceContext"

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 64
    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ":"

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const-string v1, "JobServiceContext"

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string p1, " but context is running a different job"

    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    const-string/jumbo p1, "binding died"

    .line 118
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    .line 122
    monitor-exit v3

    .line 123
    return-void

    .line 124
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p0
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    const-string v0, "Got null binding for "

    .line 3
    const-string v1, "Got null binding for "

    .line 5
    const-string v2, "Got null binding for "

    .line 7
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 12
    if-nez v4, :cond_0

    .line 14
    const-string v0, "JobServiceContext"

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, " but no running job on this context"

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object v2, v4, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 45
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 55
    const-string v0, "JobServiceContext"

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 64
    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ":"

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const-string v1, "JobServiceContext"

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string p1, " but context is running a different job"

    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    const-string/jumbo p1, "null binding"

    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    .line 122
    monitor-exit v3

    .line 123
    return-void

    .line 124
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 10
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 27
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->doServiceBoundLocked()V

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const-string/jumbo p1, "connected for different component"

    .line 37
    const/4 p2, 0x1

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 10
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    .line 12
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_unexpected_service_disconnects"

    .line 27
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 29
    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 32
    :cond_1
    :goto_0
    const-string/jumbo v0, "unexpectedly disconnected"

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final onSlowAppResponseLocked(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, " for "

    .line 3
    invoke-static {p6, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "JobServiceContext"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 25
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 27
    invoke-static {p1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 30
    if-eqz p4, :cond_0

    .line 32
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 34
    const/4 p4, 0x0

    .line 35
    const/16 v0, 0xc

    .line 37
    invoke-virtual {p1, p4, v0, p3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 40
    :cond_0
    if-eqz p5, :cond_1

    .line 42
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 44
    iget-object p4, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 46
    iget-object p5, p4, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    .line 48
    invoke-static {p6}, Lcom/android/internal/os/TimeoutRecord;->forJobService(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    .line 51
    move-result-object p6

    .line 52
    iget p4, p4, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 54
    invoke-virtual {p1, p5, p4, p6}, Landroid/app/ActivityManagerInternal;->appNotResponding(Ljava/lang/String;ILcom/android/internal/os/TimeoutRecord;)V

    .line 57
    :cond_1
    invoke-virtual {p0, p3, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method public final removeOpTimeOutLocked()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    return-void
.end method

.method public final scheduleOpTimeOutLocked()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 4
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 6
    if-eqz v0, :cond_3

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    sget-wide v0, Lcom/android/server/job/JobServiceContext;->OP_TIMEOUT_MILLIS:J

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 16
    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 18
    add-long/2addr v2, v0

    .line 19
    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    .line 21
    add-long/2addr v0, v4

    .line 22
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    move-result-wide v4

    .line 31
    cmp-long v6, v4, v2

    .line 33
    if-gez v6, :cond_1

    .line 35
    sub-long/2addr v2, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sub-long v2, v0, v4

    .line 39
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    .line 41
    if-eqz v0, :cond_2

    .line 43
    sget-wide v0, Lcom/android/server/job/JobServiceContext;->NOTIFICATION_TIMEOUT_MILLIS:J

    .line 45
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 48
    move-result-wide v2

    .line 49
    :cond_2
    const-wide/32 v0, 0x493e0

    .line 52
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 55
    move-result-wide v0

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    sget-wide v0, Lcom/android/server/job/JobServiceContext;->OP_BIND_TIMEOUT_MILLIS:J

    .line 59
    :goto_1
    sget-boolean v2, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 61
    if-eqz v2, :cond_4

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    const-string v3, "Scheduling time out for \'"

    .line 67
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 72
    iget-object v3, v3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 74
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v3, "\' jId: "

    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 92
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    .line 95
    move-result v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v3, ", in "

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-wide/16 v3, 0x3e8

    .line 106
    div-long v3, v0, v3

    .line 108
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    const-string v3, " s"

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    const-string v3, "JobServiceContext"

    .line 122
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_4
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    .line 127
    const/4 v3, 0x0

    .line 128
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 130
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 133
    move-result-object v2

    .line 134
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    .line 136
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 139
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 141
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 147
    move-result-wide v2

    .line 148
    add-long/2addr v2, v0

    .line 149
    iput-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    .line 151
    return-void
.end method

.method public final sendStopMessageLocked(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 4
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 6
    const/4 v1, 0x2

    .line 7
    const-string v2, "JobServiceContext"

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "Sending onStopJob for a job that isn\'t started. "

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    .line 34
    return-void

    .line 35
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 38
    const/4 p1, 0x3

    .line 39
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 41
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 44
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 46
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 48
    invoke-interface {p1, v0}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    const-string v0, "Error sending onStopJob to client."

    .line 55
    invoke-static {v2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 p1, 0x1

    .line 59
    const-string/jumbo v0, "host crashed when trying to stop"

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    .line 65
    :goto_0
    return-void
.end method

.method public final verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 3
    if-eq p0, p1, :cond_1

    .line 5
    sget-boolean p0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const-string p0, "JobServiceContext"

    .line 11
    const-string p1, "Stale callback received, ignoring."

    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    const/4 p0, 0x1

    .line 19
    return p0
.end method
