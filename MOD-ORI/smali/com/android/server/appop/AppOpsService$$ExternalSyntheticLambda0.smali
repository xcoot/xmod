.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/DodecConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 27

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    iget v2, v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    check-cast v2, Lcom/android/server/appop/AppOpsService;

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    check-cast v3, Landroid/util/ArraySet;

    .line 15
    .line 16
    move-object/from16 v4, p3

    .line 17
    .line 18
    check-cast v4, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    move-object/from16 v5, p4

    .line 25
    .line 26
    check-cast v5, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    move-object/from16 v6, p5

    .line 33
    .line 34
    check-cast v6, Ljava/lang/String;

    .line 35
    .line 36
    move-object/from16 v7, p6

    .line 37
    .line 38
    check-cast v7, Ljava/lang/String;

    .line 39
    .line 40
    move-object/from16 v8, p7

    .line 41
    .line 42
    check-cast v8, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    move-object/from16 v9, p8

    .line 49
    .line 50
    check-cast v9, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    move-object/from16 v10, p9

    .line 57
    .line 58
    check-cast v10, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    move-object/from16 v11, p10

    .line 65
    .line 66
    check-cast v11, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    move-object/from16 v12, p11

    .line 73
    .line 74
    check-cast v12, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    move-object/from16 v13, p12

    .line 81
    .line 82
    check-cast v13, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 92
    .line 93
    .line 94
    move-result-wide v14

    .line 95
    :try_start_0
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const/4 v1, 0x0

    .line 100
    :goto_0
    if-ge v1, v0, :cond_1

    .line 101
    .line 102
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v16

    .line 106
    move/from16 p11, v0

    .line 107
    .line 108
    move-object/from16 v0, v16

    .line 109
    .line 110
    check-cast v0, Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    .line 112
    move-object/from16 v17, v3

    .line 113
    .line 114
    :try_start_1
    iget v3, v0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingPid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .line 116
    move-wide/from16 v18, v14

    .line 117
    .line 118
    :try_start_2
    iget v14, v0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingUid:I

    .line 119
    .line 120
    invoke-virtual {v2, v4, v3, v14}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_0

    .line 125
    .line 126
    :catch_0
    :goto_1
    const/4 v0, 0x1

    .line 127
    goto :goto_2

    .line 128
    :cond_0
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

    .line 129
    .line 130
    move-object/from16 p0, v0

    .line 131
    .line 132
    move/from16 p1, v4

    .line 133
    .line 134
    move/from16 p2, v5

    .line 135
    .line 136
    move-object/from16 p3, v6

    .line 137
    .line 138
    move-object/from16 p4, v7

    .line 139
    .line 140
    move/from16 p5, v8

    .line 141
    .line 142
    move/from16 p6, v9

    .line 143
    .line 144
    move/from16 p7, v10

    .line 145
    .line 146
    move/from16 p8, v11

    .line 147
    .line 148
    move/from16 p9, v12

    .line 149
    .line 150
    move/from16 p10, v13

    .line 151
    .line 152
    invoke-interface/range {p0 .. p10}, Lcom/android/internal/app/IAppOpsStartedCallback;->opStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    goto :goto_3

    .line 158
    :catchall_1
    move-exception v0

    .line 159
    move-wide/from16 v18, v14

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :catch_1
    move-wide/from16 v18, v14

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :goto_2
    add-int/2addr v1, v0

    .line 166
    move/from16 v0, p11

    .line 167
    .line 168
    move-object/from16 v3, v17

    .line 169
    .line 170
    move-wide/from16 v14, v18

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_1
    move-wide/from16 v18, v14

    .line 174
    .line 175
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :goto_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :pswitch_0
    move-object/from16 v0, p1

    .line 184
    .line 185
    check-cast v0, Lcom/android/server/appop/HistoricalRegistry;

    .line 186
    .line 187
    move-object/from16 v1, p2

    .line 188
    .line 189
    check-cast v1, Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    move-object/from16 v2, p3

    .line 196
    .line 197
    check-cast v2, Ljava/lang/String;

    .line 198
    .line 199
    move-object/from16 v3, p4

    .line 200
    .line 201
    check-cast v3, Ljava/lang/String;

    .line 202
    .line 203
    move-object/from16 v4, p5

    .line 204
    .line 205
    check-cast v4, [Ljava/lang/String;

    .line 206
    .line 207
    move-object/from16 v5, p6

    .line 208
    .line 209
    check-cast v5, Ljava/lang/Integer;

    .line 210
    .line 211
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    move-object/from16 v6, p7

    .line 216
    .line 217
    check-cast v6, Ljava/lang/Integer;

    .line 218
    .line 219
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    move-object/from16 v7, p8

    .line 224
    .line 225
    check-cast v7, Ljava/lang/Long;

    .line 226
    .line 227
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 228
    .line 229
    .line 230
    move-result-wide v7

    .line 231
    move-object/from16 v9, p9

    .line 232
    .line 233
    check-cast v9, Ljava/lang/Long;

    .line 234
    .line 235
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 236
    .line 237
    .line 238
    move-result-wide v9

    .line 239
    move-object/from16 v11, p10

    .line 240
    .line 241
    check-cast v11, Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    move-object/from16 v12, p11

    .line 248
    .line 249
    check-cast v12, [Ljava/lang/String;

    .line 250
    .line 251
    move-object/from16 v13, p12

    .line 252
    .line 253
    check-cast v13, Landroid/os/RemoteCallback;

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 259
    .line 260
    .line 261
    move-result-wide v14

    .line 262
    const-wide v17, 0x7fffffffffffffffL

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    cmp-long v17, v9, v17

    .line 268
    .line 269
    if-nez v17, :cond_2

    .line 270
    .line 271
    move-object/from16 v17, v13

    .line 272
    .line 273
    move-wide v9, v14

    .line 274
    goto :goto_4

    .line 275
    :cond_2
    move-object/from16 v17, v13

    .line 276
    .line 277
    :goto_4
    new-instance v13, Landroid/os/Bundle;

    .line 278
    .line 279
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 280
    .line 281
    .line 282
    move-object/from16 v18, v3

    .line 283
    .line 284
    move-object/from16 v19, v4

    .line 285
    .line 286
    sub-long v3, v14, v9

    .line 287
    .line 288
    move/from16 v20, v1

    .line 289
    .line 290
    move-object/from16 v21, v2

    .line 291
    .line 292
    const-wide/16 v1, 0x0

    .line 293
    .line 294
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 295
    .line 296
    .line 297
    move-result-wide v3

    .line 298
    move-wide/from16 v22, v9

    .line 299
    .line 300
    sub-long v9, v14, v7

    .line 301
    .line 302
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 303
    .line 304
    .line 305
    move-result-wide v9

    .line 306
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 307
    .line 308
    invoke-direct {v1, v3, v4, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 309
    .line 310
    .line 311
    and-int/lit8 v2, v5, 0x2

    .line 312
    .line 313
    if-eqz v2, :cond_3

    .line 314
    .line 315
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 316
    .line 317
    move-object/from16 v24, v13

    .line 318
    .line 319
    new-instance v13, Landroid/util/ArraySet;

    .line 320
    .line 321
    invoke-direct {v13, v12}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    move-object/from16 p0, v2

    .line 325
    .line 326
    move-object/from16 p1, v1

    .line 327
    .line 328
    move-wide/from16 p2, v7

    .line 329
    .line 330
    move-wide/from16 p4, v22

    .line 331
    .line 332
    move/from16 p6, v6

    .line 333
    .line 334
    move/from16 p7, v20

    .line 335
    .line 336
    move-object/from16 p8, v21

    .line 337
    .line 338
    move-object/from16 p9, v19

    .line 339
    .line 340
    move-object/from16 p10, v18

    .line 341
    .line 342
    move/from16 p11, v11

    .line 343
    .line 344
    move-object/from16 p12, v13

    .line 345
    .line 346
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/appop/DiscreteRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 347
    .line 348
    .line 349
    :goto_5
    const/4 v2, 0x1

    .line 350
    goto :goto_6

    .line 351
    :cond_3
    move-object/from16 v24, v13

    .line 352
    .line 353
    goto :goto_5

    .line 354
    :goto_6
    and-int/lit8 v12, v5, 0x1

    .line 355
    .line 356
    if-eqz v12, :cond_8

    .line 357
    .line 358
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 359
    .line 360
    monitor-enter v2

    .line 361
    :try_start_3
    iget-object v12, v0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 362
    .line 363
    monitor-enter v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 364
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    .line 365
    .line 366
    .line 367
    move-result v13

    .line 368
    if-nez v13, :cond_4

    .line 369
    .line 370
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 371
    .line 372
    const-string v1, "Interaction before persistence initialized"

    .line 373
    .line 374
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    new-instance v0, Landroid/os/Bundle;

    .line 378
    .line 379
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    .line 381
    .line 382
    move-object/from16 v13, v17

    .line 383
    .line 384
    invoke-virtual {v13, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 385
    .line 386
    .line 387
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 388
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 389
    goto/16 :goto_d

    .line 390
    .line 391
    :catchall_2
    move-exception v0

    .line 392
    goto/16 :goto_b

    .line 393
    .line 394
    :catchall_3
    move-exception v0

    .line 395
    goto/16 :goto_a

    .line 396
    .line 397
    :cond_4
    :try_start_6
    invoke-virtual {v0, v14, v15}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    .line 398
    .line 399
    .line 400
    move-result-object v13

    .line 401
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 402
    .line 403
    .line 404
    move-result-wide v25

    .line 405
    cmp-long v25, v3, v25

    .line 406
    .line 407
    if-gez v25, :cond_5

    .line 408
    .line 409
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    .line 410
    .line 411
    .line 412
    move-result-wide v25

    .line 413
    cmp-long v25, v9, v25

    .line 414
    .line 415
    if-lez v25, :cond_5

    .line 416
    .line 417
    move-wide/from16 v25, v7

    .line 418
    .line 419
    new-instance v7, Landroid/app/AppOpsManager$HistoricalOps;

    .line 420
    .line 421
    invoke-direct {v7, v13}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 422
    .line 423
    .line 424
    move-object/from16 p0, v7

    .line 425
    .line 426
    move/from16 p1, v20

    .line 427
    .line 428
    move-object/from16 p2, v21

    .line 429
    .line 430
    move-object/from16 p3, v18

    .line 431
    .line 432
    move-object/from16 p4, v19

    .line 433
    .line 434
    move/from16 p5, v5

    .line 435
    .line 436
    move/from16 p6, v6

    .line 437
    .line 438
    move-wide/from16 p7, v3

    .line 439
    .line 440
    move-wide/from16 p9, v9

    .line 441
    .line 442
    invoke-virtual/range {p0 .. p10}, Landroid/app/AppOpsManager$HistoricalOps;->filter(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJ)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 446
    .line 447
    .line 448
    goto :goto_7

    .line 449
    :cond_5
    move-wide/from16 v25, v7

    .line 450
    .line 451
    :goto_7
    new-instance v5, Ljava/util/ArrayList;

    .line 452
    .line 453
    iget-object v7, v0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 454
    .line 455
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 456
    .line 457
    .line 458
    iget-object v7, v0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 459
    .line 460
    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 464
    .line 465
    .line 466
    move-result-wide v7

    .line 467
    cmp-long v7, v9, v7

    .line 468
    .line 469
    if-lez v7, :cond_6

    .line 470
    .line 471
    const/4 v7, 0x1

    .line 472
    goto :goto_8

    .line 473
    :cond_6
    const/4 v7, 0x0

    .line 474
    :goto_8
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 475
    if-eqz v7, :cond_7

    .line 476
    .line 477
    :try_start_7
    invoke-virtual {v0, v5}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 478
    .line 479
    .line 480
    iget-wide v7, v0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 481
    .line 482
    sub-long/2addr v14, v7

    .line 483
    iget-wide v7, v0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 484
    .line 485
    add-long/2addr v14, v7

    .line 486
    sub-long/2addr v3, v14

    .line 487
    const-wide/16 v7, 0x0

    .line 488
    .line 489
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 490
    .line 491
    .line 492
    move-result-wide v3

    .line 493
    sub-long/2addr v9, v14

    .line 494
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 495
    .line 496
    .line 497
    move-result-wide v7

    .line 498
    iget-object v0, v0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 499
    .line 500
    sget-object v5, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 501
    .line 502
    move-object/from16 p0, v0

    .line 503
    .line 504
    move/from16 p1, v20

    .line 505
    .line 506
    move-object/from16 p2, v21

    .line 507
    .line 508
    move-object/from16 p3, v18

    .line 509
    .line 510
    move-object/from16 p4, v19

    .line 511
    .line 512
    move/from16 p5, v6

    .line 513
    .line 514
    move-wide/from16 p6, v3

    .line 515
    .line 516
    move-wide/from16 p8, v7

    .line 517
    .line 518
    move/from16 p10, v11

    .line 519
    .line 520
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    if-eqz v0, :cond_7

    .line 525
    .line 526
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    const/4 v4, 0x0

    .line 531
    :goto_9
    if-ge v4, v3, :cond_7

    .line 532
    .line 533
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    .line 538
    .line 539
    invoke-virtual {v1, v5}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 540
    .line 541
    .line 542
    const/4 v5, 0x1

    .line 543
    add-int/2addr v4, v5

    .line 544
    goto :goto_9

    .line 545
    :cond_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 546
    move-wide/from16 v9, v22

    .line 547
    .line 548
    move-wide/from16 v2, v25

    .line 549
    .line 550
    goto :goto_c

    .line 551
    :goto_a
    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 552
    :try_start_9
    throw v0

    .line 553
    :goto_b
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 554
    throw v0

    .line 555
    :cond_8
    move-wide v2, v7

    .line 556
    move-wide/from16 v9, v22

    .line 557
    .line 558
    :goto_c
    invoke-virtual {v1, v2, v3, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 559
    .line 560
    .line 561
    const-string/jumbo v0, "historical_ops"

    .line 562
    .line 563
    .line 564
    move-object/from16 v2, v24

    .line 565
    .line 566
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 567
    .line 568
    .line 569
    move-object/from16 v0, v17

    .line 570
    .line 571
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 572
    .line 573
    .line 574
    :goto_d
    return-void

    .line 575
    :pswitch_1
    move-object/from16 v0, p1

    .line 576
    .line 577
    check-cast v0, Lcom/android/server/appop/HistoricalRegistry;

    .line 578
    .line 579
    move-object/from16 v1, p2

    .line 580
    .line 581
    check-cast v1, Ljava/lang/Integer;

    .line 582
    .line 583
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    move-object/from16 v2, p3

    .line 588
    .line 589
    check-cast v2, Ljava/lang/String;

    .line 590
    .line 591
    move-object/from16 v3, p4

    .line 592
    .line 593
    check-cast v3, Ljava/lang/String;

    .line 594
    .line 595
    move-object/from16 v4, p5

    .line 596
    .line 597
    check-cast v4, [Ljava/lang/String;

    .line 598
    .line 599
    move-object/from16 v5, p6

    .line 600
    .line 601
    check-cast v5, Ljava/lang/Integer;

    .line 602
    .line 603
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 604
    .line 605
    .line 606
    move-result v5

    .line 607
    move-object/from16 v6, p7

    .line 608
    .line 609
    check-cast v6, Ljava/lang/Integer;

    .line 610
    .line 611
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 612
    .line 613
    .line 614
    move-result v6

    .line 615
    move-object/from16 v7, p8

    .line 616
    .line 617
    check-cast v7, Ljava/lang/Long;

    .line 618
    .line 619
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 620
    .line 621
    .line 622
    move-result-wide v7

    .line 623
    move-object/from16 v9, p9

    .line 624
    .line 625
    check-cast v9, Ljava/lang/Long;

    .line 626
    .line 627
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 628
    .line 629
    .line 630
    move-result-wide v9

    .line 631
    move-object/from16 v11, p10

    .line 632
    .line 633
    check-cast v11, Ljava/lang/Integer;

    .line 634
    .line 635
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 636
    .line 637
    .line 638
    move-result v11

    .line 639
    move-object/from16 v12, p11

    .line 640
    .line 641
    check-cast v12, [Ljava/lang/String;

    .line 642
    .line 643
    move-object/from16 v13, p12

    .line 644
    .line 645
    check-cast v13, Landroid/os/RemoteCallback;

    .line 646
    .line 647
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    .line 649
    .line 650
    new-instance v14, Landroid/app/AppOpsManager$HistoricalOps;

    .line 651
    .line 652
    invoke-direct {v14, v7, v8, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 653
    .line 654
    .line 655
    const/4 v15, 0x1

    .line 656
    and-int/lit8 v17, v5, 0x1

    .line 657
    .line 658
    if-eqz v17, :cond_c

    .line 659
    .line 660
    iget-object v15, v0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 661
    .line 662
    monitor-enter v15

    .line 663
    move-object/from16 p11, v12

    .line 664
    .line 665
    :try_start_a
    iget-object v12, v0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 666
    .line 667
    monitor-enter v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 668
    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    .line 669
    .line 670
    .line 671
    move-result v17

    .line 672
    if-nez v17, :cond_9

    .line 673
    .line 674
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 675
    .line 676
    const-string v1, "Interaction before persistence initialized"

    .line 677
    .line 678
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .line 680
    .line 681
    new-instance v0, Landroid/os/Bundle;

    .line 682
    .line 683
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v13, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 687
    .line 688
    .line 689
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 690
    :try_start_c
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 691
    goto/16 :goto_12

    .line 692
    .line 693
    :catchall_4
    move-exception v0

    .line 694
    goto :goto_10

    .line 695
    :catchall_5
    move-exception v0

    .line 696
    goto :goto_f

    .line 697
    :cond_9
    :try_start_d
    monitor-exit v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 698
    :try_start_e
    iget-object v12, v0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 699
    .line 700
    sget-object v17, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 701
    .line 702
    move-object/from16 p0, v12

    .line 703
    .line 704
    move/from16 p1, v1

    .line 705
    .line 706
    move-object/from16 p2, v2

    .line 707
    .line 708
    move-object/from16 p3, v3

    .line 709
    .line 710
    move-object/from16 p4, v4

    .line 711
    .line 712
    move/from16 p5, v6

    .line 713
    .line 714
    move-wide/from16 p6, v7

    .line 715
    .line 716
    move-wide/from16 p8, v9

    .line 717
    .line 718
    move/from16 p10, v11

    .line 719
    .line 720
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    .line 721
    .line 722
    .line 723
    move-result-object v12

    .line 724
    if-eqz v12, :cond_a

    .line 725
    .line 726
    move-object/from16 v17, v13

    .line 727
    .line 728
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 729
    .line 730
    .line 731
    move-result v13

    .line 732
    move/from16 v18, v11

    .line 733
    .line 734
    const/4 v11, 0x0

    .line 735
    :goto_e
    if-ge v11, v13, :cond_b

    .line 736
    .line 737
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v16

    .line 741
    move-object/from16 p0, v12

    .line 742
    .line 743
    move-object/from16 v12, v16

    .line 744
    .line 745
    check-cast v12, Landroid/app/AppOpsManager$HistoricalOps;

    .line 746
    .line 747
    invoke-virtual {v14, v12}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 748
    .line 749
    .line 750
    const/4 v12, 0x1

    .line 751
    add-int/2addr v11, v12

    .line 752
    move-object/from16 v12, p0

    .line 753
    .line 754
    goto :goto_e

    .line 755
    :cond_a
    move/from16 v18, v11

    .line 756
    .line 757
    move-object/from16 v17, v13

    .line 758
    .line 759
    :cond_b
    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 760
    goto :goto_11

    .line 761
    :goto_f
    :try_start_f
    monitor-exit v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 762
    :try_start_10
    throw v0

    .line 763
    :goto_10
    monitor-exit v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 764
    throw v0

    .line 765
    :cond_c
    move/from16 v18, v11

    .line 766
    .line 767
    move-object/from16 p11, v12

    .line 768
    .line 769
    move-object/from16 v17, v13

    .line 770
    .line 771
    :goto_11
    and-int/lit8 v5, v5, 0x2

    .line 772
    .line 773
    if-eqz v5, :cond_d

    .line 774
    .line 775
    iget-object v0, v0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 776
    .line 777
    new-instance v5, Landroid/util/ArraySet;

    .line 778
    .line 779
    move-object/from16 v11, p11

    .line 780
    .line 781
    invoke-direct {v5, v11}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 782
    .line 783
    .line 784
    move-object/from16 p0, v0

    .line 785
    .line 786
    move-object/from16 p1, v14

    .line 787
    .line 788
    move-wide/from16 p2, v7

    .line 789
    .line 790
    move-wide/from16 p4, v9

    .line 791
    .line 792
    move/from16 p6, v6

    .line 793
    .line 794
    move/from16 p7, v1

    .line 795
    .line 796
    move-object/from16 p8, v2

    .line 797
    .line 798
    move-object/from16 p9, v4

    .line 799
    .line 800
    move-object/from16 p10, v3

    .line 801
    .line 802
    move/from16 p11, v18

    .line 803
    .line 804
    move-object/from16 p12, v5

    .line 805
    .line 806
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/appop/DiscreteRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 807
    .line 808
    .line 809
    :cond_d
    new-instance v0, Landroid/os/Bundle;

    .line 810
    .line 811
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 812
    .line 813
    .line 814
    const-string/jumbo v1, "historical_ops"

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 818
    .line 819
    .line 820
    move-object/from16 v1, v17

    .line 821
    .line 822
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 823
    .line 824
    .line 825
    :goto_12
    return-void

    .line 826
    nop

    .line 827
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
