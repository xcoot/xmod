.class public Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;
.super Landroid/os/BatteryStats$LongCounterArray;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCounts:[J

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static readSummaryFromParcelLocked(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method


# virtual methods
.method public final addCountLocked([JZ)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p2, :cond_2

    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    array-length p2, p1

    .line 11
    new-array p2, p2, [J

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 14
    .line 15
    :cond_1
    const/4 p2, 0x0

    .line 16
    :goto_0
    array-length v0, p1

    .line 17
    if-ge p2, v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 20
    .line 21
    aget-wide v1, v0, p2

    .line 22
    .line 23
    aget-wide v3, p1, p2

    .line 24
    .line 25
    add-long/2addr v1, v3

    .line 26
    aput-wide v1, v0, p2

    .line 27
    .line 28
    add-int/lit8 p2, p2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return-void
.end method

.method public final detach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCountsLocked(I)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    array-length p1, p0

    .line 8
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    return-object p0
.end method

.method public final logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "mCounts="

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 8
    .line 9
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
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
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/16 p1, 0x0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    return p0
.end method
