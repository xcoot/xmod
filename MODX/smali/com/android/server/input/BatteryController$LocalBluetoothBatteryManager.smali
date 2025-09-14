.class public final Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/input/BatteryController$BluetoothBatteryManager;


# instance fields
.field public final mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;-><init>(Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    .line 11
    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    .line 13
    new-instance p1, Landroid/os/HandlerExecutor;

    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 17
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    invoke-direct {p1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 23
    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 25
    return-void
.end method


# virtual methods
.method public final addBatteryListener(Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    .line 6
    if-nez v1, :cond_0

    .line 8
    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    .line 10
    iget-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    .line 12
    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    .line 14
    new-instance v1, Landroid/content/IntentFilter;

    .line 16
    const-string v2, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 18
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    const-string p1, "Only one bluetooth battery listener can be registered at once."

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0

    .line 36
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final addMetadataListener(Ljava/lang/String;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/bluetooth/BluetoothManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 17
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {v1, p1}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 26
    move-result-object p1

    .line 27
    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 29
    invoke-virtual {v0, p1, p0, p2}, Landroid/bluetooth/BluetoothAdapter;->addOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    .line 32
    return-void
.end method

.method public final getBatteryLevel(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getMetadata(ILjava/lang/String;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p0, p2}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final removeBatteryListener(Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    .line 15
    iget-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    .line 17
    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    .line 19
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 28
    const-string p1, "Listener is not registered."

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0

    .line 34
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final removeMetadataListener(Ljava/lang/String;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/bluetooth/BluetoothManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 17
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 20
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0, p2}, Landroid/bluetooth/BluetoothAdapter;->removeOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    .line 30
    return-void
.end method
