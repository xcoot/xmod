.class public final synthetic Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

.field public final synthetic f$3:[J

.field public final synthetic f$4:[D

.field public final synthetic f$5:Lcom/android/server/power/stats/PowerStatsLayout;


# direct methods
.method public synthetic constructor <init>(IILcom/android/server/power/stats/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/PowerStatsLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;->f$3:[J

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;->f$4:[D

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;->f$5:Lcom/android/server/power/stats/PowerStatsLayout;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;->f$0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;->f$3:[J

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;->f$4:[D

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;->f$5:Lcom/android/server/power/stats/PowerStatsLayout;

    .line 12
    .line 13
    check-cast p1, [I

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/android/server/power/stats/PowerStatsExporter;->areMatchingStates([III)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2, p1, v3}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    aget-wide v0, v4, p1

    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 33
    .line 34
    aget-wide v2, v3, p0

    .line 35
    .line 36
    long-to-double v2, v2

    .line 37
    const-wide v5, 0x412e848000000000L    # 1000000.0

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    div-double/2addr v2, v5

    .line 43
    add-double/2addr v2, v0

    .line 44
    aput-wide v2, v4, p1

    .line 45
    .line 46
    :goto_0
    return-void
.end method
