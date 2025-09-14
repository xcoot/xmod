.class public final Lcom/android/server/power/stats/ScreenPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 11
    .line 12
    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 20
    .line 21
    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 22
    .line 23
    const-string/jumbo v4, "screen.on.display"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 31
    .line 32
    .line 33
    aput-object v3, v2, v1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 36
    .line 37
    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 38
    .line 39
    const-string/jumbo v4, "screen.full.display"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 47
    .line 48
    .line 49
    aput-object v3, v2, v1

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getScreenOnEnergyConsumptionUC()J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    invoke-static {v5, v6, v7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    const/4 v8, 0x0

    .line 20
    invoke-virtual {v2, v3, v4, v8}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    .line 21
    .line 22
    .line 23
    move-result-wide v9

    .line 24
    const-wide/16 v11, 0x3e8

    .line 25
    .line 26
    div-long/2addr v9, v11

    .line 27
    const/4 v15, 0x2

    .line 28
    const-wide/16 v16, 0x0

    .line 29
    .line 30
    if-eq v7, v15, :cond_2

    .line 31
    .line 32
    iget-object v5, v0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 33
    .line 34
    array-length v6, v5

    .line 35
    move-wide/from16 v18, v16

    .line 36
    .line 37
    :goto_0
    if-ge v8, v6, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2, v8, v3, v4}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide v20

    .line 43
    div-long v13, v20, v11

    .line 44
    .line 45
    aget-object v15, v5, v8

    .line 46
    .line 47
    iget-wide v11, v15, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 48
    .line 49
    long-to-double v13, v13

    .line 50
    mul-double/2addr v11, v13

    .line 51
    add-double v11, v11, v18

    .line 52
    .line 53
    move-wide/from16 v18, v11

    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    :goto_1
    const/4 v12, 0x5

    .line 57
    if-ge v11, v12, :cond_0

    .line 58
    .line 59
    invoke-virtual {v2, v8, v11, v3, v4}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v12

    .line 63
    const-wide/16 v14, 0x3e8

    .line 64
    .line 65
    div-long/2addr v12, v14

    .line 66
    iget-object v14, v0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 67
    .line 68
    aget-object v14, v14, v8

    .line 69
    .line 70
    iget-wide v14, v14, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 71
    .line 72
    long-to-double v12, v12

    .line 73
    mul-double/2addr v14, v12

    .line 74
    int-to-float v12, v11

    .line 75
    const/high16 v13, 0x3f000000    # 0.5f

    .line 76
    .line 77
    add-float/2addr v12, v13

    .line 78
    float-to-double v12, v12

    .line 79
    mul-double/2addr v14, v12

    .line 80
    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    .line 81
    .line 82
    div-double/2addr v14, v12

    .line 83
    add-double v18, v14, v18

    .line 84
    .line 85
    add-int/lit8 v11, v11, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 89
    .line 90
    const-wide/16 v11, 0x3e8

    .line 91
    .line 92
    const/4 v15, 0x2

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    :goto_2
    move-wide/from16 v5, v18

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_2
    long-to-double v5, v5

    .line 98
    const-wide v11, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    mul-double v18, v5, v11

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const/4 v8, 0x1

    .line 111
    const/4 v13, 0x2

    .line 112
    if-eq v7, v13, :cond_7

    .line 113
    .line 114
    new-instance v13, Landroid/util/SparseLongArray;

    .line 115
    .line 116
    invoke-direct {v13}, Landroid/util/SparseLongArray;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 120
    .line 121
    .line 122
    move-result v14

    .line 123
    sub-int/2addr v14, v8

    .line 124
    const-wide/16 v11, 0x0

    .line 125
    .line 126
    :goto_4
    if-ltz v14, :cond_4

    .line 127
    .line 128
    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    check-cast v15, Landroid/os/UidBatteryConsumer$Builder;

    .line 133
    .line 134
    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    move-wide/from16 v20, v9

    .line 139
    .line 140
    invoke-virtual {v0, v8, v3, v4}, Lcom/android/server/power/stats/ScreenPowerCalculator;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    .line 141
    .line 142
    .line 143
    move-result-wide v9

    .line 144
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    invoke-virtual {v13, v8, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-nez v8, :cond_3

    .line 156
    .line 157
    add-long/2addr v11, v9

    .line 158
    :cond_3
    add-int/lit8 v14, v14, -0x1

    .line 159
    .line 160
    move-wide/from16 v9, v20

    .line 161
    .line 162
    const/4 v8, 0x1

    .line 163
    goto :goto_4

    .line 164
    :cond_4
    move-wide/from16 v20, v9

    .line 165
    .line 166
    const-wide/32 v3, 0x927c0

    .line 167
    .line 168
    .line 169
    cmp-long v0, v11, v3

    .line 170
    .line 171
    if-ltz v0, :cond_5

    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    const/4 v3, 0x1

    .line 178
    sub-int/2addr v0, v3

    .line 179
    :goto_5
    if-ltz v0, :cond_5

    .line 180
    .line 181
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    .line 186
    .line 187
    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    const-wide/16 v8, 0x0

    .line 192
    .line 193
    invoke-virtual {v13, v4, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 194
    .line 195
    .line 196
    move-result-wide v14

    .line 197
    long-to-double v8, v14

    .line 198
    mul-double/2addr v8, v5

    .line 199
    move-wide/from16 v22, v5

    .line 200
    .line 201
    long-to-double v4, v11

    .line 202
    div-double/2addr v8, v4

    .line 203
    const/4 v4, 0x0

    .line 204
    invoke-virtual {v3, v4, v14, v15}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    .line 209
    .line 210
    const/4 v5, 0x1

    .line 211
    invoke-virtual {v3, v4, v8, v9, v5}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 212
    .line 213
    .line 214
    add-int/lit8 v0, v0, -0x1

    .line 215
    .line 216
    move-wide/from16 v5, v22

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_5
    move-wide/from16 v22, v5

    .line 220
    .line 221
    const/4 v5, 0x1

    .line 222
    move-wide/from16 v8, v20

    .line 223
    .line 224
    move-wide/from16 v10, v22

    .line 225
    .line 226
    :cond_6
    const/4 v4, 0x0

    .line 227
    goto :goto_8

    .line 228
    :cond_7
    move-wide/from16 v22, v5

    .line 229
    .line 230
    move v5, v8

    .line 231
    move-wide/from16 v20, v9

    .line 232
    .line 233
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    sub-int/2addr v6, v5

    .line 238
    move-wide/from16 v10, v16

    .line 239
    .line 240
    const-wide/16 v8, 0x0

    .line 241
    .line 242
    :goto_6
    if-ltz v6, :cond_6

    .line 243
    .line 244
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    .line 249
    .line 250
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    invoke-virtual {v0, v12, v3, v4}, Lcom/android/server/power/stats/ScreenPowerCalculator;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    .line 255
    .line 256
    .line 257
    move-result-wide v13

    .line 258
    move-object v15, v2

    .line 259
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getScreenOnEnergyConsumptionUC()J

    .line 260
    .line 261
    .line 262
    move-result-wide v2

    .line 263
    const-wide/16 v18, 0x0

    .line 264
    .line 265
    cmp-long v4, v2, v18

    .line 266
    .line 267
    if-gez v4, :cond_8

    .line 268
    .line 269
    const-string v2, "ScreenPowerCalculator"

    .line 270
    .line 271
    const-string v3, "Screen energy not supported, so calculateApp shouldn\'t de called"

    .line 272
    .line 273
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    move-wide/from16 v2, v16

    .line 277
    .line 278
    const/4 v4, 0x0

    .line 279
    const-wide v24, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_8
    long-to-double v2, v2

    .line 286
    const-wide v24, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    mul-double v2, v2, v24

    .line 292
    .line 293
    const/4 v4, 0x0

    .line 294
    :goto_7
    invoke-virtual {v5, v4, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    check-cast v12, Landroid/os/UidBatteryConsumer$Builder;

    .line 299
    .line 300
    invoke-virtual {v12, v4, v2, v3, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-nez v5, :cond_9

    .line 308
    .line 309
    add-double/2addr v10, v2

    .line 310
    add-long/2addr v8, v13

    .line 311
    :cond_9
    add-int/lit8 v6, v6, -0x1

    .line 312
    .line 313
    move-wide/from16 v3, p3

    .line 314
    .line 315
    move-object v2, v15

    .line 316
    goto :goto_6

    .line 317
    :goto_8
    invoke-virtual {v1, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    move-wide/from16 v2, v22

    .line 322
    .line 323
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(DD)D

    .line 324
    .line 325
    .line 326
    move-result-wide v2

    .line 327
    invoke-virtual {v0, v4, v2, v3, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 332
    .line 333
    move-wide/from16 v2, v20

    .line 334
    .line 335
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 336
    .line 337
    .line 338
    const/4 v0, 0x1

    .line 339
    invoke-virtual {v1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v0, v4, v10, v11, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 348
    .line 349
    invoke-virtual {v0, v4, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 350
    .line 351
    .line 352
    return-void
.end method

.method public getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-wide/16 p0, 0x0

    .line 8
    .line 9
    return-wide p0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p2, p3, p1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    return-wide p0
.end method

.method public getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    aget v1, v1, v0

    .line 7
    .line 8
    invoke-virtual {p1, v1, p2, p3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/ScreenPowerCalculator;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    const-wide/16 p2, 0x3e8

    .line 21
    .line 22
    div-long/2addr p0, p2

    .line 23
    return-wide p0
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method
