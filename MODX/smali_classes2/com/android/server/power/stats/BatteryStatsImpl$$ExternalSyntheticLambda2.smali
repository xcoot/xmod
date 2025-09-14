.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
