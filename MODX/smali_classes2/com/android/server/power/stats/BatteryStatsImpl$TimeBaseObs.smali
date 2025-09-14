.class public interface abstract Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract detach()V
.end method

.method public abstract onTimeStarted(JJ)V
.end method

.method public abstract onTimeStopped(JJJ)V
.end method

.method public reset()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->reset(JZ)Z

    return-void
.end method

.method public abstract reset(JZ)Z
.end method
