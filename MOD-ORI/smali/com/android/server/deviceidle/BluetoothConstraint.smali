.class public final Lcom/android/server/deviceidle/BluetoothConstraint;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/deviceidle/IDeviceIdleConstraint;


# instance fields
.field public final mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field public volatile mConnected:Z

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLocalService:Lcom/android/server/DeviceIdleInternal;

.field public volatile mMonitoring:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mTimeoutCallback:Lcom/android/server/deviceidle/BluetoothConstraint$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/DeviceIdleInternal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/deviceidle/BluetoothConstraint$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/android/server/deviceidle/BluetoothConstraint$1;-><init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/deviceidle/BluetoothConstraint$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/server/deviceidle/BluetoothConstraint$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mTimeoutCallback:Lcom/android/server/deviceidle/BluetoothConstraint$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    .line 29
    .line 30
    const-class p2, Landroid/bluetooth/BluetoothManager;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 39
    .line 40
    return-void
.end method

.method public static isBluetoothConnected(Landroid/bluetooth/BluetoothManager;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x7

    .line 15
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-lez p0, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_0
    return v1
.end method


# virtual methods
.method public final declared-synchronized startMonitoring()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 6
    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mTimeoutCallback:Lcom/android/server/deviceidle/BluetoothConstraint$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-wide/32 v2, 0x124f80

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/android/server/deviceidle/BluetoothConstraint;->isBluetoothConnected(Landroid/bluetooth/BluetoothManager;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-boolean v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 55
    .line 56
    if-eq v0, v1, :cond_0

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    .line 61
    .line 62
    iget-boolean v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 63
    .line 64
    invoke-interface {v0, p0, v1}, Lcom/android/server/DeviceIdleInternal;->onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    :cond_0
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    monitor-exit p0

    .line 71
    throw v0
.end method

.method public final declared-synchronized stopMonitoring()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mTimeoutCallback:Lcom/android/server/deviceidle/BluetoothConstraint$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method
