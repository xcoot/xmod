.class public final Lcom/android/server/powerstats/BatteryTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/powerstats/BatteryTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/BatteryTrigger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/powerstats/BatteryTrigger$1;->this$0:Lcom/android/server/powerstats/BatteryTrigger;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "level"

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object p2, p0, Lcom/android/server/powerstats/BatteryTrigger$1;->this$0:Lcom/android/server/powerstats/BatteryTrigger;

    .line 25
    .line 26
    iget v1, p2, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    .line 27
    .line 28
    if-ge p1, v1, :cond_1

    .line 29
    .line 30
    iget-object p2, p2, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 31
    .line 32
    invoke-static {p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/server/powerstats/BatteryTrigger$1;->this$0:Lcom/android/server/powerstats/BatteryTrigger;

    .line 40
    .line 41
    iput p1, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    .line 42
    .line 43
    :goto_0
    return-void
.end method
