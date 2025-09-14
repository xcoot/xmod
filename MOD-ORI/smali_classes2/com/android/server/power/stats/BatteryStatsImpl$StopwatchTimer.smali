.class public Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAcquireTimeUs:J

.field public mInList:Z

.field public mNesting:I

.field public mTimeoutUs:J

.field public final mTimerPool:Ljava/util/ArrayList;

.field public final mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

.field public mUpdateTimeUs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method

.method public static refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    add-int/lit8 v0, p3, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 14
    .line 15
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 16
    .line 17
    sub-long v2, p0, v2

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long v4, v2, v4

    .line 22
    .line 23
    if-lez v4, :cond_0

    .line 24
    .line 25
    int-to-long v4, p3

    .line 26
    div-long/2addr v2, v4

    .line 27
    iget-wide v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 28
    .line 29
    add-long/2addr v4, v2

    .line 30
    iput-wide v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 31
    .line 32
    :cond_0
    iput-wide p0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method


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
    .locals 6

    .line 1
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimeoutUs:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v2, p3, v0

    .line 6
    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 10
    .line 11
    add-long v4, v2, p3

    .line 12
    .line 13
    cmp-long v4, p1, v4

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    add-long p1, v2, p3

    .line 18
    .line 19
    :cond_0
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 20
    .line 21
    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 22
    .line 23
    if-lez v2, :cond_2

    .line 24
    .line 25
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 26
    .line 27
    sub-long/2addr p1, v0

    .line 28
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x1

    .line 46
    :goto_0
    int-to-long v0, p0

    .line 47
    div-long v0, p1, v0

    .line 48
    .line 49
    :cond_2
    add-long/2addr p3, v0

    .line 50
    return-wide p3
.end method

.method public detach()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->detach()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final isRunningLocked()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 2
    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "mNesting="

    .line 5
    .line 6
    .line 7
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, " mUpdateTime="

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 22
    .line 23
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " mAcquireTime="

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 32
    .line 33
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0

    .line 1
    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 2
    .line 3
    if-lez p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeCurrentCountLocked()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 16
    .line 17
    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 6
    .line 7
    return-void
.end method

.method public reset(JZ)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_1
    invoke-super {p0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(JZ)Z

    .line 16
    .line 17
    .line 18
    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 19
    .line 20
    if-lez p3, :cond_2

    .line 21
    .line 22
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 23
    .line 24
    invoke-virtual {p3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 29
    .line 30
    :cond_2
    const-wide/16 p1, -0x1

    .line 31
    .line 32
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 33
    .line 34
    return v0
.end method

.method public final setMark(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    const-wide/16 v1, 0x3e8

    .line 4
    .line 5
    mul-long/2addr p1, v1

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {p1, p2, v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 23
    .line 24
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 25
    .line 26
    sub-long v2, p1, v2

    .line 27
    .line 28
    add-long/2addr v2, v0

    .line 29
    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 30
    .line 31
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 32
    .line 33
    :cond_1
    :goto_0
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 34
    .line 35
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    .line 36
    .line 37
    return-void
.end method

.method public startRunningLocked(J)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 10
    .line 11
    const-wide/16 v1, 0x3e8

    .line 12
    .line 13
    mul-long/2addr p1, v1

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 34
    .line 35
    iget-boolean p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 40
    .line 41
    add-int/lit8 p1, p1, 0x1

    .line 42
    .line 43
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 44
    .line 45
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 46
    .line 47
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-wide/16 p1, -0x1

    .line 51
    .line 52
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method

.method public stopAllRunningLocked(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 13
    .line 14
    const-wide/16 v2, 0x3e8

    .line 15
    .line 16
    mul-long/2addr p1, v2

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {v2, v3, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 36
    .line 37
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 45
    .line 46
    :goto_0
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 47
    .line 48
    const-wide/16 v2, 0x0

    .line 49
    .line 50
    cmp-long v0, p1, v2

    .line 51
    .line 52
    if-ltz v0, :cond_2

    .line 53
    .line 54
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 55
    .line 56
    cmp-long p1, v2, p1

    .line 57
    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 61
    .line 62
    sub-int/2addr p1, v1

    .line 63
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 64
    .line 65
    :cond_2
    return-void
.end method
