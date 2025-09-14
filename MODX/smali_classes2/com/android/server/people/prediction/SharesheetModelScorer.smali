.class public abstract Lcom/android/server/people/prediction/SharesheetModelScorer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FOREGROUND_APP_PROMO_TIME_WINDOW:J

.field static final FOREGROUND_APP_WEIGHT:F

.field public static final ONE_MONTH_WINDOW:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1e

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->ONE_MONTH_WINDOW:J

    .line 10
    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    const-wide/16 v1, 0xa

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    sput-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->FOREGROUND_APP_PROMO_TIME_WINDOW:J

    .line 20
    .line 21
    return-void
.end method

.method public static computeScore(Ljava/util/List;IJ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/PriorityQueue;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x6

    .line 24
    invoke-direct {v1, v3, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v6, 0x0

    .line 41
    move v7, v6

    .line 42
    move v10, v7

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    if-eqz v11, :cond_c

    .line 50
    .line 51
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    check-cast v11, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 56
    .line 57
    new-instance v12, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    .line 58
    .line 59
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    iput v6, v12, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    .line 63
    .line 64
    iput v6, v12, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    .line 65
    .line 66
    iput v6, v12, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    .line 67
    .line 68
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v11}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    if-nez v13, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    sget-object v14, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    .line 83
    .line 84
    invoke-interface {v13, v14}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    invoke-virtual {v13}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlots()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    if-nez v14, :cond_3

    .line 97
    .line 98
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    if-eqz v14, :cond_2

    .line 107
    .line 108
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    check-cast v14, Landroid/util/Range;

    .line 113
    .line 114
    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 115
    .line 116
    .line 117
    move-result-object v14

    .line 118
    check-cast v14, Ljava/lang/Long;

    .line 119
    .line 120
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 121
    .line 122
    .line 123
    move-result-wide v14

    .line 124
    sub-long v14, p2, v14

    .line 125
    .line 126
    invoke-static {v14, v15}, Lcom/android/server/people/prediction/SharesheetModelScorer;->getFreqDecayedOnElapsedTime(J)F

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    iget v15, v12, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    .line 131
    .line 132
    add-float/2addr v15, v14

    .line 133
    iput v15, v12, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    iget v13, v12, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    .line 137
    .line 138
    add-float/2addr v7, v13

    .line 139
    add-int/lit8 v8, v8, 0x1

    .line 140
    .line 141
    :cond_3
    invoke-virtual {v11}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    move/from16 v14, p1

    .line 146
    .line 147
    invoke-interface {v13, v14}, Lcom/android/server/people/data/EventHistory;->getEventIndex(I)Lcom/android/server/people/data/EventIndex;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    invoke-virtual {v13}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlots()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v15

    .line 159
    if-nez v15, :cond_5

    .line 160
    .line 161
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    if-eqz v15, :cond_4

    .line 170
    .line 171
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v15

    .line 175
    check-cast v15, Landroid/util/Range;

    .line 176
    .line 177
    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 178
    .line 179
    .line 180
    move-result-object v15

    .line 181
    check-cast v15, Ljava/lang/Long;

    .line 182
    .line 183
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 184
    .line 185
    .line 186
    move-result-wide v15

    .line 187
    sub-long v15, p2, v15

    .line 188
    .line 189
    invoke-static/range {v15 .. v16}, Lcom/android/server/people/prediction/SharesheetModelScorer;->getFreqDecayedOnElapsedTime(J)F

    .line 190
    .line 191
    .line 192
    move-result v15

    .line 193
    iget v5, v12, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    .line 194
    .line 195
    add-float/2addr v5, v15

    .line 196
    iput v5, v12, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_4
    iget v5, v12, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    .line 200
    .line 201
    add-float/2addr v10, v5

    .line 202
    add-int/lit8 v9, v9, 0x1

    .line 203
    .line 204
    :cond_5
    invoke-virtual {v11}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    sget-object v11, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    .line 209
    .line 210
    invoke-interface {v5, v11}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    iget-object v11, v5, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    .line 215
    .line 216
    monitor-enter v11

    .line 217
    const/4 v13, 0x3

    .line 218
    :goto_3
    if-ltz v13, :cond_7

    .line 219
    .line 220
    :try_start_0
    iget-object v15, v5, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 221
    .line 222
    aget-wide v15, v15, v13

    .line 223
    .line 224
    const-wide/16 v17, 0x0

    .line 225
    .line 226
    cmp-long v15, v15, v17

    .line 227
    .line 228
    if-nez v15, :cond_6

    .line 229
    .line 230
    add-int/lit8 v13, v13, -0x1

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_6
    sget-object v15, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    .line 234
    .line 235
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v15

    .line 239
    check-cast v15, Ljava/util/function/Function;

    .line 240
    .line 241
    move/from16 v17, v7

    .line 242
    .line 243
    iget-wide v6, v5, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 244
    .line 245
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-interface {v15, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    check-cast v6, Landroid/util/Range;

    .line 254
    .line 255
    iget-object v5, v5, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 256
    .line 257
    aget-wide v18, v5, v13

    .line 258
    .line 259
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    invoke-static {v6}, Lcom/android/server/people/data/EventIndex;->getDuration(Landroid/util/Range;)J

    .line 264
    .line 265
    .line 266
    move-result-wide v18

    .line 267
    move-object v15, v4

    .line 268
    int-to-long v3, v5

    .line 269
    mul-long v18, v18, v3

    .line 270
    .line 271
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    check-cast v3, Ljava/lang/Long;

    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 278
    .line 279
    .line 280
    move-result-wide v3

    .line 281
    sub-long v3, v3, v18

    .line 282
    .line 283
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    check-cast v4, Ljava/lang/Long;

    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 294
    .line 295
    .line 296
    move-result-wide v4

    .line 297
    sub-long v4, v4, v18

    .line 298
    .line 299
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-static {v3, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    monitor-exit v11

    .line 308
    goto :goto_4

    .line 309
    :catchall_0
    move-exception v0

    .line 310
    goto :goto_6

    .line 311
    :cond_7
    move-object v15, v4

    .line 312
    move/from16 v17, v7

    .line 313
    .line 314
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    const/4 v3, 0x0

    .line 316
    :goto_4
    if-nez v3, :cond_9

    .line 317
    .line 318
    :cond_8
    const/4 v5, 0x6

    .line 319
    goto :goto_5

    .line 320
    :cond_9
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    const/4 v5, 0x6

    .line 325
    if-lt v4, v5, :cond_a

    .line 326
    .line 327
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    check-cast v4, Ljava/lang/Long;

    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 334
    .line 335
    .line 336
    move-result-wide v4

    .line 337
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    check-cast v6, Landroid/util/Pair;

    .line 342
    .line 343
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v6, Landroid/util/Range;

    .line 346
    .line 347
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    check-cast v6, Ljava/lang/Long;

    .line 352
    .line 353
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 354
    .line 355
    .line 356
    move-result-wide v6

    .line 357
    cmp-long v4, v4, v6

    .line 358
    .line 359
    if-lez v4, :cond_8

    .line 360
    .line 361
    :cond_a
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    const/4 v5, 0x6

    .line 366
    if-ne v4, v5, :cond_b

    .line 367
    .line 368
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    :cond_b
    new-instance v4, Landroid/util/Pair;

    .line 372
    .line 373
    invoke-direct {v4, v12, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v4}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    :goto_5
    move v3, v5

    .line 380
    move-object v4, v15

    .line 381
    move/from16 v7, v17

    .line 382
    .line 383
    const/4 v6, 0x0

    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :goto_6
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    throw v0

    .line 388
    :cond_c
    :goto_7
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-nez v3, :cond_e

    .line 393
    .line 394
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    const/4 v4, 0x1

    .line 399
    if-le v3, v4, :cond_d

    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    add-int/lit8 v3, v3, -0x2

    .line 406
    .line 407
    int-to-float v3, v3

    .line 408
    const v4, 0x3ca3d70a    # 0.02f

    .line 409
    .line 410
    .line 411
    mul-float/2addr v3, v4

    .line 412
    const v4, 0x3eb33333    # 0.35f

    .line 413
    .line 414
    .line 415
    sub-float/2addr v4, v3

    .line 416
    goto :goto_8

    .line 417
    :cond_d
    const v4, 0x3ecccccd    # 0.4f

    .line 418
    .line 419
    .line 420
    :goto_8
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    check-cast v3, Landroid/util/Pair;

    .line 425
    .line 426
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v3, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    .line 429
    .line 430
    iput v4, v3, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    .line 431
    .line 432
    goto :goto_7

    .line 433
    :cond_e
    if-eqz v8, :cond_f

    .line 434
    .line 435
    int-to-float v1, v8

    .line 436
    div-float v1, v7, v1

    .line 437
    .line 438
    goto :goto_9

    .line 439
    :cond_f
    const/4 v1, 0x0

    .line 440
    :goto_9
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    if-eqz v9, :cond_10

    .line 445
    .line 446
    int-to-float v4, v9

    .line 447
    div-float v4, v10, v4

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_10
    const/4 v4, 0x0

    .line 451
    :goto_a
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    const/4 v6, 0x0

    .line 456
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 457
    .line 458
    .line 459
    move-result v7

    .line 460
    if-ge v6, v7, :cond_1a

    .line 461
    .line 462
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v7

    .line 466
    check-cast v7, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 467
    .line 468
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v8

    .line 472
    check-cast v8, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    .line 473
    .line 474
    const/4 v9, 0x0

    .line 475
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 476
    .line 477
    .line 478
    move-result-object v10

    .line 479
    invoke-virtual {v3, v10}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v9

    .line 483
    const-wide/16 v10, 0x0

    .line 484
    .line 485
    if-eqz v9, :cond_11

    .line 486
    .line 487
    move-wide v12, v10

    .line 488
    goto :goto_c

    .line 489
    :cond_11
    iget v9, v8, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    .line 490
    .line 491
    div-float/2addr v9, v1

    .line 492
    float-to-double v12, v9

    .line 493
    :goto_c
    const-wide/high16 v14, 0x4004000000000000L    # 2.5

    .line 494
    .line 495
    cmpl-double v9, v12, v14

    .line 496
    .line 497
    const v14, 0x3dcccccd    # 0.1f

    .line 498
    .line 499
    .line 500
    const v15, 0x3e19999a    # 0.15f

    .line 501
    .line 502
    .line 503
    const v17, 0x3e4ccccd    # 0.2f

    .line 504
    .line 505
    .line 506
    if-ltz v9, :cond_12

    .line 507
    .line 508
    move/from16 v9, v17

    .line 509
    .line 510
    goto :goto_d

    .line 511
    :cond_12
    const-wide/high16 v18, 0x3ff8000000000000L    # 1.5

    .line 512
    .line 513
    cmpl-double v9, v12, v18

    .line 514
    .line 515
    if-ltz v9, :cond_13

    .line 516
    .line 517
    move v9, v15

    .line 518
    goto :goto_d

    .line 519
    :cond_13
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 520
    .line 521
    cmpl-double v9, v12, v18

    .line 522
    .line 523
    if-ltz v9, :cond_14

    .line 524
    .line 525
    move v9, v14

    .line 526
    goto :goto_d

    .line 527
    :cond_14
    const-wide/high16 v18, 0x3fe8000000000000L    # 0.75

    .line 528
    .line 529
    cmpl-double v9, v12, v18

    .line 530
    .line 531
    if-ltz v9, :cond_15

    .line 532
    .line 533
    const v9, 0x3d4ccccd    # 0.05f

    .line 534
    .line 535
    .line 536
    goto :goto_d

    .line 537
    :cond_15
    const/4 v9, 0x0

    .line 538
    :goto_d
    iput v9, v8, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    .line 539
    .line 540
    const/4 v9, 0x0

    .line 541
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 542
    .line 543
    .line 544
    move-result-object v12

    .line 545
    invoke-virtual {v5, v12}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v12

    .line 549
    if-eqz v12, :cond_16

    .line 550
    .line 551
    move-wide v12, v10

    .line 552
    goto :goto_e

    .line 553
    :cond_16
    iget v12, v8, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    .line 554
    .line 555
    div-float/2addr v12, v4

    .line 556
    float-to-double v12, v12

    .line 557
    :goto_e
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    .line 558
    .line 559
    cmpl-double v16, v12, v18

    .line 560
    .line 561
    if-ltz v16, :cond_17

    .line 562
    .line 563
    move/from16 v14, v17

    .line 564
    .line 565
    goto :goto_f

    .line 566
    :cond_17
    const-wide v16, 0x3ff3333333333333L    # 1.2

    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    cmpl-double v16, v12, v16

    .line 572
    .line 573
    if-ltz v16, :cond_18

    .line 574
    .line 575
    move v14, v15

    .line 576
    goto :goto_f

    .line 577
    :cond_18
    cmpl-double v10, v12, v10

    .line 578
    .line 579
    if-lez v10, :cond_19

    .line 580
    .line 581
    goto :goto_f

    .line 582
    :cond_19
    move v14, v9

    .line 583
    :goto_f
    iput v14, v8, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    .line 584
    .line 585
    iget v10, v8, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    .line 586
    .line 587
    iget v8, v8, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    .line 588
    .line 589
    const/high16 v11, 0x3f800000    # 1.0f

    .line 590
    .line 591
    sub-float v10, v11, v10

    .line 592
    .line 593
    sub-float v8, v11, v8

    .line 594
    .line 595
    mul-float/2addr v8, v10

    .line 596
    sub-float v8, v11, v8

    .line 597
    .line 598
    sub-float v8, v11, v8

    .line 599
    .line 600
    sub-float v10, v11, v14

    .line 601
    .line 602
    mul-float/2addr v10, v8

    .line 603
    sub-float/2addr v11, v10

    .line 604
    invoke-virtual {v7, v11}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    .line 605
    .line 606
    .line 607
    add-int/lit8 v6, v6, 0x1

    .line 608
    .line 609
    goto/16 :goto_b

    .line 610
    .line 611
    :cond_1a
    return-void
.end method

.method public static getFreqDecayedOnElapsedTime(J)F
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x1

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-gtz p1, :cond_0

    .line 16
    .line 17
    const/high16 p0, 0x3f800000    # 1.0f

    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    const-wide/16 v0, 0x3

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-gtz p1, :cond_1

    .line 31
    .line 32
    const p0, 0x3f666666    # 0.9f

    .line 33
    .line 34
    .line 35
    return p0

    .line 36
    :cond_1
    const-wide/16 v0, 0x7

    .line 37
    .line 38
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-gtz p1, :cond_2

    .line 47
    .line 48
    const p0, 0x3f4ccccd    # 0.8f

    .line 49
    .line 50
    .line 51
    return p0

    .line 52
    :cond_2
    const-wide/16 v0, 0xe

    .line 53
    .line 54
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-gtz p0, :cond_3

    .line 63
    .line 64
    const p0, 0x3f333333    # 0.7f

    .line 65
    .line 66
    .line 67
    return p0

    .line 68
    :cond_3
    const p0, 0x3f19999a    # 0.6f

    .line 69
    .line 70
    .line 71
    return p0
.end method

.method public static promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F
    .locals 6

    .line 1
    check-cast p1, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/people/data/AppUsageStatsData;

    .line 24
    .line 25
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-lez v2, :cond_4

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    move-object v4, p0

    .line 67
    check-cast v4, Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/4 v5, 0x0

    .line 97
    cmpl-float v4, v4, v5

    .line 98
    .line 99
    if-lez v4, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/android/server/people/data/AppUsageStatsData;

    .line 107
    .line 108
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    int-to-float v0, v0

    .line 119
    mul-float/2addr v0, p3

    .line 120
    int-to-float v4, v2

    .line 121
    div-float/2addr v0, v4

    .line 122
    invoke-virtual {v3, v0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    .line 123
    .line 124
    .line 125
    cmpl-float v3, v0, v5

    .line 126
    .line 127
    if-lez v3, :cond_1

    .line 128
    .line 129
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    .line 130
    .line 131
    .line 132
    move-result p4

    .line 133
    goto :goto_1

    .line 134
    :cond_4
    return p4
.end method
