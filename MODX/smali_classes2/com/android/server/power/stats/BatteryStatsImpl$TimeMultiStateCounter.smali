.class public final Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
.super Landroid/os/BatteryStats$LongCounter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public final mCounter:Lcom/android/internal/os/LongMultiStateCounter;

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;


# direct methods
.method public static -$$Nest$mincrement(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;JJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter;->incrementValue(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static -$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static -$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/internal/os/LongMultiStateCounter;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/internal/os/LongMultiStateCounter;->getStateCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x5

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 19
    .line 20
    invoke-direct {v0, p1, p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongMultiStateCounter;J)V

    .line 21
    .line 22
    .line 23
    move-object p0, v0

    .line 24
    :goto_0
    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/os/LongMultiStateCounter;

    invoke-direct {v0, p2}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongMultiStateCounter;J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongMultiStateCounter;J)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 4
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 5
    iget-boolean v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 6
    invoke-virtual {p2, v0, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter;->setEnabled(ZJ)V

    .line 7
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

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
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final getCountLocked(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/os/LongMultiStateCounter;->getTotalCount()J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "mCounter="

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 8
    .line 9
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 2
    .line 3
    const-wide/16 p3, 0x3e8

    .line 4
    .line 5
    div-long/2addr p1, p3

    .line 6
    const/4 p3, 0x1

    .line 7
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/internal/os/LongMultiStateCounter;->setEnabled(ZJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 2
    .line 3
    const-wide/16 p3, 0x3e8

    .line 4
    .line 5
    div-long/2addr p1, p3

    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/internal/os/LongMultiStateCounter;->setEnabled(ZJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final reset(JZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/os/LongMultiStateCounter;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method
