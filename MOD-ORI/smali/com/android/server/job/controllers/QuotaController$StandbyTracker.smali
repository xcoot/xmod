.class public final Lcom/android/server/job/controllers/QuotaController$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    new-instance p5, Lcom/android/server/job/controllers/QuotaController$StandbyTracker$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {p5, p0, p4, p2, p1}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final triggerTemporaryQuotaBump(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    .line 26
    .line 27
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-direct {v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController$QuotaBump;-><init>(J)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 43
    .line 44
    invoke-virtual {v1, p2, p1}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0
.end method
