.class public final Lcom/android/server/power/stats/GnssPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAveragePowerGnssOn:D

.field public final mAveragePowerPerSignalQuality:[D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "gps.on"

    .line 5
    .line 6
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerGnssOn:D

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    new-array v1, v0, [D

    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    .line 23
    .line 24
    const-string v3, "gps.signalqualitybased"

    .line 25
    .line 26
    invoke-virtual {p1, v3, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    aput-wide v3, v2, v1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v4, p7

    .line 8
    .line 9
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 10
    .line 11
    iget-wide v7, v0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerGnssOn:D

    .line 12
    .line 13
    cmpl-double v5, v7, v5

    .line 14
    .line 15
    const-wide/16 v9, 0x3e8

    .line 16
    .line 17
    const/4 v6, 0x2

    .line 18
    const/4 v15, 0x0

    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    move-object/from16 v13, p2

    .line 22
    .line 23
    const-wide/16 v11, 0x0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move v5, v15

    .line 27
    const-wide/16 v7, 0x0

    .line 28
    .line 29
    const-wide/16 v16, 0x0

    .line 30
    .line 31
    :goto_0
    if-ge v5, v6, :cond_1

    .line 32
    .line 33
    move-object/from16 v13, p2

    .line 34
    .line 35
    invoke-virtual {v13, v5, v2, v3, v15}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    .line 36
    .line 37
    .line 38
    move-result-wide v18

    .line 39
    div-long v11, v18, v9

    .line 40
    .line 41
    add-long/2addr v7, v11

    .line 42
    iget-object v14, v0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    .line 43
    .line 44
    aget-wide v18, v14, v5

    .line 45
    .line 46
    long-to-double v11, v11

    .line 47
    mul-double v18, v18, v11

    .line 48
    .line 49
    add-double v16, v18, v16

    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object/from16 v13, p2

    .line 55
    .line 56
    const-wide/16 v11, 0x0

    .line 57
    .line 58
    cmp-long v0, v7, v11

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    long-to-double v7, v7

    .line 63
    div-double v16, v16, v7

    .line 64
    .line 65
    move-wide/from16 v7, v16

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const-wide/16 v7, 0x0

    .line 69
    .line 70
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    const/4 v14, 0x1

    .line 79
    sub-int/2addr v5, v14

    .line 80
    const-wide/16 v11, 0x0

    .line 81
    .line 82
    :goto_2
    const-wide v16, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    if-ltz v5, :cond_6

    .line 88
    .line 89
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v18

    .line 93
    move-object/from16 v14, v18

    .line 94
    .line 95
    check-cast v14, Landroid/os/UidBatteryConsumer$Builder;

    .line 96
    .line 97
    invoke-virtual {v14}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 98
    .line 99
    .line 100
    move-result-object v18

    .line 101
    move-wide/from16 v20, v7

    .line 102
    .line 103
    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getGnssEnergyConsumptionUC()J

    .line 104
    .line 105
    .line 106
    move-result-wide v6

    .line 107
    invoke-static {v6, v7, v4}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    invoke-virtual {v14}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 112
    .line 113
    .line 114
    move-result-object v18

    .line 115
    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    const/16 v10, -0x2710

    .line 120
    .line 121
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    check-cast v9, Landroid/os/BatteryStats$Uid$Sensor;

    .line 126
    .line 127
    if-nez v9, :cond_3

    .line 128
    .line 129
    const-wide/16 v9, 0x0

    .line 130
    .line 131
    const/4 v15, 0x2

    .line 132
    const-wide/16 v18, 0x3e8

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_3
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v9, v2, v3, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 140
    .line 141
    .line 142
    move-result-wide v9

    .line 143
    const-wide/16 v18, 0x3e8

    .line 144
    .line 145
    div-long v9, v9, v18

    .line 146
    .line 147
    const/4 v15, 0x2

    .line 148
    :goto_3
    if-eq v8, v15, :cond_4

    .line 149
    .line 150
    long-to-double v6, v9

    .line 151
    mul-double v6, v6, v20

    .line 152
    .line 153
    const-wide v15, 0x414b774000000000L    # 3600000.0

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    div-double/2addr v6, v15

    .line 159
    :goto_4
    const/16 v15, 0xa

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_4
    long-to-double v6, v6

    .line 163
    mul-double v6, v6, v16

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :goto_5
    invoke-virtual {v14, v15, v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    check-cast v9, Landroid/os/UidBatteryConsumer$Builder;

    .line 171
    .line 172
    invoke-virtual {v9, v15, v6, v7, v8}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v14}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-nez v8, :cond_5

    .line 180
    .line 181
    add-double/2addr v11, v6

    .line 182
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 183
    .line 184
    move-wide/from16 v9, v18

    .line 185
    .line 186
    move-wide/from16 v7, v20

    .line 187
    .line 188
    const/4 v6, 0x2

    .line 189
    const/4 v14, 0x1

    .line 190
    const/4 v15, 0x0

    .line 191
    goto :goto_2

    .line 192
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getGnssEnergyConsumptionUC()J

    .line 193
    .line 194
    .line 195
    move-result-wide v2

    .line 196
    invoke-static {v2, v3, v4}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    const/4 v4, 0x2

    .line 201
    if-ne v0, v4, :cond_7

    .line 202
    .line 203
    long-to-double v2, v2

    .line 204
    mul-double v2, v2, v16

    .line 205
    .line 206
    :goto_6
    const/4 v4, 0x0

    .line 207
    goto :goto_7

    .line 208
    :cond_7
    move-wide v2, v11

    .line 209
    goto :goto_6

    .line 210
    :goto_7
    invoke-virtual {v1, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    const/16 v5, 0xa

    .line 215
    .line 216
    invoke-virtual {v4, v5, v2, v3, v0}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 217
    .line 218
    .line 219
    const/4 v2, 0x1

    .line 220
    invoke-virtual {v1, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1, v5, v11, v12, v0}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/16 p0, 0xa

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method
