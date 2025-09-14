.class public abstract Lcom/android/server/power/stats/PowerStatsCollector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mCollectAndDeliverStats:Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;

.field public volatile mConsumerList:Ljava/util/List;

.field public mEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mLastScheduledUpdateMs:J

.field public final mThrottlePeriodMs:J

.field public final mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectAndDeliverStats:Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mLastScheduledUpdateMs:J

    .line 14
    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    iput-wide p2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mThrottlePeriodMs:J

    .line 24
    .line 25
    iput-object p4, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 26
    .line 27
    new-instance p1, Lcom/android/server/power/stats/PowerStatsCollector$1;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/android/server/power/stats/PowerStatsCollector$1;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->addListener(Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;)V

    .line 33
    .line 34
    .line 35
    iput-object p5, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    .line 36
    .line 37
    return-void
.end method

.method public static uJtoUc(IJ)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    mul-long/2addr p1, v0

    .line 4
    div-int/lit8 v0, p0, 0x2

    .line 5
    .line 6
    int-to-long v0, v0

    .line 7
    add-long/2addr p1, v0

    .line 8
    int-to-long v0, p0

    .line 9
    div-long/2addr p1, v0

    .line 10
    return-wide p1
.end method


# virtual methods
.method public final addConsumer(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method

.method public collectAndDump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v0, v2, :cond_3

    .line 16
    .line 17
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 20
    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p0, ": disabled"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    invoke-direct {v2, p1}, Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/PowerStatsCollector;->addConsumer(Ljava/util/function/Consumer;)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->forceSchedule()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    new-instance v3, Landroid/os/ConditionVariable;

    .line 63
    .line 64
    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;

    .line 68
    .line 69
    const/4 v5, 0x2

    .line 70
    invoke-direct {v4, v5, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/PowerStatsCollector;->removeConsumer(Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/android/internal/os/PowerStats;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerStats;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    return-void

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/PowerStatsCollector;->removeConsumer(Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 109
    .line 110
    const-string p1, "Calling this method from the handler thread would cause a deadlock"

    .line 111
    .line 112
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public collectStats()Lcom/android/internal/os/PowerStats;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public forceSchedule()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectAndDeliverStats:Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0
.end method

.method public onUidRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final removeConsumer(Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda1;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public schedule()Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mLastScheduledUpdateMs:J

    .line 14
    .line 15
    sub-long v6, v2, v4

    .line 16
    .line 17
    iget-wide v8, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mThrottlePeriodMs:J

    .line 18
    .line 19
    cmp-long v0, v6, v8

    .line 20
    .line 21
    if-gez v0, :cond_1

    .line 22
    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    cmp-long v0, v4, v6

    .line 26
    .line 27
    if-ltz v0, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    iput-wide v2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mLastScheduledUpdateMs:J

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mCollectAndDeliverStats:Lcom/android/server/power/stats/PowerStatsCollector$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0
.end method
