.class public final Lcom/android/server/powerstats/BatteryTrigger;
.super Lcom/android/server/powerstats/PowerStatsLogTrigger;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBatteryLevel:I

.field public final mBatteryLevelReceiver:Lcom/android/server/powerstats/BatteryTrigger$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsLogTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/powerstats/BatteryTrigger$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/powerstats/BatteryTrigger$1;-><init>(Lcom/android/server/powerstats/BatteryTrigger;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/content/IntentFilter;

    .line 13
    .line 14
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string v0, "level"

    .line 26
    .line 27
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    .line 32
    .line 33
    :cond_0
    return-void
.end method
