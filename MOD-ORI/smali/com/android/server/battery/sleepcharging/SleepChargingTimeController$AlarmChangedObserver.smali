.class public final Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 2
    .line 3
    new-instance p1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 5
    .line 6
    const-string p1, "[SS]SleepChargingTimeController"

    .line 7
    .line 8
    const-string v0, "[AlarmChangedObserver_onChange]onChange"

    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 16
    .line 17
    const/16 v0, 0x16

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
