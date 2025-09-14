.class public final Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

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
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v0, "onReceive: "

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", misc_event: "

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string/jumbo v0, "misc_event"

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", msg state: "

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    .line 50
    .line 51
    iget v2, v2, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    .line 52
    .line 53
    const-string v3, "SAccessoryManager_WirelessChargerConnectivity"

    .line 54
    .line 55
    invoke-static {p1, v2, v3}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/16 v2, 0x400

    .line 63
    .line 64
    and-int/2addr p1, v2

    .line 65
    const/4 v4, 0x1

    .line 66
    if-ne p1, v2, :cond_0

    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    .line 69
    .line 70
    iget p1, p1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    .line 71
    .line 72
    if-ne p1, v4, :cond_0

    .line 73
    .line 74
    const-string/jumbo p1, "read bit set"

    .line 75
    .line 76
    .line 77
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    .line 81
    .line 82
    const/4 p1, 0x2

    .line 83
    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    and-int/2addr p1, v2

    .line 91
    if-eq p1, v2, :cond_1

    .line 92
    .line 93
    const-string/jumbo p1, "read bit clear"

    .line 94
    .line 95
    .line 96
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    .line 100
    .line 101
    iput v4, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    .line 102
    .line 103
    :cond_1
    :goto_0
    return-void
.end method
