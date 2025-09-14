.class public final Lcom/android/server/power/stats/PowerStatsExporter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BATTERY_SESSION_TIME_SPAN_SLACK_MILLIS:J


# instance fields
.field public final mBatterySessionTimeSpanSlackMillis:J

.field public final mPowerStatsAggregator:Lcom/android/server/power/stats/PowerStatsAggregator;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x2

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/power/stats/PowerStatsExporter;->BATTERY_SESSION_TIME_SPAN_SLACK_MILLIS:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsAggregator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsExporter;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/PowerStatsAggregator;

    .line 7
    .line 8
    sget-wide p1, Lcom/android/server/power/stats/PowerStatsExporter;->BATTERY_SESSION_TIME_SPAN_SLACK_MILLIS:J

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/android/server/power/stats/PowerStatsExporter;->mBatterySessionTimeSpanSlackMillis:J

    .line 11
    .line 12
    return-void
.end method

.method public static areMatchingStates([III)Z
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p1, v2, :cond_1

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    aget p1, p0, v2

    .line 10
    .line 11
    if-eq p1, v2, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    aget p1, p0, v2

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    return v1

    .line 19
    :cond_2
    :goto_0
    if-eq p2, v2, :cond_4

    .line 20
    .line 21
    if-eq p2, v0, :cond_3

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_3
    aget p0, p0, v1

    .line 25
    .line 26
    if-eq p0, v2, :cond_5

    .line 27
    .line 28
    return v1

    .line 29
    :cond_4
    aget p0, p0, v1

    .line 30
    .line 31
    if-eqz p0, :cond_5

    .line 32
    .line 33
    return v1

    .line 34
    :cond_5
    :goto_1
    return v2
.end method

.method public static populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/AggregatedPowerStats;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, v1, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    iget-object v5, v1, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-ge v4, v5, :cond_1

    .line 27
    .line 28
    iget-object v5, v1, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 35
    .line 36
    iget-object v6, v1, Lcom/android/server/power/stats/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 37
    .line 38
    if-eq v5, v6, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v4, 0x1

    .line 51
    sub-int/2addr v1, v4

    .line 52
    :goto_1
    if-ltz v1, :cond_21

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 59
    .line 60
    iget-object v6, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 61
    .line 62
    if-nez v6, :cond_2

    .line 63
    .line 64
    move-object v8, v0

    .line 65
    move/from16 v19, v1

    .line 66
    .line 67
    move-object/from16 v18, v2

    .line 68
    .line 69
    move v6, v4

    .line 70
    :goto_2
    const/4 v9, 0x0

    .line 71
    goto/16 :goto_18

    .line 72
    .line 73
    :cond_2
    iget v7, v6, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    .line 74
    .line 75
    const/16 v15, 0x3e8

    .line 76
    .line 77
    if-lt v7, v15, :cond_3

    .line 78
    .line 79
    move v13, v4

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    const/4 v13, 0x0

    .line 82
    :goto_3
    new-instance v14, Lcom/android/server/power/stats/PowerStatsLayout;

    .line 83
    .line 84
    invoke-direct {v14}, Lcom/android/server/power/stats/PowerStatsLayout;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v7, v6, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 88
    .line 89
    invoke-virtual {v14, v7}, Lcom/android/server/power/stats/PowerStatsLayout;->fromExtras(Landroid/os/PersistableBundle;)V

    .line 90
    .line 91
    .line 92
    iget v6, v6, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 93
    .line 94
    new-array v12, v6, [J

    .line 95
    .line 96
    const/4 v11, 0x0

    .line 97
    :goto_4
    const/4 v10, 0x2

    .line 98
    const/4 v9, 0x3

    .line 99
    iget-object v8, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 100
    .line 101
    iget v7, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->powerComponentId:I

    .line 102
    .line 103
    if-ge v11, v9, :cond_d

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_5

    .line 110
    .line 111
    if-nez v11, :cond_6

    .line 112
    .line 113
    :cond_4
    :goto_5
    move/from16 v19, v1

    .line 114
    .line 115
    move-object/from16 v18, v2

    .line 116
    .line 117
    move v4, v11

    .line 118
    move-object/from16 v23, v12

    .line 119
    .line 120
    move/from16 v20, v13

    .line 121
    .line 122
    goto/16 :goto_a

    .line 123
    .line 124
    :cond_5
    if-eqz v11, :cond_6

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_6
    const/4 v6, 0x0

    .line 128
    :goto_6
    if-ge v6, v9, :cond_4

    .line 129
    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    .line 131
    .line 132
    .line 133
    move-result v16

    .line 134
    if-eqz v16, :cond_7

    .line 135
    .line 136
    if-nez v13, :cond_7

    .line 137
    .line 138
    if-nez v6, :cond_8

    .line 139
    .line 140
    :goto_7
    move/from16 v19, v1

    .line 141
    .line 142
    move-object/from16 v18, v2

    .line 143
    .line 144
    move v2, v7

    .line 145
    move-object v1, v8

    .line 146
    move v4, v11

    .line 147
    move-object/from16 v23, v12

    .line 148
    .line 149
    move/from16 v20, v13

    .line 150
    .line 151
    move v13, v10

    .line 152
    goto/16 :goto_9

    .line 153
    .line 154
    :cond_7
    if-eq v6, v4, :cond_8

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_8
    if-lt v7, v15, :cond_9

    .line 158
    .line 159
    move/from16 v16, v4

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_9
    const/16 v16, 0x0

    .line 163
    .line 164
    :goto_8
    new-array v15, v4, [D

    .line 165
    .line 166
    invoke-virtual {v8}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    new-instance v3, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;

    .line 171
    .line 172
    move/from16 v17, v6

    .line 173
    .line 174
    move-object v6, v3

    .line 175
    move-object/from16 v18, v2

    .line 176
    .line 177
    move v2, v7

    .line 178
    move v7, v11

    .line 179
    move/from16 v19, v1

    .line 180
    .line 181
    move-object v1, v8

    .line 182
    move/from16 v8, v17

    .line 183
    .line 184
    move/from16 v20, v13

    .line 185
    .line 186
    move v13, v9

    .line 187
    move-object v9, v5

    .line 188
    move v13, v10

    .line 189
    move-object v10, v12

    .line 190
    move/from16 v22, v11

    .line 191
    .line 192
    move-object v11, v15

    .line 193
    move-object/from16 v23, v12

    .line 194
    .line 195
    move-object v12, v14

    .line 196
    invoke-direct/range {v6 .. v12}, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda2;-><init>(IILcom/android/server/power/stats/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/PowerStatsLayout;)V

    .line 197
    .line 198
    .line 199
    new-array v6, v13, [I

    .line 200
    .line 201
    const/4 v7, 0x0

    .line 202
    invoke-static {v3, v4, v6, v7}, Lcom/android/server/power/stats/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    if-eqz v16, :cond_b

    .line 210
    .line 211
    invoke-virtual {v0, v2}, Landroid/os/BatteryUsageStats$Builder;->isSupportedCustomPowerComponent(I)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-eqz v4, :cond_a

    .line 216
    .line 217
    aget-wide v8, v15, v7

    .line 218
    .line 219
    invoke-virtual {v3, v2, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 220
    .line 221
    .line 222
    :cond_a
    move/from16 v6, v17

    .line 223
    .line 224
    move/from16 v4, v22

    .line 225
    .line 226
    goto :goto_9

    .line 227
    :cond_b
    move/from16 v6, v17

    .line 228
    .line 229
    move/from16 v4, v22

    .line 230
    .line 231
    invoke-virtual {v3, v2, v7, v4, v6}, Landroid/os/AggregateBatteryConsumer$Builder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    if-eqz v8, :cond_c

    .line 236
    .line 237
    aget-wide v9, v15, v7

    .line 238
    .line 239
    invoke-virtual {v3, v8, v9, v10, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 240
    .line 241
    .line 242
    :cond_c
    aget-wide v8, v15, v7

    .line 243
    .line 244
    invoke-virtual {v3, v2, v8, v9, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 245
    .line 246
    .line 247
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 248
    .line 249
    move-object v8, v1

    .line 250
    move v7, v2

    .line 251
    move v11, v4

    .line 252
    move v10, v13

    .line 253
    move-object/from16 v2, v18

    .line 254
    .line 255
    move/from16 v1, v19

    .line 256
    .line 257
    move/from16 v13, v20

    .line 258
    .line 259
    move-object/from16 v12, v23

    .line 260
    .line 261
    const/4 v4, 0x1

    .line 262
    const/4 v9, 0x3

    .line 263
    const/16 v15, 0x3e8

    .line 264
    .line 265
    goto/16 :goto_6

    .line 266
    .line 267
    :goto_a
    add-int/lit8 v11, v4, 0x1

    .line 268
    .line 269
    move-object/from16 v2, v18

    .line 270
    .line 271
    move/from16 v1, v19

    .line 272
    .line 273
    move/from16 v13, v20

    .line 274
    .line 275
    move-object/from16 v12, v23

    .line 276
    .line 277
    const/4 v4, 0x1

    .line 278
    const/16 v15, 0x3e8

    .line 279
    .line 280
    goto/16 :goto_4

    .line 281
    .line 282
    :cond_d
    move/from16 v19, v1

    .line 283
    .line 284
    move-object/from16 v18, v2

    .line 285
    .line 286
    move v2, v7

    .line 287
    move-object v1, v8

    .line 288
    move v13, v10

    .line 289
    iget v3, v14, Lcom/android/server/power/stats/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 290
    .line 291
    const/4 v4, -0x1

    .line 292
    if-eq v3, v4, :cond_20

    .line 293
    .line 294
    iget v3, v1, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    .line 295
    .line 296
    const/16 v4, 0x3e8

    .line 297
    .line 298
    if-lt v3, v4, :cond_e

    .line 299
    .line 300
    const/4 v3, 0x1

    .line 301
    goto :goto_b

    .line 302
    :cond_e
    const/4 v3, 0x0

    .line 303
    :goto_b
    iget-object v4, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 304
    .line 305
    iget v4, v4, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 306
    .line 307
    new-array v4, v4, [J

    .line 308
    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats$Builder;->isProcessStateDataNeeded()Z

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    if-eqz v6, :cond_f

    .line 314
    .line 315
    invoke-virtual {v1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    aget-object v6, v6, v13

    .line 320
    .line 321
    iget-boolean v6, v6, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 322
    .line 323
    if-eqz v6, :cond_f

    .line 324
    .line 325
    if-nez v3, :cond_f

    .line 326
    .line 327
    const/4 v15, 0x1

    .line 328
    goto :goto_c

    .line 329
    :cond_f
    const/4 v15, 0x0

    .line 330
    :goto_c
    new-instance v13, Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v5, v13}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->collectUids(Ljava/util/Collection;)V

    .line 336
    .line 337
    .line 338
    const/4 v11, 0x3

    .line 339
    const/4 v12, 0x0

    .line 340
    :goto_d
    if-ge v12, v11, :cond_20

    .line 341
    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    if-eqz v6, :cond_11

    .line 347
    .line 348
    if-nez v12, :cond_12

    .line 349
    .line 350
    :cond_10
    :goto_e
    move-object v8, v0

    .line 351
    move-object/from16 v20, v1

    .line 352
    .line 353
    move v1, v2

    .line 354
    move/from16 v17, v3

    .line 355
    .line 356
    move-object/from16 v29, v4

    .line 357
    .line 358
    move-object/from16 v28, v5

    .line 359
    .line 360
    move v3, v11

    .line 361
    move v4, v12

    .line 362
    move-object/from16 v21, v13

    .line 363
    .line 364
    move-object/from16 v31, v14

    .line 365
    .line 366
    const/16 v0, 0x3e8

    .line 367
    .line 368
    const/4 v6, 0x1

    .line 369
    const/4 v9, 0x0

    .line 370
    goto/16 :goto_17

    .line 371
    .line 372
    :cond_11
    if-eqz v12, :cond_12

    .line 373
    .line 374
    goto :goto_e

    .line 375
    :cond_12
    const/4 v10, 0x0

    .line 376
    :goto_f
    if-ge v10, v11, :cond_10

    .line 377
    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    if-eqz v6, :cond_13

    .line 383
    .line 384
    if-nez v3, :cond_13

    .line 385
    .line 386
    if-nez v10, :cond_14

    .line 387
    .line 388
    move-object v8, v0

    .line 389
    move-object/from16 v20, v1

    .line 390
    .line 391
    move v1, v2

    .line 392
    move/from16 v17, v3

    .line 393
    .line 394
    move-object/from16 v29, v4

    .line 395
    .line 396
    move-object/from16 v28, v5

    .line 397
    .line 398
    move v5, v10

    .line 399
    move v3, v11

    .line 400
    move v4, v12

    .line 401
    move-object/from16 v21, v13

    .line 402
    .line 403
    move-object/from16 v31, v14

    .line 404
    .line 405
    const/16 v0, 0x3e8

    .line 406
    .line 407
    const/4 v6, 0x1

    .line 408
    :goto_10
    const/4 v9, 0x0

    .line 409
    goto/16 :goto_16

    .line 410
    .line 411
    :cond_13
    const/4 v6, 0x1

    .line 412
    if-eq v10, v6, :cond_14

    .line 413
    .line 414
    move-object v8, v0

    .line 415
    move-object/from16 v20, v1

    .line 416
    .line 417
    move v1, v2

    .line 418
    move/from16 v17, v3

    .line 419
    .line 420
    move-object/from16 v29, v4

    .line 421
    .line 422
    move-object/from16 v28, v5

    .line 423
    .line 424
    move v5, v10

    .line 425
    move v3, v11

    .line 426
    move v4, v12

    .line 427
    move-object/from16 v21, v13

    .line 428
    .line 429
    move-object/from16 v31, v14

    .line 430
    .line 431
    const/16 v0, 0x3e8

    .line 432
    .line 433
    goto :goto_10

    .line 434
    :cond_14
    if-eqz v15, :cond_15

    .line 435
    .line 436
    const/4 v6, 0x5

    .line 437
    move v9, v6

    .line 438
    goto :goto_11

    .line 439
    :cond_15
    const/4 v9, 0x1

    .line 440
    :goto_11
    new-array v8, v9, [D

    .line 441
    .line 442
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 443
    .line 444
    .line 445
    move-result-object v16

    .line 446
    const-wide/16 v6, 0x0

    .line 447
    .line 448
    move-wide/from16 v24, v6

    .line 449
    .line 450
    :goto_12
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 451
    .line 452
    .line 453
    move-result v17

    .line 454
    if-eqz v17, :cond_1c

    .line 455
    .line 456
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v17

    .line 460
    check-cast v17, Ljava/lang/Integer;

    .line 461
    .line 462
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    .line 463
    .line 464
    .line 465
    move-result v11

    .line 466
    move/from16 v17, v3

    .line 467
    .line 468
    invoke-virtual {v0, v11}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(I)Landroid/os/UidBatteryConsumer$Builder;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    invoke-static {v8, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1}, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    move-object/from16 v20, v1

    .line 480
    .line 481
    new-instance v1, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;

    .line 482
    .line 483
    move-wide/from16 v22, v6

    .line 484
    .line 485
    move-object v6, v1

    .line 486
    move v7, v12

    .line 487
    move-object/from16 v26, v8

    .line 488
    .line 489
    move v8, v10

    .line 490
    move/from16 v27, v2

    .line 491
    .line 492
    move v2, v9

    .line 493
    move-object v9, v5

    .line 494
    move-object/from16 v28, v5

    .line 495
    .line 496
    move v5, v10

    .line 497
    move-object v10, v4

    .line 498
    const/16 v21, 0x3

    .line 499
    .line 500
    move-object/from16 v29, v4

    .line 501
    .line 502
    move v4, v12

    .line 503
    move-object v12, v14

    .line 504
    move-object/from16 v30, v3

    .line 505
    .line 506
    move/from16 v3, v21

    .line 507
    .line 508
    move-object/from16 v21, v13

    .line 509
    .line 510
    move v13, v15

    .line 511
    move-object/from16 v31, v14

    .line 512
    .line 513
    move-object/from16 v14, v26

    .line 514
    .line 515
    invoke-direct/range {v6 .. v14}, Lcom/android/server/power/stats/PowerStatsExporter$$ExternalSyntheticLambda1;-><init>(IILcom/android/server/power/stats/PowerComponentAggregatedPowerStats;[JILcom/android/server/power/stats/PowerStatsLayout;Z[D)V

    .line 516
    .line 517
    .line 518
    new-array v6, v3, [I

    .line 519
    .line 520
    const/4 v7, 0x0

    .line 521
    invoke-static {v1, v0, v6, v7}, Lcom/android/server/power/stats/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V

    .line 522
    .line 523
    .line 524
    move-wide/from16 v6, v22

    .line 525
    .line 526
    const/4 v0, 0x0

    .line 527
    :goto_13
    if-ge v0, v2, :cond_19

    .line 528
    .line 529
    aget-wide v8, v26, v0

    .line 530
    .line 531
    cmpl-double v1, v8, v22

    .line 532
    .line 533
    if-nez v1, :cond_17

    .line 534
    .line 535
    :cond_16
    move/from16 v1, v27

    .line 536
    .line 537
    move-object/from16 v10, v30

    .line 538
    .line 539
    goto :goto_14

    .line 540
    :cond_17
    add-double/2addr v6, v8

    .line 541
    if-eqz v15, :cond_16

    .line 542
    .line 543
    if-eqz v0, :cond_16

    .line 544
    .line 545
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    if-eqz v1, :cond_18

    .line 550
    .line 551
    move/from16 v1, v27

    .line 552
    .line 553
    move-object/from16 v10, v30

    .line 554
    .line 555
    invoke-virtual {v10, v1, v0, v4, v5}, Landroid/os/UidBatteryConsumer$Builder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    .line 556
    .line 557
    .line 558
    move-result-object v11

    .line 559
    const/4 v12, 0x0

    .line 560
    invoke-virtual {v10, v11, v8, v9, v12}, Landroid/os/UidBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 561
    .line 562
    .line 563
    goto :goto_14

    .line 564
    :cond_18
    move/from16 v1, v27

    .line 565
    .line 566
    move-object/from16 v10, v30

    .line 567
    .line 568
    const/4 v12, 0x0

    .line 569
    invoke-virtual {v10, v1, v0, v4, v12}, Landroid/os/UidBatteryConsumer$Builder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    .line 570
    .line 571
    .line 572
    move-result-object v11

    .line 573
    invoke-virtual {v10, v11, v8, v9, v12}, Landroid/os/UidBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 574
    .line 575
    .line 576
    :goto_14
    add-int/lit8 v0, v0, 0x1

    .line 577
    .line 578
    move/from16 v27, v1

    .line 579
    .line 580
    move-object/from16 v30, v10

    .line 581
    .line 582
    goto :goto_13

    .line 583
    :cond_19
    move/from16 v1, v27

    .line 584
    .line 585
    move-object/from16 v10, v30

    .line 586
    .line 587
    const/16 v0, 0x3e8

    .line 588
    .line 589
    if-lt v1, v0, :cond_1b

    .line 590
    .line 591
    move-object/from16 v8, p0

    .line 592
    .line 593
    invoke-virtual {v8, v1}, Landroid/os/BatteryUsageStats$Builder;->isSupportedCustomPowerComponent(I)Z

    .line 594
    .line 595
    .line 596
    move-result v9

    .line 597
    if-eqz v9, :cond_1a

    .line 598
    .line 599
    invoke-virtual {v10, v1, v6, v7}, Landroid/os/UidBatteryConsumer$Builder;->addConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 600
    .line 601
    .line 602
    :cond_1a
    move-wide/from16 v10, v24

    .line 603
    .line 604
    const/4 v9, 0x0

    .line 605
    goto :goto_15

    .line 606
    :cond_1b
    move-object/from16 v8, p0

    .line 607
    .line 608
    const/4 v9, 0x0

    .line 609
    invoke-virtual {v10, v1, v6, v7, v9}, Landroid/os/UidBatteryConsumer$Builder;->addConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 610
    .line 611
    .line 612
    move-wide/from16 v10, v24

    .line 613
    .line 614
    :goto_15
    add-double v24, v10, v6

    .line 615
    .line 616
    move v9, v2

    .line 617
    move v11, v3

    .line 618
    move v12, v4

    .line 619
    move v10, v5

    .line 620
    move-object v0, v8

    .line 621
    move/from16 v3, v17

    .line 622
    .line 623
    move-object/from16 v13, v21

    .line 624
    .line 625
    move-wide/from16 v6, v22

    .line 626
    .line 627
    move-object/from16 v8, v26

    .line 628
    .line 629
    move-object/from16 v5, v28

    .line 630
    .line 631
    move-object/from16 v4, v29

    .line 632
    .line 633
    move-object/from16 v14, v31

    .line 634
    .line 635
    move v2, v1

    .line 636
    move-object/from16 v1, v20

    .line 637
    .line 638
    goto/16 :goto_12

    .line 639
    .line 640
    :cond_1c
    move-object v8, v0

    .line 641
    move-object/from16 v20, v1

    .line 642
    .line 643
    move v1, v2

    .line 644
    move/from16 v17, v3

    .line 645
    .line 646
    move-object/from16 v29, v4

    .line 647
    .line 648
    move-object/from16 v28, v5

    .line 649
    .line 650
    move v5, v10

    .line 651
    move v3, v11

    .line 652
    move v4, v12

    .line 653
    move-object/from16 v21, v13

    .line 654
    .line 655
    move-object/from16 v31, v14

    .line 656
    .line 657
    move-wide/from16 v10, v24

    .line 658
    .line 659
    const/16 v0, 0x3e8

    .line 660
    .line 661
    const/4 v6, 0x1

    .line 662
    const/4 v9, 0x0

    .line 663
    invoke-virtual {v8, v6}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    if-lt v1, v0, :cond_1d

    .line 668
    .line 669
    invoke-virtual {v8, v1}, Landroid/os/BatteryUsageStats$Builder;->isSupportedCustomPowerComponent(I)Z

    .line 670
    .line 671
    .line 672
    move-result v7

    .line 673
    if-eqz v7, :cond_1f

    .line 674
    .line 675
    invoke-virtual {v2, v1, v10, v11}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 676
    .line 677
    .line 678
    goto :goto_16

    .line 679
    :cond_1d
    invoke-virtual {v2, v1, v9, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    .line 680
    .line 681
    .line 682
    move-result-object v7

    .line 683
    if-eqz v7, :cond_1e

    .line 684
    .line 685
    invoke-virtual {v2, v7, v10, v11, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 686
    .line 687
    .line 688
    :cond_1e
    invoke-virtual {v2, v1, v10, v11, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 689
    .line 690
    .line 691
    :cond_1f
    :goto_16
    add-int/lit8 v10, v5, 0x1

    .line 692
    .line 693
    move v2, v1

    .line 694
    move v11, v3

    .line 695
    move v12, v4

    .line 696
    move-object v0, v8

    .line 697
    move/from16 v3, v17

    .line 698
    .line 699
    move-object/from16 v1, v20

    .line 700
    .line 701
    move-object/from16 v13, v21

    .line 702
    .line 703
    move-object/from16 v5, v28

    .line 704
    .line 705
    move-object/from16 v4, v29

    .line 706
    .line 707
    move-object/from16 v14, v31

    .line 708
    .line 709
    goto/16 :goto_f

    .line 710
    .line 711
    :goto_17
    add-int/lit8 v12, v4, 0x1

    .line 712
    .line 713
    move v2, v1

    .line 714
    move v11, v3

    .line 715
    move-object v0, v8

    .line 716
    move/from16 v3, v17

    .line 717
    .line 718
    move-object/from16 v1, v20

    .line 719
    .line 720
    move-object/from16 v13, v21

    .line 721
    .line 722
    move-object/from16 v5, v28

    .line 723
    .line 724
    move-object/from16 v4, v29

    .line 725
    .line 726
    move-object/from16 v14, v31

    .line 727
    .line 728
    goto/16 :goto_d

    .line 729
    .line 730
    :cond_20
    move-object v8, v0

    .line 731
    const/4 v6, 0x1

    .line 732
    goto/16 :goto_2

    .line 733
    .line 734
    :goto_18
    add-int/lit8 v1, v19, -0x1

    .line 735
    .line 736
    move v4, v6

    .line 737
    move-object v0, v8

    .line 738
    move-object/from16 v2, v18

    .line 739
    .line 740
    goto/16 :goto_1

    .line 741
    .line 742
    :cond_21
    return-void
.end method
