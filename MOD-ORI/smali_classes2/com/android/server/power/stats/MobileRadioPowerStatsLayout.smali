.class public final Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;
.super Lcom/android/server/power/stats/PowerStatsLayout;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeviceCallPowerPosition:I

.field public mDeviceCallTimePosition:I

.field public mDeviceIdleTimePosition:I

.field public mDeviceScanTimePosition:I

.field public mDeviceSleepTimePosition:I

.field public mStateRxTimePosition:I

.field public mStateTxTimesCount:I

.field public mStateTxTimesPosition:I

.field public mUidRxBytesPosition:I

.field public mUidRxPacketsPosition:I

.field public mUidTxBytesPosition:I

.field public mUidTxPacketsPosition:I


# virtual methods
.method public final addDeviceSectionPowerEstimate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "call-power"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    .line 13
    .line 14
    return-void
.end method

.method public final addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V
    .locals 2

    .line 1
    array-length v0, p6

    .line 2
    iget v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    .line 3
    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p1, "Invalid TX time array size: "

    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    array-length p1, p6

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "MobileRadioPowerStatsLayout"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    cmp-long v0, p4, v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    array-length v0, p6

    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    :goto_0
    if-ltz v0, :cond_6

    .line 38
    .line 39
    aget v1, p6, v0

    .line 40
    .line 41
    if-eqz v1, :cond_5

    .line 42
    .line 43
    :goto_1
    invoke-static {p2}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mapRadioAccessNetworkTypeToRadioAccessTechnology(I)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    const/4 v0, 0x2

    .line 48
    if-ne p2, v0, :cond_2

    .line 49
    .line 50
    shl-int/lit8 p3, p3, 0x8

    .line 51
    .line 52
    or-int/2addr p2, p3

    .line 53
    :cond_2
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    check-cast p3, [J

    .line 58
    .line 59
    if-nez p3, :cond_3

    .line 60
    .line 61
    iget p3, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mStateStatsArrayLength:I

    .line 62
    .line 63
    new-array p3, p3, [J

    .line 64
    .line 65
    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget p1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    .line 69
    .line 70
    aget-wide v0, p3, p1

    .line 71
    .line 72
    add-long/2addr v0, p4

    .line 73
    aput-wide v0, p3, p1

    .line 74
    .line 75
    iget p1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    .line 76
    .line 77
    add-int/lit8 p1, p1, -0x1

    .line 78
    .line 79
    :goto_2
    if-ltz p1, :cond_4

    .line 80
    .line 81
    iget p2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    .line 82
    .line 83
    add-int/2addr p2, p1

    .line 84
    aget-wide p4, p3, p2

    .line 85
    .line 86
    aget v0, p6, p1

    .line 87
    .line 88
    int-to-long v0, v0

    .line 89
    add-long/2addr p4, v0

    .line 90
    aput-wide p4, p3, p2

    .line 91
    .line 92
    add-int/lit8 p1, p1, -0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    return-void

    .line 96
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    return-void
.end method

.method public final fromExtras(Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsLayout;->fromExtras(Landroid/os/PersistableBundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "dt-sleep"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    .line 11
    .line 12
    const-string v0, "dt-idle"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 19
    .line 20
    const-string v0, "dt-scan"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 27
    .line 28
    const-string v0, "dt-call"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    .line 35
    .line 36
    const-string v0, "dp-call"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    .line 43
    .line 44
    const-string/jumbo v0, "srx"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    .line 52
    .line 53
    const-string/jumbo v0, "stx"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    .line 61
    .line 62
    const-string/jumbo v0, "stxc"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    .line 70
    .line 71
    const-string/jumbo v0, "urxb"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    .line 79
    .line 80
    const-string/jumbo v0, "utxb"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    .line 88
    .line 89
    const-string/jumbo v0, "urxp"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 97
    .line 98
    const-string/jumbo v0, "utxp"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iput p1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 106
    .line 107
    return-void
.end method

.method public final toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "dt-sleep"

    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "dt-idle"

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string v0, "dt-scan"

    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v0, "dt-call"

    .line 26
    .line 27
    iget v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string v0, "dp-call"

    .line 33
    .line 34
    iget v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v0, "srx"

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v0, "stx"

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v0, "stxc"

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v0, "urxb"

    .line 64
    .line 65
    .line 66
    iget v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v0, "utxb"

    .line 72
    .line 73
    .line 74
    iget v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v0, "urxp"

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 83
    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    const-string/jumbo v0, "utxp"

    .line 88
    .line 89
    .line 90
    iget p0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 91
    .line 92
    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
