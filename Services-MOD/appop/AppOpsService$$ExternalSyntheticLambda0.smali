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

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 27

    .line 1
    move-object/from16 v2, p0

    .line 3
    iget v2, v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 5
    packed-switch v2, :pswitch_data_0

    .line 8
    move-object/from16 v2, p1

    .line 10
    check-cast v2, Lcom/android/server/appop/AppOpsService;

    .line 12
    move-object/from16 v3, p2

    .line 14
    check-cast v3, Landroid/util/ArraySet;

    .line 16
    move-object/from16 v4, p3

    .line 18
    check-cast v4, Ljava/lang/Integer;

    .line 20
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result v4

    .line 24
    move-object/from16 v5, p4

    .line 26
    check-cast v5, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v5

    .line 32
    move-object/from16 v6, p5

    .line 34
    check-cast v6, Ljava/lang/String;

    .line 36
    move-object/from16 v7, p6

    .line 38
    check-cast v7, Ljava/lang/String;

    .line 40
    move-object/from16 v8, p7

    .line 42
    check-cast v8, Ljava/lang/Integer;

    .line 44
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v8

    .line 48
    move-object/from16 v9, p8

    .line 50
    check-cast v9, Ljava/lang/Integer;

    .line 52
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 55
    move-result v9

    .line 56
    move-object/from16 v10, p9

    .line 58
    check-cast v10, Ljava/lang/Integer;

    .line 60
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 63
    move-result v10

    .line 64
    move-object/from16 v11, p10

    .line 66
    check-cast v11, Ljava/lang/Integer;

    .line 68
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 71
    move-result v11

    .line 72
    move-object/from16 v12, p11

    .line 74
    check-cast v12, Ljava/lang/Integer;

    .line 76
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 79
    move-result v12

    .line 80
    move-object/from16 v13, p12

    .line 82
    check-cast v13, Ljava/lang/Integer;

    .line 84
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result v13

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 94
    move-result-wide v14

    .line 95
    :try_start_0
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 98
    move-result v0

    .line 99
    const/4 v1, 0x0

    .line 100
    :goto_0
    if-ge v1, v0, :cond_1

    .line 102
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 105
    move-result-object v16

    .line 106
    move/from16 p11, v0

    .line 108
    move-object/from16 v0, v16

    .line 110
    check-cast v0, Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    move-object/from16 v17, v3

    .line 114
    :try_start_1
    iget v3, v0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingPid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    move-wide/from16 v18, v14

    .line 118
    :try_start_2
    iget v14, v0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingUid:I

    .line 120
    invoke-virtual {v2, v4, v3, v14}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_0

    .line 126
    :catch_0
    :goto_1
    const/4 v0, 0x1

    .line 127
    goto :goto_2

    .line 128
    :cond_0
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

    .line 130
    move-object/from16 p0, v0

    .line 132
    move/from16 p1, v4

    .line 134
    move/from16 p2, v5

    .line 136
    move-object/from16 p3, v6

    .line 138
    move-object/from16 p4, v7

    .line 140
    move/from16 p5, v8

    .line 142
    move/from16 p6, v9

    .line 144
    move/from16 p7, v10

    .line 146
    move/from16 p8, v11

    .line 148
    move/from16 p9, v12

    .line 150
    move/from16 p10, v13

    .line 152
    invoke-interface/range {p0 .. p10}, Lcom/android/internal/app/IAppOpsStartedCallback;->opStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

    .line 161
    goto :goto_3

    .line 162
    :catch_1
    move-wide/from16 v18, v14

    .line 164
    goto :goto_1

    .line 165
    :goto_2
    add-int/2addr v1, v0

    .line 166
    move/from16 v0, p11

    .line 168
    move-object/from16 v3, v17

    .line 170
    move-wide/from16 v14, v18

    .line 172
    goto :goto_0

    .line 173
    :cond_1
    move-wide/from16 v18, v14

    .line 175
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    return-void

    .line 179
    :goto_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    throw v0

    .line 183
    :pswitch_0
    move-object/from16 v0, p1

    .line 185
    check-cast v0, Lcom/android/server/appop/HistoricalRegistry;

    .line 187
    move-object/from16 v1, p2

    .line 189
    check-cast v1, Ljava/lang/Integer;

    .line 191
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 194
    move-result v1

    .line 195
    move-object/from16 v2, p3

    .line 197
    check-cast v2, Ljava/lang/String;

    .line 199
    move-object/from16 v3, p4

    .line 201
    check-cast v3, Ljava/lang/String;

    .line 203
    move-object/from16 v4, p5

    .line 205
    check-cast v4, [Ljava/lang/String;

    .line 207
    move-object/from16 v5, p6

    .line 209
    check-cast v5, Ljava/lang/Integer;

    .line 211
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 214
    move-result v5

    .line 215
    move-object/from16 v6, p7

    .line 217
    check-cast v6, Ljava/lang/Integer;

    .line 219
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 222
    move-result v6

    .line 223
    move-object/from16 v7, p8

    .line 225
    check-cast v7, Ljava/lang/Long;

    .line 227
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 230
    move-result-wide v7

    .line 231
    move-object/from16 v9, p9

    .line 233
    check-cast v9, Ljava/lang/Long;

    .line 235
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 238
    move-result-wide v9

    .line 239
    move-object/from16 v11, p10

    .line 241
    check-cast v11, Ljava/lang/Integer;

    .line 243
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 246
    move-result v11

    .line 247
    move-object/from16 v12, p11

    .line 249
    check-cast v12, [Ljava/lang/String;

    .line 251
    move-object/from16 v13, p12

    .line 253
    check-cast v13, Landroid/os/RemoteCallback;

    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 261
    move-result-wide v14

    .line 262
    const-wide v17, 0x7fffffffffffffffL

    .line 267
    cmp-long v17, v9, v17

    .line 269
    if-nez v17, :cond_2

    .line 271
    move-object/from16 v17, v13

    .line 273
    move-wide v9, v14

    .line 274
    goto :goto_4

    .line 275
    :cond_2
    move-object/from16 v17, v13

    .line 277
    :goto_4
    new-instance v13, Landroid/os/Bundle;

    .line 279
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 282
    move-object/from16 v18, v3

    .line 284
    move-object/from16 v19, v4

    .line 286
    sub-long v3, v14, v9

    .line 288
    move/from16 v20, v1

    .line 290
    move-object/from16 v21, v2

    .line 292
    const-wide/16 v1, 0x0

    .line 294
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 297
    move-result-wide v3

    .line 298
    move-wide/from16 v22, v9

    .line 300
    sub-long v9, v14, v7

    .line 302
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 305
    move-result-wide v9

    .line 306
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 308
    invoke-direct {v1, v3, v4, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 311
    and-int/lit8 v2, v5, 0x2

    .line 313
    if-eqz v2, :cond_3

    .line 315
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 317
    move-object/from16 v24, v13

    .line 319
    new-instance v13, Landroid/util/ArraySet;

    .line 321
    invoke-direct {v13, v12}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 324
    move-object/from16 p0, v2

    .line 326
    move-object/from16 p1, v1

    .line 328
    move-wide/from16 p2, v7

    .line 330
    move-wide/from16 p4, v22

    .line 332
    move/from16 p6, v6

    .line 334
    move/from16 p7, v20

    .line 336
    move-object/from16 p8, v21

    .line 338
    move-object/from16 p9, v19

    .line 340
    move-object/from16 p10, v18

    .line 342
    move/from16 p11, v11

    .line 344
    move-object/from16 p12, v13

    .line 346
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/appop/DiscreteRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 349
    :goto_5
    const/4 v2, 0x1

    .line 350
    goto :goto_6

    .line 351
    :cond_3
    move-object/from16 v24, v13

    .line 353
    goto :goto_5

    .line 354
    :goto_6
    and-int/lit8 v12, v5, 0x1

    .line 356
    if-eqz v12, :cond_8

    .line 358
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 360
    monitor-enter v2

    .line 361
    :try_start_3
    iget-object v12, v0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 363
    monitor-enter v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 364
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    .line 367
    move-result v13

    .line 368
    if-nez v13, :cond_4

    .line 370
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 372
    const-string v1, "Interaction before persistence initialized"

    .line 374
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v0, Landroid/os/Bundle;

    .line 379
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    move-object/from16 v13, v17

    .line 384
    invoke-virtual {v13, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

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

    .line 391
    :catchall_2
    move-exception v0

    .line 392
    goto/16 :goto_b

    .line 394
    :catchall_3
    move-exception v0

    .line 395
    goto/16 :goto_a

    .line 397
    :cond_4
    :try_start_6
    invoke-virtual {v0, v14, v15}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    .line 400
    move-result-object v13

    .line 401
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 404
    move-result-wide v25

    .line 405
    cmp-long v25, v3, v25

    .line 407
    if-gez v25, :cond_5

    .line 409
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    .line 412
    move-result-wide v25

    .line 413
    cmp-long v25, v9, v25

    .line 415
    if-lez v25, :cond_5

    .line 417
    move-wide/from16 v25, v7

    .line 419
    new-instance v7, Landroid/app/AppOpsManager$HistoricalOps;

    .line 421
    invoke-direct {v7, v13}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 424
    move-object/from16 p0, v7

    .line 426
    move/from16 p1, v20

    .line 428
    move-object/from16 p2, v21

    .line 430
    move-object/from16 p3, v18

    .line 432
    move-object/from16 p4, v19

    .line 434
    move/from16 p5, v5

    .line 436
    move/from16 p6, v6

    .line 438
    move-wide/from16 p7, v3

    .line 440
    move-wide/from16 p9, v9

    .line 442
    invoke-virtual/range {p0 .. p10}, Landroid/app/AppOpsManager$HistoricalOps;->filter(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJ)V

    .line 445
    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 448
    goto :goto_7

    .line 449
    :cond_5
    move-wide/from16 v25, v7

    .line 451
    :goto_7
    new-instance v5, Ljava/util/ArrayList;

    .line 453
    iget-object v7, v0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 455
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 458
    iget-object v7, v0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 460
    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 463
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    .line 466
    move-result-wide v7

    .line 467
    cmp-long v7, v9, v7

    .line 469
    if-lez v7, :cond_6

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

    .line 477
    :try_start_7
    invoke-virtual {v0, v5}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 480
    iget-wide v7, v0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 482
    sub-long/2addr v14, v7

    .line 483
    iget-wide v7, v0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 485
    add-long/2addr v14, v7

    .line 486
    sub-long/2addr v3, v14

    .line 487
    const-wide/16 v7, 0x0

    .line 489
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 492
    move-result-wide v3

    .line 493
    sub-long/2addr v9, v14

    .line 494
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 497
    move-result-wide v7

    .line 498
    iget-object v0, v0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 500
    sget-object v5, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 502
    move-object/from16 p0, v0

    .line 504
    move/from16 p1, v20

    .line 506
    move-object/from16 p2, v21

    .line 508
    move-object/from16 p3, v18

    .line 510
    move-object/from16 p4, v19

    .line 512
    move/from16 p5, v6

    .line 514
    move-wide/from16 p6, v3

    .line 516
    move-wide/from16 p8, v7

    .line 518
    move/from16 p10, v11

    .line 520
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    .line 523
    move-result-object v0

    .line 524
    if-eqz v0, :cond_7

    .line 526
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 529
    move-result v3

    .line 530
    const/4 v4, 0x0

    .line 531
    :goto_9
    if-ge v4, v3, :cond_7

    .line 533
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 536
    move-result-object v5

    .line 537
    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    .line 539
    invoke-virtual {v1, v5}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

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

    .line 548
    move-wide/from16 v2, v25

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

    .line 558
    :goto_c
    invoke-virtual {v1, v2, v3, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 561
    const-string/jumbo v0, "historical_ops"

    .line 564
    move-object/from16 v2, v24

    .line 566
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 569
    move-object/from16 v0, v17

    .line 571
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 574
    :goto_d
    return-void

    .line 575
    :pswitch_1
    move-object/from16 v0, p1

    .line 577
    check-cast v0, Lcom/android/server/appop/HistoricalRegistry;

    .line 579
    move-object/from16 v1, p2

    .line 581
    check-cast v1, Ljava/lang/Integer;

    .line 583
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 586
    move-result v1

    .line 587
    move-object/from16 v2, p3

    .line 589
    check-cast v2, Ljava/lang/String;

    .line 591
    move-object/from16 v3, p4

    .line 593
    check-cast v3, Ljava/lang/String;

    .line 595
    move-object/from16 v4, p5

    .line 597
    check-cast v4, [Ljava/lang/String;

    .line 599
    move-object/from16 v5, p6

    .line 601
    check-cast v5, Ljava/lang/Integer;

    .line 603
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 606
    move-result v5

    .line 607
    move-object/from16 v6, p7

    .line 609
    check-cast v6, Ljava/lang/Integer;

    .line 611
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 614
    move-result v6

    .line 615
    move-object/from16 v7, p8

    .line 617
    check-cast v7, Ljava/lang/Long;

    .line 619
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 622
    move-result-wide v7

    .line 623
    move-object/from16 v9, p9

    .line 625
    check-cast v9, Ljava/lang/Long;

    .line 627
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 630
    move-result-wide v9

    .line 631
    move-object/from16 v11, p10

    .line 633
    check-cast v11, Ljava/lang/Integer;

    .line 635
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 638
    move-result v11

    .line 639
    move-object/from16 v12, p11

    .line 641
    check-cast v12, [Ljava/lang/String;

    .line 643
    move-object/from16 v13, p12

    .line 645
    check-cast v13, Landroid/os/RemoteCallback;

    .line 647
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 650
    new-instance v14, Landroid/app/AppOpsManager$HistoricalOps;

    .line 652
    invoke-direct {v14, v7, v8, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 655
    const/4 v15, 0x1

    .line 656
    and-int/lit8 v17, v5, 0x1

    .line 658
    if-eqz v17, :cond_c

    .line 660
    iget-object v15, v0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 662
    monitor-enter v15

    .line 663
    move-object/from16 p11, v12

    .line 665
    :try_start_a
    iget-object v12, v0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 667
    monitor-enter v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 668
    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    .line 671
    move-result v17

    .line 672
    if-nez v17, :cond_9

    .line 674
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 676
    const-string v1, "Interaction before persistence initialized"

    .line 678
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v0, Landroid/os/Bundle;

    .line 683
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 686
    invoke-virtual {v13, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

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

    .line 700
    sget-object v17, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 702
    move-object/from16 p0, v12

    .line 704
    move/from16 p1, v1

    .line 706
    move-object/from16 p2, v2

    .line 708
    move-object/from16 p3, v3

    .line 710
    move-object/from16 p4, v4

    .line 712
    move/from16 p5, v6

    .line 714
    move-wide/from16 p6, v7

    .line 716
    move-wide/from16 p8, v9

    .line 718
    move/from16 p10, v11

    .line 720
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    .line 723
    move-result-object v12

    .line 724
    if-eqz v12, :cond_a

    .line 726
    move-object/from16 v17, v13

    .line 728
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 731
    move-result v13

    .line 732
    move/from16 v18, v11

    .line 734
    const/4 v11, 0x0

    .line 735
    :goto_e
    if-ge v11, v13, :cond_b

    .line 737
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 740
    move-result-object v16

    .line 741
    move-object/from16 p0, v12

    .line 743
    move-object/from16 v12, v16

    .line 745
    check-cast v12, Landroid/app/AppOpsManager$HistoricalOps;

    .line 747
    invoke-virtual {v14, v12}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 750
    const/4 v12, 0x1

    .line 751
    add-int/2addr v11, v12

    .line 752
    move-object/from16 v12, p0

    .line 754
    goto :goto_e

    .line 755
    :cond_a
    move/from16 v18, v11

    .line 757
    move-object/from16 v17, v13

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

    .line 767
    move-object/from16 p11, v12

    .line 769
    move-object/from16 v17, v13

    .line 771
    :goto_11
    and-int/lit8 v5, v5, 0x2

    .line 773
    if-eqz v5, :cond_d

    .line 775
    iget-object v0, v0, Lcom/android/server/appop/HistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteRegistry;

    .line 777
    new-instance v5, Landroid/util/ArraySet;

    .line 779
    move-object/from16 v11, p11

    .line 781
    invoke-direct {v5, v11}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 784
    move-object/from16 p0, v0

    .line 786
    move-object/from16 p1, v14

    .line 788
    move-wide/from16 p2, v7

    .line 790
    move-wide/from16 p4, v9

    .line 792
    move/from16 p6, v6

    .line 794
    move/from16 p7, v1

    .line 796
    move-object/from16 p8, v2

    .line 798
    move-object/from16 p9, v4

    .line 800
    move-object/from16 p10, v3

    .line 802
    move/from16 p11, v18

    .line 804
    move-object/from16 p12, v5

    .line 806
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/appop/DiscreteRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 809
    :cond_d
    new-instance v0, Landroid/os/Bundle;

    .line 811
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 814
    const-string/jumbo v1, "historical_ops"

    .line 817
    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 820
    move-object/from16 v1, v17

    .line 822
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

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
