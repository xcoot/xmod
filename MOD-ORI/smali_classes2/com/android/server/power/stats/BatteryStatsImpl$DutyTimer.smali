.class public final Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAcquireTime:J

.field public mDutyCycle:I

.field public mNesting:I

.field public mUpdateTime:J


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
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    .line 8
    .line 9
    sub-long/2addr p1, v0

    .line 10
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    .line 11
    .line 12
    int-to-long v0, p0

    .line 13
    mul-long/2addr p1, v0

    .line 14
    const-wide/16 v0, 0x64

    .line 15
    .line 16
    div-long/2addr p1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide/16 p1, 0x0

    .line 19
    .line 20
    :goto_0
    add-long/2addr p3, p1

    .line 21
    return-wide p3
.end method

.method public final isRunningLocked()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

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

.method public final logState(Landroid/util/Printer;Ljava/lang/String;)V
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
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

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
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

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
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    .line 32
    .line 33
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " mDutyCycle="

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, " mNesting="

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 52
    .line 53
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    .line 1
    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 2
    .line 3
    if-lez p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->computeRunTimeLocked(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->computeCurrentCountLocked()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 16
    .line 17
    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 12
    .line 13
    return-void
.end method

.method public final reset(JZ)Z
    .locals 1

    .line 1
    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-gtz p3, :cond_0

    .line 5
    .line 6
    const/4 p3, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p3, v0

    .line 9
    :goto_0
    invoke-super {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(JZ)Z

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 13
    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    .line 23
    .line 24
    :cond_1
    const-wide/16 p1, -0x1

    .line 25
    .line 26
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    .line 27
    .line 28
    return p3
.end method

.method public final stopRunningLocked(J)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

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
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 9
    .line 10
    if-nez v0, :cond_1

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
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 22
    .line 23
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->computeRunTimeLocked(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 31
    .line 32
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    .line 33
    .line 34
    const-wide/16 v4, 0x0

    .line 35
    .line 36
    cmp-long v0, v2, v4

    .line 37
    .line 38
    if-ltz v0, :cond_1

    .line 39
    .line 40
    cmp-long p1, p1, v2

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 45
    .line 46
    sub-int/2addr p1, v1

    .line 47
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
