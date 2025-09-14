.class public final Lcom/android/server/BatteryService$27;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$batteryWaterInConnector:Z

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Intent;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/BatteryService$27;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/android/server/BatteryService$27;->val$batteryWaterInConnector:Z

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/BatteryService$27;->val$intent:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    const-string v2, "BatteryService"

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/BatteryService$27;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v4, "Sending ACTION_WIRELESS_POWER_SHARING_ENABLED. enabled : "

    .line 13
    .line 14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v4, p0, Lcom/android/server/BatteryService$27;->val$batteryWaterInConnector:Z

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/BatteryService$27;->val$intent:Landroid/content/Intent;

    .line 32
    .line 33
    invoke-static {p0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v3}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v4, "Sending ACTION_SEC_BATTERY_WATER_IN_CONNECTOR. water : "

    .line 43
    .line 44
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v4, p0, Lcom/android/server/BatteryService$27;->val$batteryWaterInConnector:Z

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/BatteryService$27;->val$intent:Landroid/content/Intent;

    .line 62
    .line 63
    invoke-static {p0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v3}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
