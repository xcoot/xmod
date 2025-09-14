.class public final synthetic Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/PowerStatsScheduler;

.field public final synthetic f$1:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PowerStatsScheduler;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;->f$1:Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;->f$1:Landroid/util/IndentingPrintWriter;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Lcom/android/server/power/stats/PowerStatsStore;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsScheduler;->getLastSavedSpanEndMonotonicTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    new-instance v7, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v7, v1, p0}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsAggregator:Lcom/android/server/power/stats/PowerStatsAggregator;

    .line 21
    .line 22
    const-wide/16 v5, -0x1

    .line 23
    .line 24
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/PowerStatsAggregator;->aggregatePowerStats(JJLjava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
