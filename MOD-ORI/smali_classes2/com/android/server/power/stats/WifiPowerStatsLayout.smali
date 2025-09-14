.class public final Lcom/android/server/power/stats/WifiPowerStatsLayout;
.super Lcom/android/server/power/stats/PowerStatsLayout;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeviceActiveTimePosition:I

.field public mDeviceBasicScanTimePosition:I

.field public mDeviceBatchedScanTimePosition:I

.field public mDeviceIdleTimePosition:I

.field public mDeviceRxTimePosition:I

.field public mDeviceScanTimePosition:I

.field public mDeviceTxTimePosition:I

.field public mPowerReportingSupported:Z

.field public mUidBatchScanTimePosition:I

.field public mUidRxBytesPosition:I

.field public mUidRxPacketsPosition:I

.field public mUidScanTimePosition:I

.field public mUidTxBytesPosition:I

.field public mUidTxPacketsPosition:I


# virtual methods
.method public final fromExtras(Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsLayout;->fromExtras(Landroid/os/PersistableBundle;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "prs"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    .line 12
    .line 13
    const-string v0, "dt-rx"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 20
    .line 21
    const-string v0, "dt-tx"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 28
    .line 29
    const-string v0, "dt-scan"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 36
    .line 37
    const-string v0, "dt-basic-scan"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    .line 44
    .line 45
    const-string v0, "dt-batch-scan"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    .line 52
    .line 53
    const-string v0, "dt-idle"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 60
    .line 61
    const-string v0, "dt-on"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    .line 68
    .line 69
    const-string/jumbo v0, "urxb"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    .line 77
    .line 78
    const-string/jumbo v0, "utxb"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    .line 86
    .line 87
    const-string/jumbo v0, "urxp"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 95
    .line 96
    const-string/jumbo v0, "utxp"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 104
    .line 105
    const-string/jumbo v0, "ut-scan"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidScanTimePosition:I

    .line 113
    .line 114
    const-string/jumbo v0, "ut-bscan"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iput p1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    .line 122
    .line 123
    return-void
.end method

.method public final toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "prs"

    .line 5
    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const-string v0, "dt-rx"

    .line 13
    .line 14
    iget v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "dt-tx"

    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string v0, "dt-scan"

    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string v0, "dt-basic-scan"

    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string v0, "dt-batch-scan"

    .line 41
    .line 42
    iget v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string v0, "dt-idle"

    .line 48
    .line 49
    iget v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    const-string v0, "dt-on"

    .line 55
    .line 56
    iget v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v0, "urxb"

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v0, "utxb"

    .line 70
    .line 71
    .line 72
    iget v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    const-string/jumbo v0, "urxp"

    .line 78
    .line 79
    .line 80
    iget v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    const-string/jumbo v0, "utxp"

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    const-string/jumbo v0, "ut-scan"

    .line 94
    .line 95
    .line 96
    iget v1, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidScanTimePosition:I

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    const-string/jumbo v0, "ut-bscan"

    .line 102
    .line 103
    .line 104
    iget p0, p0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    .line 105
    .line 106
    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
