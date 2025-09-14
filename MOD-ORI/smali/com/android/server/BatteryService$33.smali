.class public final Lcom/android/server/BatteryService$33;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;

.field public final synthetic val$batteryRxConnected:Z

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/BatteryService$33;->val$batteryRxConnected:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/BatteryService$33;->val$intent:Landroid/content/Intent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Sending ACTION_WIRELESS_POWER_SHARING_CONNECTED. connected : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/BatteryService$33;->val$batteryRxConnected:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "BatteryService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/BatteryService$33;->val$intent:Landroid/content/Intent;

    .line 29
    .line 30
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 31
    .line 32
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-static {v2, v0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/BatteryService$33;->val$batteryRxConnected:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 46
    .line 47
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->noteStartTxPowerSharing()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 54
    .line 55
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->noteStopTxPowerSharing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 60
    .line 61
    const-string p0, "Failed to note battery stats in BatteryService"

    .line 62
    .line 63
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method
