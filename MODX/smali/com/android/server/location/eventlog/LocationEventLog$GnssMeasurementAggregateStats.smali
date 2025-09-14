.class public final Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAddedRequestCount:I

.field public mAddedTimeLastUpdateRealtimeMs:J

.field public mAddedTimeTotalMs:J

.field public mFastestIntervalMs:J

.field public mHasDutyCycling:Z

.field public mHasFullTracking:Z

.field public mReceivedMeasurementEventCount:I

.field public mSlowestIntervalMs:J


# direct methods
.method public static intervalToString(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/32 v0, 0x7fffffff

    .line 4
    cmp-long v0, p0, v0

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string/jumbo p0, "passive"

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 22
    move-result-wide p0

    .line 23
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo p0, "s"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "min/max interval = "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mFastestIntervalMs:J

    .line 12
    invoke-static {v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->intervalToString(J)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v0, "/"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mSlowestIntervalMs:J

    .line 26
    invoke-static {v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->intervalToString(J)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, ", total duration = "

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeTotalMs:J

    .line 40
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v0, ", tracking mode = "

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mHasFullTracking:Z

    .line 54
    if-eqz v0, :cond_0

    .line 56
    iget-boolean v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mHasDutyCycling:Z

    .line 58
    if-eqz v2, :cond_0

    .line 60
    const-string/jumbo v0, "mixed tracking mode"

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    if-eqz v0, :cond_1

    .line 66
    const-string v0, "always full-tracking"

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "always duty-cycling"

    .line 71
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, ", GNSS measurement events = "

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mReceivedMeasurementEventCount:I

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    .line 89
    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    monitor-exit p0

    .line 92
    throw v0
.end method

.method public final declared-synchronized updateTotals()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedRequestCount:I

    .line 4
    if-lez v0, :cond_0

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeTotalMs:J

    .line 12
    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    .line 14
    sub-long v4, v0, v4

    .line 16
    add-long/2addr v4, v2

    .line 17
    iput-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeTotalMs:J

    .line 19
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->mAddedTimeLastUpdateRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit p0

    .line 27
    throw v0
.end method
