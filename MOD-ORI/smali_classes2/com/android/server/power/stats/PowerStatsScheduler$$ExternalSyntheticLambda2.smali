.class public final synthetic Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/server/power/stats/PowerStatsStore;->createPowerStatsSpan(Lcom/android/server/power/stats/AggregatedPowerStats;)Lcom/android/server/power/stats/PowerStatsSpan;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/PowerStatsSpan;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    check-cast p0, Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 23
    .line 24
    check-cast p1, Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/android/server/power/stats/PowerStatsStore;->createPowerStatsSpan(Lcom/android/server/power/stats/AggregatedPowerStats;)Lcom/android/server/power/stats/PowerStatsSpan;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p1, Lcom/android/server/power/stats/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    .line 42
    .line 43
    check-cast v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const-wide/16 v0, 0x0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object v0, p1, Lcom/android/server/power/stats/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    check-cast v0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;

    .line 64
    .line 65
    iget-wide v0, v0, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 66
    .line 67
    :goto_1
    iget-wide v2, p1, Lcom/android/server/power/stats/AggregatedPowerStats;->mDurationMs:J

    .line 68
    .line 69
    add-long/2addr v0, v2

    .line 70
    iput-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mLastSavedSpanEndMonotonicTime:J

    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
