.class public final synthetic Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

.field public final synthetic f$3:[J

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/android/server/power/stats/PowerStatsLayout;

.field public final synthetic f$6:Z

.field public final synthetic f$7:[D


# direct methods
.method public synthetic constructor <init>(IILcom/android/server/power/stats/PowerComponentAggregatedPowerStats;[JILcom/android/server/power/stats/PowerStatsLayout;Z[D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$3:[J

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$5:Lcom/android/server/power/stats/PowerStatsLayout;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$6:Z

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$7:[D

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$3:[J

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$5:Lcom/android/server/power/stats/PowerStatsLayout;

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$6:Z

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;->f$7:[D

    .line 16
    .line 17
    check-cast p1, [I

    .line 18
    .line 19
    invoke-static {p1, v0, v1}, Lcom/android/server/power/stats/PowerStatsExporter;->areMatchingStates([III)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v2, v4, p1, v3}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget v0, v5, Lcom/android/server/power/stats/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 34
    .line 35
    aget-wide v0, v3, v0

    .line 36
    .line 37
    long-to-double v0, v0

    .line 38
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    div-double/2addr v0, v2

    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    aget p1, p1, v2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 p1, 0x0

    .line 51
    :goto_0
    aget-wide v2, p0, p1

    .line 52
    .line 53
    add-double/2addr v2, v0

    .line 54
    aput-wide v2, p0, p1

    .line 55
    .line 56
    :goto_1
    return-void
.end method
