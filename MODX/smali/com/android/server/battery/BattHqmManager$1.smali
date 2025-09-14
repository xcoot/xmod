.class public final Lcom/android/server/battery/BattHqmManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/battery/BattHqmManager;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    const-string p1, "[hqmEventReceiver_onReceive]intent:"

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const-string p1, "[SS]BattHqmManager"

    .line 23
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object p0, Lcom/android/server/battery/BattHqmManager;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 28
    if-nez p0, :cond_0

    .line 30
    const-string p0, "[hqmEventReceiver_onReceive]fail - mBattCallback null"

    .line 32
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void

    .line 36
    :cond_0
    sget-object p1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 38
    const-string p1, "BatteryService"

    .line 40
    const-string p2, "[onHqmEventOccured]"

    .line 42
    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    .line 47
    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance p2, Lcom/android/server/BatteryService$BattCallbackImpl$1;

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-direct {p2, p0, v0}, Lcom/android/server/BatteryService$BattCallbackImpl$1;-><init>(Lcom/android/server/BatteryService$BattCallbackImpl;I)V

    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method
