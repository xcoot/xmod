.class public final Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const/4 p4, 0x1

    .line 10
    sub-int/2addr p3, p4

    .line 11
    const/4 p5, 0x0

    .line 12
    move-object p6, p5

    .line 13
    :goto_0
    const-wide v0, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 p7, 0x0

    .line 19
    if-ltz p3, :cond_7

    .line 20
    .line 21
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/os/UidBatteryConsumer$Builder;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getCustomEnergyConsumerBatteryConsumptionUC()[J

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    move-object v4, p5

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    array-length v4, v3

    .line 40
    new-array v4, v4, [D

    .line 41
    .line 42
    move v5, p7

    .line 43
    :goto_1
    array-length v6, v3

    .line 44
    if-ge v5, v6, :cond_1

    .line 45
    .line 46
    aget-wide v6, v3, v5

    .line 47
    .line 48
    long-to-double v6, v6

    .line 49
    mul-double/2addr v6, v0

    .line 50
    aput-wide v6, v4, v5

    .line 51
    .line 52
    add-int/lit8 v5, v5, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_2
    if-eqz v4, :cond_5

    .line 56
    .line 57
    if-nez p6, :cond_2

    .line 58
    .line 59
    array-length p6, v4

    .line 60
    new-array p6, p6, [D

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_2
    array-length v0, p6

    .line 64
    array-length v1, v4

    .line 65
    if-eq v0, v1, :cond_3

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v1, "Number of custom energy components is not the same for all apps: "

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    array-length v1, p6

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", "

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    array-length v1, v4

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "CustomEnergyCsmrPowerCalc"

    .line 92
    .line 93
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    array-length v0, v4

    .line 97
    invoke-static {p6, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 98
    .line 99
    .line 100
    move-result-object p6

    .line 101
    :cond_3
    :goto_3
    array-length v0, v4

    .line 102
    if-ge p7, v0, :cond_6

    .line 103
    .line 104
    add-int/lit16 v0, p7, 0x3e8

    .line 105
    .line 106
    aget-wide v5, v4, p7

    .line 107
    .line 108
    invoke-virtual {v2, v0, v5, v6}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_4

    .line 116
    .line 117
    aget-wide v0, p6, p7

    .line 118
    .line 119
    aget-wide v5, v4, p7

    .line 120
    .line 121
    add-double/2addr v0, v5

    .line 122
    aput-wide v0, p6, p7

    .line 123
    .line 124
    :cond_4
    add-int/lit8 p7, p7, 0x1

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    move-object p6, p5

    .line 128
    :cond_6
    add-int/lit8 p3, p3, -0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_7
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getCustomEnergyConsumerBatteryConsumptionUC()[J

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    if-nez p0, :cond_8

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_8
    array-length p2, p0

    .line 139
    new-array p5, p2, [D

    .line 140
    .line 141
    move p2, p7

    .line 142
    :goto_4
    array-length p3, p0

    .line 143
    if-ge p2, p3, :cond_9

    .line 144
    .line 145
    aget-wide v2, p0, p2

    .line 146
    .line 147
    long-to-double v2, v2

    .line 148
    mul-double/2addr v2, v0

    .line 149
    aput-wide v2, p5, p2

    .line 150
    .line 151
    add-int/lit8 p2, p2, 0x1

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_9
    :goto_5
    if-eqz p5, :cond_a

    .line 155
    .line 156
    invoke-virtual {p1, p7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    move p2, p7

    .line 161
    :goto_6
    array-length p3, p5

    .line 162
    if-ge p2, p3, :cond_a

    .line 163
    .line 164
    add-int/lit16 p3, p2, 0x3e8

    .line 165
    .line 166
    aget-wide v0, p5, p2

    .line 167
    .line 168
    invoke-virtual {p0, p3, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 169
    .line 170
    .line 171
    add-int/lit8 p2, p2, 0x1

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_a
    if-eqz p6, :cond_b

    .line 175
    .line 176
    invoke-virtual {p1, p4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    :goto_7
    array-length p1, p6

    .line 181
    if-ge p7, p1, :cond_b

    .line 182
    .line 183
    add-int/lit16 p1, p7, 0x3e8

    .line 184
    .line 185
    aget-wide p2, p6, p7

    .line 186
    .line 187
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 188
    .line 189
    .line 190
    add-int/lit8 p7, p7, 0x1

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_b
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
