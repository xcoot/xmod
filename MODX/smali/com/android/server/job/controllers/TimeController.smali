.class public final Lcom/android/server/job/controllers/TimeController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field static final DELAY_COALESCE_TIME_MS:J = 0x7530L


# instance fields
.field public mAlarmService:Landroid/app/AlarmManager;

.field public final mDeadlineExpiredListener:Lcom/android/server/job/controllers/TimeController$2;

.field public volatile mLastFiredDelayExpiredElapsedMillis:J

.field public mNextDelayExpiredElapsedMillis:J

.field public final mNextDelayExpiredListener:Lcom/android/server/job/controllers/TimeController$2;

.field public mNextJobExpiredElapsedMillis:J

.field public final mTrackedJobs:Ljava/util/PriorityQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-string v0, "JobScheduler.Time"

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
    sput-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 7
    new-instance p1, Ljava/util/PriorityQueue;

    .line 9
    new-instance v0, Lcom/android/server/job/controllers/TimeController$1;

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-direct {p1, v0}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    .line 17
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/PriorityQueue;

    .line 19
    new-instance p1, Lcom/android/server/job/controllers/TimeController$2;

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/TimeController$2;-><init>(Lcom/android/server/job/controllers/TimeController;I)V

    .line 25
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Lcom/android/server/job/controllers/TimeController$2;

    .line 27
    new-instance p1, Lcom/android/server/job/controllers/TimeController$2;

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/TimeController$2;-><init>(Lcom/android/server/job/controllers/TimeController;I)V

    .line 33
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Lcom/android/server/job/controllers/TimeController$2;

    .line 35
    const-wide v0, 0x7fffffffffffffffL

    .line 40
    iput-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 42
    iput-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 44
    return-void
.end method

.method public static canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 33
    :goto_1
    return p0
.end method

