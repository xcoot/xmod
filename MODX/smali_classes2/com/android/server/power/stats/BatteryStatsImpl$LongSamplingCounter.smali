.class public Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
.super Landroid/os/BatteryStats$LongCounter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public mCount:J

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final addCountLocked(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2
    iget-boolean v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    return-void
.end method

.method public final addCountLocked(JZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 4
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    :cond_0
    return-void
.end method

.method public final detach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCountForProcessState(I)J
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    const-wide/16 p0, 0x0

    .line 7
    .line 8
    return-wide p0
.end method

.method public final getCountLocked(I)J
    .locals 0

    .line 1
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 2
    .line 3
    return-wide p0
.end method

.method public final logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "mCount="

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 8
    .line 9
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
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
    const-wide/16 p1, 0x0

    .line 2
    .line 3
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0
.end method
