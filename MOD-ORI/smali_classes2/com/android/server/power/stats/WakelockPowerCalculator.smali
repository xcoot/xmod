.class public final Lcom/android/server/power/stats/WakelockPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 5
    .line 6
    const-string v1, "cpu.idle"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 29

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-wide/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v4, p5

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    const/4 v8, 0x1

    .line 18
    sub-int/2addr v7, v8

    .line 19
    const/4 v13, 0x0

    .line 20
    const-wide/16 v9, 0x0

    .line 21
    .line 22
    const-wide/16 v11, 0x0

    .line 23
    .line 24
    const-wide/16 v14, 0x0

    .line 25
    .line 26
    const-wide/16 v16, 0x0

    .line 27
    .line 28
    :goto_0
    const-wide/16 v18, 0x3e8

    .line 29
    .line 30
    move-object/from16 v8, p0

    .line 31
    .line 32
    iget-object v0, v8, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 33
    .line 34
    if-ltz v7, :cond_4

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v20

    .line 40
    move-object/from16 v8, v20

    .line 41
    .line 42
    check-cast v8, Landroid/os/UidBatteryConsumer$Builder;

    .line 43
    .line 44
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 45
    .line 46
    .line 47
    move-result-object v20

    .line 48
    move-object/from16 v21, v6

    .line 49
    .line 50
    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    move-object/from16 v20, v13

    .line 55
    .line 56
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    move-wide/from16 v24, v14

    .line 61
    .line 62
    const/4 v14, 0x0

    .line 63
    const-wide/16 v22, 0x0

    .line 64
    .line 65
    :goto_1
    if-ge v14, v13, :cond_1

    .line 66
    .line 67
    invoke-virtual {v6, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v15

    .line 71
    check-cast v15, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 72
    .line 73
    move-object/from16 v26, v6

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-virtual {v15, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    .line 77
    .line 78
    .line 79
    move-result-object v15

    .line 80
    if-eqz v15, :cond_0

    .line 81
    .line 82
    invoke-virtual {v15, v2, v3, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 83
    .line 84
    .line 85
    move-result-wide v27

    .line 86
    add-long v27, v27, v22

    .line 87
    .line 88
    move-wide/from16 v22, v27

    .line 89
    .line 90
    :cond_0
    add-int/lit8 v14, v14, 0x1

    .line 91
    .line 92
    move-object/from16 v6, v26

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    div-long v13, v22, v18

    .line 96
    .line 97
    iget-wide v2, v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 98
    .line 99
    long-to-double v0, v13

    .line 100
    mul-double/2addr v2, v0

    .line 101
    const/16 v0, 0xc

    .line 102
    .line 103
    invoke-virtual {v8, v0, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    .line 108
    .line 109
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_2

    .line 117
    .line 118
    add-long/2addr v9, v13

    .line 119
    add-double/2addr v11, v2

    .line 120
    :cond_2
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_3

    .line 125
    .line 126
    move-wide/from16 v16, v13

    .line 127
    .line 128
    move-wide v14, v2

    .line 129
    move-object v13, v8

    .line 130
    goto :goto_2

    .line 131
    :cond_3
    move-object/from16 v13, v20

    .line 132
    .line 133
    move-wide/from16 v14, v24

    .line 134
    .line 135
    :goto_2
    add-int/lit8 v7, v7, -0x1

    .line 136
    .line 137
    move-object/from16 v0, p1

    .line 138
    .line 139
    move-object/from16 v1, p2

    .line 140
    .line 141
    move-wide/from16 v2, p3

    .line 142
    .line 143
    move-object/from16 v6, v21

    .line 144
    .line 145
    const/4 v8, 0x1

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    move-object/from16 v20, v13

    .line 148
    .line 149
    move-wide/from16 v24, v14

    .line 150
    .line 151
    invoke-virtual {v1, v4, v5}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    .line 152
    .line 153
    .line 154
    move-result-wide v2

    .line 155
    move-wide/from16 v6, p3

    .line 156
    .line 157
    const/4 v8, 0x0

    .line 158
    invoke-virtual {v1, v6, v7, v8}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    .line 159
    .line 160
    .line 161
    move-result-wide v13

    .line 162
    sub-long/2addr v2, v13

    .line 163
    div-long v2, v2, v18

    .line 164
    .line 165
    sub-long/2addr v2, v9

    .line 166
    const-wide/16 v13, 0x0

    .line 167
    .line 168
    cmp-long v8, v2, v13

    .line 169
    .line 170
    if-lez v8, :cond_5

    .line 171
    .line 172
    iget-wide v13, v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 173
    .line 174
    move-wide/from16 v21, v9

    .line 175
    .line 176
    long-to-double v8, v2

    .line 177
    mul-double/2addr v13, v8

    .line 178
    add-long v2, v16, v2

    .line 179
    .line 180
    add-double v9, v24, v13

    .line 181
    .line 182
    move-wide v13, v2

    .line 183
    goto :goto_3

    .line 184
    :cond_5
    move-wide/from16 v21, v9

    .line 185
    .line 186
    const-wide/16 v9, 0x0

    .line 187
    .line 188
    const-wide/16 v13, 0x0

    .line 189
    .line 190
    :goto_3
    if-eqz v20, :cond_6

    .line 191
    .line 192
    move-object/from16 v0, v20

    .line 193
    .line 194
    const/16 v2, 0xc

    .line 195
    .line 196
    invoke-virtual {v0, v2, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    .line 201
    .line 202
    invoke-virtual {v0, v2, v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 203
    .line 204
    .line 205
    :cond_6
    invoke-virtual {v1, v4, v5}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    .line 206
    .line 207
    .line 208
    move-result-wide v2

    .line 209
    const/4 v0, 0x0

    .line 210
    invoke-virtual {v1, v6, v7, v0}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    .line 211
    .line 212
    .line 213
    move-result-wide v4

    .line 214
    sub-long/2addr v2, v4

    .line 215
    div-long v2, v2, v18

    .line 216
    .line 217
    const-wide/16 v4, 0x0

    .line 218
    .line 219
    cmp-long v1, v2, v4

    .line 220
    .line 221
    if-gez v1, :cond_7

    .line 222
    .line 223
    move-object/from16 v1, p1

    .line 224
    .line 225
    move-wide v2, v4

    .line 226
    goto :goto_4

    .line 227
    :cond_7
    move-object/from16 v1, p1

    .line 228
    .line 229
    :goto_4
    invoke-virtual {v1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    const/16 v4, 0xc

    .line 234
    .line 235
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 240
    .line 241
    add-double/2addr v9, v11

    .line 242
    invoke-virtual {v0, v4, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 243
    .line 244
    .line 245
    const/4 v0, 0x1

    .line 246
    invoke-virtual {v1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    move-wide/from16 v9, v21

    .line 251
    .line 252
    invoke-virtual {v0, v4, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 257
    .line 258
    invoke-virtual {v0, v4, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/16 p0, 0xc

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
