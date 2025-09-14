.class public final Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

.field public final mLastKWakelockMap:Ljava/util/Map;

.field public final mLastScreenWakeMap:Ljava/util/Map;

.field public final mLastWakeupMap:Ljava/util/Map;

.field public final mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/os/BatteryStats;Lcom/android/server/power/stats/BatteryUsageStatsProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    .line 12
    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    .line 19
    .line 20
    new-instance p1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final updateBatteryUsage(Landroid/os/BatteryUsageStats;JJLandroid/os/SemDevicePowerInfo;Ljava/util/ArrayList;)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    move-wide/from16 v3, p4

    .line 6
    .line 7
    move-object/from16 v5, p6

    .line 8
    .line 9
    new-instance v6, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    if-eqz v8, :cond_1

    .line 27
    .line 28
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    check-cast v8, Landroid/os/UidBatteryConsumer;

    .line 33
    .line 34
    if-eqz v8, :cond_0

    .line 35
    .line 36
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer;->getUid()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v7, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 49
    .line 50
    invoke-virtual {v7}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    const/4 v9, 0x1

    .line 59
    sub-int/2addr v8, v9

    .line 60
    :goto_1
    const/4 v10, 0x0

    .line 61
    const-wide/16 v11, 0x3e8

    .line 62
    .line 63
    if-ltz v8, :cond_16

    .line 64
    .line 65
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v19

    .line 69
    move-object/from16 v13, v19

    .line 70
    .line 71
    check-cast v13, Landroid/os/BatteryStats$Uid;

    .line 72
    .line 73
    if-eqz v13, :cond_15

    .line 74
    .line 75
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 76
    .line 77
    .line 78
    move-result v19

    .line 79
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    if-eqz v14, :cond_15

    .line 88
    .line 89
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    check-cast v14, Landroid/os/UidBatteryConsumer;

    .line 102
    .line 103
    new-instance v15, Landroid/os/SemUidPowerInfo;

    .line 104
    .line 105
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getUid()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    invoke-direct {v15, v9}, Landroid/os/SemUidPowerInfo;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v13, v10, v1, v2, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    .line 113
    .line 114
    .line 115
    move-result-wide v22

    .line 116
    move-object v9, v6

    .line 117
    move-object/from16 v24, v7

    .line 118
    .line 119
    div-long v6, v22, v11

    .line 120
    .line 121
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    if-eqz v11, :cond_2

    .line 126
    .line 127
    invoke-virtual {v11, v1, v2, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 128
    .line 129
    .line 130
    move-result-wide v11

    .line 131
    const-wide/16 v22, 0x3e8

    .line 132
    .line 133
    div-long v11, v11, v22

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    const-wide/16 v22, 0x3e8

    .line 137
    .line 138
    const-wide/16 v11, 0x0

    .line 139
    .line 140
    :goto_2
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 141
    .line 142
    .line 143
    move-result-wide v11

    .line 144
    move-object/from16 v25, v9

    .line 145
    .line 146
    const/4 v9, 0x1

    .line 147
    invoke-virtual {v13, v9, v1, v2, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    .line 148
    .line 149
    .line 150
    move-result-wide v26

    .line 151
    const/4 v9, 0x2

    .line 152
    invoke-virtual {v13, v9, v1, v2, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    .line 153
    .line 154
    .line 155
    move-result-wide v28

    .line 156
    add-long v28, v28, v26

    .line 157
    .line 158
    div-long v28, v28, v22

    .line 159
    .line 160
    add-long v6, v28, v6

    .line 161
    .line 162
    const/4 v9, 0x3

    .line 163
    invoke-virtual {v13, v9, v1, v2, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    .line 164
    .line 165
    .line 166
    move-result-wide v26

    .line 167
    const/4 v9, 0x4

    .line 168
    invoke-virtual {v13, v9, v1, v2, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    .line 169
    .line 170
    .line 171
    move-result-wide v28

    .line 172
    add-long v28, v28, v26

    .line 173
    .line 174
    const/4 v9, 0x5

    .line 175
    invoke-virtual {v13, v9, v1, v2, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    .line 176
    .line 177
    .line 178
    move-result-wide v26

    .line 179
    add-long v26, v26, v28

    .line 180
    .line 181
    move-wide/from16 v28, v11

    .line 182
    .line 183
    div-long v10, v26, v22

    .line 184
    .line 185
    move-wide/from16 v30, v10

    .line 186
    .line 187
    const-wide/16 v3, 0x0

    .line 188
    .line 189
    const-wide/16 v9, 0x0

    .line 190
    .line 191
    const/4 v12, 0x0

    .line 192
    :goto_3
    const/16 v11, 0x10

    .line 193
    .line 194
    if-ge v12, v11, :cond_4

    .line 195
    .line 196
    const/4 v11, 0x0

    .line 197
    invoke-virtual {v13, v12, v11}, Landroid/os/BatteryStats$Uid;->getSpeakerMediaTime(II)J

    .line 198
    .line 199
    .line 200
    move-result-wide v26

    .line 201
    const-wide/16 v16, 0x0

    .line 202
    .line 203
    cmp-long v32, v26, v16

    .line 204
    .line 205
    if-gtz v32, :cond_3

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_3
    add-long v9, v9, v26

    .line 209
    .line 210
    add-int/lit8 v11, v12, 0x1

    .line 211
    .line 212
    move-wide/from16 v33, v9

    .line 213
    .line 214
    int-to-long v9, v11

    .line 215
    mul-long v26, v26, v9

    .line 216
    .line 217
    add-long v26, v26, v3

    .line 218
    .line 219
    move-wide/from16 v3, v26

    .line 220
    .line 221
    move-wide/from16 v9, v33

    .line 222
    .line 223
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_4
    move-wide/from16 v26, v3

    .line 227
    .line 228
    const/4 v11, 0x0

    .line 229
    invoke-virtual {v14, v11}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    .line 230
    .line 231
    .line 232
    move-result-wide v3

    .line 233
    const-wide/16 v11, 0x0

    .line 234
    .line 235
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 236
    .line 237
    .line 238
    move-result-wide v3

    .line 239
    iput-wide v3, v15, Landroid/os/SemUidPowerInfo;->screenPower:D

    .line 240
    .line 241
    iget-boolean v3, v15, Landroid/os/SemUidPowerInfo;->shouldHide:Z

    .line 242
    .line 243
    if-eqz v3, :cond_5

    .line 244
    .line 245
    move-wide v3, v11

    .line 246
    goto :goto_5

    .line 247
    :cond_5
    invoke-virtual {v14}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    .line 248
    .line 249
    .line 250
    move-result-wide v3

    .line 251
    :goto_5
    iput-wide v3, v15, Landroid/os/SemUidPowerInfo;->smearedPower:D

    .line 252
    .line 253
    invoke-virtual {v14}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    .line 254
    .line 255
    .line 256
    move-result-wide v3

    .line 257
    move v14, v8

    .line 258
    move-wide/from16 v33, v9

    .line 259
    .line 260
    iget-wide v8, v15, Landroid/os/SemUidPowerInfo;->screenPower:D

    .line 261
    .line 262
    sub-double/2addr v3, v8

    .line 263
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 264
    .line 265
    .line 266
    move-result-wide v3

    .line 267
    iput-wide v3, v15, Landroid/os/SemUidPowerInfo;->power:D

    .line 268
    .line 269
    const/4 v9, 0x0

    .line 270
    invoke-virtual {v13, v9}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    .line 271
    .line 272
    .line 273
    move-result-wide v3

    .line 274
    invoke-virtual {v13, v9}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    .line 275
    .line 276
    .line 277
    move-result-wide v10

    .line 278
    add-long/2addr v10, v3

    .line 279
    const-wide/16 v3, 0x3e8

    .line 280
    .line 281
    div-long/2addr v10, v3

    .line 282
    iput-wide v10, v15, Landroid/os/SemUidPowerInfo;->cpuTime:J

    .line 283
    .line 284
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    move v8, v9

    .line 293
    const-wide/16 v10, 0x0

    .line 294
    .line 295
    :goto_6
    if-ge v8, v4, :cond_7

    .line 296
    .line 297
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    check-cast v12, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 302
    .line 303
    invoke-virtual {v12, v9}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    .line 304
    .line 305
    .line 306
    move-result-object v12

    .line 307
    if-eqz v12, :cond_6

    .line 308
    .line 309
    invoke-virtual {v12, v1, v2, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 310
    .line 311
    .line 312
    move-result-wide v35

    .line 313
    add-long v35, v35, v10

    .line 314
    .line 315
    move-wide/from16 v10, v35

    .line 316
    .line 317
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_7
    const-wide/16 v22, 0x3e8

    .line 321
    .line 322
    div-long v10, v10, v22

    .line 323
    .line 324
    iput-wide v10, v15, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    .line 325
    .line 326
    invoke-virtual {v13, v9}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    .line 327
    .line 328
    .line 329
    move-result-wide v3

    .line 330
    div-long v3, v3, v22

    .line 331
    .line 332
    iput-wide v3, v15, Landroid/os/SemUidPowerInfo;->mobileActive:J

    .line 333
    .line 334
    invoke-virtual {v13, v9, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 335
    .line 336
    .line 337
    move-result-wide v3

    .line 338
    const/4 v8, 0x1

    .line 339
    invoke-virtual {v13, v8, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 340
    .line 341
    .line 342
    move-result-wide v10

    .line 343
    add-long/2addr v10, v3

    .line 344
    iput-wide v10, v15, Landroid/os/SemUidPowerInfo;->mobileData:J

    .line 345
    .line 346
    invoke-virtual {v13, v9, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 347
    .line 348
    .line 349
    move-result-wide v3

    .line 350
    invoke-virtual {v13, v8, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 351
    .line 352
    .line 353
    move-result-wide v10

    .line 354
    add-long/2addr v10, v3

    .line 355
    iput-wide v10, v15, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    .line 356
    .line 357
    const/4 v3, 0x2

    .line 358
    invoke-virtual {v13, v3, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 359
    .line 360
    .line 361
    move-result-wide v10

    .line 362
    const/4 v4, 0x3

    .line 363
    invoke-virtual {v13, v4, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 364
    .line 365
    .line 366
    move-result-wide v35

    .line 367
    add-long v10, v35, v10

    .line 368
    .line 369
    iput-wide v10, v15, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    .line 370
    .line 371
    invoke-virtual {v13, v3, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 372
    .line 373
    .line 374
    move-result-wide v10

    .line 375
    invoke-virtual {v13, v4, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 376
    .line 377
    .line 378
    move-result-wide v3

    .line 379
    add-long/2addr v3, v10

    .line 380
    iput-wide v3, v15, Landroid/os/SemUidPowerInfo;->wifiData:J

    .line 381
    .line 382
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    const/4 v9, 0x1

    .line 391
    sub-int/2addr v4, v9

    .line 392
    const/4 v10, 0x0

    .line 393
    :goto_7
    if-ltz v4, :cond_a

    .line 394
    .line 395
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v11

    .line 399
    check-cast v11, Landroid/os/BatteryStats$Uid$Pkg;

    .line 400
    .line 401
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    .line 402
    .line 403
    .line 404
    move-result-object v11

    .line 405
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v12

    .line 409
    check-cast v12, Ljava/lang/String;

    .line 410
    .line 411
    if-nez v12, :cond_8

    .line 412
    .line 413
    goto :goto_9

    .line 414
    :cond_8
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 415
    .line 416
    .line 417
    move-result v12

    .line 418
    sub-int/2addr v12, v9

    .line 419
    :goto_8
    if-ltz v12, :cond_9

    .line 420
    .line 421
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v9

    .line 425
    check-cast v9, Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v9

    .line 431
    check-cast v9, Landroid/os/BatteryStats$Counter;

    .line 432
    .line 433
    const/4 v8, 0x0

    .line 434
    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    .line 435
    .line 436
    .line 437
    move-result v9

    .line 438
    add-int/2addr v10, v9

    .line 439
    add-int/lit8 v12, v12, -0x1

    .line 440
    .line 441
    goto :goto_8

    .line 442
    :cond_9
    :goto_9
    add-int/lit8 v4, v4, -0x1

    .line 443
    .line 444
    const/4 v9, 0x1

    .line 445
    goto :goto_7

    .line 446
    :cond_a
    iput v10, v15, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    .line 447
    .line 448
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    const-wide/16 v10, 0x1f4

    .line 453
    .line 454
    const/4 v9, 0x0

    .line 455
    if-eqz v3, :cond_b

    .line 456
    .line 457
    invoke-virtual {v3, v1, v2, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 458
    .line 459
    .line 460
    move-result-wide v35

    .line 461
    add-long v35, v35, v10

    .line 462
    .line 463
    const-wide/16 v22, 0x3e8

    .line 464
    .line 465
    div-long v35, v35, v22

    .line 466
    .line 467
    const-wide/16 v16, 0x0

    .line 468
    .line 469
    cmp-long v4, v35, v16

    .line 470
    .line 471
    if-eqz v4, :cond_b

    .line 472
    .line 473
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    goto :goto_a

    .line 478
    :cond_b
    move v3, v9

    .line 479
    :goto_a
    iput v3, v15, Landroid/os/SemUidPowerInfo;->btScan:I

    .line 480
    .line 481
    const/4 v3, 0x4

    .line 482
    invoke-virtual {v13, v3, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 483
    .line 484
    .line 485
    move-result-wide v3

    .line 486
    const/4 v8, 0x5

    .line 487
    invoke-virtual {v13, v8, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 488
    .line 489
    .line 490
    move-result-wide v18

    .line 491
    add-long v3, v18, v3

    .line 492
    .line 493
    iput-wide v3, v15, Landroid/os/SemUidPowerInfo;->btData:J

    .line 494
    .line 495
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    const/16 v4, -0x2710

    .line 500
    .line 501
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    check-cast v4, Landroid/os/BatteryStats$Uid$Sensor;

    .line 506
    .line 507
    const/16 v9, -0x2711

    .line 508
    .line 509
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    check-cast v3, Landroid/os/BatteryStats$Uid$Sensor;

    .line 514
    .line 515
    const-wide/16 v8, 0x0

    .line 516
    .line 517
    iput-wide v8, v15, Landroid/os/SemUidPowerInfo;->gpsTime:J

    .line 518
    .line 519
    iput-wide v8, v15, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    .line 520
    .line 521
    if-eqz v4, :cond_c

    .line 522
    .line 523
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    .line 524
    .line 525
    .line 526
    move-result-object v8

    .line 527
    if-eqz v8, :cond_c

    .line 528
    .line 529
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    const/4 v8, 0x0

    .line 534
    invoke-virtual {v4, v1, v2, v8}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 535
    .line 536
    .line 537
    move-result-wide v18

    .line 538
    const-wide/16 v20, 0x3e8

    .line 539
    .line 540
    div-long v10, v18, v20

    .line 541
    .line 542
    iput-wide v10, v15, Landroid/os/SemUidPowerInfo;->gpsTime:J

    .line 543
    .line 544
    goto :goto_b

    .line 545
    :cond_c
    const/4 v8, 0x0

    .line 546
    const-wide/16 v20, 0x3e8

    .line 547
    .line 548
    :goto_b
    if-eqz v3, :cond_d

    .line 549
    .line 550
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    if-eqz v4, :cond_d

    .line 555
    .line 556
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    invoke-virtual {v3, v1, v2, v8}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 561
    .line 562
    .line 563
    move-result-wide v3

    .line 564
    div-long v3, v3, v20

    .line 565
    .line 566
    iput-wide v3, v15, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    .line 567
    .line 568
    :cond_d
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    if-eqz v3, :cond_e

    .line 573
    .line 574
    invoke-virtual {v3, v1, v2, v8}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 575
    .line 576
    .line 577
    move-result-wide v3

    .line 578
    const-wide/16 v9, 0x1f4

    .line 579
    .line 580
    add-long/2addr v3, v9

    .line 581
    div-long v3, v3, v20

    .line 582
    .line 583
    goto :goto_c

    .line 584
    :cond_e
    const-wide/16 v3, 0x0

    .line 585
    .line 586
    :goto_c
    iput-wide v3, v15, Landroid/os/SemUidPowerInfo;->cameraRunTime:J

    .line 587
    .line 588
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    if-eqz v3, :cond_10

    .line 593
    .line 594
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    const/4 v9, 0x0

    .line 599
    const/4 v10, 0x0

    .line 600
    :goto_d
    if-ge v9, v4, :cond_f

    .line 601
    .line 602
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v11

    .line 606
    check-cast v11, Landroid/os/BatteryStats$Uid$Proc;

    .line 607
    .line 608
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    .line 609
    .line 610
    .line 611
    move-result v11

    .line 612
    add-int/2addr v10, v11

    .line 613
    add-int/lit8 v9, v9, 0x1

    .line 614
    .line 615
    goto :goto_d

    .line 616
    :cond_f
    move v9, v10

    .line 617
    goto :goto_e

    .line 618
    :cond_10
    const/4 v9, 0x0

    .line 619
    :goto_e
    int-to-long v3, v9

    .line 620
    iput-wide v3, v15, Landroid/os/SemUidPowerInfo;->killCount:J

    .line 621
    .line 622
    move-wide/from16 v3, v28

    .line 623
    .line 624
    iput-wide v3, v15, Landroid/os/SemUidPowerInfo;->screenTime:J

    .line 625
    .line 626
    iput-wide v6, v15, Landroid/os/SemUidPowerInfo;->fgTime:J

    .line 627
    .line 628
    move-wide/from16 v3, v30

    .line 629
    .line 630
    iput-wide v3, v15, Landroid/os/SemUidPowerInfo;->bgTime:J

    .line 631
    .line 632
    move-wide/from16 v9, v33

    .line 633
    .line 634
    iput-wide v9, v15, Landroid/os/SemUidPowerInfo;->spkTime:J

    .line 635
    .line 636
    move-wide/from16 v3, v26

    .line 637
    .line 638
    iput-wide v3, v15, Landroid/os/SemUidPowerInfo;->spkLevel:J

    .line 639
    .line 640
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    if-eqz v3, :cond_11

    .line 645
    .line 646
    const/4 v4, 0x0

    .line 647
    invoke-virtual {v3, v1, v2, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 648
    .line 649
    .line 650
    move-result-wide v6

    .line 651
    const-wide/16 v8, 0x1f4

    .line 652
    .line 653
    add-long/2addr v6, v8

    .line 654
    const-wide/16 v8, 0x3e8

    .line 655
    .line 656
    div-long/2addr v6, v8

    .line 657
    goto :goto_f

    .line 658
    :cond_11
    const/4 v4, 0x0

    .line 659
    const-wide/16 v6, 0x0

    .line 660
    .line 661
    :goto_f
    iput-wide v6, v15, Landroid/os/SemUidPowerInfo;->audioTime:J

    .line 662
    .line 663
    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    .line 664
    .line 665
    .line 666
    move-result-wide v6

    .line 667
    iput-wide v6, v15, Landroid/os/SemUidPowerInfo;->networkWakeup:J

    .line 668
    .line 669
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 674
    .line 675
    .line 676
    move-result v6

    .line 677
    const/4 v7, 0x1

    .line 678
    sub-int/2addr v6, v7

    .line 679
    const-wide/16 v7, 0x0

    .line 680
    .line 681
    :goto_10
    if-ltz v6, :cond_13

    .line 682
    .line 683
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v9

    .line 687
    check-cast v9, Landroid/os/BatteryStats$Timer;

    .line 688
    .line 689
    if-eqz v9, :cond_12

    .line 690
    .line 691
    invoke-virtual {v9, v1, v2, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 692
    .line 693
    .line 694
    move-result-wide v10

    .line 695
    const-wide/16 v16, 0x1f4

    .line 696
    .line 697
    add-long v10, v10, v16

    .line 698
    .line 699
    const-wide/16 v16, 0x3e8

    .line 700
    .line 701
    div-long v10, v10, v16

    .line 702
    .line 703
    add-long/2addr v10, v7

    .line 704
    move-wide v7, v10

    .line 705
    :cond_12
    add-int/lit8 v6, v6, -0x1

    .line 706
    .line 707
    const/4 v4, 0x0

    .line 708
    goto :goto_10

    .line 709
    :cond_13
    iput-wide v7, v15, Landroid/os/SemUidPowerInfo;->syncTime:J

    .line 710
    .line 711
    const/4 v3, 0x0

    .line 712
    :goto_11
    iget-object v4, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 713
    .line 714
    invoke-virtual {v4}, Landroid/os/BatteryStats;->getDisplayCount()I

    .line 715
    .line 716
    .line 717
    move-result v4

    .line 718
    if-ge v3, v4, :cond_14

    .line 719
    .line 720
    const/4 v4, 0x0

    .line 721
    invoke-virtual {v13, v3, v1, v2, v4}, Landroid/os/BatteryStats$Uid;->getDisplayTopActivityTime(IJI)J

    .line 722
    .line 723
    .line 724
    move-result-wide v6

    .line 725
    iget-object v4, v15, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    .line 726
    .line 727
    const-wide/16 v10, 0x1f4

    .line 728
    .line 729
    add-long/2addr v6, v10

    .line 730
    const-wide/16 v16, 0x3e8

    .line 731
    .line 732
    div-long v6, v6, v16

    .line 733
    .line 734
    aput-wide v6, v4, v3

    .line 735
    .line 736
    add-int/lit8 v3, v3, 0x1

    .line 737
    .line 738
    goto :goto_11

    .line 739
    :cond_14
    iget v3, v5, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    .line 740
    .line 741
    iget v4, v15, Landroid/os/SemUidPowerInfo;->btScan:I

    .line 742
    .line 743
    add-int/2addr v3, v4

    .line 744
    iput v3, v5, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    .line 745
    .line 746
    iget-wide v3, v5, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    .line 747
    .line 748
    iget-wide v6, v15, Landroid/os/SemUidPowerInfo;->gpsTime:J

    .line 749
    .line 750
    add-long/2addr v3, v6

    .line 751
    iput-wide v3, v5, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    .line 752
    .line 753
    iget-wide v3, v5, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    .line 754
    .line 755
    iget-wide v6, v15, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    .line 756
    .line 757
    add-long/2addr v3, v6

    .line 758
    iput-wide v3, v5, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    .line 759
    .line 760
    iget-wide v3, v5, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    .line 761
    .line 762
    const/4 v6, 0x0

    .line 763
    invoke-virtual {v13, v1, v2, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    .line 764
    .line 765
    .line 766
    move-result-wide v7

    .line 767
    const-wide/16 v9, 0x3e8

    .line 768
    .line 769
    div-long/2addr v7, v9

    .line 770
    add-long/2addr v7, v3

    .line 771
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    .line 772
    .line 773
    iget v3, v5, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    .line 774
    .line 775
    invoke-virtual {v13, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    .line 776
    .line 777
    .line 778
    move-result v4

    .line 779
    add-int/2addr v4, v3

    .line 780
    iput v4, v5, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    .line 781
    .line 782
    iget-wide v3, v5, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    .line 783
    .line 784
    iget-wide v6, v15, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    .line 785
    .line 786
    add-long/2addr v3, v6

    .line 787
    iput-wide v3, v5, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    .line 788
    .line 789
    move-object/from16 v3, p7

    .line 790
    .line 791
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    goto :goto_12

    .line 795
    :cond_15
    move-object/from16 v3, p7

    .line 796
    .line 797
    move-object/from16 v25, v6

    .line 798
    .line 799
    move-object/from16 v24, v7

    .line 800
    .line 801
    move v14, v8

    .line 802
    :goto_12
    add-int/lit8 v8, v14, -0x1

    .line 803
    .line 804
    move-wide/from16 v3, p4

    .line 805
    .line 806
    move-object/from16 v7, v24

    .line 807
    .line 808
    move-object/from16 v6, v25

    .line 809
    .line 810
    const/4 v9, 0x1

    .line 811
    goto/16 :goto_1

    .line 812
    .line 813
    :cond_16
    move-object/from16 v4, p1

    .line 814
    .line 815
    move v6, v10

    .line 816
    invoke-virtual {v4, v6}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    const/4 v6, 0x0

    .line 821
    :goto_13
    const/16 v7, 0x13

    .line 822
    .line 823
    if-ge v6, v7, :cond_1b

    .line 824
    .line 825
    if-eqz v6, :cond_1a

    .line 826
    .line 827
    const/16 v7, 0x8

    .line 828
    .line 829
    if-eq v6, v7, :cond_19

    .line 830
    .line 831
    const/16 v7, 0xb

    .line 832
    .line 833
    if-eq v6, v7, :cond_18

    .line 834
    .line 835
    const/16 v7, 0x12

    .line 836
    .line 837
    if-eq v6, v7, :cond_17

    .line 838
    .line 839
    packed-switch v6, :pswitch_data_0

    .line 840
    .line 841
    .line 842
    goto :goto_14

    .line 843
    :pswitch_0
    invoke-virtual {v3, v6}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    .line 844
    .line 845
    .line 846
    move-result-wide v7

    .line 847
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->idlePower:D

    .line 848
    .line 849
    invoke-virtual {v3, v6}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    .line 850
    .line 851
    .line 852
    move-result-wide v7

    .line 853
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->idleTime:J

    .line 854
    .line 855
    goto :goto_14

    .line 856
    :pswitch_1
    invoke-virtual {v3, v6}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    .line 857
    .line 858
    .line 859
    move-result-wide v7

    .line 860
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->aodPower:D

    .line 861
    .line 862
    invoke-virtual {v3, v6}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    .line 863
    .line 864
    .line 865
    move-result-wide v7

    .line 866
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->aodTime:J

    .line 867
    .line 868
    goto :goto_14

    .line 869
    :pswitch_2
    invoke-virtual {v3, v6}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    .line 870
    .line 871
    .line 872
    move-result-wide v7

    .line 873
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->phonePower:D

    .line 874
    .line 875
    invoke-virtual {v3, v6}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    .line 876
    .line 877
    .line 878
    move-result-wide v7

    .line 879
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    .line 880
    .line 881
    goto :goto_14

    .line 882
    :cond_17
    invoke-virtual {v3, v6}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    .line 883
    .line 884
    .line 885
    move-result-wide v7

    .line 886
    double-to-long v7, v7

    .line 887
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    .line 888
    .line 889
    invoke-virtual {v3, v6}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    .line 890
    .line 891
    .line 892
    move-result-wide v7

    .line 893
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    .line 894
    .line 895
    goto :goto_14

    .line 896
    :cond_18
    invoke-virtual {v3, v6}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    .line 897
    .line 898
    .line 899
    move-result-wide v7

    .line 900
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    .line 901
    .line 902
    goto :goto_14

    .line 903
    :cond_19
    invoke-virtual {v3, v6}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    .line 904
    .line 905
    .line 906
    move-result-wide v7

    .line 907
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->radioPower:D

    .line 908
    .line 909
    goto :goto_14

    .line 910
    :cond_1a
    invoke-virtual {v3, v6}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    .line 911
    .line 912
    .line 913
    move-result-wide v7

    .line 914
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->screenPower:D

    .line 915
    .line 916
    invoke-virtual {v3, v6}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    .line 917
    .line 918
    .line 919
    move-result-wide v7

    .line 920
    iput-wide v7, v5, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    .line 921
    .line 922
    :goto_14
    add-int/lit8 v6, v6, 0x1

    .line 923
    .line 924
    goto :goto_13

    .line 925
    :cond_1b
    const/4 v3, 0x0

    .line 926
    :goto_15
    const/4 v6, 0x5

    .line 927
    if-ge v3, v6, :cond_1c

    .line 928
    .line 929
    iget-object v6, v5, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    .line 930
    .line 931
    iget-object v7, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 932
    .line 933
    const/4 v9, 0x0

    .line 934
    invoke-virtual {v7, v3, v1, v2, v9}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    .line 935
    .line 936
    .line 937
    move-result-wide v7

    .line 938
    const-wide/16 v10, 0x3e8

    .line 939
    .line 940
    div-long/2addr v7, v10

    .line 941
    aput-wide v7, v6, v3

    .line 942
    .line 943
    iget-object v6, v5, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    .line 944
    .line 945
    iget-object v7, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 946
    .line 947
    invoke-virtual {v7, v3, v1, v2, v9}, Landroid/os/BatteryStats;->getScreenAutoBrightnessTime(IJI)J

    .line 948
    .line 949
    .line 950
    move-result-wide v7

    .line 951
    div-long/2addr v7, v10

    .line 952
    aput-wide v7, v6, v3

    .line 953
    .line 954
    iget-object v6, v5, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    .line 955
    .line 956
    iget-object v7, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 957
    .line 958
    invoke-virtual {v7, v3, v1, v2, v9}, Landroid/os/BatteryStats;->getSubScreenBrightnessTime(IJI)J

    .line 959
    .line 960
    .line 961
    move-result-wide v7

    .line 962
    div-long/2addr v7, v10

    .line 963
    aput-wide v7, v6, v3

    .line 964
    .line 965
    iget-object v6, v5, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    .line 966
    .line 967
    iget-object v7, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 968
    .line 969
    invoke-virtual {v7, v3, v1, v2, v9}, Landroid/os/BatteryStats;->getSubScreenAutoBrightnessTime(IJI)J

    .line 970
    .line 971
    .line 972
    move-result-wide v7

    .line 973
    div-long/2addr v7, v10

    .line 974
    aput-wide v7, v6, v3

    .line 975
    .line 976
    add-int/lit8 v3, v3, 0x1

    .line 977
    .line 978
    goto :goto_15

    .line 979
    :cond_1c
    const/4 v9, 0x0

    .line 980
    const-wide/16 v10, 0x3e8

    .line 981
    .line 982
    iget-object v3, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 983
    .line 984
    invoke-virtual {v3, v1, v2, v9}, Landroid/os/BatteryStats;->getScreenHighBrightnessTime(JI)J

    .line 985
    .line 986
    .line 987
    move-result-wide v6

    .line 988
    div-long/2addr v6, v10

    .line 989
    iput-wide v6, v5, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    .line 990
    .line 991
    iget-object v3, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 992
    .line 993
    invoke-virtual {v3, v1, v2, v9}, Landroid/os/BatteryStats;->getSubScreenHighBrightnessTime(JI)J

    .line 994
    .line 995
    .line 996
    move-result-wide v6

    .line 997
    div-long/2addr v6, v10

    .line 998
    iput-wide v6, v5, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    .line 999
    .line 1000
    move v3, v9

    .line 1001
    const-wide/16 v6, 0x0

    .line 1002
    .line 1003
    const-wide/16 v10, 0x0

    .line 1004
    .line 1005
    const-wide/16 v12, 0x0

    .line 1006
    .line 1007
    const-wide/16 v14, 0x0

    .line 1008
    .line 1009
    :goto_16
    const/16 v8, 0xf

    .line 1010
    .line 1011
    if-ge v3, v8, :cond_1d

    .line 1012
    .line 1013
    iget-object v8, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1014
    .line 1015
    invoke-virtual {v8, v3, v9}, Landroid/os/BatteryStats;->getSpeakerCallTime(II)J

    .line 1016
    .line 1017
    .line 1018
    move-result-wide v1

    .line 1019
    long-to-double v1, v1

    .line 1020
    iget-object v8, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1021
    .line 1022
    invoke-virtual {v8, v3, v9}, Landroid/os/BatteryStats;->getSpeakerMediaTime(II)J

    .line 1023
    .line 1024
    .line 1025
    move-result-wide v4

    .line 1026
    long-to-double v4, v4

    .line 1027
    long-to-double v6, v6

    .line 1028
    add-double/2addr v6, v1

    .line 1029
    double-to-long v6, v6

    .line 1030
    long-to-double v10, v10

    .line 1031
    add-int/lit8 v3, v3, 0x1

    .line 1032
    .line 1033
    move-wide/from16 v24, v6

    .line 1034
    .line 1035
    int-to-double v6, v3

    .line 1036
    mul-double/2addr v1, v6

    .line 1037
    add-double/2addr v1, v10

    .line 1038
    double-to-long v10, v1

    .line 1039
    long-to-double v1, v12

    .line 1040
    add-double/2addr v1, v4

    .line 1041
    double-to-long v12, v1

    .line 1042
    long-to-double v1, v14

    .line 1043
    mul-double/2addr v4, v6

    .line 1044
    add-double/2addr v4, v1

    .line 1045
    double-to-long v14, v4

    .line 1046
    move-object/from16 v4, p1

    .line 1047
    .line 1048
    move-wide/from16 v1, p2

    .line 1049
    .line 1050
    move-object/from16 v5, p6

    .line 1051
    .line 1052
    move-wide/from16 v6, v24

    .line 1053
    .line 1054
    const/4 v9, 0x0

    .line 1055
    goto :goto_16

    .line 1056
    :cond_1d
    move-object v1, v5

    .line 1057
    iput-wide v6, v1, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    .line 1058
    .line 1059
    iput-wide v10, v1, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    .line 1060
    .line 1061
    iput-wide v12, v1, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    .line 1062
    .line 1063
    iput-wide v14, v1, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    .line 1064
    .line 1065
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    .line 1066
    .line 1067
    .line 1068
    move-result v2

    .line 1069
    const/4 v3, 0x0

    .line 1070
    :goto_17
    if-ge v3, v2, :cond_1e

    .line 1071
    .line 1072
    iget-object v4, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1073
    .line 1074
    move-wide/from16 v5, p2

    .line 1075
    .line 1076
    const/4 v9, 0x0

    .line 1077
    invoke-virtual {v4, v3, v5, v6, v9}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    .line 1078
    .line 1079
    .line 1080
    move-result-wide v7

    .line 1081
    const-wide/16 v10, 0x3e8

    .line 1082
    .line 1083
    div-long/2addr v7, v10

    .line 1084
    iget-object v4, v1, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    .line 1085
    .line 1086
    aput-wide v7, v4, v3

    .line 1087
    .line 1088
    add-int/lit8 v3, v3, 0x1

    .line 1089
    .line 1090
    goto :goto_17

    .line 1091
    :cond_1e
    move-wide/from16 v5, p2

    .line 1092
    .line 1093
    const/4 v9, 0x0

    .line 1094
    const-wide/16 v10, 0x3e8

    .line 1095
    .line 1096
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1097
    .line 1098
    invoke-virtual {v2, v5, v6, v9}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    .line 1099
    .line 1100
    .line 1101
    move-result-wide v2

    .line 1102
    div-long/2addr v2, v10

    .line 1103
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    .line 1104
    .line 1105
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1106
    .line 1107
    invoke-virtual {v2, v9}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    .line 1108
    .line 1109
    .line 1110
    move-result v2

    .line 1111
    iput v2, v1, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    .line 1112
    .line 1113
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1114
    .line 1115
    invoke-virtual {v2, v5, v6, v9}, Landroid/os/BatteryStats;->getMobileActive5GTime(JI)J

    .line 1116
    .line 1117
    .line 1118
    move-result-wide v2

    .line 1119
    div-long/2addr v2, v10

    .line 1120
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    .line 1121
    .line 1122
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1123
    .line 1124
    invoke-virtual {v2, v5, v6, v9}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    .line 1125
    .line 1126
    .line 1127
    move-result-wide v2

    .line 1128
    div-long/2addr v2, v10

    .line 1129
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    .line 1130
    .line 1131
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1132
    .line 1133
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v2

    .line 1137
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v3

    .line 1141
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1142
    .line 1143
    .line 1144
    move-result-wide v3

    .line 1145
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v7

    .line 1149
    invoke-virtual {v7, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1150
    .line 1151
    .line 1152
    move-result-wide v7

    .line 1153
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v2

    .line 1157
    aget-object v2, v2, v9

    .line 1158
    .line 1159
    invoke-virtual {v2, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1160
    .line 1161
    .line 1162
    move-result-wide v10

    .line 1163
    add-long/2addr v3, v7

    .line 1164
    add-long/2addr v3, v10

    .line 1165
    iput-wide v3, v1, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    .line 1166
    .line 1167
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1168
    .line 1169
    invoke-virtual {v2, v5, v6, v9}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    .line 1170
    .line 1171
    .line 1172
    move-result-wide v2

    .line 1173
    const-wide/16 v7, 0x3e8

    .line 1174
    .line 1175
    div-long/2addr v2, v7

    .line 1176
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    .line 1177
    .line 1178
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1179
    .line 1180
    const/4 v3, 0x4

    .line 1181
    invoke-virtual {v2, v3, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    .line 1182
    .line 1183
    .line 1184
    move-result-wide v2

    .line 1185
    iget-object v4, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1186
    .line 1187
    const/4 v7, 0x5

    .line 1188
    invoke-virtual {v4, v7, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    .line 1189
    .line 1190
    .line 1191
    move-result-wide v10

    .line 1192
    add-long/2addr v10, v2

    .line 1193
    iput-wide v10, v1, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    .line 1194
    .line 1195
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1196
    .line 1197
    invoke-virtual {v2, v9, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    .line 1198
    .line 1199
    .line 1200
    move-result-wide v2

    .line 1201
    iget-object v4, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1202
    .line 1203
    const/4 v7, 0x1

    .line 1204
    invoke-virtual {v4, v7, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    .line 1205
    .line 1206
    .line 1207
    move-result-wide v10

    .line 1208
    add-long/2addr v10, v2

    .line 1209
    iput-wide v10, v1, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    .line 1210
    .line 1211
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1212
    .line 1213
    const/4 v3, 0x2

    .line 1214
    invoke-virtual {v2, v3, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    .line 1215
    .line 1216
    .line 1217
    move-result-wide v7

    .line 1218
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1219
    .line 1220
    const/4 v3, 0x3

    .line 1221
    invoke-virtual {v2, v3, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    .line 1222
    .line 1223
    .line 1224
    move-result-wide v10

    .line 1225
    add-long/2addr v10, v7

    .line 1226
    iput-wide v10, v1, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    .line 1227
    .line 1228
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1229
    .line 1230
    invoke-virtual {v2, v9, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    .line 1231
    .line 1232
    .line 1233
    move-result-wide v2

    .line 1234
    iget-object v4, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1235
    .line 1236
    const/4 v7, 0x1

    .line 1237
    invoke-virtual {v4, v7, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    .line 1238
    .line 1239
    .line 1240
    move-result-wide v10

    .line 1241
    add-long/2addr v10, v2

    .line 1242
    iput-wide v10, v1, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    .line 1243
    .line 1244
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1245
    .line 1246
    const/4 v3, 0x2

    .line 1247
    invoke-virtual {v2, v3, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    .line 1248
    .line 1249
    .line 1250
    move-result-wide v2

    .line 1251
    iget-object v4, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1252
    .line 1253
    const/4 v7, 0x3

    .line 1254
    invoke-virtual {v4, v7, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    .line 1255
    .line 1256
    .line 1257
    move-result-wide v7

    .line 1258
    add-long/2addr v7, v2

    .line 1259
    iput-wide v7, v1, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    .line 1260
    .line 1261
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1262
    .line 1263
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getNetworkModemControllerActivity()Landroid/os/BatteryStats$ModemActivityCounter;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v2

    .line 1267
    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v3

    .line 1271
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1272
    .line 1273
    .line 1274
    move-result-wide v3

    .line 1275
    iput-wide v3, v1, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    .line 1276
    .line 1277
    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v3

    .line 1281
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1282
    .line 1283
    .line 1284
    move-result-wide v3

    .line 1285
    iput-wide v3, v1, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    .line 1286
    .line 1287
    const/4 v3, 0x5

    .line 1288
    new-array v4, v3, [J

    .line 1289
    .line 1290
    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemActivityCounter;->getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v3

    .line 1294
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemTxRxCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v3

    .line 1298
    array-length v7, v3

    .line 1299
    move v8, v9

    .line 1300
    move v10, v8

    .line 1301
    :goto_18
    if-ge v8, v7, :cond_1f

    .line 1302
    .line 1303
    aget-object v11, v3, v8

    .line 1304
    .line 1305
    invoke-virtual {v11, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1306
    .line 1307
    .line 1308
    move-result-wide v11

    .line 1309
    aput-wide v11, v4, v10

    .line 1310
    .line 1311
    iget-wide v13, v1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    .line 1312
    .line 1313
    add-long/2addr v13, v11

    .line 1314
    iput-wide v13, v1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    .line 1315
    .line 1316
    iget-wide v13, v1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    .line 1317
    .line 1318
    const/4 v15, 0x1

    .line 1319
    add-int/2addr v10, v15

    .line 1320
    move-object/from16 p7, v3

    .line 1321
    .line 1322
    move-object v15, v4

    .line 1323
    int-to-long v3, v10

    .line 1324
    mul-long/2addr v11, v3

    .line 1325
    long-to-double v3, v11

    .line 1326
    add-double/2addr v13, v3

    .line 1327
    iput-wide v13, v1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    .line 1328
    .line 1329
    add-int/lit8 v8, v8, 0x1

    .line 1330
    .line 1331
    move-object/from16 v3, p7

    .line 1332
    .line 1333
    move-object v4, v15

    .line 1334
    const/4 v9, 0x0

    .line 1335
    goto :goto_18

    .line 1336
    :cond_1f
    iget-wide v3, v1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    .line 1337
    .line 1338
    const-wide/16 v7, 0x0

    .line 1339
    .line 1340
    cmp-long v10, v3, v7

    .line 1341
    .line 1342
    if-eqz v10, :cond_20

    .line 1343
    .line 1344
    iget-wide v7, v1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    .line 1345
    .line 1346
    long-to-double v3, v3

    .line 1347
    div-double/2addr v7, v3

    .line 1348
    iput-wide v7, v1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    .line 1349
    .line 1350
    :cond_20
    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemActivityCounter;->getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v3

    .line 1354
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemTxRxCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v3

    .line 1358
    const/4 v9, 0x0

    .line 1359
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1360
    .line 1361
    .line 1362
    move-result-wide v3

    .line 1363
    iput-wide v3, v1, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    .line 1364
    .line 1365
    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemActivityCounter;->getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v3

    .line 1369
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemTxRxCounter;->getTxByteCounter()Landroid/os/BatteryStats$LongCounter;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v3

    .line 1373
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1374
    .line 1375
    .line 1376
    move-result-wide v3

    .line 1377
    iput-wide v3, v1, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    .line 1378
    .line 1379
    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemActivityCounter;->getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v3

    .line 1383
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemTxRxCounter;->getRxByteCounter()Landroid/os/BatteryStats$LongCounter;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v3

    .line 1387
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1388
    .line 1389
    .line 1390
    move-result-wide v3

    .line 1391
    iput-wide v3, v1, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    .line 1392
    .line 1393
    const/4 v3, 0x5

    .line 1394
    new-array v3, v3, [J

    .line 1395
    .line 1396
    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemActivityCounter;->getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v4

    .line 1400
    invoke-virtual {v4}, Landroid/os/BatteryStats$ModemTxRxCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v4

    .line 1404
    array-length v7, v4

    .line 1405
    move v8, v9

    .line 1406
    move v10, v8

    .line 1407
    :goto_19
    if-ge v8, v7, :cond_21

    .line 1408
    .line 1409
    aget-object v11, v4, v8

    .line 1410
    .line 1411
    invoke-virtual {v11, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1412
    .line 1413
    .line 1414
    move-result-wide v11

    .line 1415
    aput-wide v11, v3, v10

    .line 1416
    .line 1417
    iget-wide v13, v1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    .line 1418
    .line 1419
    add-long/2addr v13, v11

    .line 1420
    iput-wide v13, v1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    .line 1421
    .line 1422
    iget-wide v13, v1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    .line 1423
    .line 1424
    const/4 v15, 0x1

    .line 1425
    add-int/2addr v10, v15

    .line 1426
    move-object/from16 v18, v3

    .line 1427
    .line 1428
    move-object/from16 p7, v4

    .line 1429
    .line 1430
    int-to-long v3, v10

    .line 1431
    mul-long/2addr v11, v3

    .line 1432
    long-to-double v3, v11

    .line 1433
    add-double/2addr v13, v3

    .line 1434
    iput-wide v13, v1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    .line 1435
    .line 1436
    add-int/lit8 v8, v8, 0x1

    .line 1437
    .line 1438
    move-object/from16 v4, p7

    .line 1439
    .line 1440
    move-object/from16 v3, v18

    .line 1441
    .line 1442
    const/4 v9, 0x0

    .line 1443
    goto :goto_19

    .line 1444
    :cond_21
    iget-wide v3, v1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    .line 1445
    .line 1446
    const-wide/16 v7, 0x0

    .line 1447
    .line 1448
    cmp-long v7, v3, v7

    .line 1449
    .line 1450
    if-eqz v7, :cond_22

    .line 1451
    .line 1452
    iget-wide v7, v1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    .line 1453
    .line 1454
    long-to-double v3, v3

    .line 1455
    div-double/2addr v7, v3

    .line 1456
    iput-wide v7, v1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    .line 1457
    .line 1458
    :cond_22
    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemActivityCounter;->getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v3

    .line 1462
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemTxRxCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v3

    .line 1466
    const/4 v4, 0x0

    .line 1467
    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1468
    .line 1469
    .line 1470
    move-result-wide v7

    .line 1471
    iput-wide v7, v1, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    .line 1472
    .line 1473
    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemActivityCounter;->getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v3

    .line 1477
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemTxRxCounter;->getTxByteCounter()Landroid/os/BatteryStats$LongCounter;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v3

    .line 1481
    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1482
    .line 1483
    .line 1484
    move-result-wide v7

    .line 1485
    iput-wide v7, v1, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    .line 1486
    .line 1487
    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemActivityCounter;->getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v2

    .line 1491
    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemTxRxCounter;->getRxByteCounter()Landroid/os/BatteryStats$LongCounter;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v2

    .line 1495
    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 1496
    .line 1497
    .line 1498
    move-result-wide v2

    .line 1499
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    .line 1500
    .line 1501
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    .line 1502
    .line 1503
    .line 1504
    move-result-wide v2

    .line 1505
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->totalPower:D

    .line 1506
    .line 1507
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1508
    .line 1509
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    .line 1510
    .line 1511
    .line 1512
    move-result v2

    .line 1513
    iput v2, v1, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    .line 1514
    .line 1515
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1516
    .line 1517
    invoke-virtual {v2, v5, v6, v4}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    .line 1518
    .line 1519
    .line 1520
    move-result-wide v2

    .line 1521
    const-wide/16 v7, 0x3e8

    .line 1522
    .line 1523
    div-long/2addr v2, v7

    .line 1524
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    .line 1525
    .line 1526
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1527
    .line 1528
    invoke-virtual {v2, v5, v6, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    .line 1529
    .line 1530
    .line 1531
    move-result-wide v2

    .line 1532
    div-long/2addr v2, v7

    .line 1533
    iget-wide v9, v1, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    .line 1534
    .line 1535
    sub-long/2addr v2, v9

    .line 1536
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    .line 1537
    .line 1538
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1539
    .line 1540
    invoke-virtual {v2, v4}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    .line 1541
    .line 1542
    .line 1543
    move-result v2

    .line 1544
    iput v2, v1, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    .line 1545
    .line 1546
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1547
    .line 1548
    invoke-virtual {v2, v5, v6, v4}, Landroid/os/BatteryStats;->getSubScreenOnTime(JI)J

    .line 1549
    .line 1550
    .line 1551
    move-result-wide v2

    .line 1552
    div-long/2addr v2, v7

    .line 1553
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    .line 1554
    .line 1555
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1556
    .line 1557
    move-wide/from16 v9, p4

    .line 1558
    .line 1559
    invoke-virtual {v2, v9, v10, v4}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    .line 1560
    .line 1561
    .line 1562
    move-result-wide v2

    .line 1563
    div-long/2addr v2, v7

    .line 1564
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->uptime:J

    .line 1565
    .line 1566
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1567
    .line 1568
    invoke-virtual {v2, v9, v10, v4}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    .line 1569
    .line 1570
    .line 1571
    move-result-wide v2

    .line 1572
    div-long/2addr v2, v7

    .line 1573
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    .line 1574
    .line 1575
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1576
    .line 1577
    invoke-virtual {v2, v5, v6, v4}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    .line 1578
    .line 1579
    .line 1580
    move-result-wide v2

    .line 1581
    div-long/2addr v2, v7

    .line 1582
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->psmTime:J

    .line 1583
    .line 1584
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1585
    .line 1586
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceChargePermil()I

    .line 1587
    .line 1588
    .line 1589
    move-result v2

    .line 1590
    iput v2, v1, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    .line 1591
    .line 1592
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1593
    .line 1594
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceChargePermil()I

    .line 1595
    .line 1596
    .line 1597
    move-result v2

    .line 1598
    iput v2, v1, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    .line 1599
    .line 1600
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1601
    .line 1602
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceChargePermil()I

    .line 1603
    .line 1604
    .line 1605
    move-result v2

    .line 1606
    iput v2, v1, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    .line 1607
    .line 1608
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1609
    .line 1610
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getDischargeAmountSubScreenDozeSinceChargePermil()I

    .line 1611
    .line 1612
    .line 1613
    move-result v2

    .line 1614
    iput v2, v1, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    .line 1615
    .line 1616
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1617
    .line 1618
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getDischargeAmountSubScreenOnSinceChargePermil()I

    .line 1619
    .line 1620
    .line 1621
    move-result v2

    .line 1622
    iput v2, v1, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    .line 1623
    .line 1624
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1625
    .line 1626
    const/4 v3, 0x0

    .line 1627
    invoke-virtual {v2, v5, v6, v3}, Landroid/os/BatteryStats;->getSubScreenDozeTime(JI)J

    .line 1628
    .line 1629
    .line 1630
    move-result-wide v7

    .line 1631
    const-wide/16 v9, 0x3e8

    .line 1632
    .line 1633
    div-long/2addr v7, v9

    .line 1634
    iput-wide v7, v1, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    .line 1635
    .line 1636
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1637
    .line 1638
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceChargeCoulombCounter()I

    .line 1639
    .line 1640
    .line 1641
    move-result v2

    .line 1642
    iput v2, v1, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    .line 1643
    .line 1644
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1645
    .line 1646
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceChargeCoulombCounter()I

    .line 1647
    .line 1648
    .line 1649
    move-result v2

    .line 1650
    iput v2, v1, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    .line 1651
    .line 1652
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1653
    .line 1654
    invoke-virtual {v2, v5, v6, v3}, Landroid/os/BatteryStats;->getTxPowerSharingTime(JI)J

    .line 1655
    .line 1656
    .line 1657
    move-result-wide v7

    .line 1658
    div-long/2addr v7, v9

    .line 1659
    iput-wide v7, v1, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    .line 1660
    .line 1661
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1662
    .line 1663
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getTxSharingDischargeAmount()J

    .line 1664
    .line 1665
    .line 1666
    move-result-wide v7

    .line 1667
    iput-wide v7, v1, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    .line 1668
    .line 1669
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1670
    .line 1671
    invoke-virtual {v2, v5, v6, v3}, Landroid/os/BatteryStats;->getMainDisplayHighRefreshRateTime(JI)J

    .line 1672
    .line 1673
    .line 1674
    move-result-wide v7

    .line 1675
    div-long/2addr v7, v9

    .line 1676
    iput-wide v7, v1, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    .line 1677
    .line 1678
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1679
    .line 1680
    invoke-virtual {v2, v5, v6, v3}, Landroid/os/BatteryStats;->getCoverDisplayHighRefreshRateTime(JI)J

    .line 1681
    .line 1682
    .line 1683
    move-result-wide v7

    .line 1684
    div-long/2addr v7, v9

    .line 1685
    iput-wide v7, v1, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    .line 1686
    .line 1687
    iget-object v0, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 1688
    .line 1689
    invoke-virtual {v0, v5, v6, v3}, Landroid/os/BatteryStats;->getScreenOnGpsRunningTime(JI)J

    .line 1690
    .line 1691
    .line 1692
    move-result-wide v2

    .line 1693
    div-long/2addr v2, v9

    .line 1694
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    .line 1695
    .line 1696
    return-void

    .line 1697
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateKernelWakelockInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-lez v3, :cond_6

    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    const-wide/16 v5, 0x3e8

    .line 26
    .line 27
    mul-long/2addr v3, v5

    .line 28
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    const/4 v9, 0x0

    .line 41
    if-eqz v8, :cond_5

    .line 42
    .line 43
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Ljava/lang/String;

    .line 48
    .line 49
    if-nez v8, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    check-cast v10, Landroid/os/BatteryStats$Timer;

    .line 57
    .line 58
    if-eqz v10, :cond_3

    .line 59
    .line 60
    invoke-virtual {v10, v3, v4, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 61
    .line 62
    .line 63
    move-result-wide v11

    .line 64
    const-wide/16 v13, 0x1f4

    .line 65
    .line 66
    add-long/2addr v11, v13

    .line 67
    div-long/2addr v11, v5

    .line 68
    invoke-virtual {v10, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    const-wide/16 v13, 0x0

    .line 73
    .line 74
    cmp-long v15, v11, v13

    .line 75
    .line 76
    if-lez v15, :cond_3

    .line 77
    .line 78
    if-lez v10, :cond_3

    .line 79
    .line 80
    iget-object v15, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    .line 81
    .line 82
    check-cast v15, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    if-nez v15, :cond_2

    .line 89
    .line 90
    iget-object v15, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    .line 91
    .line 92
    new-instance v5, Landroid/os/SemKernelWakelockInfo;

    .line 93
    .line 94
    invoke-direct {v5, v8, v9, v13, v14}, Landroid/os/SemKernelWakelockInfo;-><init>(Ljava/lang/String;IJ)V

    .line 95
    .line 96
    .line 97
    check-cast v15, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v15, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v5, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    .line 103
    .line 104
    check-cast v5, Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Landroid/os/SemKernelWakelockInfo;

    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/os/SemKernelWakelockInfo;->getTime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v16

    .line 116
    move v6, v10

    .line 117
    sub-long v9, v11, v16

    .line 118
    .line 119
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 120
    .line 121
    .line 122
    move-result-wide v9

    .line 123
    invoke-virtual {v5}, Landroid/os/SemKernelWakelockInfo;->getCount()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    sub-int v5, v6, v5

    .line 128
    .line 129
    const/4 v15, 0x0

    .line 130
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    iget-object v15, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    .line 135
    .line 136
    new-instance v13, Landroid/os/SemKernelWakelockInfo;

    .line 137
    .line 138
    invoke-direct {v13, v8, v6, v11, v12}, Landroid/os/SemKernelWakelockInfo;-><init>(Ljava/lang/String;IJ)V

    .line 139
    .line 140
    .line 141
    check-cast v15, Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-virtual {v15, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    const-wide/16 v11, 0x0

    .line 147
    .line 148
    cmp-long v6, v9, v11

    .line 149
    .line 150
    if-nez v6, :cond_4

    .line 151
    .line 152
    if-nez v5, :cond_4

    .line 153
    .line 154
    :cond_3
    :goto_1
    const-wide/16 v5, 0x3e8

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_4
    new-instance v6, Landroid/os/SemKernelWakelockInfo;

    .line 158
    .line 159
    invoke-direct {v6, v8, v5, v9, v10}, Landroid/os/SemKernelWakelockInfo;-><init>(Ljava/lang/String;IJ)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_5
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    const/16 v0, 0xa

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    const/4 v1, 0x0

    .line 180
    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    move-object/from16 v1, p2

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    .line 188
    .line 189
    :cond_6
    return-void
.end method

.method public final updateScreenWakeInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/BatteryStats;->getScreenWakeStats()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_4

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/os/BatteryStats$Counter;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-lez v2, :cond_1

    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    .line 50
    .line 51
    check-cast v4, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    iget-object v4, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v4, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v4, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    .line 71
    .line 72
    check-cast v4, Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    sub-int v4, v2, v4

    .line 85
    .line 86
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    iget-object v4, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    .line 91
    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v4, Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    if-nez v3, :cond_3

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    new-instance v2, Landroid/os/SemScreenWakeInfo;

    .line 105
    .line 106
    int-to-long v3, v3

    .line 107
    invoke-direct {v2, v1, v3, v4}, Landroid/os/SemScreenWakeInfo;-><init>(Ljava/lang/String;J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    return-void
.end method

.method public final updateWakeupReasonInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lez v2, :cond_8

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x3e8

    .line 18
    .line 19
    mul-long/2addr v2, v4

    .line 20
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-eqz v7, :cond_8

    .line 33
    .line 34
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    check-cast v7, Ljava/lang/String;

    .line 39
    .line 40
    if-nez v7, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Landroid/os/BatteryStats$Timer;

    .line 48
    .line 49
    if-eqz v8, :cond_7

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    invoke-virtual {v8, v2, v3, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 53
    .line 54
    .line 55
    move-result-wide v10

    .line 56
    const-wide/16 v12, 0x1f4

    .line 57
    .line 58
    add-long/2addr v10, v12

    .line 59
    div-long/2addr v10, v4

    .line 60
    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    const-string v12, "Abort:"

    .line 65
    .line 66
    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    const/4 v13, 0x0

    .line 71
    if-nez v12, :cond_1

    .line 72
    .line 73
    :goto_1
    move-object v7, v13

    .line 74
    goto :goto_3

    .line 75
    :cond_1
    const-string v12, "Some devices failed to suspend, or early wake event detected"

    .line 76
    .line 77
    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    if-eqz v12, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const-string v12, "PowerManagerService.WakeLocks"

    .line 85
    .line 86
    const-string v14, "alarmtimer"

    .line 87
    .line 88
    filled-new-array {v12, v14}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    move v14, v9

    .line 93
    :goto_2
    const/4 v15, 0x2

    .line 94
    if-ge v14, v15, :cond_4

    .line 95
    .line 96
    aget-object v15, v12, v14

    .line 97
    .line 98
    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    if-eqz v15, :cond_3

    .line 103
    .line 104
    const-string v12, "******** Except for the blocked tag or tableName="

    .line 105
    .line 106
    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    const-string v12, "SemBatteryUsageStatsProvider"

    .line 111
    .line 112
    invoke-static {v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    :goto_3
    if-eqz v7, :cond_7

    .line 120
    .line 121
    const-wide/16 v12, 0x0

    .line 122
    .line 123
    cmp-long v14, v10, v12

    .line 124
    .line 125
    if-eqz v14, :cond_7

    .line 126
    .line 127
    iget-object v14, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    .line 128
    .line 129
    check-cast v14, Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    if-nez v14, :cond_5

    .line 136
    .line 137
    iget-object v14, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    .line 138
    .line 139
    new-instance v15, Landroid/os/SemWakeupReasonInfo;

    .line 140
    .line 141
    invoke-direct {v15, v7, v9, v12, v13}, Landroid/os/SemWakeupReasonInfo;-><init>(Ljava/lang/String;IJ)V

    .line 142
    .line 143
    .line 144
    check-cast v14, Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-virtual {v14, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_5
    iget-object v14, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    .line 150
    .line 151
    check-cast v14, Ljava/util/HashMap;

    .line 152
    .line 153
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    check-cast v14, Landroid/os/SemWakeupReasonInfo;

    .line 158
    .line 159
    invoke-virtual {v14}, Landroid/os/SemWakeupReasonInfo;->getTime()J

    .line 160
    .line 161
    .line 162
    move-result-wide v15

    .line 163
    sub-long v4, v10, v15

    .line 164
    .line 165
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 166
    .line 167
    .line 168
    move-result-wide v4

    .line 169
    invoke-virtual {v14}, Landroid/os/SemWakeupReasonInfo;->getCount()I

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    sub-int v14, v8, v14

    .line 174
    .line 175
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    iget-object v14, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    .line 180
    .line 181
    new-instance v15, Landroid/os/SemWakeupReasonInfo;

    .line 182
    .line 183
    invoke-direct {v15, v7, v8, v10, v11}, Landroid/os/SemWakeupReasonInfo;-><init>(Ljava/lang/String;IJ)V

    .line 184
    .line 185
    .line 186
    check-cast v14, Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-virtual {v14, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    cmp-long v8, v4, v12

    .line 192
    .line 193
    if-nez v8, :cond_6

    .line 194
    .line 195
    if-nez v9, :cond_6

    .line 196
    .line 197
    :goto_4
    const-wide/16 v4, 0x3e8

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_6
    new-instance v8, Landroid/os/SemWakeupReasonInfo;

    .line 202
    .line 203
    invoke-direct {v8, v7, v9, v4, v5}, Landroid/os/SemWakeupReasonInfo;-><init>(Ljava/lang/String;IJ)V

    .line 204
    .line 205
    .line 206
    move-object/from16 v4, p2

    .line 207
    .line 208
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_7
    move-object/from16 v4, p2

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_8
    return-void
.end method
