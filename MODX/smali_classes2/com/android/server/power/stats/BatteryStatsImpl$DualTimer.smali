.class public final Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 2
    .line 3
    .line 4
    new-instance p4, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    move-object v0, p4

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move v3, p3

    .line 11
    move-object v5, p6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 13
    .line 14
    .line 15
    iput-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final getSubTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final reset(JZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->reset(JZ)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->reset(JZ)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    xor-int/lit8 p0, p0, 0x1

    .line 15
    .line 16
    or-int/2addr p0, v0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    return p0
.end method

.method public final startRunningLocked(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final stopAllRunningLocked(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final stopRunningLocked(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
