.class public final Lcom/android/server/deviceidle/BluetoothConstraint$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/deviceidle/BluetoothConstraint;


# direct methods
.method public constructor <init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

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
    .locals 0

    .line 1
    const-string p1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    .line 16
    .line 17
    const-string/jumbo p1, "bluetooth"

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->exitIdle(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/android/server/deviceidle/BluetoothConstraint;->isBluetoothConnected(Landroid/bluetooth/BluetoothManager;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-boolean p2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 33
    .line 34
    if-eq p1, p2, :cond_1

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    .line 39
    .line 40
    iget-boolean p2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 41
    .line 42
    invoke-interface {p1, p0, p2}, Lcom/android/server/DeviceIdleInternal;->onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method
