.class public final Lcom/android/server/Watchdog$HandlerChecker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mClock:Ljava/time/Clock;

.field public mCompleted:Z

.field public mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mMonitorQueue:Ljava/util/ArrayList;

.field public final mMonitors:Ljava/util/ArrayList;

.field public final mName:Ljava/lang/String;

.field public mPauseCount:I

.field public mPauseEndTimeMillis:J

.field public mStartTimeMillis:J

.field public mWaitMaxMillis:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeClock()Ljava/time/Clock;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 24
    iput-object p2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mLock:Ljava/lang/Object;

    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 31
    iput-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mClock:Ljava/time/Clock;

    .line 33
    return-void
.end method


# virtual methods
.method public final getCompletionStateLocked()I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mClock:Ljava/time/Clock;

    .line 9
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTimeMillis:J

    .line 15
    sub-long/2addr v0, v2

    .line 16
    iget-wide v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMaxMillis:J

    .line 18
    const-wide/16 v4, 0x2

    .line 20
    div-long v4, v2, v4

    .line 22
    cmp-long p0, v0, v4

    .line 24
    if-gez p0, :cond_1

    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    cmp-long p0, v0, v2

    .line 30
    if-gez p0, :cond_2

    .line 32
    const/4 p0, 0x2

    .line 33
    return p0

    .line 34
    :cond_2
    const/4 p0, 0x3

    .line 35
    return p0
.end method

.method public final pauseForLocked(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mClock:Ljava/time/Clock;

    .line 3
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 6
    move-result-wide v0

    .line 7
    const/16 v2, 0x4e20

    .line 9
    int-to-long v2, v2

    .line 10
    add-long/2addr v0, v2

    .line 11
    iput-wide v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseEndTimeMillis:J

    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "Pausing of HandlerChecker: "

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    .line 25
    const-string v2, " for reason: "

    .line 27
    const-string v3, ". Pause end time: "

    .line 29
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-wide p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseEndTimeMillis:J

    .line 34
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    const-string p1, "Watchdog"

    .line 43
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public final resumeLocked(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 3
    const-string v1, "Watchdog"

    .line 5
    if-lez v0, :cond_0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    iput v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "Resuming HandlerChecker: "

    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    .line 20
    const-string v3, " for reason: "

    .line 22
    const-string v4, ". Pause count: "

    .line 24
    invoke-static {v0, v2, v3, p1, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 29
    invoke-static {v0, p0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    const-string v0, "Already resumed HandlerChecker: "

    .line 37
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    iget-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/server/Watchdog$Monitor;

    .line 21
    iput-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 23
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-interface {v3}, Lcom/android/server/Watchdog$Monitor;->monitor()V

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mLock:Ljava/lang/Object;

    .line 35
    monitor-enter v0

    .line 36
    const/4 v1, 0x1

    .line 37
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 39
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    throw p0
.end method

.method public final scheduleCheckLocked(J)V
    .locals 5

    .line 1
    iput-wide p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMaxMillis:J

    .line 3
    iget-boolean p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    .line 9
    iget-object p2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mClock:Ljava/time/Clock;

    .line 21
    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    .line 24
    move-result-wide p1

    .line 25
    iget v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-gtz v0, :cond_2

    .line 31
    iget-wide v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseEndTimeMillis:J

    .line 33
    cmp-long v0, v3, p1

    .line 35
    if-lez v0, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v0, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    move v0, v1

    .line 41
    :goto_1
    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_3

    .line 49
    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 51
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Landroid/os/MessageQueue;->isPolling()Z

    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_4

    .line 65
    :cond_3
    if-eqz v0, :cond_5

    .line 67
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 69
    return-void

    .line 70
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 72
    if-nez v0, :cond_6

    .line 74
    return-void

    .line 75
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 77
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 80
    iput-wide p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTimeMillis:J

    .line 82
    const-wide/16 p1, 0x0

    .line 84
    iput-wide p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseEndTimeMillis:J

    .line 86
    iget-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-virtual {p1, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "CheckerHandler for "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
