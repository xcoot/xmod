.class public final Lcom/android/server/power/stats/BatteryUsageStatsProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sErrorReported:Z


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mContext:Landroid/content/Context;

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public final mLock:Ljava/lang/Object;

.field public mPowerCalculators:Ljava/util/List;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public final mPowerStatsExporter:Lcom/android/server/power/stats/PowerStatsExporter;

.field public final mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/stats/PowerStatsExporter;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/internal/os/Clock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporter:Lcom/android/server/power/stats/PowerStatsExporter;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 27
    .line 28
    iput-object p6, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getToTimestamp()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v1, v1, v3

    .line 12
    .line 13
    const/16 v12, 0x8

    .line 14
    .line 15
    const/4 v14, 0x4

    .line 16
    const/4 v15, 0x1

    .line 17
    if-nez v1, :cond_1e

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    const-wide/16 v5, 0x3e8

    .line 26
    .line 27
    mul-long v7, v1, v5

    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    mul-long v16, v1, v5

    .line 36
    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    and-int/2addr v1, v14

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    move/from16 v20, v15

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/16 v20, 0x0

    .line 48
    .line 49
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    and-int/2addr v1, v12

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->isProcessStateDataAvailable()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    move/from16 v26, v15

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/16 v26, 0x0

    .line 66
    .line 67
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    and-int/lit8 v1, v1, 0x10

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    move v1, v15

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/4 v1, 0x0

    .line 78
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMinConsumedPowerThreshold()D

    .line 79
    .line 80
    .line 81
    move-result-wide v24

    .line 82
    monitor-enter p1

    .line 83
    :try_start_0
    iget-wide v10, v9, Lcom/android/server/power/stats/BatteryStatsImpl;->mMonotonicStartTime:J

    .line 84
    .line 85
    iget-wide v5, v9, Lcom/android/server/power/stats/BatteryStatsImpl;->mMonotonicEndTime:J

    .line 86
    .line 87
    new-instance v2, Landroid/os/BatteryUsageStats$Builder;

    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v19

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isScreenStateDataNeeded()Z

    .line 94
    .line 95
    .line 96
    move-result v22

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isPowerStateDataNeeded()Z

    .line 98
    .line 99
    .line 100
    move-result v23

    .line 101
    move-object/from16 v18, v2

    .line 102
    .line 103
    move/from16 v21, v26

    .line 104
    .line 105
    invoke-direct/range {v18 .. v25}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZZD)V

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getStartClockTime()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    invoke-virtual {v2, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 113
    .line 114
    .line 115
    move-wide/from16 v3, p3

    .line 116
    .line 117
    invoke-virtual {v2, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 118
    .line 119
    .line 120
    iget-object v3, v9, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    sub-int/2addr v4, v15

    .line 127
    :goto_3
    const/4 v14, 0x3

    .line 128
    if-ltz v4, :cond_5

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v22

    .line 134
    move-object/from16 v15, v22

    .line 135
    .line 136
    check-cast v15, Landroid/os/BatteryStats$Uid;

    .line 137
    .line 138
    if-nez v1, :cond_3

    .line 139
    .line 140
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    const/16 v13, 0x442

    .line 145
    .line 146
    if-ne v12, v13, :cond_3

    .line 147
    .line 148
    move/from16 v24, v1

    .line 149
    .line 150
    move-object/from16 v25, v2

    .line 151
    .line 152
    const/4 v12, 0x0

    .line 153
    const-wide/16 v27, 0x3e8

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    goto/16 :goto_14

    .line 158
    .line 159
    :cond_3
    invoke-virtual {v2, v15}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(Landroid/os/BatteryStats$Uid;)Landroid/os/UidBatteryConsumer$Builder;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    const/4 v13, 0x0

    .line 164
    invoke-virtual {v15, v14, v7, v8, v13}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    .line 165
    .line 166
    .line 167
    move-result-wide v24

    .line 168
    const-wide/16 v27, 0x3e8

    .line 169
    .line 170
    div-long v13, v24, v27

    .line 171
    .line 172
    move/from16 v24, v1

    .line 173
    .line 174
    const/4 v1, 0x2

    .line 175
    invoke-virtual {v12, v1, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInProcessStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    move-object v14, v2

    .line 180
    const/4 v13, 0x0

    .line 181
    invoke-virtual {v15, v13, v7, v8, v13}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    .line 182
    .line 183
    .line 184
    move-result-wide v1

    .line 185
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    if-eqz v13, :cond_4

    .line 190
    .line 191
    move-object/from16 v25, v14

    .line 192
    .line 193
    const/4 v14, 0x0

    .line 194
    invoke-virtual {v13, v7, v8, v14}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 195
    .line 196
    .line 197
    move-result-wide v29

    .line 198
    move-object v13, v15

    .line 199
    move-wide/from16 v14, v29

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_4
    move-object/from16 v25, v14

    .line 203
    .line 204
    move-object v13, v15

    .line 205
    const-wide/16 v14, 0x0

    .line 206
    .line 207
    :goto_4
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 208
    .line 209
    .line 210
    move-result-wide v1

    .line 211
    move-object v15, v13

    .line 212
    const/4 v13, 0x0

    .line 213
    const/4 v14, 0x2

    .line 214
    invoke-virtual {v15, v14, v7, v8, v13}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    .line 215
    .line 216
    .line 217
    move-result-wide v29

    .line 218
    add-long v29, v29, v1

    .line 219
    .line 220
    const-wide/16 v1, 0x3e8

    .line 221
    .line 222
    div-long v13, v29, v1

    .line 223
    .line 224
    const/4 v1, 0x1

    .line 225
    invoke-virtual {v12, v1, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInProcessStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    const/4 v12, 0x0

    .line 230
    invoke-virtual {v15, v1, v7, v8, v12}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    .line 231
    .line 232
    .line 233
    move-result-wide v13

    .line 234
    const-wide/16 v27, 0x3e8

    .line 235
    .line 236
    div-long v13, v13, v27

    .line 237
    .line 238
    const/4 v1, 0x3

    .line 239
    invoke-virtual {v2, v1, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInProcessStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    .line 240
    .line 241
    .line 242
    :goto_5
    add-int/lit8 v4, v4, -0x1

    .line 243
    .line 244
    move/from16 v1, v24

    .line 245
    .line 246
    move-object/from16 v2, v25

    .line 247
    .line 248
    const/16 v12, 0x8

    .line 249
    .line 250
    const/4 v15, 0x1

    .line 251
    goto :goto_3

    .line 252
    :cond_5
    move-object/from16 v25, v2

    .line 253
    .line 254
    const/4 v12, 0x0

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getPowerComponents()[I

    .line 256
    .line 257
    .line 258
    move-result-object v13

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getPowerCalculators()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v14

    .line 263
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 264
    .line 265
    .line 266
    move-result v15

    .line 267
    move v4, v12

    .line 268
    :goto_6
    if-ge v4, v15, :cond_9

    .line 269
    .line 270
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Lcom/android/server/power/stats/PowerCalculator;

    .line 275
    .line 276
    if-eqz v13, :cond_8

    .line 277
    .line 278
    array-length v2, v13

    .line 279
    move v3, v12

    .line 280
    :goto_7
    if-ge v3, v2, :cond_7

    .line 281
    .line 282
    aget v12, v13, v3

    .line 283
    .line 284
    invoke-virtual {v1, v12}, Lcom/android/server/power/stats/PowerCalculator;->isPowerComponentSupported(I)Z

    .line 285
    .line 286
    .line 287
    move-result v12

    .line 288
    if-eqz v12, :cond_6

    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 292
    .line 293
    const/4 v12, 0x0

    .line 294
    goto :goto_7

    .line 295
    :cond_7
    move/from16 v24, v4

    .line 296
    .line 297
    move-wide/from16 v18, v5

    .line 298
    .line 299
    move-wide/from16 v27, v7

    .line 300
    .line 301
    move-object/from16 v12, v25

    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_8
    :goto_8
    move-object/from16 v12, v25

    .line 305
    .line 306
    move-object v2, v12

    .line 307
    move-object/from16 v3, p1

    .line 308
    .line 309
    move/from16 v24, v4

    .line 310
    .line 311
    move-wide/from16 v18, v5

    .line 312
    .line 313
    move-wide v4, v7

    .line 314
    move-wide/from16 v27, v7

    .line 315
    .line 316
    move-wide/from16 v6, v16

    .line 317
    .line 318
    move-object/from16 v8, p2

    .line 319
    .line 320
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/PowerCalculator;->calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V

    .line 321
    .line 322
    .line 323
    :goto_9
    add-int/lit8 v4, v24, 0x1

    .line 324
    .line 325
    move-object/from16 v25, v12

    .line 326
    .line 327
    move-wide/from16 v5, v18

    .line 328
    .line 329
    move-wide/from16 v7, v27

    .line 330
    .line 331
    const/4 v12, 0x0

    .line 332
    goto :goto_6

    .line 333
    :cond_9
    move-wide/from16 v18, v5

    .line 334
    .line 335
    move-object/from16 v12, v25

    .line 336
    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    const/4 v2, 0x2

    .line 342
    and-int/2addr v1, v2

    .line 343
    if-eqz v1, :cond_a

    .line 344
    .line 345
    iget-object v1, v9, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHistory;->copy()Lcom/android/internal/os/BatteryStatsHistory;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v12, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryHistory(Lcom/android/internal/os/BatteryStatsHistory;)Landroid/os/BatteryUsageStats$Builder;

    .line 352
    .line 353
    .line 354
    :cond_a
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 356
    .line 357
    const/4 v2, 0x1

    .line 358
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-ltz v1, :cond_17

    .line 363
    .line 364
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporter:Lcom/android/server/power/stats/PowerStatsExporter;

    .line 365
    .line 366
    monitor-enter v1

    .line 367
    :try_start_1
    iget-object v0, v1, Lcom/android/server/power/stats/PowerStatsExporter;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 368
    .line 369
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    const/4 v3, 0x1

    .line 378
    sub-int/2addr v2, v3

    .line 379
    move-wide/from16 v28, v10

    .line 380
    .line 381
    const/4 v3, 0x0

    .line 382
    :goto_a
    if-ltz v2, :cond_14

    .line 383
    .line 384
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    check-cast v4, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 389
    .line 390
    iget-object v5, v4, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 391
    .line 392
    const-string v6, "aggregated-power-stats"

    .line 393
    .line 394
    check-cast v5, Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    if-nez v5, :cond_b

    .line 401
    .line 402
    move/from16 p0, v2

    .line 403
    .line 404
    move/from16 p1, v3

    .line 405
    .line 406
    goto/16 :goto_c

    .line 407
    .line 408
    :cond_b
    iget-object v5, v4, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 409
    .line 410
    const-wide/high16 v6, -0x8000000000000000L

    .line 411
    .line 412
    const/4 v8, 0x0

    .line 413
    const-wide v13, 0x7fffffffffffffffL

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    :goto_b
    move-object v9, v5

    .line 419
    check-cast v9, Ljava/util/ArrayList;

    .line 420
    .line 421
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 422
    .line 423
    .line 424
    move-result v15

    .line 425
    if-ge v8, v15, :cond_e

    .line 426
    .line 427
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v9

    .line 431
    check-cast v9, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 432
    .line 433
    move/from16 p0, v2

    .line 434
    .line 435
    move/from16 p1, v3

    .line 436
    .line 437
    iget-wide v2, v9, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    .line 438
    .line 439
    move-object/from16 p2, v4

    .line 440
    .line 441
    move-object v15, v5

    .line 442
    iget-wide v4, v9, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    .line 443
    .line 444
    add-long/2addr v4, v2

    .line 445
    cmp-long v9, v2, v13

    .line 446
    .line 447
    if-gez v9, :cond_c

    .line 448
    .line 449
    move-wide v13, v2

    .line 450
    :cond_c
    cmp-long v2, v4, v6

    .line 451
    .line 452
    if-lez v2, :cond_d

    .line 453
    .line 454
    move-wide v6, v4

    .line 455
    :cond_d
    add-int/lit8 v8, v8, 0x1

    .line 456
    .line 457
    move/from16 v2, p0

    .line 458
    .line 459
    move/from16 v3, p1

    .line 460
    .line 461
    move-object/from16 v4, p2

    .line 462
    .line 463
    move-object v5, v15

    .line 464
    goto :goto_b

    .line 465
    :catchall_1
    move-exception v0

    .line 466
    goto/16 :goto_f

    .line 467
    .line 468
    :cond_e
    move/from16 p0, v2

    .line 469
    .line 470
    move/from16 p1, v3

    .line 471
    .line 472
    move-object/from16 p2, v4

    .line 473
    .line 474
    cmp-long v2, v13, v10

    .line 475
    .line 476
    if-ltz v2, :cond_11

    .line 477
    .line 478
    cmp-long v2, v6, v18

    .line 479
    .line 480
    if-ltz v2, :cond_f

    .line 481
    .line 482
    goto :goto_c

    .line 483
    :cond_f
    cmp-long v2, v6, v28

    .line 484
    .line 485
    if-lez v2, :cond_10

    .line 486
    .line 487
    move-wide/from16 v28, v6

    .line 488
    .line 489
    :cond_10
    iget-object v2, v1, Lcom/android/server/power/stats/PowerStatsExporter;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 490
    .line 491
    move-object/from16 v4, p2

    .line 492
    .line 493
    iget-wide v5, v4, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    .line 494
    .line 495
    const-string v3, "aggregated-power-stats"

    .line 496
    .line 497
    filled-new-array {v3}, [Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    invoke-virtual {v2, v5, v6, v3}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    if-nez v2, :cond_12

    .line 506
    .line 507
    const-string v2, "PowerStatsExporter"

    .line 508
    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .line 513
    .line 514
    const-string v5, "Could not read PowerStatsStore section "

    .line 515
    .line 516
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .line 528
    .line 529
    :cond_11
    :goto_c
    move/from16 v3, p1

    .line 530
    .line 531
    goto :goto_e

    .line 532
    :cond_12
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    .line 533
    .line 534
    move/from16 v3, p1

    .line 535
    .line 536
    const/4 v4, 0x0

    .line 537
    :goto_d
    move-object v5, v2

    .line 538
    check-cast v5, Ljava/util/ArrayList;

    .line 539
    .line 540
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 541
    .line 542
    .line 543
    move-result v6

    .line 544
    if-ge v4, v6, :cond_13

    .line 545
    .line 546
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    check-cast v3, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 551
    .line 552
    check-cast v3, Lcom/android/server/power/stats/AggregatedPowerStatsSection;

    .line 553
    .line 554
    iget-object v3, v3, Lcom/android/server/power/stats/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 555
    .line 556
    invoke-static {v12, v3}, Lcom/android/server/power/stats/PowerStatsExporter;->populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/AggregatedPowerStats;)V

    .line 557
    .line 558
    .line 559
    add-int/lit8 v4, v4, 0x1

    .line 560
    .line 561
    const/4 v3, 0x1

    .line 562
    goto :goto_d

    .line 563
    :cond_13
    :goto_e
    add-int/lit8 v2, p0, -0x1

    .line 564
    .line 565
    goto/16 :goto_a

    .line 566
    .line 567
    :cond_14
    move/from16 p1, v3

    .line 568
    .line 569
    if-eqz p1, :cond_15

    .line 570
    .line 571
    iget-wide v2, v1, Lcom/android/server/power/stats/PowerStatsExporter;->mBatterySessionTimeSpanSlackMillis:J

    .line 572
    .line 573
    sub-long v5, v18, v2

    .line 574
    .line 575
    cmp-long v0, v28, v5

    .line 576
    .line 577
    if-gez v0, :cond_16

    .line 578
    .line 579
    :cond_15
    iget-object v0, v1, Lcom/android/server/power/stats/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/PowerStatsAggregator;

    .line 580
    .line 581
    new-instance v2, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda0;

    .line 582
    .line 583
    invoke-direct {v2, v1, v12}, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsExporter;Landroid/os/BatteryUsageStats$Builder;)V

    .line 584
    .line 585
    .line 586
    move-object/from16 v27, v0

    .line 587
    .line 588
    move-wide/from16 v30, v18

    .line 589
    .line 590
    move-object/from16 v32, v2

    .line 591
    .line 592
    invoke-virtual/range {v27 .. v32}, Lcom/android/server/power/stats/PowerStatsAggregator;->aggregatePowerStats(JJLjava/util/function/Consumer;)V

    .line 593
    .line 594
    .line 595
    :cond_16
    iget-object v2, v1, Lcom/android/server/power/stats/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/PowerStatsAggregator;

    .line 596
    .line 597
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 598
    const/4 v0, 0x0

    .line 599
    :try_start_2
    iput-object v0, v2, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 600
    .line 601
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 602
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 603
    goto :goto_10

    .line 604
    :catchall_2
    move-exception v0

    .line 605
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 606
    :try_start_5
    throw v0

    .line 607
    :goto_f
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 608
    throw v0

    .line 609
    :cond_17
    :goto_10
    invoke-virtual {v12}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    if-eqz v26, :cond_1d

    .line 614
    .line 615
    sget-boolean v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->sErrorReported:Z

    .line 616
    .line 617
    if-eqz v1, :cond_18

    .line 618
    .line 619
    goto/16 :goto_13

    .line 620
    .line 621
    :cond_18
    const/16 v1, 0xb

    .line 622
    .line 623
    const/16 v2, 0x8

    .line 624
    .line 625
    const/4 v3, 0x1

    .line 626
    const/4 v4, 0x2

    .line 627
    filled-new-array {v3, v2, v1, v4}, [I

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    const/4 v2, 0x4

    .line 632
    const/4 v5, 0x3

    .line 633
    filled-new-array {v3, v4, v5, v2}, [I

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 646
    .line 647
    .line 648
    move-result v5

    .line 649
    if-eqz v5, :cond_1d

    .line 650
    .line 651
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v5

    .line 655
    check-cast v5, Landroid/os/UidBatteryConsumer;

    .line 656
    .line 657
    const/4 v6, 0x0

    .line 658
    :goto_11
    if-ge v6, v2, :cond_19

    .line 659
    .line 660
    aget v7, v1, v6

    .line 661
    .line 662
    invoke-virtual {v5, v7}, Landroid/os/UidBatteryConsumer;->getKey(I)Landroid/os/BatteryConsumer$Key;

    .line 663
    .line 664
    .line 665
    move-result-object v8

    .line 666
    invoke-virtual {v5, v8}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    .line 667
    .line 668
    .line 669
    move-result-wide v8

    .line 670
    const-wide/16 v10, 0x0

    .line 671
    .line 672
    const/4 v12, 0x0

    .line 673
    :goto_12
    if-ge v12, v2, :cond_1a

    .line 674
    .line 675
    aget v2, v4, v12

    .line 676
    .line 677
    invoke-virtual {v5, v7, v2}, Landroid/os/UidBatteryConsumer;->getKey(II)Landroid/os/BatteryConsumer$Key;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    invoke-virtual {v5, v2}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    .line 682
    .line 683
    .line 684
    move-result-wide v13

    .line 685
    add-double/2addr v10, v13

    .line 686
    add-int/lit8 v12, v12, 0x1

    .line 687
    .line 688
    const/4 v2, 0x4

    .line 689
    goto :goto_12

    .line 690
    :cond_1a
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 691
    .line 692
    add-double/2addr v12, v8

    .line 693
    cmpl-double v2, v10, v12

    .line 694
    .line 695
    if-lez v2, :cond_1c

    .line 696
    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    .line 698
    .line 699
    const-string v2, "Sum of states exceeds total. UID = "

    .line 700
    .line 701
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getUid()I

    .line 705
    .line 706
    .line 707
    move-result v2

    .line 708
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    const-string v2, " "

    .line 712
    .line 713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-static {v7}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    const-string v2, " total = "

    .line 724
    .line 725
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    const-string v2, " states = "

    .line 732
    .line 733
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    sget-boolean v2, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->sErrorReported:Z

    .line 744
    .line 745
    const-string v3, "BatteryUsageStatsProv"

    .line 746
    .line 747
    if-nez v2, :cond_1b

    .line 748
    .line 749
    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .line 751
    .line 752
    const/4 v2, 0x1

    .line 753
    sput-boolean v2, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->sErrorReported:Z

    .line 754
    .line 755
    goto :goto_13

    .line 756
    :cond_1b
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .line 758
    .line 759
    goto :goto_13

    .line 760
    :cond_1c
    const/4 v2, 0x1

    .line 761
    add-int/lit8 v6, v6, 0x1

    .line 762
    .line 763
    const/4 v2, 0x4

    .line 764
    goto :goto_11

    .line 765
    :cond_1d
    :goto_13
    return-object v0

    .line 766
    :goto_14
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 767
    throw v0

    .line 768
    :cond_1e
    move v2, v15

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    const/4 v3, 0x4

    .line 774
    and-int/2addr v1, v3

    .line 775
    if-eqz v1, :cond_1f

    .line 776
    .line 777
    move v5, v2

    .line 778
    goto :goto_15

    .line 779
    :cond_1f
    const/4 v5, 0x0

    .line 780
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    const/16 v3, 0x8

    .line 785
    .line 786
    and-int/2addr v1, v3

    .line 787
    if-eqz v1, :cond_20

    .line 788
    .line 789
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->isProcessStateDataAvailable()Z

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    if-eqz v1, :cond_20

    .line 794
    .line 795
    move v13, v2

    .line 796
    goto :goto_16

    .line 797
    :cond_20
    const/4 v13, 0x0

    .line 798
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMinConsumedPowerThreshold()D

    .line 799
    .line 800
    .line 801
    move-result-wide v1

    .line 802
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v11

    .line 806
    new-instance v12, Landroid/os/BatteryUsageStats$Builder;

    .line 807
    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isScreenStateDataNeeded()Z

    .line 809
    .line 810
    .line 811
    move-result v7

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isPowerStateDataNeeded()Z

    .line 813
    .line 814
    .line 815
    move-result v8

    .line 816
    move-object v3, v12

    .line 817
    move-object v4, v11

    .line 818
    move v6, v13

    .line 819
    move-wide v9, v1

    .line 820
    invoke-direct/range {v3 .. v10}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZZD)V

    .line 821
    .line 822
    .line 823
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 824
    .line 825
    const-string v1, "BatteryUsageStatsProv"

    .line 826
    .line 827
    if-nez v0, :cond_21

    .line 828
    .line 829
    const-string v0, "PowerStatsStore is unavailable"

    .line 830
    .line 831
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .line 833
    .line 834
    invoke-virtual {v12}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    goto/16 :goto_1c

    .line 839
    .line 840
    :cond_21
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    .line 841
    .line 842
    .line 843
    move-result-object v2

    .line 844
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 845
    .line 846
    .line 847
    move-result-object v2

    .line 848
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 849
    .line 850
    .line 851
    move-result v3

    .line 852
    if-eqz v3, :cond_2a

    .line 853
    .line 854
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v3

    .line 858
    check-cast v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 859
    .line 860
    iget-object v4, v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 861
    .line 862
    check-cast v4, Ljava/util/ArrayList;

    .line 863
    .line 864
    const-string v5, "battery-usage-stats"

    .line 865
    .line 866
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 867
    .line 868
    .line 869
    move-result v4

    .line 870
    if-nez v4, :cond_22

    .line 871
    .line 872
    goto :goto_17

    .line 873
    :cond_22
    iget-object v4, v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 874
    .line 875
    check-cast v4, Ljava/util/ArrayList;

    .line 876
    .line 877
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 878
    .line 879
    .line 880
    move-result-object v4

    .line 881
    const-wide v6, 0x7fffffffffffffffL

    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    const-wide/16 v8, 0x0

    .line 887
    .line 888
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 889
    .line 890
    .line 891
    move-result v10

    .line 892
    if-eqz v10, :cond_23

    .line 893
    .line 894
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v10

    .line 898
    check-cast v10, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 899
    .line 900
    iget-wide v14, v10, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startTime:J

    .line 901
    .line 902
    move-object/from16 p1, v12

    .line 903
    .line 904
    move/from16 p3, v13

    .line 905
    .line 906
    iget-wide v12, v10, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    .line 907
    .line 908
    add-long/2addr v14, v12

    .line 909
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 910
    .line 911
    .line 912
    move-result-wide v6

    .line 913
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 914
    .line 915
    .line 916
    move-result-wide v8

    .line 917
    move-object/from16 v12, p1

    .line 918
    .line 919
    move/from16 v13, p3

    .line 920
    .line 921
    goto :goto_18

    .line 922
    :cond_23
    move-object/from16 p1, v12

    .line 923
    .line 924
    move/from16 p3, v13

    .line 925
    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFromTimestamp()J

    .line 927
    .line 928
    .line 929
    move-result-wide v12

    .line 930
    const-wide/16 v14, 0x0

    .line 931
    .line 932
    cmp-long v4, v12, v14

    .line 933
    .line 934
    if-eqz v4, :cond_24

    .line 935
    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFromTimestamp()J

    .line 937
    .line 938
    .line 939
    move-result-wide v12

    .line 940
    cmp-long v4, v6, v12

    .line 941
    .line 942
    if-lez v4, :cond_25

    .line 943
    .line 944
    :cond_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getToTimestamp()J

    .line 945
    .line 946
    .line 947
    move-result-wide v6

    .line 948
    cmp-long v4, v6, v14

    .line 949
    .line 950
    if-eqz v4, :cond_26

    .line 951
    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getToTimestamp()J

    .line 953
    .line 954
    .line 955
    move-result-wide v6

    .line 956
    cmp-long v4, v8, v6

    .line 957
    .line 958
    if-gtz v4, :cond_25

    .line 959
    .line 960
    goto :goto_1a

    .line 961
    :cond_25
    :goto_19
    move-object/from16 v12, p1

    .line 962
    .line 963
    move/from16 v13, p3

    .line 964
    .line 965
    goto :goto_17

    .line 966
    :cond_26
    :goto_1a
    filled-new-array {v5}, [Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v4

    .line 970
    iget-wide v5, v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    .line 971
    .line 972
    invoke-virtual {v0, v5, v6, v4}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    .line 973
    .line 974
    .line 975
    move-result-object v3

    .line 976
    if-nez v3, :cond_27

    .line 977
    .line 978
    goto :goto_19

    .line 979
    :cond_27
    iget-object v3, v3, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    .line 980
    .line 981
    check-cast v3, Ljava/util/ArrayList;

    .line 982
    .line 983
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 984
    .line 985
    .line 986
    move-result-object v3

    .line 987
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 988
    .line 989
    .line 990
    move-result v4

    .line 991
    if-eqz v4, :cond_25

    .line 992
    .line 993
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v4

    .line 997
    check-cast v4, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 998
    .line 999
    check-cast v4, Lcom/android/server/power/stats/BatteryUsageStatsSection;

    .line 1000
    .line 1001
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryUsageStatsSection;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 1002
    .line 1003
    invoke-virtual {v4}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v5

    .line 1007
    invoke-static {v5, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v5

    .line 1011
    if-nez v5, :cond_28

    .line 1012
    .line 1013
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    const-string v6, "Ignoring older BatteryUsageStats snapshot, which has different custom power components: "

    .line 1016
    .line 1017
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v4}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v4

    .line 1024
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v4

    .line 1028
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v4

    .line 1035
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    .line 1037
    .line 1038
    goto :goto_1b

    .line 1039
    :cond_28
    if-eqz p3, :cond_29

    .line 1040
    .line 1041
    invoke-virtual {v4}, Landroid/os/BatteryUsageStats;->isProcessStateDataIncluded()Z

    .line 1042
    .line 1043
    .line 1044
    move-result v5

    .line 1045
    if-nez v5, :cond_29

    .line 1046
    .line 1047
    const-string v4, "Ignoring older BatteryUsageStats snapshot, which  does not include process state data"

    .line 1048
    .line 1049
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    .line 1051
    .line 1052
    goto :goto_1b

    .line 1053
    :cond_29
    move-object/from16 v5, p1

    .line 1054
    .line 1055
    invoke-virtual {v5, v4}, Landroid/os/BatteryUsageStats$Builder;->add(Landroid/os/BatteryUsageStats;)Landroid/os/BatteryUsageStats$Builder;

    .line 1056
    .line 1057
    .line 1058
    move-object/from16 p1, v5

    .line 1059
    .line 1060
    goto :goto_1b

    .line 1061
    :cond_2a
    move-object v5, v12

    .line 1062
    invoke-virtual {v5}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v0

    .line 1066
    :goto_1c
    return-object v0
.end method

.method public final getPowerCalculators()Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 5
    .line 6
    if-nez v1, :cond_b

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 14
    .line 15
    new-instance v2, Lcom/android/server/power/stats/BatteryChargeCalculator;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/BatteryChargeCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 35
    .line 36
    new-instance v2, Lcom/android/server/power/stats/CpuPowerCalculator;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 41
    .line 42
    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/CpuPowerCalculator;-><init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 53
    .line 54
    new-instance v2, Lcom/android/server/power/stats/MemoryPowerCalculator;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 57
    .line 58
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 65
    .line 66
    new-instance v2, Lcom/android/server/power/stats/WakelockPowerCalculator;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 69
    .line 70
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v1}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 85
    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_1

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 95
    .line 96
    new-instance v2, Lcom/android/server/power/stats/MobileRadioPowerCalculator;

    .line 97
    .line 98
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 99
    .line 100
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 107
    .line 108
    const/16 v2, 0xe

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_2

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 117
    .line 118
    new-instance v2, Lcom/android/server/power/stats/PhonePowerCalculator;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 121
    .line 122
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/PhonePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 129
    .line 130
    const/16 v2, 0xb

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_3

    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 139
    .line 140
    new-instance v2, Lcom/android/server/power/stats/WifiPowerCalculator;

    .line 141
    .line 142
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 143
    .line 144
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 151
    .line 152
    const/4 v2, 0x2

    .line 153
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_4

    .line 158
    .line 159
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 160
    .line 161
    new-instance v2, Lcom/android/server/power/stats/BluetoothPowerCalculator;

    .line 162
    .line 163
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 164
    .line 165
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    :cond_4
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 172
    .line 173
    new-instance v2, Lcom/android/server/power/stats/SensorPowerCalculator;

    .line 174
    .line 175
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    const-class v4, Landroid/hardware/SensorManager;

    .line 178
    .line 179
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Landroid/hardware/SensorManager;

    .line 184
    .line 185
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/SensorPowerCalculator;-><init>(Landroid/hardware/SensorManager;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 192
    .line 193
    const/16 v2, 0xa

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_5

    .line 200
    .line 201
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 202
    .line 203
    new-instance v2, Lcom/android/server/power/stats/GnssPowerCalculator;

    .line 204
    .line 205
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 206
    .line 207
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/GnssPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    :cond_5
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 214
    .line 215
    const/4 v2, 0x3

    .line 216
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-nez v1, :cond_6

    .line 221
    .line 222
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 223
    .line 224
    new-instance v2, Lcom/android/server/power/stats/CameraPowerCalculator;

    .line 225
    .line 226
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 227
    .line 228
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    :cond_6
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 235
    .line 236
    const/4 v2, 0x6

    .line 237
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_7

    .line 242
    .line 243
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 244
    .line 245
    new-instance v2, Lcom/android/server/power/stats/FlashlightPowerCalculator;

    .line 246
    .line 247
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 248
    .line 249
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 250
    .line 251
    .line 252
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    :cond_7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 256
    .line 257
    const/4 v2, 0x4

    .line 258
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-nez v1, :cond_8

    .line 263
    .line 264
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 265
    .line 266
    new-instance v2, Lcom/android/server/power/stats/AudioPowerCalculator;

    .line 267
    .line 268
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 269
    .line 270
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/AudioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 271
    .line 272
    .line 273
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    :cond_8
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 277
    .line 278
    const/4 v2, 0x5

    .line 279
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-nez v1, :cond_9

    .line 284
    .line 285
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 286
    .line 287
    new-instance v2, Lcom/android/server/power/stats/VideoPowerCalculator;

    .line 288
    .line 289
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 290
    .line 291
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/VideoPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 292
    .line 293
    .line 294
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    :cond_9
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 298
    .line 299
    new-instance v2, Lcom/android/server/power/stats/ScreenPowerCalculator;

    .line 300
    .line 301
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 302
    .line 303
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/ScreenPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 310
    .line 311
    new-instance v2, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;

    .line 312
    .line 313
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 314
    .line 315
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 316
    .line 317
    .line 318
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 322
    .line 323
    new-instance v2, Lcom/android/server/power/stats/IdlePowerCalculator;

    .line 324
    .line 325
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 326
    .line 327
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/IdlePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 328
    .line 329
    .line 330
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 334
    .line 335
    const/4 v2, -0x1

    .line 336
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_a

    .line 341
    .line 342
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 343
    .line 344
    new-instance v2, Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;

    .line 345
    .line 346
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    :cond_a
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 353
    .line 354
    new-instance v2, Lcom/android/server/power/stats/PowerSharingCalculator;

    .line 355
    .line 356
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 363
    .line 364
    new-instance v2, Lcom/android/server/power/stats/UserPowerCalculator;

    .line 365
    .line 366
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->disableSystemServicePowerAttr()Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-nez v1, :cond_b

    .line 377
    .line 378
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 379
    .line 380
    new-instance v2, Lcom/android/server/power/stats/SystemServicePowerCalculator;

    .line 381
    .line 382
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 383
    .line 384
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 385
    .line 386
    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/SystemServicePowerCalculator;-><init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V

    .line 387
    .line 388
    .line 389
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    :cond_b
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 394
    .line 395
    return-object p0

    .line 396
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    throw p0
.end method

.method public final setPowerStatsExporterEnabled(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsExporter:Lcom/android/server/power/stats/PowerStatsExporter;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/PowerStatsAggregator;

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method
