.class public final synthetic Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/PowerStatsScheduler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PowerStatsScheduler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsScheduler;->schedulePowerStatsAggregation()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
