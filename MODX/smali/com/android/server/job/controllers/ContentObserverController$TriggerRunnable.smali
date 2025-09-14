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

    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;->mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;->mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 3
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 5
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 13
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v3

    .line 22
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 24
    const/high16 v5, 0x4000000

    .line 26
    const/4 v6, 0x1

    .line 27
    invoke-virtual {v1, v5, v3, v4, v6}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 30
    move-result v1

    .line 31
    iget-boolean v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    .line 33
    if-eqz v3, :cond_0

    .line 35
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 37
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    .line 39
    iget-object v5, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    .line 41
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    iget-object v3, v3, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    .line 46
    iget-object v4, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    .line 48
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iput-boolean v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

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

    .line 60
    new-instance v0, Landroid/util/ArraySet;

    .line 62
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 67
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 72
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

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
