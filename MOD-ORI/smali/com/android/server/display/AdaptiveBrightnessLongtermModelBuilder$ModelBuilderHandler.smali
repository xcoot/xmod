.class public final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    goto/16 :goto_11

    .line 12
    .line 13
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    .line 19
    .line 20
    const-string/jumbo v2, "handleBrightnessBnrPackageCleared()"

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->resetBrightnessConfiguration()V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_11

    .line 40
    .line 41
    :pswitch_2
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 47
    .line 48
    const-string/jumbo v2, "handleShortTermModelValid()"

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 55
    .line 56
    monitor-enter v2

    .line 57
    :try_start_0
    iget-object v0, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    .line 58
    .line 59
    iget-object v5, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    .line 65
    .line 66
    .line 67
    iget-object v5, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 68
    .line 69
    invoke-virtual {v0, v3, v5}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(ILjava/util/Map;)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->summarizeStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    .line 75
    .line 76
    monitor-exit v2

    .line 77
    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 78
    .line 79
    monitor-enter v2

    .line 80
    :try_start_1
    iget-object v0, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    .line 81
    .line 82
    iget-object v5, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 83
    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v5, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_0

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 97
    .line 98
    check-cast v0, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    monitor-exit v2

    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getTimeCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getContinuityCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object v6, v5

    .line 124
    move-object v5, v2

    .line 125
    move-object v2, v0

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    const/4 v2, 0x0

    .line 128
    const/4 v5, 0x0

    .line 129
    const/4 v6, 0x0

    .line 130
    :goto_1
    if-eqz v5, :cond_18

    .line 131
    .line 132
    if-eqz v6, :cond_18

    .line 133
    .line 134
    if-eqz v2, :cond_18

    .line 135
    .line 136
    array-length v0, v5

    .line 137
    new-array v8, v0, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 138
    .line 139
    move v9, v3

    .line 140
    :goto_2
    if-ge v9, v0, :cond_2

    .line 141
    .line 142
    aget-object v10, v5, v9

    .line 143
    .line 144
    invoke-virtual {v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->copy()Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    aput-object v10, v8, v9

    .line 149
    .line 150
    add-int/lit8 v9, v9, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_2
    iget-object v9, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorDecsendingForWeight:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

    .line 154
    .line 155
    invoke-static {v8, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 156
    .line 157
    .line 158
    move v9, v3

    .line 159
    :cond_3
    if-ge v9, v0, :cond_8

    .line 160
    .line 161
    aget-object v10, v8, v9

    .line 162
    .line 163
    invoke-virtual {v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    aget-object v11, v8, v9

    .line 168
    .line 169
    invoke-virtual {v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    add-int/lit8 v9, v9, 0x1

    .line 174
    .line 175
    move v12, v9

    .line 176
    :goto_3
    if-ge v12, v0, :cond_3

    .line 177
    .line 178
    aget-object v13, v8, v12

    .line 179
    .line 180
    invoke-virtual {v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    .line 181
    .line 182
    .line 183
    move-result v13

    .line 184
    aget-object v14, v8, v12

    .line 185
    .line 186
    invoke-virtual {v14}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    .line 187
    .line 188
    .line 189
    move-result v14

    .line 190
    sget-boolean v15, Lcom/android/server/power/PowerManagerUtil;->USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

    .line 191
    .line 192
    if-eqz v15, :cond_5

    .line 193
    .line 194
    invoke-static {v13, v10}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleMinimumRatio(FF)F

    .line 195
    .line 196
    .line 197
    move-result v15

    .line 198
    const/high16 v16, 0x3e800000    # 0.25f

    .line 199
    .line 200
    add-float v17, v13, v16

    .line 201
    .line 202
    add-float v16, v10, v16

    .line 203
    .line 204
    div-float v7, v17, v16

    .line 205
    .line 206
    const/high16 v3, 0x3f800000    # 1.0f

    .line 207
    .line 208
    invoke-static {v7, v3}, Landroid/util/MathUtils;->pow(FF)F

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    cmpl-float v7, v13, v10

    .line 213
    .line 214
    if-lez v7, :cond_4

    .line 215
    .line 216
    mul-float/2addr v15, v11

    .line 217
    mul-float/2addr v3, v11

    .line 218
    invoke-static {v14, v15, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    goto :goto_4

    .line 223
    :cond_4
    mul-float/2addr v3, v11

    .line 224
    mul-float/2addr v15, v11

    .line 225
    invoke-static {v14, v3, v15}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    goto :goto_4

    .line 230
    :cond_5
    cmpl-float v3, v13, v10

    .line 231
    .line 232
    if-lez v3, :cond_6

    .line 233
    .line 234
    invoke-static {v14, v11}, Landroid/util/MathUtils;->max(FF)F

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    goto :goto_4

    .line 239
    :cond_6
    invoke-static {v14, v11}, Landroid/util/MathUtils;->min(FF)F

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    :goto_4
    invoke-static {v14, v3}, Ljava/lang/Float;->compare(FF)I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-eqz v7, :cond_7

    .line 248
    .line 249
    aget-object v7, v8, v12

    .line 250
    .line 251
    invoke-virtual {v7, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setBrightness(F)V

    .line 252
    .line 253
    .line 254
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 255
    .line 256
    const/4 v3, 0x0

    .line 257
    goto :goto_3

    .line 258
    :cond_8
    const/4 v3, 0x0

    .line 259
    :goto_5
    if-ge v3, v0, :cond_a

    .line 260
    .line 261
    aget-object v7, v8, v3

    .line 262
    .line 263
    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    iget v9, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaxBrightnessForNonHbmLux:F

    .line 268
    .line 269
    cmpl-float v7, v7, v9

    .line 270
    .line 271
    if-lez v7, :cond_9

    .line 272
    .line 273
    aget-object v7, v8, v3

    .line 274
    .line 275
    invoke-virtual {v7, v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setBrightness(F)V

    .line 276
    .line 277
    .line 278
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_a
    iget-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorAscendingForLux:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

    .line 282
    .line 283
    invoke-static {v8, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 284
    .line 285
    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const/4 v7, 0x0

    .line 299
    :goto_6
    if-ge v7, v0, :cond_b

    .line 300
    .line 301
    aget-object v9, v8, v7

    .line 302
    .line 303
    const-string v10, "%9s"

    .line 304
    .line 305
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    const/4 v11, 0x1

    .line 310
    invoke-static {v10, v9, v3, v7, v11}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    goto :goto_6

    .line 315
    :cond_b
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    new-instance v7, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string/jumbo v9, "lux sorted: "

    .line 325
    .line 326
    .line 327
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    const-string v7, "AdaptiveBrightnessLongtermModelBuilder"

    .line 342
    .line 343
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    new-array v3, v0, [F

    .line 347
    .line 348
    new-array v9, v0, [F

    .line 349
    .line 350
    iget-object v10, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    .line 351
    .line 352
    array-length v11, v10

    .line 353
    new-array v11, v11, [Z

    .line 354
    .line 355
    const/4 v12, 0x0

    .line 356
    :goto_7
    if-ge v12, v0, :cond_10

    .line 357
    .line 358
    aget-object v13, v8, v12

    .line 359
    .line 360
    invoke-virtual {v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    .line 361
    .line 362
    .line 363
    move-result v13

    .line 364
    aput v13, v3, v12

    .line 365
    .line 366
    aget-object v13, v8, v12

    .line 367
    .line 368
    invoke-virtual {v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    .line 369
    .line 370
    .line 371
    move-result v13

    .line 372
    aput v13, v9, v12

    .line 373
    .line 374
    iget-object v13, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMinimumBrightnessSpline:Landroid/util/Spline;

    .line 375
    .line 376
    aget v14, v3, v12

    .line 377
    .line 378
    invoke-virtual {v13, v14}, Landroid/util/Spline;->interpolate(F)F

    .line 379
    .line 380
    .line 381
    move-result v13

    .line 382
    iget-object v14, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessSpline:Landroid/util/Spline;

    .line 383
    .line 384
    aget v15, v3, v12

    .line 385
    .line 386
    invoke-virtual {v14, v15}, Landroid/util/Spline;->interpolate(F)F

    .line 387
    .line 388
    .line 389
    move-result v14

    .line 390
    aget v15, v9, v12

    .line 391
    .line 392
    invoke-static {v15, v13, v14}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 393
    .line 394
    .line 395
    move-result v15

    .line 396
    aget v4, v9, v12

    .line 397
    .line 398
    invoke-static {v4, v15}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    if-nez v4, :cond_f

    .line 403
    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    move/from16 p1, v0

    .line 407
    .line 408
    const-string/jumbo v0, "buildBrightnessConfiguration: "

    .line 409
    .line 410
    .line 411
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    aget v0, v3, v12

    .line 415
    .line 416
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v0, " lux, "

    .line 420
    .line 421
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    aget v0, v9, v12

    .line 425
    .line 426
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v0, " -> "

    .line 430
    .line 431
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v0, " nits Limit: ("

    .line 438
    .line 439
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    const-string v0, " ~ "

    .line 446
    .line 447
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string v0, ")"

    .line 454
    .line 455
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    aget v0, v9, v12

    .line 466
    .line 467
    cmpl-float v0, v0, v14

    .line 468
    .line 469
    if-lez v0, :cond_e

    .line 470
    .line 471
    const/4 v0, 0x0

    .line 472
    :goto_8
    iget-object v4, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitLux:[F

    .line 473
    .line 474
    array-length v13, v4

    .line 475
    if-ge v0, v13, :cond_e

    .line 476
    .line 477
    aget v4, v4, v0

    .line 478
    .line 479
    aget v13, v3, v12

    .line 480
    .line 481
    cmpl-float v4, v4, v13

    .line 482
    .line 483
    if-ltz v4, :cond_d

    .line 484
    .line 485
    aget-boolean v4, v11, v0

    .line 486
    .line 487
    if-eqz v4, :cond_c

    .line 488
    .line 489
    goto :goto_9

    .line 490
    :cond_c
    aget v4, v10, v0

    .line 491
    .line 492
    const/4 v13, 0x1

    .line 493
    add-int/2addr v4, v13

    .line 494
    aput v4, v10, v0

    .line 495
    .line 496
    aput-boolean v13, v11, v0

    .line 497
    .line 498
    goto :goto_9

    .line 499
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 500
    .line 501
    goto :goto_8

    .line 502
    :cond_e
    :goto_9
    aput v15, v9, v12

    .line 503
    .line 504
    goto :goto_a

    .line 505
    :cond_f
    move/from16 p1, v0

    .line 506
    .line 507
    :goto_a
    add-int/lit8 v12, v12, 0x1

    .line 508
    .line 509
    move/from16 v0, p1

    .line 510
    .line 511
    goto/16 :goto_7

    .line 512
    .line 513
    :cond_10
    :try_start_2
    new-instance v0, Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 514
    .line 515
    invoke-direct {v0, v3, v9}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 516
    .line 517
    .line 518
    const-string/jumbo v3, "sbs:0"

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0, v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    .line 525
    .line 526
    .line 527
    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 528
    move-object v8, v7

    .line 529
    goto :goto_b

    .line 530
    :catch_0
    move-exception v0

    .line 531
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 532
    .line 533
    .line 534
    const/4 v8, 0x0

    .line 535
    :goto_b
    if-eqz v8, :cond_14

    .line 536
    .line 537
    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 538
    .line 539
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 540
    .line 541
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    move-object v7, v0

    .line 546
    check-cast v7, Landroid/hardware/display/DisplayManager;

    .line 547
    .line 548
    new-instance v11, Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .line 552
    .line 553
    new-instance v12, Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .line 557
    .line 558
    new-instance v13, Ljava/util/ArrayList;

    .line 559
    .line 560
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .line 562
    .line 563
    const/4 v0, 0x0

    .line 564
    :goto_c
    array-length v1, v5

    .line 565
    if-ge v0, v1, :cond_11

    .line 566
    .line 567
    aget-object v1, v5, v0

    .line 568
    .line 569
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    add-int/lit8 v0, v0, 0x1

    .line 581
    .line 582
    goto :goto_c

    .line 583
    :cond_11
    const/4 v0, 0x0

    .line 584
    :goto_d
    array-length v1, v6

    .line 585
    if-ge v0, v1, :cond_12

    .line 586
    .line 587
    aget-object v1, v6, v0

    .line 588
    .line 589
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    add-int/lit8 v0, v0, 0x1

    .line 601
    .line 602
    goto :goto_d

    .line 603
    :cond_12
    const/4 v3, 0x0

    .line 604
    :goto_e
    array-length v0, v2

    .line 605
    if-ge v3, v0, :cond_13

    .line 606
    .line 607
    aget-object v0, v2, v3

    .line 608
    .line 609
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    add-int/lit8 v3, v3, 0x1

    .line 621
    .line 622
    goto :goto_e

    .line 623
    :cond_13
    const/4 v9, 0x0

    .line 624
    const-string/jumbo v10, "sbs"

    .line 625
    .line 626
    .line 627
    invoke-virtual/range {v7 .. v13}, Landroid/hardware/display/DisplayManager;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_11

    .line 631
    .line 632
    :cond_14
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 633
    .line 634
    const-string/jumbo v1, "handleShortTermModelValid: brightnessConfiguration is null"

    .line 635
    .line 636
    .line 637
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    goto/16 :goto_11

    .line 641
    .line 642
    :catchall_0
    move-exception v0

    .line 643
    monitor-exit v2

    .line 644
    throw v0

    .line 645
    :catchall_1
    move-exception v0

    .line 646
    monitor-exit v2

    .line 647
    throw v0

    .line 648
    :pswitch_3
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 649
    .line 650
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 651
    .line 652
    .line 653
    move-result v1

    .line 654
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 655
    .line 656
    iput v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    .line 657
    .line 658
    const-string v2, "Ambient Lux event "

    .line 659
    .line 660
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    .line 661
    .line 662
    monitor-enter v3

    .line 663
    :try_start_3
    const-string v4, "AdaptiveBrightnessLongtermModelBuilder"

    .line 664
    .line 665
    new-instance v5, Ljava/lang/StringBuilder;

    .line 666
    .line 667
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .line 679
    .line 680
    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    .line 681
    .line 682
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 683
    .line 684
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 688
    .line 689
    .line 690
    move-result-wide v4

    .line 691
    iput-wide v4, v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->timestamp:J

    .line 692
    .line 693
    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    .line 694
    .line 695
    iput v1, v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->lux:F

    .line 696
    .line 697
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 698
    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    .line 699
    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    const-string/jumbo v4, "handleAmbientLuxChanged: ambientLux: "

    .line 703
    .line 704
    .line 705
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .line 717
    .line 718
    const/4 v2, 0x0

    .line 719
    invoke-virtual {v0, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateAdaptiveBrightnessStats(Z)V

    .line 720
    .line 721
    .line 722
    goto/16 :goto_11

    .line 723
    .line 724
    :catchall_2
    move-exception v0

    .line 725
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 726
    throw v0

    .line 727
    :pswitch_4
    move v2, v3

    .line 728
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 729
    .line 730
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 731
    .line 732
    check-cast v1, Landroid/hardware/display/BrightnessConfiguration;

    .line 733
    .line 734
    iput-object v1, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 735
    .line 736
    if-eqz v1, :cond_15

    .line 737
    .line 738
    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    .line 739
    .line 740
    .line 741
    move-result v1

    .line 742
    if-eqz v1, :cond_15

    .line 743
    .line 744
    const/4 v3, 0x1

    .line 745
    goto :goto_f

    .line 746
    :cond_15
    move v3, v2

    .line 747
    :goto_f
    if-eqz v3, :cond_16

    .line 748
    .line 749
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 750
    .line 751
    iget-boolean v2, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 752
    .line 753
    if-nez v2, :cond_16

    .line 754
    .line 755
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V

    .line 756
    .line 757
    .line 758
    goto :goto_11

    .line 759
    :cond_16
    if-nez v3, :cond_18

    .line 760
    .line 761
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 762
    .line 763
    iget-boolean v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 764
    .line 765
    if-eqz v1, :cond_18

    .line 766
    .line 767
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V

    .line 768
    .line 769
    .line 770
    goto :goto_11

    .line 771
    :pswitch_5
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 772
    .line 773
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->startAdaptiveBrightnessStatsTracker()V

    .line 774
    .line 775
    .line 776
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 777
    .line 778
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V

    .line 779
    .line 780
    .line 781
    goto :goto_11

    .line 782
    :pswitch_6
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 783
    .line 784
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stopAdaptiveBrightnessStatsTracker()V

    .line 785
    .line 786
    .line 787
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 788
    .line 789
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V

    .line 790
    .line 791
    .line 792
    goto :goto_11

    .line 793
    :pswitch_7
    move v2, v3

    .line 794
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 795
    .line 796
    check-cast v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;

    .line 797
    .line 798
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 799
    .line 800
    const/4 v4, 0x1

    .line 801
    if-ne v1, v4, :cond_17

    .line 802
    .line 803
    move v7, v4

    .line 804
    goto :goto_10

    .line 805
    :cond_17
    move v7, v2

    .line 806
    :goto_10
    iget-object v5, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 807
    .line 808
    iget v6, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->brightness:F

    .line 809
    .line 810
    iget v8, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->powerBrightnessFactor:F

    .line 811
    .line 812
    iget-boolean v9, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->isUserSetBrightness:Z

    .line 813
    .line 814
    iget-boolean v10, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    .line 815
    .line 816
    iget-wide v11, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->timestamp:J

    .line 817
    .line 818
    iget-object v13, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    .line 819
    .line 820
    iget-object v14, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->brightnessSpline:Landroid/util/Spline;

    .line 821
    .line 822
    invoke-static/range {v5 .. v14}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mhandleBrightnessChanged(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;FZFZZJLjava/lang/String;Landroid/util/Spline;)V

    .line 823
    .line 824
    .line 825
    goto :goto_11

    .line 826
    :pswitch_8
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 827
    .line 828
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 829
    .line 830
    check-cast v1, Ljava/lang/Float;

    .line 831
    .line 832
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 833
    .line 834
    .line 835
    move-result v1

    .line 836
    invoke-static {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mbackgroundStart(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;F)V

    .line 837
    .line 838
    .line 839
    :cond_18
    :goto_11
    return-void

    .line 840
    nop

    .line 841
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
