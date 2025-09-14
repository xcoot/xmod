.class public final Lcom/android/server/job/JobSchedulerService$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 3
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserInteractionStarted(Ljava/lang/String;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 5
    const-wide/16 v1, 0x2000

    .line 7
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 10
    move-result v4

    .line 11
    if-gez v4, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 16
    check-cast v0, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 18
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 20
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 22
    invoke-interface {v0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    .line 25
    move-result-wide p1

    .line 26
    const-wide/32 v0, 0xa4cb800

    .line 29
    cmp-long v0, p1, v0

    .line 31
    const-wide/16 v1, 0x0

    .line 33
    if-lez v0, :cond_1

    .line 35
    move-wide v7, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-wide v7, p1

    .line 38
    :goto_0
    new-instance p1, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;

    .line 40
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 p2, 0x0

    .line 44
    iput p2, p1, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    .line 46
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 48
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 50
    monitor-enter p2

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 53
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 55
    invoke-virtual {v0, v4, p1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 58
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget p2, p1, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    .line 61
    if-gtz p2, :cond_2

    .line 63
    cmp-long v0, v7, v1

    .line 65
    if-lez v0, :cond_3

    .line 67
    :cond_2
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 69
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 71
    invoke-virtual {p0, v4, p2, v7, v8}, Landroid/os/BatteryStatsInternal;->noteJobsDeferred(IIJ)V

    .line 74
    iget v6, p1, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    .line 76
    const/16 v3, 0x55

    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V

    .line 82
    :cond_3
    return-void

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p0
.end method
