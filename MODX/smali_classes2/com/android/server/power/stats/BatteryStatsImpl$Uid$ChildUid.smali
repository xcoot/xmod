.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final cpuActiveCounter:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public final cpuTimeInFreqCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 13
    .line 14
    iget-object v3, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;->cpuActiveCounter:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->isFastCpuTimesReader()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    new-instance v2, Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 49
    .line 50
    invoke-direct {v2, v4, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;->cpuTimeInFreqCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 54
    .line 55
    new-instance p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;

    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p0, v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->updateValues(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;J)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;->cpuTimeInFreqCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 66
    .line 67
    :goto_0
    return-void
.end method
