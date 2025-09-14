.class public final Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mInDischarge:Z

.field public mLastAddedDurationUs:J

.field public mLastAddedTimeUs:J


# virtual methods
.method public final computeCurrentCountLocked()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final computeRunTimeLocked(JJ)J
    .locals 2

    .line 1
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long p1, p1, v0

    .line 6
    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    .line 10
    .line 11
    sub-long/2addr p1, p3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-wide p1, v0

    .line 14
    :goto_0
    cmp-long p3, p1, v0

    .line 15
    .line 16
    if-lez p3, :cond_1

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 19
    .line 20
    return-wide p1

    .line 21
    :cond_1
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 22
    .line 23
    return-wide p0
.end method

.method public final logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "mLastAddedTime="

    .line 5
    .line 6
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    .line 11
    .line 12
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, " mLastAddedDuration="

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    .line 21
    .line 22
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 3
    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 7
    .line 8
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    .line 9
    .line 10
    cmp-long p1, p3, p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 15
    .line 16
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    .line 17
    .line 18
    add-long/2addr p1, p3

    .line 19
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 3
    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 6
    .line 7
    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->computeRunTimeLocked(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->computeCurrentCountLocked()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 18
    .line 19
    return-void
.end method

.method public final recomputeLastDuration(JZ)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    .line 10
    .line 11
    sub-long/2addr v0, p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-wide v0, v2

    .line 14
    :goto_0
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-lez v4, :cond_3

    .line 17
    .line 18
    iget-boolean v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 23
    .line 24
    sub-long/2addr v4, v0

    .line 25
    iput-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 26
    .line 27
    :cond_1
    if-eqz p3, :cond_2

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    .line 33
    .line 34
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    .line 35
    .line 36
    sub-long/2addr p1, v0

    .line 37
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    .line 38
    .line 39
    :cond_3
    :goto_1
    return-void
.end method

.method public final reset(JZ)Z
    .locals 2

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    .line 6
    .line 7
    cmp-long v0, v0, p1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move v0, p3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    invoke-super {p0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(JZ)Z

    .line 16
    .line 17
    .line 18
    xor-int/lit8 p0, v0, 0x1

    .line 19
    .line 20
    return p0
.end method
