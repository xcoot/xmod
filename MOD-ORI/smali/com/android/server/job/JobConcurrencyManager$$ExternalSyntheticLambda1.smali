.class public final synthetic Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/JobConcurrencyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobConcurrencyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    .line 15
    .line 16
    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    .line 17
    .line 18
    cmp-long v1, v1, v3

    .line 19
    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    .line 34
    .line 35
    iget-wide v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    .line 36
    .line 37
    add-long/2addr v3, v5

    .line 38
    cmp-long v1, v3, v1

    .line 39
    .line 40
    if-lez v1, :cond_2

    .line 41
    .line 42
    monitor-exit v0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 46
    .line 47
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    const-string v1, "JobScheduler.Concurrency"

    .line 52
    .line 53
    const-string v2, "Ramping up concurrency"

    .line 54
    .line 55
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    :goto_0
    return-void

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method
