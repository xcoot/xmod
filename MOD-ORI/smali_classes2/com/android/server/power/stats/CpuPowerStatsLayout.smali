.class public final Lcom/android/server/power/stats/CpuPowerStatsLayout;
.super Lcom/android/server/power/stats/PowerStatsLayout;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeviceCpuTimeByClusterCount:I

.field public mDeviceCpuTimeByClusterPosition:I

.field public mDeviceCpuTimeByScalingStepCount:I

.field public mDeviceCpuTimeByScalingStepPosition:I

.field public mScalingStepToPowerBracketMap:[I

.field public mUidPowerBracketCount:I

.field public mUidPowerBracketsPosition:I


# virtual methods
.method public final fromExtras(Landroid/os/PersistableBundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsLayout;->fromExtras(Landroid/os/PersistableBundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "dt"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    .line 11
    .line 12
    const-string v0, "dtc"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    .line 19
    .line 20
    const-string v0, "dc"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    .line 27
    .line 28
    const-string v0, "dcc"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    .line 35
    .line 36
    const-string/jumbo v0, "ub"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    .line 44
    .line 45
    const-string/jumbo v0, "us"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v0, 0x0

    .line 53
    const/4 v1, 0x0

    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v3, ","

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    array-length v3, v2

    .line 68
    new-array v3, v3, [I

    .line 69
    .line 70
    move v4, v0

    .line 71
    :goto_0
    array-length v5, v2

    .line 72
    if-ge v4, v5, :cond_1

    .line 73
    .line 74
    :try_start_0
    aget-object v5, v2, v4

    .line 75
    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    const-string v2, "Invalid CSV format: "

    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v2, "PowerStatsLayout"

    .line 92
    .line 93
    invoke-static {v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move-object v1, v3

    .line 98
    :goto_1
    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 99
    .line 100
    if-nez v1, :cond_2

    .line 101
    .line 102
    iget p1, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    .line 103
    .line 104
    new-array p1, p1, [I

    .line 105
    .line 106
    iput-object p1, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 107
    .line 108
    :cond_2
    const/4 p1, 0x1

    .line 109
    iput p1, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 112
    .line 113
    array-length v1, p1

    .line 114
    :goto_2
    if-ge v0, v1, :cond_4

    .line 115
    .line 116
    aget v2, p1, v0

    .line 117
    .line 118
    iget v3, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 119
    .line 120
    if-lt v2, v3, :cond_3

    .line 121
    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    iput v2, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 125
    .line 126
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    return-void
.end method

.method public final toExtras(Landroid/os/PersistableBundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "dt"

    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "dtc"

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string v0, "dc"

    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v0, "dcc"

    .line 26
    .line 27
    iget v1, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v0, "ub"

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 41
    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    array-length v1, p0

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_0
    if-ge v2, v1, :cond_2

    .line 53
    .line 54
    aget v3, p0, v2

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    const/16 v4, 0x2c

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string/jumbo v0, "us"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void
.end method
