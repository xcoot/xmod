.class public final Lcom/android/server/power/stats/BluetoothPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mHasBluetoothPowerController:Z

.field public final mIdleMa:D

.field public final mRxMa:D

.field public final mTxMa:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    .line 3
    .line 4
    sput-object v0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "bluetooth.controller.idle"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mIdleMa:D

    .line 11
    .line 12
    const-string v2, "bluetooth.controller.rx"

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mRxMa:D

    .line 19
    .line 20
    const-string v4, "bluetooth.controller.tx"

    .line 21
    .line 22
    invoke-virtual {p1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    iput-wide v4, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mTxMa:D

    .line 27
    .line 28
    const-wide/16 v6, 0x0

    .line 29
    .line 30
    cmpl-double p1, v0, v6

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    cmpl-double p1, v2, v6

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    cmpl-double p1, v4, v6

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mHasBluetoothPowerController:Z

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v2, Lcom/android/server/power/stats/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 13
    .line 14
    new-instance v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;

    .line 15
    .line 16
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v13, 0x1

    .line 28
    sub-int/2addr v3, v13

    .line 29
    move v14, v3

    .line 30
    :goto_0
    const/4 v10, 0x2

    .line 31
    if-ltz v14, :cond_6

    .line 32
    .line 33
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    move-object v9, v3

    .line 38
    check-cast v9, Landroid/os/UidBatteryConsumer$Builder;

    .line 39
    .line 40
    sget-object v3, Lcom/android/server/power/stats/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 41
    .line 42
    if-ne v2, v3, :cond_2

    .line 43
    .line 44
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iput-object v2, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 55
    .line 56
    array-length v3, v2

    .line 57
    new-array v3, v3, [D

    .line 58
    .line 59
    iput-object v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v2, 0x0

    .line 63
    :cond_2
    :goto_1
    invoke-virtual {v9}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getBluetoothEnergyConsumptionUC()J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    invoke-static {v6, v7, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-virtual {v9}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 80
    .line 81
    .line 82
    move-result-object v16

    .line 83
    invoke-virtual {v9}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    .line 88
    .line 89
    .line 90
    move-result v17

    .line 91
    move-object/from16 v3, p0

    .line 92
    .line 93
    move v5, v8

    .line 94
    move v13, v8

    .line 95
    move-object/from16 v8, v16

    .line 96
    .line 97
    move-object v15, v9

    .line 98
    move/from16 v9, v17

    .line 99
    .line 100
    move-object/from16 p5, v2

    .line 101
    .line 102
    move v2, v10

    .line 103
    move-object v10, v11

    .line 104
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;)V

    .line 105
    .line 106
    .line 107
    iget-wide v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 108
    .line 109
    invoke-virtual {v15, v2, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    .line 114
    .line 115
    iget-wide v4, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 116
    .line 117
    invoke-virtual {v3, v2, v4, v5, v13}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_3

    .line 125
    .line 126
    iget-wide v2, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    .line 127
    .line 128
    iget-wide v4, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 129
    .line 130
    add-long/2addr v2, v4

    .line 131
    iput-wide v2, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    .line 132
    .line 133
    iget-wide v2, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 134
    .line 135
    iget-wide v4, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 136
    .line 137
    add-double/2addr v2, v4

    .line 138
    iput-wide v2, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 139
    .line 140
    :cond_3
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_5

    .line 145
    .line 146
    iget-object v2, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 147
    .line 148
    if-eqz v2, :cond_5

    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    :goto_2
    iget-object v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 152
    .line 153
    array-length v4, v3

    .line 154
    if-ge v2, v4, :cond_5

    .line 155
    .line 156
    aget-object v3, v3, v2

    .line 157
    .line 158
    iget v4, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 159
    .line 160
    if-nez v4, :cond_4

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    iget-object v4, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 164
    .line 165
    aget-wide v4, v4, v2

    .line 166
    .line 167
    invoke-virtual {v15, v3, v4, v5, v13}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 168
    .line 169
    .line 170
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_5
    add-int/lit8 v14, v14, -0x1

    .line 174
    .line 175
    move-object/from16 v2, p5

    .line 176
    .line 177
    const/4 v13, 0x1

    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_6
    move v2, v10

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothEnergyConsumptionUC()J

    .line 182
    .line 183
    .line 184
    move-result-wide v6

    .line 185
    invoke-static {v6, v7, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 186
    .line 187
    .line 188
    move-result v12

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    const/4 v4, 0x0

    .line 194
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    move-object/from16 v3, p0

    .line 199
    .line 200
    move v5, v12

    .line 201
    move-object v10, v11

    .line 202
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;)V

    .line 203
    .line 204
    .line 205
    iget-wide v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 206
    .line 207
    iget-wide v5, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    .line 208
    .line 209
    sub-long/2addr v3, v5

    .line 210
    const-wide/16 v5, 0x0

    .line 211
    .line 212
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 213
    .line 214
    .line 215
    const/4 v1, 0x0

    .line 216
    invoke-virtual {v0, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iget-wide v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 221
    .line 222
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    check-cast v1, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 227
    .line 228
    iget-wide v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 229
    .line 230
    iget-wide v5, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 231
    .line 232
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 233
    .line 234
    .line 235
    move-result-wide v3

    .line 236
    invoke-virtual {v1, v2, v3, v4, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 237
    .line 238
    .line 239
    const/4 v1, 0x1

    .line 240
    invoke-virtual {v0, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iget-wide v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    .line 245
    .line 246
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 251
    .line 252
    iget-wide v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 253
    .line 254
    invoke-virtual {v0, v2, v3, v4, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 255
    .line 256
    .line 257
    return-void
.end method

.method public final calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    if-nez p5, :cond_1

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    iput-wide v4, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 12
    .line 13
    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 14
    .line 15
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const/4 v7, 0x0

    .line 36
    aget-object v6, v6, v7

    .line 37
    .line 38
    invoke-virtual {v4, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v13

    .line 42
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 43
    .line 44
    .line 45
    move-result-wide v9

    .line 46
    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide v11

    .line 50
    add-long v15, v13, v9

    .line 51
    .line 52
    add-long v2, v15, v11

    .line 53
    .line 54
    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    move/from16 v3, p2

    .line 58
    .line 59
    if-ne v3, v2, :cond_3

    .line 60
    .line 61
    move-wide/from16 v2, p3

    .line 62
    .line 63
    long-to-double v2, v2

    .line 64
    const-wide v4, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    mul-double/2addr v2, v4

    .line 70
    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 71
    .line 72
    if-eqz v0, :cond_8

    .line 73
    .line 74
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 75
    .line 76
    if-eqz v2, :cond_8

    .line 77
    .line 78
    :goto_0
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 79
    .line 80
    array-length v3, v2

    .line 81
    if-ge v7, v3, :cond_8

    .line 82
    .line 83
    aget-object v2, v2, v7

    .line 84
    .line 85
    iget v2, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 86
    .line 87
    if-nez v2, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$Uid;->getBluetoothEnergyConsumptionUC(I)J

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    long-to-double v8, v8

    .line 97
    mul-double/2addr v8, v4

    .line 98
    aput-wide v8, v3, v7

    .line 99
    .line 100
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    if-nez p6, :cond_5

    .line 104
    .line 105
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    long-to-double v2, v2

    .line 114
    const-wide v15, 0x414b774000000000L    # 3600000.0

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    div-double/2addr v2, v15

    .line 120
    const-wide/16 v7, 0x0

    .line 121
    .line 122
    cmpl-double v15, v2, v7

    .line 123
    .line 124
    if-eqz v15, :cond_5

    .line 125
    .line 126
    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 127
    .line 128
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 129
    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->fill([DD)V

    .line 133
    .line 134
    .line 135
    :cond_4
    return-void

    .line 136
    :cond_5
    move-object/from16 v2, p0

    .line 137
    .line 138
    iget-boolean v3, v2, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mHasBluetoothPowerController:Z

    .line 139
    .line 140
    if-eqz v3, :cond_7

    .line 141
    .line 142
    move-object/from16 v8, p0

    .line 143
    .line 144
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerMah(JJJ)D

    .line 145
    .line 146
    .line 147
    move-result-wide v7

    .line 148
    iput-wide v7, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 149
    .line 150
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 151
    .line 152
    if-eqz v3, :cond_8

    .line 153
    .line 154
    const/4 v7, 0x0

    .line 155
    :goto_2
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 156
    .line 157
    array-length v3, v0

    .line 158
    if-ge v7, v3, :cond_8

    .line 159
    .line 160
    aget-object v0, v0, v7

    .line 161
    .line 162
    iget v0, v0, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 163
    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 168
    .line 169
    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    .line 170
    .line 171
    .line 172
    move-result-wide v10

    .line 173
    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    .line 174
    .line 175
    .line 176
    move-result-wide v12

    .line 177
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    .line 178
    .line 179
    .line 180
    move-result-wide v14

    .line 181
    move-object/from16 v9, p0

    .line 182
    .line 183
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerMah(JJJ)D

    .line 184
    .line 185
    .line 186
    move-result-wide v8

    .line 187
    aput-wide v8, v3, v7

    .line 188
    .line 189
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_7
    const-wide/16 v2, 0x0

    .line 193
    .line 194
    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 195
    .line 196
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 197
    .line 198
    if-eqz v0, :cond_8

    .line 199
    .line 200
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 201
    .line 202
    .line 203
    :cond_8
    return-void
.end method

.method public final calculatePowerMah(JJJ)D
    .locals 2

    .line 1
    long-to-double p5, p5

    .line 2
    iget-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mIdleMa:D

    .line 3
    .line 4
    mul-double/2addr p5, v0

    .line 5
    long-to-double p1, p1

    .line 6
    iget-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mRxMa:D

    .line 7
    .line 8
    mul-double/2addr p1, v0

    .line 9
    add-double/2addr p1, p5

    .line 10
    long-to-double p3, p3

    .line 11
    iget-wide p5, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mTxMa:D

    .line 12
    .line 13
    mul-double/2addr p3, p5

    .line 14
    add-double/2addr p3, p1

    .line 15
    const-wide p0, 0x414b774000000000L    # 3600000.0

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    div-double/2addr p3, p0

    .line 21
    return-wide p3
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method
