.class public final Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;->mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;->mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

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
    move-result-wide v3

    .line 22
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 23
    .line 24
    const/high16 v5, 0x4000000

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    invoke-virtual {v1, v5, v3, v4, v6}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-boolean v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 36
    .line 37
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v3, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    iput-boolean v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    .line 52
    .line 53
    :cond_0
    move v2, v1

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    new-instance v0, Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void

    .line 78
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method
