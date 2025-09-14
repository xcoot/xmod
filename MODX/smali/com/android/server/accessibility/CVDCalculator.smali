.class public final Lcom/android/server/accessibility/CVDCalculator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public CVDSeverity:D

.field public CVDType:I

.field public SpotsU:[D

.field public SpotsV:[D

.field public c_index:D

.field public mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

.field public mInputNums:[I

.field public majorAngle:D

.field public majorRadius:D

.field public minorRadius:D

.field public u:[D

.field public v:[D


# virtual methods
.method public final getRGBCMY(IIDD)[I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v8, p2

    .line 7
    move-wide/from16 v9, p3

    .line 9
    const/16 v2, 0xc

    .line 11
    new-array v11, v2, [I

    .line 13
    const-string/jumbo v2, "getRGBCMY "

    .line 16
    const-string v3, ", CVDType : "

    .line 18
    const-string v4, ", Severity : "

    .line 20
    invoke-static {v1, v8, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 27
    const-string v3, ", user : "

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-wide/from16 v12, p5

    .line 34
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    const-string v3, "CVDCalculator"

    .line 43
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/16 v14, 0x8

    .line 48
    const/4 v15, 0x7

    .line 49
    const/16 v16, 0x5

    .line 51
    const/16 v17, 0x4

    .line 53
    const/16 v18, 0x3

    .line 55
    const/16 v19, 0x0

    .line 57
    const/16 v20, 0xb

    .line 59
    const/16 v21, 0xa

    .line 61
    const/16 v22, 0x9

    .line 63
    const/4 v6, 0x6

    .line 64
    const/4 v7, 0x2

    .line 65
    const/4 v4, 0x1

    .line 66
    const v2, 0xff00

    .line 69
    const/16 v23, 0xff

    .line 71
    if-nez v1, :cond_2

    .line 73
    if-eqz v8, :cond_1

    .line 75
    if-eq v8, v4, :cond_1

    .line 77
    if-ne v8, v7, :cond_0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    aput v2, v11, v19

    .line 82
    aput v23, v11, v4

    .line 84
    aput v23, v11, v7

    .line 86
    aput v23, v11, v18

    .line 88
    aput v2, v11, v17

    .line 90
    aput v23, v11, v16

    .line 92
    aput v23, v11, v6

    .line 94
    aput v23, v11, v15

    .line 96
    aput v2, v11, v14

    .line 98
    aput v23, v11, v22

    .line 100
    aput v23, v11, v21

    .line 102
    aput v23, v11, v20

    .line 104
    goto/16 :goto_2

    .line 106
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    const/4 v1, 0x1

    .line 112
    const/4 v2, 0x1

    .line 113
    move/from16 v3, p2

    .line 115
    move v14, v4

    .line 116
    move-wide/from16 v4, p3

    .line 118
    move v15, v7

    .line 119
    move-wide/from16 v6, p5

    .line 121
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 124
    move-result v6

    .line 125
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    const/4 v1, 0x4

    .line 131
    move v15, v6

    .line 132
    move-wide/from16 v6, p5

    .line 134
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 137
    move-result v1

    .line 138
    mul-int/lit16 v6, v15, 0x100

    .line 140
    add-int/2addr v6, v1

    .line 141
    aput v6, v11, v19

    .line 143
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    const/4 v1, 0x1

    .line 149
    const/4 v2, 0x3

    .line 150
    move-wide/from16 v6, p5

    .line 152
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 155
    move-result v15

    .line 156
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    const/4 v1, 0x4

    .line 162
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 165
    move-result v1

    .line 166
    mul-int/lit16 v15, v15, 0x100

    .line 168
    add-int/2addr v15, v1

    .line 169
    aput v15, v11, v14

    .line 171
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    const/4 v1, 0x1

    .line 177
    const/4 v2, 0x5

    .line 178
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 181
    move-result v14

    .line 182
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    const/4 v1, 0x4

    .line 188
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 191
    move-result v1

    .line 192
    mul-int/lit16 v14, v14, 0x100

    .line 194
    add-int/2addr v14, v1

    .line 195
    const/4 v1, 0x2

    .line 196
    aput v14, v11, v1

    .line 198
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    const/4 v1, 0x3

    .line 204
    const/4 v2, 0x1

    .line 205
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 208
    move-result v14

    .line 209
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 211
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    const/4 v1, 0x6

    .line 215
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 218
    move-result v1

    .line 219
    mul-int/lit16 v14, v14, 0x100

    .line 221
    add-int/2addr v14, v1

    .line 222
    aput v14, v11, v18

    .line 224
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 226
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    const/4 v1, 0x3

    .line 230
    const/4 v2, 0x3

    .line 231
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 234
    move-result v14

    .line 235
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 237
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    const/4 v1, 0x6

    .line 241
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 244
    move-result v1

    .line 245
    mul-int/lit16 v14, v14, 0x100

    .line 247
    add-int/2addr v14, v1

    .line 248
    aput v14, v11, v17

    .line 250
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 252
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    const/4 v1, 0x3

    .line 256
    const/4 v2, 0x5

    .line 257
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 260
    move-result v14

    .line 261
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 263
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    const/4 v1, 0x6

    .line 267
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 270
    move-result v1

    .line 271
    mul-int/lit16 v14, v14, 0x100

    .line 273
    add-int/2addr v14, v1

    .line 274
    aput v14, v11, v16

    .line 276
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 278
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    const/4 v1, 0x5

    .line 282
    const/4 v2, 0x1

    .line 283
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 286
    move-result v14

    .line 287
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 289
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    const/4 v1, 0x2

    .line 293
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 296
    move-result v1

    .line 297
    mul-int/lit16 v14, v14, 0x100

    .line 299
    add-int/2addr v14, v1

    .line 300
    const/4 v1, 0x6

    .line 301
    aput v14, v11, v1

    .line 303
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 305
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    const/4 v1, 0x5

    .line 309
    const/4 v2, 0x3

    .line 310
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 313
    move-result v14

    .line 314
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 316
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    const/4 v1, 0x2

    .line 320
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 323
    move-result v1

    .line 324
    mul-int/lit16 v14, v14, 0x100

    .line 326
    add-int/2addr v14, v1

    .line 327
    const/4 v1, 0x7

    .line 328
    aput v14, v11, v1

    .line 330
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 332
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    const/4 v1, 0x5

    .line 336
    const/4 v2, 0x5

    .line 337
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 340
    move-result v7

    .line 341
    iget-object v0, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    const/4 v0, 0x2

    .line 347
    move/from16 v2, p2

    .line 349
    move-wide/from16 v3, p3

    .line 351
    move-wide/from16 v5, p5

    .line 353
    invoke-static/range {v0 .. v6}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    .line 356
    move-result v0

    .line 357
    mul-int/lit16 v7, v7, 0x100

    .line 359
    add-int/2addr v7, v0

    .line 360
    const/16 v0, 0x8

    .line 362
    aput v7, v11, v0

    .line 364
    aput v23, v11, v22

    .line 366
    aput v23, v11, v21

    .line 368
    aput v23, v11, v20

    .line 370
    goto/16 :goto_2

    .line 372
    :cond_2
    move v14, v4

    .line 373
    if-ne v1, v14, :cond_6

    .line 375
    if-eqz v8, :cond_4

    .line 377
    if-eq v8, v14, :cond_4

    .line 379
    const/4 v1, 0x2

    .line 380
    if-ne v8, v1, :cond_3

    .line 382
    goto :goto_1

    .line 383
    :cond_3
    aput v2, v11, v19

    .line 385
    aput v23, v11, v14

    .line 387
    aput v23, v11, v1

    .line 389
    aput v23, v11, v18

    .line 391
    aput v2, v11, v17

    .line 393
    aput v23, v11, v16

    .line 395
    const/4 v0, 0x6

    .line 396
    aput v23, v11, v0

    .line 398
    const/4 v0, 0x7

    .line 399
    aput v23, v11, v0

    .line 401
    const/16 v0, 0x8

    .line 403
    aput v2, v11, v0

    .line 405
    aput v23, v11, v22

    .line 407
    aput v23, v11, v21

    .line 409
    aput v23, v11, v20

    .line 411
    goto/16 :goto_2

    .line 413
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 415
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    const/4 v1, 0x1

    .line 419
    const/4 v2, 0x1

    .line 420
    move/from16 v3, p2

    .line 422
    move-wide/from16 v4, p3

    .line 424
    move-wide/from16 v6, p5

    .line 426
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 429
    move-result v15

    .line 430
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 432
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    const/4 v1, 0x4

    .line 436
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 439
    move-result v1

    .line 440
    mul-int/lit16 v15, v15, 0x100

    .line 442
    add-int/2addr v15, v1

    .line 443
    aput v15, v11, v19

    .line 445
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 447
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    const/4 v1, 0x1

    .line 451
    const/4 v2, 0x3

    .line 452
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 455
    move-result v15

    .line 456
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 458
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    const/4 v1, 0x4

    .line 462
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 465
    move-result v1

    .line 466
    mul-int/lit16 v15, v15, 0x100

    .line 468
    add-int/2addr v15, v1

    .line 469
    aput v15, v11, v14

    .line 471
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 473
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    const/4 v1, 0x1

    .line 477
    const/4 v2, 0x5

    .line 478
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 481
    move-result v14

    .line 482
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 484
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    const/4 v1, 0x4

    .line 488
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 491
    move-result v1

    .line 492
    mul-int/lit16 v14, v14, 0x100

    .line 494
    add-int/2addr v14, v1

    .line 495
    const/4 v1, 0x2

    .line 496
    aput v14, v11, v1

    .line 498
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 500
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    const/4 v1, 0x3

    .line 504
    const/4 v2, 0x1

    .line 505
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 508
    move-result v14

    .line 509
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 511
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    const/4 v1, 0x6

    .line 515
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 518
    move-result v1

    .line 519
    mul-int/lit16 v14, v14, 0x100

    .line 521
    add-int/2addr v14, v1

    .line 522
    aput v14, v11, v18

    .line 524
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 526
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    const/4 v1, 0x3

    .line 530
    const/4 v2, 0x3

    .line 531
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 534
    move-result v14

    .line 535
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 537
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    const/4 v1, 0x6

    .line 541
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 544
    move-result v1

    .line 545
    mul-int/lit16 v14, v14, 0x100

    .line 547
    add-int/2addr v14, v1

    .line 548
    aput v14, v11, v17

    .line 550
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 552
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    const/4 v1, 0x3

    .line 556
    const/4 v2, 0x5

    .line 557
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 560
    move-result v14

    .line 561
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 563
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    const/4 v1, 0x6

    .line 567
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 570
    move-result v1

    .line 571
    mul-int/lit16 v14, v14, 0x100

    .line 573
    add-int/2addr v14, v1

    .line 574
    aput v14, v11, v16

    .line 576
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 578
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    const/4 v1, 0x5

    .line 582
    const/4 v2, 0x1

    .line 583
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 586
    move-result v14

    .line 587
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 589
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    const/4 v1, 0x2

    .line 593
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 596
    move-result v1

    .line 597
    mul-int/lit16 v14, v14, 0x100

    .line 599
    add-int/2addr v14, v1

    .line 600
    const/4 v1, 0x6

    .line 601
    aput v14, v11, v1

    .line 603
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 605
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    const/4 v1, 0x5

    .line 609
    const/4 v2, 0x3

    .line 610
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 613
    move-result v14

    .line 614
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 616
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    const/4 v1, 0x2

    .line 620
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 623
    move-result v1

    .line 624
    mul-int/lit16 v14, v14, 0x100

    .line 626
    add-int/2addr v14, v1

    .line 627
    const/4 v1, 0x7

    .line 628
    aput v14, v11, v1

    .line 630
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 632
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    const/4 v1, 0x5

    .line 636
    const/4 v2, 0x5

    .line 637
    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 640
    move-result v7

    .line 641
    iget-object v0, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 643
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    const/4 v0, 0x2

    .line 647
    move/from16 v2, p2

    .line 649
    move-wide/from16 v3, p3

    .line 651
    move-wide/from16 v5, p5

    .line 653
    invoke-static/range {v0 .. v6}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    .line 656
    move-result v0

    .line 657
    mul-int/lit16 v7, v7, 0x100

    .line 659
    add-int/2addr v7, v0

    .line 660
    const/16 v0, 0x8

    .line 662
    aput v7, v11, v0

    .line 664
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 666
    mul-double/2addr v0, v9

    .line 667
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 670
    move-result-wide v0

    .line 671
    long-to-int v0, v0

    .line 672
    const/4 v1, 0x6

    .line 673
    if-ge v0, v1, :cond_5

    .line 675
    const/16 v0, 0xcc

    .line 677
    aput v0, v11, v22

    .line 679
    aput v0, v11, v21

    .line 681
    aput v0, v11, v20

    .line 683
    goto :goto_2

    .line 684
    :cond_5
    aput v23, v11, v22

    .line 686
    aput v23, v11, v21

    .line 688
    aput v23, v11, v20

    .line 690
    goto :goto_2

    .line 691
    :cond_6
    aput v2, v11, v19

    .line 693
    aput v23, v11, v14

    .line 695
    const/4 v0, 0x2

    .line 696
    aput v23, v11, v0

    .line 698
    aput v23, v11, v18

    .line 700
    aput v2, v11, v17

    .line 702
    aput v23, v11, v16

    .line 704
    const/4 v0, 0x6

    .line 705
    aput v23, v11, v0

    .line 707
    const/4 v0, 0x7

    .line 708
    aput v23, v11, v0

    .line 710
    const/16 v0, 0x8

    .line 712
    aput v2, v11, v0

    .line 714
    aput v23, v11, v22

    .line 716
    aput v23, v11, v21

    .line 718
    aput v23, v11, v20

    .line 720
    :goto_2
    return-object v11
.end method
