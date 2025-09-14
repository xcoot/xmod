.class public final Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mChainIdOffset:I

.field public mLargestChainId:I

.field public mUids:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method public static -$$Nest$mclearHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 25
    iget-object v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 42
    iget-object p2, p2, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 44
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_0

    .line 50
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    return-void
.end method

.method public static -$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p7

    .line 5
    move-object/from16 v2, p9

    .line 7
    and-int/lit8 v4, p5, 0x1

    .line 9
    if-eqz v4, :cond_0

    .line 11
    new-instance v4, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v5

    .line 20
    move/from16 v6, p6

    .line 22
    invoke-virtual {v0, v6}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 31
    :cond_0
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 33
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 36
    move-result v4

    .line 37
    add-int/lit8 v4, v4, -0x1

    .line 39
    :goto_0
    if-ltz v4, :cond_10

    .line 41
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 43
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 49
    iget-object v6, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 51
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/Integer;

    .line 57
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v6

    .line 61
    and-int/lit8 v7, p5, 0x2

    .line 63
    if-eqz v7, :cond_1

    .line 65
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    new-instance v7, Landroid/util/ArrayMap;

    .line 70
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 73
    invoke-virtual {v5, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v7, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iput-object v7, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 82
    :cond_1
    iget-object v7, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 84
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 87
    move-result v7

    .line 88
    add-int/lit8 v7, v7, -0x1

    .line 90
    move v13, v7

    .line 91
    :goto_1
    if-ltz v13, :cond_e

    .line 93
    iget-object v7, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 95
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 98
    move-result-object v7

    .line 99
    move-object v14, v7

    .line 100
    check-cast v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 102
    iget-object v7, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 104
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 107
    move-result-object v7

    .line 108
    move-object v15, v7

    .line 109
    check-cast v15, Ljava/lang/String;

    .line 111
    iget-object v7, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 113
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 116
    move-result v7

    .line 117
    add-int/lit8 v7, v7, -0x1

    .line 119
    move v12, v7

    .line 120
    :goto_2
    if-ltz v12, :cond_c

    .line 122
    iget-object v7, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 124
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Ljava/lang/Integer;

    .line 130
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 133
    move-result v7

    .line 134
    and-int/lit8 v8, p5, 0x8

    .line 136
    if-eqz v8, :cond_3

    .line 138
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 141
    move-result-object v7

    .line 142
    move-object/from16 v11, p8

    .line 144
    invoke-static {v11, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    move-result v7

    .line 148
    if-nez v7, :cond_4

    .line 150
    iget-object v7, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 152
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 155
    move/from16 p6, v4

    .line 157
    move/from16 v21, v6

    .line 159
    move v3, v12

    .line 160
    move-object/from16 v20, v15

    .line 162
    :cond_2
    :goto_3
    const/4 v0, -0x1

    .line 163
    goto/16 :goto_7

    .line 165
    :cond_3
    move-object/from16 v11, p8

    .line 167
    :cond_4
    iget-object v7, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 169
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 172
    move-result-object v7

    .line 173
    move-object v10, v7

    .line 174
    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 176
    iget-object v7, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 178
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 181
    move-result-object v7

    .line 182
    check-cast v7, Ljava/lang/Integer;

    .line 184
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 187
    move-result v16

    .line 188
    and-int/lit8 v7, p5, 0x4

    .line 190
    if-eqz v7, :cond_5

    .line 192
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    new-instance v7, Landroid/util/ArrayMap;

    .line 197
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 200
    invoke-virtual {v10, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    .line 203
    move-result-object v8

    .line 204
    invoke-virtual {v7, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iput-object v7, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 209
    :cond_5
    iget-object v7, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 211
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 214
    move-result v7

    .line 215
    add-int/lit8 v7, v7, -0x1

    .line 217
    move v9, v7

    .line 218
    :goto_4
    if-ltz v9, :cond_b

    .line 220
    iget-object v7, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 222
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 225
    move-result-object v7

    .line 226
    move-object v8, v7

    .line 227
    check-cast v8, Ljava/lang/String;

    .line 229
    iget-object v7, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 231
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 234
    move-result-object v7

    .line 235
    check-cast v7, Ljava/util/List;

    .line 237
    iget-object v3, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 239
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 242
    move-result-object v3

    .line 243
    check-cast v3, Ljava/lang/String;

    .line 245
    sget-object v17, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    .line 247
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 250
    move-result v1

    .line 251
    new-instance v2, Ljava/util/ArrayList;

    .line 253
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    const/16 v17, 0x0

    .line 258
    move/from16 p6, v4

    .line 260
    move/from16 v4, v17

    .line 262
    :goto_5
    if-ge v4, v1, :cond_9

    .line 264
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 267
    move-result-object v17

    .line 268
    move/from16 v18, v1

    .line 270
    move-object/from16 v1, v17

    .line 272
    check-cast v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 274
    move-object/from16 v17, v7

    .line 276
    iget v7, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 278
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    move-result-object v7

    .line 282
    move-object/from16 v0, p11

    .line 284
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    move-result-object v7

    .line 288
    move-object/from16 v19, v7

    .line 290
    check-cast v19, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    .line 292
    if-eqz v19, :cond_6

    .line 294
    move-object/from16 v7, v19

    .line 296
    move-object v0, v8

    .line 297
    move-object v8, v15

    .line 298
    move-object/from16 v20, v15

    .line 300
    move v15, v9

    .line 301
    move v9, v6

    .line 302
    move/from16 v21, v6

    .line 304
    move-object v6, v10

    .line 305
    move-object v10, v3

    .line 306
    move/from16 v11, v16

    .line 308
    move-object/from16 v22, v3

    .line 310
    move v3, v12

    .line 311
    move-object v12, v1

    .line 312
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z

    .line 315
    move-result v7

    .line 316
    if-nez v7, :cond_7

    .line 318
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    .line 321
    move-result v7

    .line 322
    if-eqz v7, :cond_7

    .line 324
    iget v7, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 326
    const/4 v8, -0x1

    .line 327
    if-eq v7, v8, :cond_7

    .line 329
    goto :goto_6

    .line 330
    :cond_6
    move-object/from16 v22, v3

    .line 332
    move/from16 v21, v6

    .line 334
    move-object v0, v8

    .line 335
    move-object v6, v10

    .line 336
    move v3, v12

    .line 337
    move-object/from16 v20, v15

    .line 339
    move v15, v9

    .line 340
    :cond_7
    iget v7, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 342
    and-int v7, v7, p10

    .line 344
    if-eqz v7, :cond_8

    .line 346
    iget-wide v7, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 348
    iget-wide v9, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 350
    add-long/2addr v7, v9

    .line 351
    cmp-long v7, v7, p1

    .line 353
    if-lez v7, :cond_8

    .line 355
    cmp-long v7, v9, p3

    .line 357
    if-gez v7, :cond_8

    .line 359
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 364
    move-object/from16 v11, p8

    .line 366
    move-object v8, v0

    .line 367
    move v12, v3

    .line 368
    move-object v10, v6

    .line 369
    move v9, v15

    .line 370
    move-object/from16 v7, v17

    .line 372
    move/from16 v1, v18

    .line 374
    move-object/from16 v15, v20

    .line 376
    move/from16 v6, v21

    .line 378
    move-object/from16 v3, v22

    .line 380
    move-object/from16 v0, p0

    .line 382
    goto :goto_5

    .line 383
    :cond_9
    move/from16 v21, v6

    .line 385
    move-object v0, v8

    .line 386
    move-object v6, v10

    .line 387
    move v3, v12

    .line 388
    move-object/from16 v20, v15

    .line 390
    move v15, v9

    .line 391
    iget-object v1, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 393
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 399
    move-result v0

    .line 400
    if-nez v0, :cond_a

    .line 402
    iget-object v0, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 404
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 407
    :cond_a
    const/4 v0, -0x1

    .line 408
    add-int/lit8 v9, v15, -0x1

    .line 410
    move-object/from16 v0, p0

    .line 412
    move/from16 v4, p6

    .line 414
    move-object/from16 v1, p7

    .line 416
    move-object/from16 v11, p8

    .line 418
    move-object/from16 v2, p9

    .line 420
    move v12, v3

    .line 421
    move-object v10, v6

    .line 422
    move-object/from16 v15, v20

    .line 424
    move/from16 v6, v21

    .line 426
    goto/16 :goto_4

    .line 428
    :cond_b
    move/from16 p6, v4

    .line 430
    move/from16 v21, v6

    .line 432
    move v3, v12

    .line 433
    move-object/from16 v20, v15

    .line 435
    iget-object v0, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 437
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 440
    move-result-object v0

    .line 441
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 443
    iget-object v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 445
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 448
    move-result v0

    .line 449
    if-eqz v0, :cond_2

    .line 451
    iget-object v0, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 453
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 456
    goto/16 :goto_3

    .line 458
    :goto_7
    add-int/lit8 v12, v3, -0x1

    .line 460
    move-object/from16 v0, p0

    .line 462
    move/from16 v4, p6

    .line 464
    move-object/from16 v1, p7

    .line 466
    move-object/from16 v2, p9

    .line 468
    move-object/from16 v15, v20

    .line 470
    move/from16 v6, v21

    .line 472
    goto/16 :goto_2

    .line 474
    :cond_c
    move/from16 p6, v4

    .line 476
    move/from16 v21, v6

    .line 478
    iget-object v0, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 480
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 483
    move-result-object v0

    .line 484
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 486
    iget-object v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 488
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_d

    .line 494
    iget-object v0, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 496
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 499
    :cond_d
    const/4 v0, -0x1

    .line 500
    add-int/2addr v13, v0

    .line 501
    move-object/from16 v0, p0

    .line 503
    move/from16 v4, p6

    .line 505
    move-object/from16 v1, p7

    .line 507
    move-object/from16 v2, p9

    .line 509
    move/from16 v6, v21

    .line 511
    goto/16 :goto_1

    .line 513
    :cond_e
    move/from16 p6, v4

    .line 515
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 517
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 520
    move-result-object v1

    .line 521
    check-cast v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 523
    iget-object v1, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 525
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 528
    move-result v1

    .line 529
    if-eqz v1, :cond_f

    .line 531
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 533
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 536
    :cond_f
    const/4 v1, -0x1

    .line 537
    add-int/2addr v4, v1

    .line 538
    move-object/from16 v1, p7

    .line 540
    move-object/from16 v2, p9

    .line 542
    goto/16 :goto_0

    .line 544
    :cond_10
    return-void
.end method

.method public static -$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;J)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v1, :cond_4

    .line 12
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 20
    iget-object v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 22
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 25
    move-result v5

    .line 26
    const/4 v6, 0x0

    .line 27
    :goto_1
    if-ge v6, v5, :cond_3

    .line 29
    iget-object v7, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 31
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 34
    move-result-object v7

    .line 35
    check-cast v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 37
    iget-object v8, v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 39
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 42
    move-result v8

    .line 43
    const/4 v9, 0x0

    .line 44
    :goto_2
    if-ge v9, v8, :cond_2

    .line 46
    iget-object v10, v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 48
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 51
    move-result-object v10

    .line 52
    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 54
    iget-object v11, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 56
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 59
    move-result v11

    .line 60
    const/4 v12, 0x0

    .line 61
    :goto_3
    if-ge v12, v11, :cond_1

    .line 63
    iget-object v13, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 65
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 68
    move-result-object v13

    .line 69
    check-cast v13, Ljava/util/List;

    .line 71
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 74
    move-result v14

    .line 75
    const/4 v15, 0x0

    .line 76
    :goto_4
    if-ge v15, v14, :cond_0

    .line 78
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v16

    .line 82
    move-object/from16 v2, v16

    .line 84
    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 86
    new-instance v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 88
    move-object/from16 v16, v4

    .line 90
    move/from16 v26, v5

    .line 92
    iget-wide v4, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 94
    sub-long v20, v4, p1

    .line 96
    iget v4, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 98
    iget v5, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 100
    move-object/from16 v27, v7

    .line 102
    move/from16 v28, v8

    .line 104
    iget-wide v7, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 106
    move/from16 v29, v1

    .line 108
    iget v1, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    .line 110
    iget v2, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 112
    move-object/from16 v17, v0

    .line 114
    move/from16 v18, v1

    .line 116
    move/from16 v19, v2

    .line 118
    move-wide/from16 v22, v7

    .line 120
    move/from16 v24, v4

    .line 122
    move/from16 v25, v5

    .line 124
    invoke-direct/range {v17 .. v25}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(IIJJII)V

    .line 127
    invoke-interface {v13, v15, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 v15, v15, 0x1

    .line 132
    move-object/from16 v0, p0

    .line 134
    move-object/from16 v4, v16

    .line 136
    move/from16 v5, v26

    .line 138
    move-object/from16 v7, v27

    .line 140
    move/from16 v8, v28

    .line 142
    move/from16 v1, v29

    .line 144
    goto :goto_4

    .line 145
    :cond_0
    move/from16 v29, v1

    .line 147
    move-object/from16 v16, v4

    .line 149
    move/from16 v26, v5

    .line 151
    move-object/from16 v27, v7

    .line 153
    move/from16 v28, v8

    .line 155
    add-int/lit8 v12, v12, 0x1

    .line 157
    move-object/from16 v0, p0

    .line 159
    goto :goto_3

    .line 160
    :cond_1
    move/from16 v29, v1

    .line 162
    move-object/from16 v16, v4

    .line 164
    move/from16 v26, v5

    .line 166
    move-object/from16 v27, v7

    .line 168
    move/from16 v28, v8

    .line 170
    add-int/lit8 v9, v9, 0x1

    .line 172
    move-object/from16 v0, p0

    .line 174
    goto/16 :goto_2

    .line 176
    :cond_2
    move/from16 v29, v1

    .line 178
    move-object/from16 v16, v4

    .line 180
    move/from16 v26, v5

    .line 182
    add-int/lit8 v6, v6, 0x1

    .line 184
    move-object/from16 v0, p0

    .line 186
    goto/16 :goto_1

    .line 188
    :cond_3
    move/from16 v29, v1

    .line 190
    add-int/lit8 v3, v3, 0x1

    .line 192
    move-object/from16 v0, p0

    .line 194
    goto/16 :goto_0

    .line 196
    :cond_4
    return-void
.end method

.method public static -$$Nest$mreadFromFile(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/File;J)V
    .locals 7

    .line 1
    const-string v0, " "

    .line 3
    const-string v1, "Dropping unsupported discrete history "

    .line 5
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 7
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 13
    move-result-object v3

    .line 14
    const-string/jumbo v4, "h"

    .line 17
    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 20
    const-string/jumbo v4, "v"

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-interface {v3, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    move-result v4

    .line 28
    const/4 v6, 0x1

    .line 29
    if-ne v4, v6, :cond_2

    .line 31
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 34
    move-result v1

    .line 35
    :cond_0
    :goto_0
    invoke-static {v3, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 41
    const-string/jumbo v4, "u"

    .line 44
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 54
    const-string/jumbo v4, "ui"

    .line 57
    const/4 v6, -0x1

    .line 58
    invoke-interface {v3, v5, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 61
    move-result v4

    .line 62
    invoke-virtual {p0, v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4, v3, p2, p3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 75
    goto :goto_3

    .line 76
    :cond_2
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    :goto_2
    :try_start_4
    sget-object p2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    .line 96
    const-string p2, "DiscreteRegistry"

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v1, "Failed to read file "

    .line 105
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 131
    move-result-object p0

    .line 132
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 143
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    goto :goto_1

    .line 147
    :catchall_1
    move-exception p0

    .line 148
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 151
    :catch_0
    throw p0

    .line 152
    :catch_1
    :goto_3
    return-void
.end method

.method public static -$$Nest$mwriteToStream(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/FileOutputStream;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 16
    const-string/jumbo v2, "h"

    .line 19
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    const-string/jumbo v4, "v"

    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 29
    const-string/jumbo v4, "lc"

    .line 32
    iget v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 34
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 39
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 42
    move-result v4

    .line 43
    const/4 v6, 0x0

    .line 44
    :goto_0
    if-ge v6, v4, :cond_8

    .line 46
    const-string/jumbo v7, "u"

    .line 49
    invoke-interface {v1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    iget-object v8, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 54
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Ljava/lang/Integer;

    .line 60
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 63
    move-result v8

    .line 64
    const-string/jumbo v9, "ui"

    .line 67
    invoke-interface {v1, v3, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    iget-object v8, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 72
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 78
    iget-object v9, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 80
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 83
    move-result v9

    .line 84
    const/4 v10, 0x0

    .line 85
    :goto_1
    if-ge v10, v9, :cond_7

    .line 87
    const-string/jumbo v11, "p"

    .line 90
    invoke-interface {v1, v3, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    iget-object v12, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 95
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 98
    move-result-object v12

    .line 99
    check-cast v12, Ljava/lang/String;

    .line 101
    const-string/jumbo v13, "pn"

    .line 104
    invoke-interface {v1, v3, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    iget-object v12, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 109
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 112
    move-result-object v12

    .line 113
    check-cast v12, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 115
    iget-object v13, v12, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 117
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 120
    move-result v13

    .line 121
    const/4 v14, 0x0

    .line 122
    :goto_2
    if-ge v14, v13, :cond_6

    .line 124
    const-string/jumbo v15, "o"

    .line 127
    invoke-interface {v1, v3, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    iget-object v5, v12, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 132
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Ljava/lang/Integer;

    .line 138
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 141
    move-result v5

    .line 142
    const-string/jumbo v0, "op"

    .line 145
    invoke-interface {v1, v3, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    iget-object v0, v12, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 150
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 156
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 158
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 161
    move-result v5

    .line 162
    const/4 v3, 0x0

    .line 163
    :goto_3
    if-ge v3, v5, :cond_5

    .line 165
    move/from16 v17, v4

    .line 167
    const-string v4, "a"

    .line 169
    move/from16 v18, v5

    .line 171
    const/4 v5, 0x0

    .line 172
    invoke-interface {v1, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 177
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Ljava/lang/String;

    .line 183
    if-eqz v5, :cond_0

    .line 185
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 187
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 190
    move-result-object v5

    .line 191
    check-cast v5, Ljava/lang/String;

    .line 193
    move-object/from16 v19, v8

    .line 195
    const-string v8, "at"

    .line 197
    move/from16 v20, v9

    .line 199
    const/4 v9, 0x0

    .line 200
    invoke-interface {v1, v9, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    goto :goto_4

    .line 204
    :cond_0
    move-object/from16 v19, v8

    .line 206
    move/from16 v20, v9

    .line 208
    const/4 v9, 0x0

    .line 209
    :goto_4
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 211
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 214
    move-result-object v5

    .line 215
    check-cast v5, Ljava/util/List;

    .line 217
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 220
    move-result v8

    .line 221
    const/4 v9, 0x0

    .line 222
    :goto_5
    if-ge v9, v8, :cond_4

    .line 224
    move-object/from16 v21, v0

    .line 226
    const-string/jumbo v0, "e"

    .line 229
    move/from16 v22, v8

    .line 231
    const/4 v8, 0x0

    .line 232
    invoke-interface {v1, v8, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    move-result-object v16

    .line 239
    move-object/from16 v8, v16

    .line 241
    check-cast v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 243
    move-object/from16 v16, v12

    .line 245
    move/from16 v23, v13

    .line 247
    iget-wide v12, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 249
    move-object/from16 v24, v5

    .line 251
    const-string/jumbo v5, "nt"

    .line 254
    move-object/from16 v25, v2

    .line 256
    const/4 v2, 0x0

    .line 257
    invoke-interface {v1, v2, v5, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    const-wide/16 v12, -0x1

    .line 262
    move v5, v3

    .line 263
    iget-wide v2, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 265
    cmp-long v12, v2, v12

    .line 267
    if-eqz v12, :cond_1

    .line 269
    const-string/jumbo v12, "nd"

    .line 272
    const/4 v13, 0x0

    .line 273
    invoke-interface {v1, v13, v12, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    goto :goto_6

    .line 277
    :cond_1
    const/4 v13, 0x0

    .line 278
    :goto_6
    iget v2, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 280
    if-eqz v2, :cond_2

    .line 282
    const-string v3, "af"

    .line 284
    invoke-interface {v1, v13, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    :cond_2
    const/4 v2, -0x1

    .line 288
    iget v3, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 290
    if-eq v3, v2, :cond_3

    .line 292
    const-string/jumbo v2, "ci"

    .line 295
    invoke-interface {v1, v13, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 298
    :cond_3
    const-string/jumbo v2, "us"

    .line 301
    iget v3, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    .line 303
    invoke-interface {v1, v13, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    const-string/jumbo v2, "f"

    .line 309
    iget v3, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 311
    invoke-interface {v1, v13, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    invoke-interface {v1, v13, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    add-int/lit8 v9, v9, 0x1

    .line 319
    move v3, v5

    .line 320
    move-object/from16 v12, v16

    .line 322
    move-object/from16 v0, v21

    .line 324
    move/from16 v8, v22

    .line 326
    move/from16 v13, v23

    .line 328
    move-object/from16 v5, v24

    .line 330
    move-object/from16 v2, v25

    .line 332
    goto :goto_5

    .line 333
    :cond_4
    move-object/from16 v21, v0

    .line 335
    move-object/from16 v25, v2

    .line 337
    move v5, v3

    .line 338
    move-object/from16 v16, v12

    .line 340
    move/from16 v23, v13

    .line 342
    const/4 v13, 0x0

    .line 343
    invoke-interface {v1, v13, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    add-int/lit8 v3, v5, 0x1

    .line 348
    move/from16 v4, v17

    .line 350
    move/from16 v5, v18

    .line 352
    move-object/from16 v8, v19

    .line 354
    move/from16 v9, v20

    .line 356
    move/from16 v13, v23

    .line 358
    goto/16 :goto_3

    .line 360
    :cond_5
    move-object/from16 v25, v2

    .line 362
    move/from16 v17, v4

    .line 364
    move-object/from16 v19, v8

    .line 366
    move/from16 v20, v9

    .line 368
    move-object/from16 v16, v12

    .line 370
    move/from16 v23, v13

    .line 372
    const/4 v13, 0x0

    .line 373
    invoke-interface {v1, v13, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    add-int/lit8 v14, v14, 0x1

    .line 378
    move-object/from16 v0, p0

    .line 380
    move-object v3, v13

    .line 381
    move/from16 v13, v23

    .line 383
    goto/16 :goto_2

    .line 385
    :cond_6
    move-object/from16 v25, v2

    .line 387
    move-object v13, v3

    .line 388
    move/from16 v17, v4

    .line 390
    move-object/from16 v19, v8

    .line 392
    move/from16 v20, v9

    .line 394
    invoke-interface {v1, v13, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    add-int/lit8 v10, v10, 0x1

    .line 399
    move-object/from16 v0, p0

    .line 401
    goto/16 :goto_1

    .line 403
    :cond_7
    move-object/from16 v25, v2

    .line 405
    move-object v13, v3

    .line 406
    move/from16 v17, v4

    .line 408
    invoke-interface {v1, v13, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    add-int/lit8 v6, v6, 0x1

    .line 413
    move-object/from16 v0, p0

    .line 415
    goto/16 :goto_0

    .line 417
    :cond_8
    move-object v0, v2

    .line 418
    move-object v13, v3

    .line 419
    invoke-interface {v1, v13, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 425
    return-void
.end method

.method public constructor <init>(Lcom/android/server/appop/DiscreteRegistry;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 13
    iput p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    .line 15
    iput p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 17
    return-void
.end method


# virtual methods
.method public final addDiscreteAccess(IIIIIIJJLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p6

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v1, v2, :cond_2

    .line 7
    iget v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    .line 9
    add-int/2addr v2, v1

    .line 10
    iget v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 12
    if-le v2, v3, :cond_0

    .line 14
    iput v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-gez v2, :cond_1

    .line 19
    const/4 v2, 0x0

    .line 20
    iput v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 22
    mul-int/lit8 v1, v1, -0x1

    .line 24
    iput v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    .line 26
    :cond_1
    :goto_0
    move v1, p2

    .line 27
    move v11, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move v11, v1

    .line 30
    move v1, p2

    .line 31
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 34
    move-result-object v0

    .line 35
    move-object/from16 v1, p11

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 40
    move-result-object v0

    .line 41
    move v1, p1

    .line 42
    invoke-virtual {v0, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 45
    move-result-object v0

    .line 46
    move-object/from16 v1, p12

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    move-result v1

    .line 56
    :goto_2
    if-lez v1, :cond_3

    .line 58
    add-int/lit8 v2, v1, -0x1

    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 66
    iget-wide v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 68
    sget-wide v5, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 70
    div-long/2addr v3, v5

    .line 71
    mul-long/2addr v3, v5

    .line 72
    div-long v7, p7, v5

    .line 74
    mul-long/2addr v7, v5

    .line 75
    cmp-long v3, v3, v7

    .line 77
    if-gez v3, :cond_4

    .line 79
    :cond_3
    move v5, p3

    .line 80
    move/from16 v4, p4

    .line 82
    move/from16 v10, p5

    .line 84
    goto :goto_5

    .line 85
    :cond_4
    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 87
    move v5, p3

    .line 88
    if-ne v3, v5, :cond_6

    .line 90
    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    .line 92
    move/from16 v4, p4

    .line 94
    if-ne v3, v4, :cond_5

    .line 96
    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 98
    move/from16 v10, p5

    .line 100
    if-ne v3, v10, :cond_7

    .line 102
    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 104
    if-ne v3, v11, :cond_7

    .line 106
    invoke-static/range {p9 .. p10}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeDuration(J)J

    .line 109
    move-result-wide v6

    .line 110
    iget-wide v2, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 112
    invoke-static {v2, v3}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeDuration(J)J

    .line 115
    move-result-wide v2

    .line 116
    cmp-long v2, v6, v2

    .line 118
    if-eqz v2, :cond_8

    .line 120
    goto :goto_5

    .line 121
    :cond_5
    :goto_3
    move/from16 v10, p5

    .line 123
    goto :goto_4

    .line 124
    :cond_6
    move/from16 v4, p4

    .line 126
    goto :goto_3

    .line 127
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 129
    goto :goto_2

    .line 130
    :goto_5
    new-instance v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 132
    move-object v3, v2

    .line 133
    move/from16 v4, p4

    .line 135
    move v5, p3

    .line 136
    move-wide/from16 v6, p7

    .line 138
    move-wide/from16 v8, p9

    .line 140
    move/from16 v10, p5

    .line 142
    invoke-direct/range {v3 .. v11}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(IIJJII)V

    .line 145
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 148
    :cond_8
    return-void
.end method

.method public final getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 13
    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 17
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    .line 19
    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;)V

    .line 22
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    return-object v0
.end method

.method public final merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 7
    iget v3, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 12
    move-result v2

    .line 13
    iput v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 15
    iget-object v2, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 20
    move-result v2

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-ge v4, v2, :cond_8

    .line 24
    iget-object v5, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 26
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v5

    .line 36
    iget-object v6, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 38
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 44
    invoke-virtual {v0, v5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 47
    move-result-object v5

    .line 48
    iget-object v7, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 50
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 53
    move-result v7

    .line 54
    const/4 v8, 0x0

    .line 55
    :goto_1
    if-ge v8, v7, :cond_7

    .line 57
    iget-object v9, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 59
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Ljava/lang/String;

    .line 65
    iget-object v10, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 67
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 70
    move-result-object v10

    .line 71
    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 73
    invoke-virtual {v5, v9}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 76
    move-result-object v9

    .line 77
    iget-object v11, v10, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 79
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 82
    move-result v11

    .line 83
    const/4 v12, 0x0

    .line 84
    :goto_2
    if-ge v12, v11, :cond_6

    .line 86
    iget-object v13, v10, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 88
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 91
    move-result-object v13

    .line 92
    check-cast v13, Ljava/lang/Integer;

    .line 94
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 97
    move-result v13

    .line 98
    iget-object v14, v10, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 100
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 103
    move-result-object v14

    .line 104
    check-cast v14, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 106
    invoke-virtual {v9, v13}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 109
    move-result-object v13

    .line 110
    iget-object v15, v14, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 112
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 115
    move-result v15

    .line 116
    const/4 v3, 0x0

    .line 117
    :goto_3
    if-ge v3, v15, :cond_5

    .line 119
    iget-object v0, v14, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 121
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/lang/String;

    .line 127
    iget-object v1, v14, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 129
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Ljava/util/List;

    .line 135
    move/from16 v16, v2

    .line 137
    invoke-virtual {v13, v0}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    .line 140
    move-result-object v2

    .line 141
    move-object/from16 v17, v5

    .line 143
    iget-object v5, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 145
    sget-object v18, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    .line 147
    move-object/from16 v18, v6

    .line 149
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 152
    move-result v6

    .line 153
    move/from16 v19, v7

    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 158
    move-result v7

    .line 159
    move-object/from16 v20, v9

    .line 161
    new-instance v9, Ljava/util/ArrayList;

    .line 163
    move-object/from16 v21, v10

    .line 165
    add-int v10, v6, v7

    .line 167
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    move/from16 v22, v11

    .line 172
    const/4 v10, 0x0

    .line 173
    const/4 v11, 0x0

    .line 174
    :goto_4
    if-lt v10, v6, :cond_1

    .line 176
    if-ge v11, v7, :cond_0

    .line 178
    goto :goto_5

    .line 179
    :cond_0
    invoke-virtual {v5, v0, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    add-int/lit8 v3, v3, 0x1

    .line 184
    move-object/from16 v0, p0

    .line 186
    move-object/from16 v1, p1

    .line 188
    move/from16 v2, v16

    .line 190
    move-object/from16 v5, v17

    .line 192
    move-object/from16 v6, v18

    .line 194
    move/from16 v7, v19

    .line 196
    move-object/from16 v9, v20

    .line 198
    move-object/from16 v10, v21

    .line 200
    move/from16 v11, v22

    .line 202
    goto :goto_3

    .line 203
    :cond_1
    :goto_5
    if-ne v10, v6, :cond_2

    .line 205
    add-int/lit8 v23, v11, 0x1

    .line 207
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v11

    .line 211
    check-cast v11, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 213
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    move/from16 v11, v23

    .line 218
    goto :goto_4

    .line 219
    :cond_2
    if-ne v11, v7, :cond_3

    .line 221
    add-int/lit8 v23, v10, 0x1

    .line 223
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    move-result-object v10

    .line 227
    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 229
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    move/from16 v10, v23

    .line 234
    goto :goto_4

    .line 235
    :cond_3
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    move-result-object v23

    .line 239
    move-object/from16 v24, v0

    .line 241
    move-object/from16 v0, v23

    .line 243
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 245
    move-object/from16 v23, v5

    .line 247
    move/from16 v25, v6

    .line 249
    iget-wide v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 251
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 257
    move-object/from16 v27, v13

    .line 259
    move-object/from16 v26, v14

    .line 261
    iget-wide v13, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 263
    cmp-long v0, v5, v13

    .line 265
    if-gez v0, :cond_4

    .line 267
    add-int/lit8 v0, v10, 0x1

    .line 269
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 272
    move-result-object v5

    .line 273
    check-cast v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 275
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    move v10, v0

    .line 279
    :goto_6
    move-object/from16 v5, v23

    .line 281
    move-object/from16 v0, v24

    .line 283
    move/from16 v6, v25

    .line 285
    move-object/from16 v14, v26

    .line 287
    move-object/from16 v13, v27

    .line 289
    goto :goto_4

    .line 290
    :cond_4
    add-int/lit8 v0, v11, 0x1

    .line 292
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 295
    move-result-object v5

    .line 296
    check-cast v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 298
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    move v11, v0

    .line 302
    goto :goto_6

    .line 303
    :cond_5
    move/from16 v16, v2

    .line 305
    move-object/from16 v17, v5

    .line 307
    move-object/from16 v18, v6

    .line 309
    move/from16 v19, v7

    .line 311
    move-object/from16 v20, v9

    .line 313
    move-object/from16 v21, v10

    .line 315
    move/from16 v22, v11

    .line 317
    add-int/lit8 v12, v12, 0x1

    .line 319
    move-object/from16 v0, p0

    .line 321
    move-object/from16 v1, p1

    .line 323
    goto/16 :goto_2

    .line 325
    :cond_6
    move/from16 v16, v2

    .line 327
    move-object/from16 v17, v5

    .line 329
    move-object/from16 v18, v6

    .line 331
    move/from16 v19, v7

    .line 333
    add-int/lit8 v8, v8, 0x1

    .line 335
    move-object/from16 v0, p0

    .line 337
    move-object/from16 v1, p1

    .line 339
    goto/16 :goto_1

    .line 341
    :cond_7
    move/from16 v16, v2

    .line 343
    add-int/lit8 v4, v4, 0x1

    .line 345
    move-object/from16 v0, p0

    .line 347
    move-object/from16 v1, p1

    .line 349
    goto/16 :goto_0

    .line 351
    :cond_8
    return-void
.end method
