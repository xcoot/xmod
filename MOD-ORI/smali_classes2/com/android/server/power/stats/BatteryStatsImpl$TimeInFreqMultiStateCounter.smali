.class public final Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public final mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 4
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 5
    iget-boolean v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 6
    invoke-virtual {p2, v0, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    .line 7
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCountsLocked(I[J)Z
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 13
    .line 14
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)V

    .line 15
    .line 16
    .line 17
    array-length p0, p2

    .line 18
    const/4 p1, 0x1

    .line 19
    sub-int/2addr p0, p1

    .line 20
    :goto_0
    if-ltz p0, :cond_2

    .line 21
    .line 22
    aget-wide v0, p2, p0

    .line 23
    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    cmp-long v0, v0, v3

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    return p1

    .line 31
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v2
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 2
    .line 3
    const-wide/16 p3, 0x3e8

    .line 4
    .line 5
    div-long/2addr p1, p3

    .line 6
    const/4 p3, 0x1

    .line 7
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 2
    .line 3
    const-wide/16 p3, 0x3e8

    .line 4
    .line 5
    div-long/2addr p1, p3

    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final reset(JZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method
