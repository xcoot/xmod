.class public final Lcom/android/server/companion/devicepresence/BleDeviceProcessor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# static fields
.field public static final SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field public mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mScanCallback:Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;

.field public mScanning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    .line 3
    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 14
    const-string v1, "CDM_BleDeviceProcessor"

    .line 16
    const-string/jumbo v2, "getScanSettings: Applying Custom Mode & Rssi Threshold-75"

    .line 19
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/16 v1, 0x65

    .line 24
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 27
    const/16 v1, -0x4b

    .line 29
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->semSetScanFilterRssiThreshold(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 36
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    .line 7
    new-instance v0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;-><init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V

    .line 12
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanCallback:Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;

    .line 14
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 16
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 18
    return-void
.end method


# virtual methods
.method public final checkBleState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 13
    if-nez v1, :cond_1

    .line 15
    :cond_0
    if-nez v0, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 19
    if-nez v1, :cond_2

    .line 21
    :cond_1
    return-void

    .line 22
    :cond_2
    if-eqz v0, :cond_4

    .line 24
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 26
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 32
    if-nez v0, :cond_3

    .line 34
    return-void

    .line 35
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->startScan()V

    .line 38
    goto :goto_0

    .line 39
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->stopScanIfNeeded()V

    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 45
    :goto_0
    return-void

    .line 46
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    const-string v0, "BleDeviceProcessor is not initialized"

    .line 50
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0
.end method

.method public final onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 17
    if-nez p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->stopScanIfNeeded()V

    .line 23
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->startScan()V

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    const-string p1, "BleDeviceProcessor is not initialized"

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0

    .line 35
    :cond_2
    new-instance p1, Landroid/os/Handler;

    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    new-instance p2, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-direct {p2, v0, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    :goto_0
    return-void
.end method

.method public final startScan()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const-string v0, "CDM_BleDeviceProcessor"

    .line 7
    const-string/jumbo v1, "startBleScan()"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-boolean v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    const-string p0, "Scan is already in progress."

    .line 19
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 25
    if-nez v1, :cond_1

    .line 27
    const-string p0, "BLE is not available."

    .line 29
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    .line 35
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 38
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 40
    invoke-virtual {v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v2

    .line 48
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroid/companion/AssociationInfo;

    .line 60
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_3

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    if-eqz v3, :cond_2

    .line 73
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_5

    .line 83
    return-void

    .line 84
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 89
    move-result v3

    .line 90
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object v1

    .line 97
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_6

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/lang/String;

    .line 109
    new-instance v4, Landroid/bluetooth/le/ScanFilter$Builder;

    .line 111
    invoke-direct {v4}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 114
    invoke-virtual {v4, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    goto :goto_1

    .line 126
    :cond_6
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 128
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_7

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 136
    sget-object v3, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    .line 138
    iget-object v4, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanCallback:Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;

    .line 140
    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 143
    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_2

    .line 147
    :catch_0
    move-exception p0

    .line 148
    const-string v1, "Exception while starting BLE scanning"

    .line 150
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    goto :goto_2

    .line 154
    :cond_7
    const-string p0, "BLE scanning is not turned on"

    .line 156
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_2
    return-void

    .line 160
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 162
    const-string v0, "BleDeviceProcessor is not initialized"

    .line 164
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    throw p0
.end method

.method public final stopScanIfNeeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    const-string v0, "CDM_BleDeviceProcessor"

    .line 7
    const-string/jumbo v1, "stopBleScan()"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-boolean v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    .line 15
    if-nez v1, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 20
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 28
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanCallback:Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;

    .line 30
    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    const-string v2, "Exception while stopping BLE scanning"

    .line 37
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v1, "BLE scanning is not turned on"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    .line 49
    return-void

    .line 50
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    const-string v0, "BleDeviceProcessor is not initialized"

    .line 54
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0
.end method
