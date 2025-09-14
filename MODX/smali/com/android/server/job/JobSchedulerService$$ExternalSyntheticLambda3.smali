.class public final synthetic Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/job/JobSchedulerService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/job/JobSchedulerService;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 21
    :goto_0
    if-ltz v1, :cond_0

    .line 23
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 25
    check-cast v2, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 33
    invoke-virtual {v2}, Lcom/android/server/job/controllers/StateController;->startTrackingLocked()V

    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 44
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0

    .line 50
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    const/4 v0, -0x2

    .line 54
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v7, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 69
    monitor-enter v8

    .line 70
    :try_start_2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 83
    move-result-wide v2

    .line 84
    new-instance v4, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;

    .line 86
    invoke-direct {v4, v2, v3, v7, v0}, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 89
    invoke-virtual {v1, v4}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 92
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 95
    move-result v9

    .line 96
    const/4 v1, 0x0

    .line 97
    move v10, v1

    .line 98
    :goto_2
    if-ge v10, v9, :cond_2

    .line 100
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v1

    .line 104
    move-object v2, v1

    .line 105
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 107
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 111
    move-object v3, v1

    .line 112
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 114
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 116
    if-eqz v1, :cond_1

    .line 118
    const-string v1, "JobScheduler"

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v5, "  replacing "

    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    const-string v5, " with "

    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v4

    .line 145
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    goto :goto_3

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    goto :goto_4

    .line 151
    :cond_1
    :goto_3
    const-string/jumbo v6, "deferred rtc calculation"

    .line 154
    const/16 v4, 0xe

    .line 156
    const/16 v5, 0x9

    .line 158
    move-object v1, p0

    .line 159
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 162
    add-int/lit8 v10, v10, 0x1

    .line 164
    goto :goto_2

    .line 165
    :cond_2
    monitor-exit v8

    .line 166
    return-void

    .line 167
    :goto_4
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    throw p0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
