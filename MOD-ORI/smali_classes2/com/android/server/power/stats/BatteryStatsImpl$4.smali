.class public final Lcom/android/server/power/stats/BatteryStatsImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "wifi_state"

    .line 7
    .line 8
    .line 9
    const/16 v0, 0xe

    .line 10
    .line 11
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$5$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$4;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    const-string p1, "connected"

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 36
    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 39
    .line 40
    iget-object p2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteUsbConnectionStateLocked(JJZ)V

    .line 55
    .line 56
    .line 57
    monitor-exit p1

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
