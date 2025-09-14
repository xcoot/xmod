.class public final Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBaseReportedCount:I

.field public mBaseReportedTotalTimeUs:J

.field public mCurrentReportedCount:I

.field public mCurrentReportedTotalTimeUs:J

.field public mTimeBaseRunning:Z

.field public mTrackingReportedValues:Z

.field public mUpdateVersion:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 11
    iget-boolean p1, p2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 12
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 7
    iget-boolean p1, p2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method


# virtual methods
.method public final computeCurrentCountLocked()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    .line 14
    .line 15
    sub-int/2addr v1, p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    add-int/2addr v0, v1

    .line 19
    return v0
.end method

.method public final computeRunTimeLocked(JJ)J
    .locals 2

    .line 1
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 2
    .line 3
    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 14
    .line 15
    sub-long/2addr p3, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 p3, 0x0

    .line 18
    .line 19
    :goto_0
    add-long/2addr p1, p3

    .line 20
    return-wide p1
.end method

.method public final logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "mCurrentReportedCount="

    .line 5
    .line 6
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, " mBaseReportedCount="

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " mCurrentReportedTotalTime="

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 31
    .line 32
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, " mBaseReportedTotalTimeUs="

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 41
    .line 42
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 8
    .line 9
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    .line 15
    .line 16
    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeRunTimeLocked(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeCurrentCountLocked()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    .line 15
    .line 16
    return-void
.end method

.method public final reset(JZ)Z
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(JZ)Z

    .line 3
    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 6
    .line 7
    const-wide/16 p1, 0x0

    .line 8
    .line 9
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 10
    .line 11
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public final update(JJIJ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sub-long v3, p1, p3

    .line 12
    .line 13
    iput-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 14
    .line 15
    cmp-long p3, p3, v1

    .line 16
    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    move p3, p5

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int/lit8 p3, p5, -0x1

    .line 22
    .line 23
    :goto_0
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    .line 24
    .line 25
    :cond_1
    const/4 p3, 0x1

    .line 26
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 27
    .line 28
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 29
    .line 30
    cmp-long p3, p1, p3

    .line 31
    .line 32
    if-ltz p3, :cond_2

    .line 33
    .line 34
    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 35
    .line 36
    if-ge p5, p3, :cond_3

    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0, v1, v2, p6, p7}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeRunTimeLocked(JJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide p3

    .line 42
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeCurrentCountLocked()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 49
    .line 50
    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 51
    .line 52
    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 53
    .line 54
    const/4 p3, 0x0

    .line 55
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 56
    .line 57
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    .line 58
    .line 59
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 60
    .line 61
    :cond_3
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 62
    .line 63
    iput p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 64
    .line 65
    return-void
.end method
