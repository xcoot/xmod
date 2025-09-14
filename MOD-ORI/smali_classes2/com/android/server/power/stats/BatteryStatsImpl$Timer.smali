.class public abstract Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.super Landroid/os/BatteryStats$Timer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mCount:I

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public mTimeBeforeMarkUs:J

.field public mTotalTimeUs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    .line 10
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 11
    invoke-virtual {p2, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    .line 3
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    .line 7
    invoke-virtual {p2, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method


# virtual methods
.method public abstract computeCurrentCountLocked()I
.end method

.method public abstract computeRunTimeLocked(JJ)J
.end method

.method public detach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCountLocked(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getTimeSinceMarkLocked(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    .line 12
    .line 13
    sub-long/2addr p1, v0

    .line 14
    return-wide p1
.end method

.method public final getTotalTimeLocked(JI)J
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "mCount="

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string/jumbo p2, "mTotalTime="

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onTimeStarted(JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    .line 16
    .line 17
    return-void
.end method

.method public final reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(JZ)Z

    return-void
.end method

.method public reset(JZ)Z
    .locals 0

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->detach()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide p2

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
