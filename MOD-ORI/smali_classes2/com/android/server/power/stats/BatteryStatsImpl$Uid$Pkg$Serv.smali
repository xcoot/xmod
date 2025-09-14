.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
.super Landroid/os/BatteryStats$Uid$Pkg$Serv;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mLaunched:Z

.field public mLaunchedSinceMs:J

.field public mLaunches:I

.field public mRunning:Z

.field public mRunningSinceMs:J

.field public mStartTimeMs:J

.field public mStarts:I


# virtual methods
.method public final detach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final getLaunches(I)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 2
    .line 3
    return p0
.end method

.method public final getStartTime(JI)J
    .locals 2

    .line 1
    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    .line 9
    .line 10
    add-long/2addr v0, p1

    .line 11
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    .line 12
    .line 13
    sub-long p0, v0, p0

    .line 14
    .line 15
    :goto_0
    return-wide p0
.end method

.method public final getStarts(I)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 2
    .line 3
    return p0
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final reset(JZ)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
