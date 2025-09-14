.class public final synthetic Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/stats/PowerStatsScheduler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PowerStatsScheduler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->scheduleNextPowerStatsAggregation()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mClock:Lcom/android/internal/os/Clock;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v7

    .line 18
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v9

    .line 24
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->getLastSavedSpanEndMonotonicTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    cmp-long v2, v0, v2

    .line 31
    .line 32
    if-gez v2, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mEarliestAvailableBatteryHistoryTimeMs:Ljava/util/function/Supplier;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Long;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    :cond_0
    move-wide v11, v0

    .line 47
    iget-wide v3, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    .line 48
    .line 49
    add-long v1, v11, v3

    .line 50
    .line 51
    move-wide v5, v9

    .line 52
    invoke-static/range {v1 .. v8}, Lcom/android/server/power/stats/PowerStatsScheduler;->alignToWallClock(JJJJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    :goto_0
    move-wide v3, v11

    .line 57
    move-wide v11, v0

    .line 58
    cmp-long v0, v11, v9

    .line 59
    .line 60
    if-gtz v0, :cond_1

    .line 61
    .line 62
    new-instance v7, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-direct {v7, v0, p0}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mPowerStatsAggregator:Lcom/android/server/power/stats/PowerStatsAggregator;

    .line 69
    .line 70
    move-wide v5, v11

    .line 71
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/PowerStatsAggregator;->aggregatePowerStats(JJLjava/util/function/Consumer;)V

    .line 72
    .line 73
    .line 74
    iget-wide v0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mAggregatedPowerStatsSpanDuration:J

    .line 75
    .line 76
    add-long/2addr v0, v11

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
