.class public final Lcom/android/server/power/stats/BluetoothPowerStatsLayout;
.super Lcom/android/server/power/stats/PowerStatsLayout;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeviceIdleTimePosition:I

.field public mDeviceRxTimePosition:I

.field public mDeviceScanTimePosition:I

.field public mDeviceTxTimePosition:I

.field public mUidRxBytesPosition:I

.field public mUidScanTimePosition:I

.field public mUidTxBytesPosition:I


# virtual methods
.method public final fromExtras(Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsLayout;->fromExtras(Landroid/os/PersistableBundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "dt-rx"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 11
    .line 12
    const-string v0, "dt-tx"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 19
    .line 20
    const-string v0, "dt-idle"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 27
    .line 28
    const-string v0, "dt-scan"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 35
    .line 36
    const-string/jumbo v0, "ub-rx"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    .line 44
    .line 45
    const-string/jumbo v0, "ub-tx"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    .line 53
    .line 54
    const-string/jumbo v0, "ut-scan"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    .line 62
    .line 63
    return-void
.end method

.method public final toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "dt-rx"

    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "dt-tx"

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string v0, "dt-idle"

    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v0, "dt-scan"

    .line 26
    .line 27
    iget v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v0, "ub-rx"

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v0, "ub-tx"

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v0, "ut-scan"

    .line 49
    .line 50
    .line 51
    iget p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    .line 52
    .line 53
    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
