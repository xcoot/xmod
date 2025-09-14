.class public Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentDurationMs:J

.field public mMaxDurationMs:J

.field public mStartTimeMs:J

.field public mTotalDurationMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 p1, -0x1

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCurrentDurationMsLocked(J)J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 4
    .line 5
    if-lez v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 8
    .line 9
    iget-boolean v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const-wide/16 v3, 0x3e8

    .line 14
    .line 15
    mul-long/2addr p1, v3

    .line 16
    invoke-virtual {v2, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    div-long/2addr p1, v3

    .line 21
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 22
    .line 23
    sub-long/2addr p1, v2

    .line 24
    add-long/2addr v0, p1

    .line 25
    :cond_0
    return-wide v0
.end method

.method public final getMaxDurationMsLocked(J)J
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 10
    .line 11
    cmp-long v0, p1, v0

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    return-wide p1

    .line 16
    :cond_0
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 17
    .line 18
    return-wide p0
.end method

.method public final getTotalDurationMsLocked(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    add-long/2addr p0, v0

    .line 8
    return-wide p0
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    const-wide/16 p1, 0x3e8

    .line 6
    .line 7
    div-long/2addr p3, p1

    .line 8
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->onTimeStopped(JJJ)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 9
    .line 10
    const-wide/16 p3, 0x3e8

    .line 11
    .line 12
    div-long/2addr p5, p3

    .line 13
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 14
    .line 15
    sub-long/2addr p5, p3

    .line 16
    add-long/2addr p5, p1

    .line 17
    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 18
    .line 19
    :cond_0
    const-wide/16 p1, -0x1

    .line 20
    .line 21
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 22
    .line 23
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 15
    .line 16
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 23
    .line 24
    return-void
.end method

.method public reset(JZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(JZ)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    const-wide/16 v0, 0x3e8

    .line 24
    .line 25
    div-long/2addr p1, v0

    .line 26
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-wide/16 p1, -0x1

    .line 30
    .line 31
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 32
    .line 33
    :goto_0
    return p3
.end method

.method public startRunningLocked(J)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-wide/16 v1, 0x3e8

    .line 16
    .line 17
    mul-long/2addr p1, v1

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    div-long/2addr p1, v1

    .line 23
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 11
    .line 12
    add-long/2addr v2, v0

    .line 13
    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 22
    .line 23
    :cond_0
    const-wide/16 v0, -0x1

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 30
    .line 31
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x3e8

    .line 5
    .line 6
    div-long/2addr p2, v0

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p2

    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
