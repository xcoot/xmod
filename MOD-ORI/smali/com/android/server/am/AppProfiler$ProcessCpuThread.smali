.class public final Lcom/android/server/am/AppProfiler$ProcessCpuThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    .line 2
    .line 3
    const-string p1, "CpuTracker"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :goto_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-object v2, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    const-wide/32 v4, 0xfffffff

    .line 35
    .line 36
    .line 37
    add-long/2addr v2, v4

    .line 38
    sub-long/2addr v2, v0

    .line 39
    iget-object v4, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    .line 40
    .line 41
    iget-wide v4, v4, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 42
    .line 43
    const-wide/32 v6, 0x1b7740

    .line 44
    .line 45
    .line 46
    add-long/2addr v4, v6

    .line 47
    sub-long/2addr v4, v0

    .line 48
    cmp-long v0, v4, v2

    .line 49
    .line 50
    if-gez v0, :cond_0

    .line 51
    .line 52
    move-wide v2, v4

    .line 53
    :cond_0
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    cmp-long v0, v2, v0

    .line 56
    .line 57
    if-lez v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    :goto_1
    monitor-exit p0

    .line 74
    goto :goto_3

    .line 75
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    goto :goto_4

    .line 79
    :catch_1
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_4
    const-string v1, "ActivityManager"

    .line 86
    .line 87
    const-string v2, "Unexpected exception collecting process stats"

    .line 88
    .line 89
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 95
    throw p0
.end method
