.class public final Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;->this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

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
    .locals 3

    .line 1
    const-string p1, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 15
    .line 16
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    .line 17
    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const-string v0, "android.bluetooth.device.extra.BATTERY_LEVEL"

    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;->this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;->this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;->this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p0, p2, p1, v1, v2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;->onBluetoothBatteryChanged(ILjava/lang/String;J)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method
