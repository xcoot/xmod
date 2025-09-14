.class public final Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActiveRequestCount:I

.field public mActiveTimeLastUpdateRealtimeMs:J

.field public mActiveTimeTotalMs:J

.field public mAddedRequestCount:I

.field public mAddedTimeLastUpdateRealtimeMs:J

.field public mAddedTimeTotalMs:J

.field public mDeliveredLocationCount:I

.field public mFastestIntervalMs:J

.field public mForegroundRequestCount:I

.field public mForegroundTimeLastUpdateRealtimeMs:J

.field public mForegroundTimeTotalMs:J

.field public mSlowestIntervalMs:J


# direct methods
.method public static intervalToString(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p0, v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "passive"

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string/jumbo p0, "s"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "min/max interval = "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mFastestIntervalMs:J

    .line 11
    .line 12
    invoke-static {v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->intervalToString(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, "/"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mSlowestIntervalMs:J

    .line 25
    .line 26
    invoke-static {v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->intervalToString(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", total/active/foreground duration = "

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeTotalMs:J

    .line 39
    .line 40
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, "/"

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeTotalMs:J

    .line 53
    .line 54
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, "/"

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeTotalMs:J

    .line 67
    .line 68
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ", locations = "

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mDeliveredLocationCount:I

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    .line 90
    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    monitor-exit p0

    .line 93
    throw v0
.end method

.method public final declared-synchronized updateTotals()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeTotalMs:J

    .line 11
    .line 12
    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    .line 13
    .line 14
    sub-long v4, v0, v4

    .line 15
    .line 16
    add-long/2addr v4, v2

    .line 17
    iput-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeTotalMs:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeTotalMs:J

    .line 33
    .line 34
    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeLastUpdateRealtimeMs:J

    .line 35
    .line 36
    sub-long v4, v0, v4

    .line 37
    .line 38
    add-long/2addr v4, v2

    .line 39
    iput-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeTotalMs:J

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeLastUpdateRealtimeMs:J

    .line 42
    .line 43
    :cond_1
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    .line 44
    .line 45
    if-lez v0, :cond_2

    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeTotalMs:J

    .line 52
    .line 53
    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeLastUpdateRealtimeMs:J

    .line 54
    .line 55
    sub-long v4, v0, v4

    .line 56
    .line 57
    add-long/2addr v4, v2

    .line 58
    iput-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeTotalMs:J

    .line 59
    .line 60
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeLastUpdateRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    :cond_2
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit p0

    .line 65
    throw v0
.end method
