.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 9
    .line 10
    const-string/jumbo v0, "network-stats-enabled"

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(ILjava/lang/String;)Ljava/util/concurrent/Future;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopTxPowerSharingLocked()V

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 45
    .line 46
    .line 47
    iget-boolean v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mTxPowerSharingOn:Z

    .line 48
    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    iput-boolean v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mTxPowerSharingOn:Z

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mTxPowerSharingTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 55
    .line 56
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 57
    .line 58
    .line 59
    :cond_0
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    throw p0

    .line 64
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 65
    .line 66
    monitor-enter p0

    .line 67
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string/jumbo v1, "worker shutdown"

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 84
    .line 85
    .line 86
    monitor-exit p0

    .line 87
    goto :goto_0

    .line 88
    :catchall_2
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    :try_start_3
    const-string/jumbo v0, "write"

    .line 91
    .line 92
    .line 93
    const/16 v1, 0x7f

    .line 94
    .line 95
    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(ILjava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 96
    .line 97
    .line 98
    :try_start_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWriteTask:Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    .line 101
    .line 102
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 103
    .line 104
    .line 105
    monitor-exit p0

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :try_start_5
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 109
    .line 110
    .line 111
    monitor-exit p0

    .line 112
    :goto_0
    return-void

    .line 113
    :goto_1
    monitor-exit p0

    .line 114
    throw v0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
