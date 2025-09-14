.class public final Lcom/samsung/accessory/manager/connectivity/BTConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MY_UUID_INSECURE:Ljava/util/UUID;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

.field public mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0172c870-6e31-11e4-9803-0800200c9a66"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->MY_UUID_INSECURE:Ljava/util/UUID;

    .line 8
    .line 9
    const-string v0, "SAccessoryManager_BTConnectivity"

    .line 10
    .line 11
    sput-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 9
    .line 10
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    .line 16
    .line 17
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;-><init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    .line 23
    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    .line 25
    .line 26
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    .line 32
    .line 33
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final connect()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "connect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->MY_UUID_INSECURE:Ljava/util/UUID;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->onConnectionStateChanged()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    :cond_0
    return-void
.end method

.method public final disable()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "disable"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final disconnect()V
    .locals 0

    .line 1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    const-string p0, " Current BTConnectivity state:"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final enable()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "enable"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final isEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "isEnabled = "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return p0
.end method

.method public final openNode()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final sendStopAuth()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final sendStopUsbAuth()V
    .locals 0

    .line 1
    return-void
.end method

.method public final sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
