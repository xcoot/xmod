.class public final Lcom/android/server/job/controllers/QuotaController$Timer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBgJobCount:I

.field public mDebitAdjustment:J

.field public final mPkg:Landroid/content/pm/UserPackage;

.field public final mRegularJobTimer:Z

.field public final mRunningBgJobs:Landroid/util/ArraySet;

.field public mStartTimeElapsed:J

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-static {p3, p4}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 18
    .line 19
    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 20
    .line 21
    iput-boolean p5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final cancelCutoff()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x4

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 5

    .line 1
    const-string v0, "Timer<"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_0

    const-string v1, "REG"

    goto :goto_0

    :cond_0
    const-string v1, "EJ"

    :goto_0
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3
    const-string v1, ">{"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 5
    const-string/jumbo v1, "} "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    const-string/jumbo v1, "started at "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 9
    const-string v1, " ("

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 12
    iget-wide v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 13
    const-string/jumbo v1, "ms ago)"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_1
    const-string v1, "NOT active"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 15
    :goto_1
    const-string v1, ", "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 17
    const-string v1, " running bg jobs"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 18
    const-string v0, " (debit adj="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 20
    const-string v0, ")"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 21
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 22
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 23
    :goto_2
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 24
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 25
    invoke-virtual {p2, v1}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 27
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 4

    .line 28
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10800000002L

    .line 29
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10300000003L

    .line 30
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10500000004L

    .line 31
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 34
    invoke-virtual {p4, v1}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v2, 0x20b00000005L

    .line 35
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final emitSessionLocked(J)V
    .locals 9

    .line 1
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 2
    .line 3
    if-gtz v1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    .line 9
    .line 10
    move-object v0, v6

    .line 11
    move-wide v4, p1

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController$TimingSession;-><init>(IJJ)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 16
    .line 17
    iget v3, p1, Landroid/content/pm/UserPackage;->userId:I

    .line 18
    .line 19
    iget-object v4, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    .line 22
    .line 23
    xor-int/lit8 p2, p1, 0x1

    .line 24
    .line 25
    iget-wide v7, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 28
    .line 29
    move-object v5, v6

    .line 30
    move v6, p2

    .line 31
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    .line 32
    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 43
    .line 44
    iget v0, p1, Landroid/content/pm/UserPackage;->userId:I

    .line 45
    .line 46
    iget-object p1, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

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
    move-result-wide v1

    .line 62
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 63
    .line 64
    invoke-virtual {v3, v0, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 69
    .line 70
    if-nez v3, :cond_1

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 73
    .line 74
    array-length v3, v3

    .line 75
    new-array v3, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 78
    .line 79
    invoke-virtual {v4, v0, p1, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_1
    move p1, p2

    .line 83
    :goto_0
    array-length v0, v3

    .line 84
    if-ge p1, v0, :cond_4

    .line 85
    .line 86
    aget-object v0, v3, p1

    .line 87
    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 91
    .line 92
    invoke-direct {v0}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 93
    .line 94
    .line 95
    aput-object v0, v3, p1

    .line 96
    .line 97
    :cond_2
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 98
    .line 99
    cmp-long v4, v4, v1

    .line 100
    .line 101
    if-gtz v4, :cond_3

    .line 102
    .line 103
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 104
    .line 105
    add-long/2addr v4, v1

    .line 106
    iput-wide v4, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 107
    .line 108
    iput p2, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 109
    .line 110
    :cond_3
    iget v4, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 111
    .line 112
    add-int/lit8 v4, v4, 0x1

    .line 113
    .line 114
    iput v4, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 115
    .line 116
    add-int/lit8 p1, p1, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    return-void
.end method

.method public final getCurrentDuration(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-wide/16 p0, 0x0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    .line 16
    .line 17
    sub-long/2addr p1, v1

    .line 18
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 19
    .line 20
    add-long p0, p1, v1

    .line 21
    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    return-wide p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final isActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 7
    .line 8
    if-lez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return p0

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

.method public final onStateChangedLocked(JZ)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->emitSessionLocked(J)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-nez p3, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->shouldTrackLocked()Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 20
    .line 21
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-lez p3, :cond_2

    .line 26
    .line 27
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    .line 28
    .line 29
    const-wide/16 p1, 0x0

    .line 30
    .line 31
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 40
    .line 41
    iget-boolean p2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 46
    .line 47
    iget p3, p2, Landroid/content/pm/UserPackage;->userId:I

    .line 48
    .line 49
    iget-object p2, p2, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 52
    .line 53
    invoke-virtual {v0, p3, p2, p1}, Lcom/android/server/job/controllers/QuotaController;->incrementJobCountLocked(ILjava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 57
    .line 58
    iget p2, p1, Landroid/content/pm/UserPackage;->userId:I

    .line 59
    .line 60
    iget-object p1, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, p2, p1}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    return-void
.end method

.method public final scheduleCutoff()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x4

    .line 27
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-boolean v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 40
    .line 41
    iget v4, v3, Landroid/content/pm/UserPackage;->userId:I

    .line 42
    .line 43
    iget-object v3, v3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v4, v3}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 53
    .line 54
    iget v4, v3, Landroid/content/pm/UserPackage;->userId:I

    .line 55
    .line 56
    iget-object v3, v3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v2, v4, v3}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    :goto_1
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 63
    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    const-string v4, "JobScheduler.Quota"

    .line 67
    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-boolean v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    .line 74
    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    const-string v6, "Regular job"

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    const-string v6, "EJ"

    .line 81
    .line 82
    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v6, " for "

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v6, " has "

    .line 96
    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string/jumbo v6, "ms left."

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_4
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 119
    .line 120
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    .line 122
    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 125
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0
.end method

.method public final shouldTrackLocked()Z
    .locals 10

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
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 11
    .line 12
    iget-object v3, v2, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    iget v2, v2, Landroid/content/pm/UserPackage;->userId:I

    .line 15
    .line 16
    invoke-static {v2, v3, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-boolean v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    iget v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v6, v2, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->hasTempAllowlistExemptionLocked(IIJ)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    move v7, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v7, v4

    .line 39
    :goto_0
    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 40
    .line 41
    invoke-virtual {v8, v6}, Landroid/util/SparseLongArray;->get(I)J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 48
    .line 49
    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    cmp-long v0, v0, v8

    .line 56
    .line 57
    if-gez v0, :cond_2

    .line 58
    .line 59
    :cond_1
    move v0, v5

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move v0, v4

    .line 62
    :goto_1
    sget-boolean v1, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v3, "quotaFree="

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v3, " isFG="

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 87
    .line 88
    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, " tempEx="

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, " topEx="

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v3, "JobScheduler.Quota"

    .line 116
    .line 117
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_4

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 127
    .line 128
    invoke-virtual {p0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-nez p0, :cond_4

    .line 133
    .line 134
    if-nez v7, :cond_4

    .line 135
    .line 136
    if-nez v0, :cond_4

    .line 137
    .line 138
    move v4, v5

    .line 139
    :cond_4
    return v4
.end method

.method public final stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "JobScheduler.Quota"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "Stopping tracking of "

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
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-string p0, "JobScheduler.Quota"

    .line 44
    .line 45
    const-string p1, "Timer isn\'t tracking any jobs but still told to stop"

    .line 46
    .line 47
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    monitor-exit v1

    .line 54
    return-void

    .line 55
    :cond_2
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 65
    .line 66
    iget-object v4, v0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    iget v0, v0, Landroid/content/pm/UserPackage;->userId:I

    .line 69
    .line 70
    invoke-static {v0, v4, v2, v3}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 75
    .line 76
    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->emitSessionLocked(J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 102
    .line 103
    .line 104
    :cond_3
    monitor-exit v1

    .line 105
    return-void

    .line 106
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p0
.end method