.method public static evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 3
    cmp-long v0, v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_3

    .line 8
    const/high16 v0, -0x80000000

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {p0, v0, p1, p2, v3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 20
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    invoke-virtual {p0, v0, p1, p2, v3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 28
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 30
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 42
    move v1, v3

    .line 43
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 45
    :cond_2
    return v3

    .line 46
    :cond_3
    return v1
.end method


# virtual methods
.method public checkExpiredDeadlinesAndResetAlarm()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v1

    .line 13
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/PriorityQueue;

    .line 15
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v3

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_5

    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 31
    const/high16 v5, 0x40000000    # 2.0f

    .line 33
    invoke-virtual {v4, v5}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {v4, v1, v2}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_3

    .line 46
    iget v5, v4, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 48
    invoke-virtual {v4, v5}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_2

    .line 54
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 56
    invoke-virtual {v5, v4}, Lcom/android/server/job/JobSchedulerService;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_3

    .line 62
    :cond_2
    :goto_1
    const-string/jumbo v4, "job_scheduler.value_job_scheduler_job_deadline_expired_counter"

    .line 65
    invoke-static {v4}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 68
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0, v4, v5}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_4

    .line 78
    sget-boolean v5, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    .line 80
    if-eqz v5, :cond_0

    .line 82
    const-string v5, "JobScheduler.Time"

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string v7, "Skipping "

    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string v4, " because deadline won\'t make it ready."

    .line 99
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 106
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    goto :goto_0

    .line 110
    :cond_4
    iget-wide v1, v4, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 112
    iget v3, v4, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 114
    iget-object v4, v4, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    const-wide v1, 0x7fffffffffffffffL

    .line 122
    const/4 v3, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    :goto_2
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 126
    invoke-virtual {v5, v3, v4}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 135
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    throw p0
.end method

.method public checkExpiredDelaysAndResetAlarm()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    .line 6
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/PriorityQueue;

    .line 11
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    move-result-wide v3

    .line 24
    const-wide v5, 0x7fffffffffffffffL

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v9

    .line 35
    if-eqz v9, :cond_5

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v9

    .line 41
    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 43
    const/high16 v10, -0x80000000

    .line 45
    invoke-virtual {v9, v10}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 48
    move-result v11

    .line 49
    if-nez v11, :cond_1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-wide v11, v9, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 54
    cmp-long v11, v11, v3

    .line 56
    if-gtz v11, :cond_3

    .line 58
    const/4 v11, 0x1

    .line 59
    invoke-virtual {v9, v10, v3, v4, v11}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 62
    invoke-static {v9}, Lcom/android/server/job/controllers/TimeController;->canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 65
    move-result v10

    .line 66
    if-eqz v10, :cond_2

    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    :goto_1
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p0, v9, v10}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 81
    move-result v10

    .line 82
    if-nez v10, :cond_4

    .line 84
    sget-boolean v10, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    .line 86
    if-eqz v10, :cond_0

    .line 88
    const-string v10, "JobScheduler.Time"

    .line 90
    new-instance v11, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v12, "Skipping "

    .line 97
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    const-string v9, " because delay won\'t make it ready."

    .line 105
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v9

    .line 112
    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    iget-wide v10, v9, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 118
    cmp-long v12, v5, v10

    .line 120
    if-lez v12, :cond_0

    .line 122
    iget v5, v9, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 124
    iget-object v6, v9, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 126
    move v7, v5

    .line 127
    move-object v8, v6

    .line 128
    move-wide v5, v10

    .line 129
    goto :goto_0

    .line 130
    :cond_5
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 133
    move-result v2

    .line 134
    if-lez v2, :cond_6

    .line 136
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 138
    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 141
    :cond_6
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 143
    invoke-virtual {v1, v7, v8}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p0, v5, v6, v1}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 152
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    throw p0
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Elapsed clock: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string v2, "Next delay alarm in "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 7
    const-string v2, "Last delay alarm fired @ "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mLastFiredDelayExpiredElapsedMillis:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 10
    const-string v2, "Next deadline alarm in "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 12
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 13
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 14
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 15
    invoke-virtual {p2, v2}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    const-string v3, "#"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 18
    const-string v3, " from "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 20
    invoke-static {p1, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 21
    const-string v3, ": Delay="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/high16 v3, -0x80000000

    .line 22
    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v3

    .line 23
    const-string v4, "N/A"

    if-eqz v3, :cond_1

    .line 24
    iget-wide v5, v2, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 25
    invoke-static {v5, v6, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 27
    :goto_1
    const-string v3, ", Deadline="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 28
    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    iget-wide v2, v2, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 30
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 32
    :goto_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide v2, 0x20b00000004L

    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10b00000008L

    .line 34
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 35
    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide v10, 0x10300000001L

    .line 37
    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 38
    iget-wide v10, v0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    sub-long/2addr v10, v8

    const-wide v12, 0x10300000002L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 39
    iget-wide v10, v0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    sub-long/2addr v10, v8

    const-wide v12, 0x10300000003L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 40
    iget-object v0, v0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v11, p2

    .line 41
    invoke-virtual {v11, v10}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    const-wide v14, 0x10b00000001L

    .line 43
    invoke-virtual {v10, v1, v14, v15}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const/high16 v14, -0x80000000

    .line 44
    invoke-virtual {v10, v14}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v14

    const-wide v2, 0x10800000003L

    .line 45
    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 46
    iget-wide v2, v10, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    sub-long/2addr v2, v8

    const-wide v14, 0x10300000004L

    .line 47
    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 48
    invoke-virtual {v10, v2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v2

    const-wide v14, 0x10800000005L

    .line 49
    invoke-virtual {v1, v14, v15, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 50
    iget-wide v2, v10, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    sub-long/2addr v2, v8

    const-wide v14, 0x10300000006L

    .line 51
    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 52
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v2, 0x20b00000004L

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 54
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    const/high16 v2, 0x40000000    # 2.0f

    .line 12
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 15
    move-result v3

    .line 16
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 18
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 20
    iget v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 22
    if-eqz v3, :cond_2

    .line 24
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_2

    .line 30
    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 32
    iget-wide v9, p1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 34
    cmp-long v3, v9, v7

    .line 36
    if-gtz v3, :cond_2

    .line 38
    invoke-static {p1, v0, v1}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 44
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 46
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 54
    invoke-virtual {v2, p1}, Lcom/android/server/job/JobSchedulerService;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/PriorityQueue;

    .line 59
    invoke-virtual {v2, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 62
    const-string/jumbo v2, "job_scheduler.value_job_scheduler_job_deadline_expired_counter"

    .line 65
    invoke-static {v2}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v4, v6, v5}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p0, v9, v10, v2}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 82
    :cond_2
    :goto_0
    const/high16 v2, -0x80000000

    .line 84
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_4

    .line 90
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_4

    .line 96
    iget-wide v7, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 98
    iget-wide v9, p1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 100
    cmp-long v3, v9, v7

    .line 102
    if-gtz v3, :cond_4

    .line 104
    cmp-long v3, v9, v0

    .line 106
    if-gtz v3, :cond_3

    .line 108
    const/4 v3, 0x1

    .line 109
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 112
    invoke-static {p1}, Lcom/android/server/job/controllers/TimeController;->canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_4

    .line 118
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/PriorityQueue;

    .line 120
    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_4

    .line 130
    invoke-virtual {v4, v6, v5}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, v9, v10, p1}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 137
    :cond_4
    :goto_1
    return-void
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6

    .line 1
    const/high16 p2, -0x80000000

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_4

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TimeController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 21
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    invoke-static {p1, v2, v3}, Lcom/android/server/job/controllers/TimeController;->evaluateDeadlineConstraint(Lcom/android/server/job/controllers/JobStatus;J)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 46
    move-result v0

    .line 47
    iget-wide v4, p1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 49
    if-eqz v0, :cond_2

    .line 51
    cmp-long v0, v4, v2

    .line 53
    if-gtz v0, :cond_2

    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, p2, v2, v3, v0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 59
    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 65
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/PriorityQueue;

    .line 68
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 71
    const/16 v0, 0x20

    .line 73
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 76
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 78
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 80
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 82
    invoke-virtual {v3, v0, v2}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_3

    .line 98
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 100
    cmp-long p2, v4, v2

    .line 102
    if-gez p2, :cond_3

    .line 104
    invoke-virtual {p0, v4, v5, v0}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 107
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_4

    .line 113
    invoke-virtual {p0, p1, v1}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_4

    .line 119
    iget-wide v1, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 121
    iget-wide p1, p1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 123
    cmp-long v1, p1, v1

    .line 125
    if-gez v1, :cond_4

    .line 127
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V

    .line 130
    :cond_4
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 1
    const/16 p2, 0x20

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/PriorityQueue;

    .line 11
    invoke-virtual {p2, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 20
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 23
    :cond_0
    return-void
.end method

.method public final reevaluateStateLocked(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 7
    return-void
.end method

.method public final setDeadlineExpiredAlarmLocked(JLandroid/os/WorkSource;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 13
    move-result-wide v6

    .line 14
    iget-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 16
    cmp-long p1, p1, v6

    .line 18
    if-nez p1, :cond_0

    .line 20
    return-void

    .line 21
    :cond_0
    iput-wide v6, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 23
    const-string v3, "*job.deadline*"

    .line 25
    const/4 v4, 0x2

    .line 26
    iget-object v5, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Lcom/android/server/job/controllers/TimeController$2;

    .line 28
    move-object v2, p0

    .line 29
    move-object v8, p3

    .line 30
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;ILandroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V

    .line 33
    return-void
.end method

.method public final setDelayExpiredAlarmLocked(JLandroid/os/WorkSource;)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mLastFiredDelayExpiredElapsedMillis:J

    .line 3
    const-wide/16 v2, 0x7530

    .line 5
    add-long/2addr v0, v2

    .line 6
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 9
    move-result-wide p1

    .line 10
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    move-result-wide v0

    .line 19
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 22
    move-result-wide v6

    .line 23
    iget-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 25
    cmp-long p1, p1, v6

    .line 27
    if-nez p1, :cond_0

    .line 29
    return-void

    .line 30
    :cond_0
    iput-wide v6, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 32
    iget-object v5, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Lcom/android/server/job/controllers/TimeController$2;

    .line 34
    const-string v3, "*job.delay*"

    .line 36
    const/4 v4, 0x3

    .line 37
    move-object v2, p0

    .line 38
    move-object v8, p3

    .line 39
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;ILandroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V

    .line 42
    return-void
.end method

.method public final updateAlarmWithListenerLocked(Ljava/lang/String;ILandroid/app/AlarmManager$OnAlarmListener;JLandroid/os/WorkSource;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v2, p4

    .line 4
    iget-object v1, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 10
    const-string v4, "alarm"

    .line 12
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/app/AlarmManager;

    .line 18
    iput-object v1, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 20
    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    .line 25
    cmp-long v1, v2, v4

    .line 27
    if-nez v1, :cond_1

    .line 29
    iget-object v0, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 31
    move-object v9, p3

    .line 32
    invoke-virtual {v0, p3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v9, p3

    .line 37
    sget-boolean v1, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    .line 39
    if-eqz v1, :cond_2

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    const-string v4, "Setting "

    .line 45
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    move-object v8, p1

    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v4, " for: "

    .line 54
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    const-string v4, "JobScheduler.Time"

    .line 66
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move-object v8, p1

    .line 71
    :goto_0
    iget-object v0, v0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 73
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 76
    move-result-object v10

    .line 77
    const-wide/16 v4, -0x1

    .line 79
    const-wide/16 v6, 0x0

    .line 81
    move v1, p2

    .line 82
    move-wide/from16 v2, p4

    .line 84
    move-object v8, p1

    .line 85
    move-object v9, p3

    .line 86
    move-object/from16 v11, p6

    .line 88
    invoke-virtual/range {v0 .. v11}, Landroid/app/AlarmManager;->set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V

    .line 91
    :goto_1
    return-void
.end method
